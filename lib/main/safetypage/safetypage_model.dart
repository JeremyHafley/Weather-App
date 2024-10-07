import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'safetypage_widget.dart' show SafetypageWidget;
import 'package:flutter/material.dart';

class SafetypageModel extends FlutterFlowModel<SafetypageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
  }
}
