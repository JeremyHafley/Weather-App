import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'locatoin_page_widget.dart' show LocatoinPageWidget;
import 'package:flutter/material.dart';

class LocatoinPageModel extends FlutterFlowModel<LocatoinPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = const FFPlace();
  // Stores action output result for [Backend Call - API (get UV)] action in Button widget.
  ApiCallResponse? weatheragain;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
