import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'show_time_model.dart';
export 'show_time_model.dart';

class ShowTimeWidget extends StatefulWidget {
  const ShowTimeWidget({
    super.key,
    required this.selected,
  });

  final Time? selected;

  @override
  State<ShowTimeWidget> createState() => _ShowTimeWidgetState();
}

class _ShowTimeWidgetState extends State<ShowTimeWidget> {
  late ShowTimeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShowTimeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            FFAppState().setHr.toString(),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'SF Pro',
                  color: widget.selected == Time.Hrs
                      ? const Color(0xFFFFF9E9)
                      : const Color(0x80FFF9E9),
                  fontSize: 36.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: false,
                ),
          ),
          Text(
            ':',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'SF Pro',
                  color: const Color(0x80FFF9E9),
                  fontSize: 36.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: false,
                ),
          ),
          Text(
            formatNumber(
              FFAppState().setMin,
              formatType: FormatType.custom,
              format: '00',
              locale: '',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'SF Pro',
                  color: widget.selected == Time.Mins
                      ? const Color(0xFFFFF9E9)
                      : const Color(0x80FFF9E9),
                  fontSize: 36.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: false,
                ),
          ),
          Text(
            ':',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'SF Pro',
                  color: const Color(0x80FFF9E9),
                  fontSize: 36.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: false,
                ),
          ),
          Text(
            formatNumber(
              FFAppState().setSec,
              formatType: FormatType.custom,
              format: '00',
              locale: '',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'SF Pro',
                  color: widget.selected == Time.Secs
                      ? const Color(0xFFFFF9E9)
                      : const Color(0x80FFF9E9),
                  fontSize: 36.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: false,
                ),
          ),
        ],
      ),
    );
  }
}
