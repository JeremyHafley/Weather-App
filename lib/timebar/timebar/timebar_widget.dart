import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'timebar_model.dart';
export 'timebar_model.dart';

class TimebarWidget extends StatefulWidget {
  const TimebarWidget({
    super.key,
    required this.current,
    required this.data,
  });

  final int? current;
  final int? data;

  @override
  State<TimebarWidget> createState() => _TimebarWidgetState();
}

class _TimebarWidgetState extends State<TimebarWidget> {
  late TimebarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TimebarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
          child: Text(
            valueOrDefault<String>(
              widget.data?.toString(),
              '1',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'SF Pro',
                  color: widget.current == widget.data
                      ? const Color(0xFFFFF9E9)
                      : const Color(0x80FFF9E9),
                  fontSize: 15.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: false,
                ),
          ),
        ),
        Container(
          width: 10.0,
          height: 10.0,
          decoration: BoxDecoration(
            color: widget.current == widget.data
                ? const Color(0xFFFFF9E9)
                : const Color(0x80FFF9E9),
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: 3.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: widget.current == widget.data
                ? const Color(0xFFFFF9E9)
                : const Color(0x80FFF9E9),
          ),
        ),
      ],
    );
  }
}
