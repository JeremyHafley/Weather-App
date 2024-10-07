import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'prime_page_widget.dart' show PrimePageWidget;
import 'package:flutter/material.dart';

class PrimePageModel extends FlutterFlowModel<PrimePageWidget> {
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
