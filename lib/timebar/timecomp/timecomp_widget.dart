import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'timecomp_model.dart';
export 'timecomp_model.dart';

class TimecompWidget extends StatefulWidget {
  const TimecompWidget({
    super.key,
    required this.selected,
    required this.data,
  });

  final Time? selected;
  final Time? data;

  @override
  State<TimecompWidget> createState() => _TimecompWidgetState();
}

class _TimecompWidgetState extends State<TimecompWidget> {
  late TimecompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TimecompModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26.0,
      decoration: BoxDecoration(
        color: widget.selected == widget.data
            ? const Color(0xFFFFF9E9)
            : const Color(0x00000000),
        borderRadius: BorderRadius.circular(20.0),
      ),
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(12.0, 6.0, 12.0, 6.0),
        child: Text(
          '${widget.data?.name}.',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'SF Pro',
                color: widget.selected == widget.data
                    ? const Color(0xFFFFB648)
                    : Colors.white,
                fontSize: 12.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w500,
                useGoogleFonts: false,
              ),
        ),
      ),
    );
  }
}
