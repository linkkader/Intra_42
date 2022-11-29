
import 'package:isar/isar.dart';

part 'pref_isar.g.dart';

@Collection()
class DateTimeIsar{
  final Id id = Isar.autoIncrement;
  final DateTime value;
  @Index(unique: true, replace: true)
  final String key;
  const DateTimeIsar(this.key, this.value);
}