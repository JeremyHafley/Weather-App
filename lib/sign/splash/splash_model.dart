import '/components/splash_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'splash_widget.dart' show SplashWidget;
import 'package:flutter/material.dart';

class SplashModel extends FlutterFlowModel<SplashWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for splashComponent component.
  late SplashComponentModel splashComponentModel;

  @override
  void initState(BuildContext context) {
    splashComponentModel = createModel(context, () => SplashComponentModel());
  }

  @override
  void dispose() {
    splashComponentModel.dispose();
  }
}
