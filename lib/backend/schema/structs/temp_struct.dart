// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class TempStruct extends FFFirebaseStruct {
  TempStruct({
    int? temp,
    String? time,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _temp = temp,
        _time = time,
        super(firestoreUtilData);

  // "temp" field.
  int? _temp;
  int get temp => _temp ?? 0;
  set temp(int? val) => _temp = val;

  void incrementTemp(int amount) => temp = temp + amount;

  bool hasTemp() => _temp != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  set time(String? val) => _time = val;

  bool hasTime() => _time != null;

  static TempStruct fromMap(Map<String, dynamic> data) => TempStruct(
        temp: castToType<int>(data['temp']),
        time: data['time'] as String?,
      );

  static TempStruct? maybeFromMap(dynamic data) =>
      data is Map ? TempStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'temp': _temp,
        'time': _time,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'temp': serializeParam(
          _temp,
          ParamType.int,
        ),
        'time': serializeParam(
          _time,
          ParamType.String,
        ),
      }.withoutNulls;

  static TempStruct fromSerializableMap(Map<String, dynamic> data) =>
      TempStruct(
        temp: deserializeParam(
          data['temp'],
          ParamType.int,
          false,
        ),
        time: deserializeParam(
          data['time'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TempStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TempStruct && temp == other.temp && time == other.time;
  }

  @override
  int get hashCode => const ListEquality().hash([temp, time]);
}

TempStruct createTempStruct({
  int? temp,
  String? time,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TempStruct(
      temp: temp,
      time: time,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TempStruct? updateTempStruct(
  TempStruct? tempStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    tempStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTempStructData(
  Map<String, dynamic> firestoreData,
  TempStruct? tempStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (tempStruct == null) {
    return;
  }
  if (tempStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && tempStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final tempStructData = getTempFirestoreData(tempStruct, forFieldValue);
  final nestedData = tempStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = tempStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTempFirestoreData(
  TempStruct? tempStruct, [
  bool forFieldValue = false,
]) {
  if (tempStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(tempStruct.toMap());

  // Add any Firestore field values
  tempStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTempListFirestoreData(
  List<TempStruct>? tempStructs,
) =>
    tempStructs?.map((e) => getTempFirestoreData(e, true)).toList() ?? [];
