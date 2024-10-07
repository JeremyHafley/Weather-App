import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'u_v_i_ndex_page_widget.dart' show UVINdexPageWidget;
import 'package:flutter/material.dart';

class UVINdexPageModel extends FlutterFlowModel<UVINdexPageWidget> {
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
