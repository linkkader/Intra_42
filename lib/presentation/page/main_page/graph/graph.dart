// Created by linkkader on 14/11/2022

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intra_42/core/extensions/map_ext.dart';
import 'package:intra_42/core/extensions/provider_ext.dart';
import 'package:intra_42/data/locale_storage/locale_storage.dart';
import 'package:intra_42/data/models/user.dart';
import 'package:intra_42/data/repositories/user_repository.dart';
import 'package:intra_42/main.dart';
import 'package:intra_42/presentation/page/main_page/graph/painter.dart';
import 'package:touchable/touchable.dart';
import '../../../../data/models/project_data.dart';

//TODO: add cache
class Graph extends ConsumerStatefulWidget {
  final User user;
  const Graph(this.user, {Key? key}) : super(key: key);

  @override
  ConsumerState<Graph> createState() => _GraphState();
}


class _GraphState extends ConsumerState<Graph> with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {


  StateProvider<ProjectData?> notifier = StateProvider((ref) => null);

  StateProvider<Map<int, List<ProjectData>>> projectsDataState = StateProvider((ref) => {});
  StateProvider<int> cursusProvider = StateProvider((ref) => 0);
  TabController? _tabController;

  @override
  void initState() {
    var me = LocaleStorage().getMe;
    App.log.i(me?.cursusUsers?.isNotEmpty);
    App.log.i(me?.campus?.isNotEmpty);
    if (me?.cursusUsers?.isNotEmpty == true && me?.campus?.isNotEmpty == true) {
      for (var i = 0; i < me!.cursusUsers!.length; i++) {
        UserRepository().projectData(me.cursusUsers![i].cursusId!, me.campus!.first.id!, widget.user.login!).then((value) {
          ref.read(projectsDataState)[i] = value;
          ref.read(projectsDataState.notifier).state = ref.read(projectsDataState).copy;
        });
      }
      _tabController = TabController(length: me.cursusUsers!.length, vsync: this);
    }

    super.initState();
  }

  Widget _cursusSelect(User user){
    return Column(
      children: [
        Text(App.s.cursus, style : GoogleFonts.ptSans(color: App.colorScheme.secondary)),
        PopupMenuButton(
            color: const Color(0xFF283336),
            child: Row(
              children: [
                Text(user.cursusUsers![ref.watch(cursusProvider)].cursus!.name!),
                user.cursusUsers!.length > 1 ? const Icon(Icons.arrow_drop_down, color: Colors.white,) : Container(),
              ],
            ),
            itemBuilder: (_){
              return List.generate(user.cursusUsers!.length, (index){
                return PopupMenuItem(
                  child: Row(children: [
                    index == ref.read(cursusProvider) ? const Icon(Icons.check, color: Colors.white,) : Container(),
                    Text(user.cursusUsers![index].cursus!.name!),
                  ],),
                  onTap: (){
                    ref.watch(cursusProvider.notifier).state = index;
                    _tabController?.index = index;
                  },
                );
              });
            }),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (_tabController == null){
      return Material(
        color: App.colorScheme.background,
        child: Center(child: Text("No cursus", style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),),)
      );
    }
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            //update
          },
        ),
        body: Stack(
          children: [
            TabBarView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(
                    _tabController!.length , (index){
                      var data = ref.watch(projectsDataState)[index];
                      if (data == null) {
                        return const Center(child: CircularProgressIndicator(),);
                      }
                      return FittedBox(
                        fit: BoxFit.cover,
                        child: DecoratedBox(
                          decoration: const BoxDecoration(
                              gradient: RadialGradient(
                                  colors: [
                                    Color(0xFF002534),Color(0xFF090a0f)
                                  ]
                              )
                          ),
                          child: InteractiveViewer(
                            panEnabled: true,
                            boundaryMargin: const EdgeInsets.all(5000),
                            maxScale: 15,
                            minScale: 0.01,
                            scaleEnabled: true,
                            child: CanvasTouchDetector(
                              gesturesToOverride: const [GestureType.onTapDown],
                              builder: (context) {
                                return CustomPaint(
                                    size: const Size(5000, 5000),
                                    painter: GraphPainter(
                                      context: context,
                                      notifier: notifier,
                                      projects: data,
                                      ref: ref,
                                      user: widget.user,
                                    )
                                );
                              },
                            ),
                          ) ,
                        ),
                      );
                    })
            ),
            Positioned(left: 100, top: 100, child: _cursusSelect(LocaleStorage().getMe!),),
          ],
        ));
  }

  @override
  bool get wantKeepAlive => true;
}
