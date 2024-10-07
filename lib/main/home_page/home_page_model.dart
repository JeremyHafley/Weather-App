import '/backend/api_requests/api_calls.dart';
import '/components/bg_widget.dart';
import '/components/navbar_widget.dart';
import '/components/weather_title_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (get UV)] action in HomePage widget.
  ApiCallResponse? weather;
  // Model for bg component.
  late BgModel bgModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for weatherTitle component.
  late WeatherTitleModel weatherTitleModel;
  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    bgModel = createModel(context, () => BgModel());
    weatherTitleModel = createModel(context, () => WeatherTitleModel());
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    bgModel.dispose();
    weatherTitleModel.dispose();
    navbarModel.dispose();
  }
}
