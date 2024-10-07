import 'package:collection/collection.dart';

enum Weather {
  Cloudy,
  Chilly,
  Home,
}

enum AccountSetting {
  standard,
  personal,
  permission,
}

enum Time {
  Hrs,
  Mins,
  Secs,
}

enum TimeSet {
  standard,
  notification,
  confirm,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Weather):
      return Weather.values.deserialize(value) as T?;
    case (AccountSetting):
      return AccountSetting.values.deserialize(value) as T?;
    case (Time):
      return Time.values.deserialize(value) as T?;
    case (TimeSet):
      return TimeSet.values.deserialize(value) as T?;
    default:
      return null;
  }
}
