import 'package:flutter/material.dart';
import '/backend/schema/enums/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _location = latLngFromString(prefs.getString('ff_location')) ?? _location;
    });
    _safeInit(() {
      _currentAddress = prefs.getString('ff_currentAddress') ?? _currentAddress;
    });
    _safeInit(() {
      _start = prefs.getDouble('ff_start') ?? _start;
    });
    _safeInit(() {
      _end = prefs.getDouble('ff_end') ?? _end;
    });
    _safeInit(() {
      _tempStart = prefs.getDouble('ff_tempStart') ?? _tempStart;
    });
    _safeInit(() {
      _tempEnd = prefs.getDouble('ff_tempEnd') ?? _tempEnd;
    });
    _safeInit(() {
      _setTime = prefs.getInt('ff_setTime') ?? _setTime;
    });
    _safeInit(() {
      _timerSet = prefs.getBool('ff_timerSet') ?? _timerSet;
    });
    _safeInit(() {
      _timerPause = prefs.getBool('ff_timerPause') ?? _timerPause;
    });
    _safeInit(() {
      _timerStarted = prefs.getBool('ff_timerStarted') ?? _timerStarted;
    });
    _safeInit(() {
      _email = prefs.getString('ff_email') ?? _email;
    });
    _safeInit(() {
      _locationPermissin =
          prefs.getBool('ff_locationPermissin') ?? _locationPermissin;
    });
    _safeInit(() {
      _notificationPermission =
          prefs.getBool('ff_notificationPermission') ?? _notificationPermission;
    });
    _safeInit(() {
      _trackPermission =
          prefs.getBool('ff_trackPermission') ?? _trackPermission;
    });
    _safeInit(() {
      _cameraPermission =
          prefs.getBool('ff_cameraPermission') ?? _cameraPermission;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  LatLng? _location = const LatLng(38.8867076, -77.0326074);
  LatLng? get location => _location;
  set location(LatLng? value) {
    _location = value;
    value != null
        ? prefs.setString('ff_location', value.serialize())
        : prefs.remove('ff_location');
  }

  String _currentAddress = '';
  String get currentAddress => _currentAddress;
  set currentAddress(String value) {
    _currentAddress = value;
    prefs.setString('ff_currentAddress', value);
  }

  String _XApiKey = 'QpPeuhtnVCi/3gUdTQVNYA==AzQaFDhb4iIRxfy1';
  String get XApiKey => _XApiKey;
  set XApiKey(String value) {
    _XApiKey = value;
  }

  String _XRapidAPIKey = 'e08c740d1amshba20980d169e359p123fcfjsnd4b1ae200943';
  String get XRapidAPIKey => _XRapidAPIKey;
  set XRapidAPIKey(String value) {
    _XRapidAPIKey = value;
  }

  int _todayUV = 0;
  int get todayUV => _todayUV;
  set todayUV(int value) {
    _todayUV = value;
  }

  double _todayTemp = 0.0;
  double get todayTemp => _todayTemp;
  set todayTemp(double value) {
    _todayTemp = value;
  }

  Weather? _todayWeather = Weather.Cloudy;
  Weather? get todayWeather => _todayWeather;
  set todayWeather(Weather? value) {
    _todayWeather = value;
  }

  double _start = 1.0;
  double get start => _start;
  set start(double value) {
    _start = value;
    prefs.setDouble('ff_start', value);
  }

  double _end = 11.0;
  double get end => _end;
  set end(double value) {
    _end = value;
    prefs.setDouble('ff_end', value);
  }

  double _tempStart = 1.0;
  double get tempStart => _tempStart;
  set tempStart(double value) {
    _tempStart = value;
    prefs.setDouble('ff_tempStart', value);
  }

  double _tempEnd = 11.0;
  double get tempEnd => _tempEnd;
  set tempEnd(double value) {
    _tempEnd = value;
    prefs.setDouble('ff_tempEnd', value);
  }

  int _setHr = 0;
  int get setHr => _setHr;
  set setHr(int value) {
    _setHr = value;
  }

  int _setMin = 0;
  int get setMin => _setMin;
  set setMin(int value) {
    _setMin = value;
  }

  int _setSec = 0;
  int get setSec => _setSec;
  set setSec(int value) {
    _setSec = value;
  }

  int _setTime = 0;
  int get setTime => _setTime;
  set setTime(int value) {
    _setTime = value;
    prefs.setInt('ff_setTime', value);
  }

  List<int> _HrSheet = [1, 2, 3, 4, 5, 6, 7];
  List<int> get HrSheet => _HrSheet;
  set HrSheet(List<int> value) {
    _HrSheet = value;
  }

  void addToHrSheet(int value) {
    HrSheet.add(value);
  }

  void removeFromHrSheet(int value) {
    HrSheet.remove(value);
  }

  void removeAtIndexFromHrSheet(int index) {
    HrSheet.removeAt(index);
  }

  void updateHrSheetAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    HrSheet[index] = updateFn(_HrSheet[index]);
  }

  void insertAtIndexInHrSheet(int index, int value) {
    HrSheet.insert(index, value);
  }

  List<int> _MinSheet = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55];
  List<int> get MinSheet => _MinSheet;
  set MinSheet(List<int> value) {
    _MinSheet = value;
  }

  void addToMinSheet(int value) {
    MinSheet.add(value);
  }

  void removeFromMinSheet(int value) {
    MinSheet.remove(value);
  }

  void removeAtIndexFromMinSheet(int index) {
    MinSheet.removeAt(index);
  }

  void updateMinSheetAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    MinSheet[index] = updateFn(_MinSheet[index]);
  }

  void insertAtIndexInMinSheet(int index, int value) {
    MinSheet.insert(index, value);
  }

  List<int> _SecSheet = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55];
  List<int> get SecSheet => _SecSheet;
  set SecSheet(List<int> value) {
    _SecSheet = value;
  }

  void addToSecSheet(int value) {
    SecSheet.add(value);
  }

  void removeFromSecSheet(int value) {
    SecSheet.remove(value);
  }

  void removeAtIndexFromSecSheet(int index) {
    SecSheet.removeAt(index);
  }

  void updateSecSheetAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    SecSheet[index] = updateFn(_SecSheet[index]);
  }

  void insertAtIndexInSecSheet(int index, int value) {
    SecSheet.insert(index, value);
  }

  bool _timerSet = false;
  bool get timerSet => _timerSet;
  set timerSet(bool value) {
    _timerSet = value;
    prefs.setBool('ff_timerSet', value);
  }

  bool _timerPause = false;
  bool get timerPause => _timerPause;
  set timerPause(bool value) {
    _timerPause = value;
    prefs.setBool('ff_timerPause', value);
  }

  bool _timerStarted = false;
  bool get timerStarted => _timerStarted;
  set timerStarted(bool value) {
    _timerStarted = value;
    prefs.setBool('ff_timerStarted', value);
  }

  String _email = 'example@gmail.com';
  String get email => _email;
  set email(String value) {
    _email = value;
    prefs.setString('ff_email', value);
  }

  List<int> _UVs = [];
  List<int> get UVs => _UVs;
  set UVs(List<int> value) {
    _UVs = value;
  }

  void addToUVs(int value) {
    UVs.add(value);
  }

  void removeFromUVs(int value) {
    UVs.remove(value);
  }

  void removeAtIndexFromUVs(int index) {
    UVs.removeAt(index);
  }

  void updateUVsAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    UVs[index] = updateFn(_UVs[index]);
  }

  void insertAtIndexInUVs(int index, int value) {
    UVs.insert(index, value);
  }

  bool _locationPermissin = false;
  bool get locationPermissin => _locationPermissin;
  set locationPermissin(bool value) {
    _locationPermissin = value;
    prefs.setBool('ff_locationPermissin', value);
  }

  bool _notificationPermission = false;
  bool get notificationPermission => _notificationPermission;
  set notificationPermission(bool value) {
    _notificationPermission = value;
    prefs.setBool('ff_notificationPermission', value);
  }

  bool _trackPermission = false;
  bool get trackPermission => _trackPermission;
  set trackPermission(bool value) {
    _trackPermission = value;
    prefs.setBool('ff_trackPermission', value);
  }

  bool _cameraPermission = false;
  bool get cameraPermission => _cameraPermission;
  set cameraPermission(bool value) {
    _cameraPermission = value;
    prefs.setBool('ff_cameraPermission', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
