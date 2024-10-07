import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/timebar/show_time/show_time_widget.dart';
import '/timebar/timecomp/timecomp_widget.dart';
import 'set_time_widget.dart' show SetTimeWidget;
import 'package:flutter/material.dart';

class SetTimeModel extends FlutterFlowModel<SetTimeWidget> {
  ///  Local state fields for this component.

  Time? selectedComp = Time.Hrs;

  TimeSet? show = TimeSet.standard;

  ///  State fields for stateful widgets in this component.

  // Model for timecomp component.
  late TimecompModel timecompModel1;
  // Model for timecomp component.
  late TimecompModel timecompModel2;
  // Model for timecomp component.
  late TimecompModel timecompModel3;
  // Model for showTime component.
  late ShowTimeModel showTimeModel;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // State field(s) for Switch widget.
  bool? switchValue3;

  @override
  void initState(BuildContext context) {
    timecompModel1 = createModel(context, () => TimecompModel());
    timecompModel2 = createModel(context, () => TimecompModel());
    timecompModel3 = createModel(context, () => TimecompModel());
    showTimeModel = createModel(context, () => ShowTimeModel());
  }

  @override
  void dispose() {
    timecompModel1.dispose();
    timecompModel2.dispose();
    timecompModel3.dispose();
    showTimeModel.dispose();
  }
}
