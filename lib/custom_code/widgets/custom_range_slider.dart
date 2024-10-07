// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:syncfusion_flutter_sliders/sliders.dart';

class CustomRangeSlider extends StatefulWidget {
  const CustomRangeSlider({
    super.key,
    this.width,
    this.height,
    this.sliderColor = Colors.black,
    this.inactiveTrackColor = Colors.black,
  });

  final double? width;
  final double? height;
  final Color sliderColor; // Active track color
  final Color inactiveTrackColor; // Inactive track color

  @override
  State<CustomRangeSlider> createState() => _CustomRangeSliderState();
}

class _CustomRangeSliderState extends State<CustomRangeSlider> {
  SfRangeValues _values = SfRangeValues(FFAppState().start, FFAppState().end);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ??
          double.infinity, // Use the provided width or default to full width
      height:
          widget.height ?? 50.0, // Use the provided height or default to 50.0
      child: SfRangeSlider(
        min: 1.0,
        max: 11.0,
        values: _values,
        interval: 1,
        stepSize: 1, // Setting step size to 1
        showTicks: true,
        showLabels: true,
        enableTooltip: true,
        minorTicksPerInterval: 0,
        activeColor: widget.sliderColor, // Custom active track color
        inactiveColor: widget.inactiveTrackColor, // Custom inactive track color
        onChanged: (SfRangeValues values) {
          setState(() {
            _values = values;
            FFAppState().tempStart = values.start;
            FFAppState().tempEnd = values.end;
          });
        },
      ),
    );
  }
}
