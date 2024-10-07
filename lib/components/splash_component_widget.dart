import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'splash_component_model.dart';
export 'splash_component_model.dart';

class SplashComponentWidget extends StatefulWidget {
  const SplashComponentWidget({super.key});

  @override
  State<SplashComponentWidget> createState() => _SplashComponentWidgetState();
}

class _SplashComponentWidgetState extends State<SplashComponentWidget>
    with TickerProviderStateMixin {
  late SplashComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SplashComponentModel());

    animationsMap.addAll({
      'imageOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.0, 1.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 2600.0.ms,
            duration: 200.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.6, 1.6),
          ),
          MoveEffect(
            curve: Curves.linear,
            delay: 2500.0.ms,
            duration: 200.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, -20.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 500.0.ms,
            duration: 200.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 2500.0.ms,
            duration: 100.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'imageOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 2600.0.ms,
            duration: 200.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        decoration: const BoxDecoration(),
        child: SizedBox(
          width: 186.0,
          height: 186.0,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, -0.3),
                child: Image.asset(
                  'assets/images/logo_medium.png',
                  width: 115.0,
                  height: 57.0,
                  fit: BoxFit.contain,
                ).animateOnPageLoad(
                    animationsMap['imageOnPageLoadAnimation1']!),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Image.asset(
                  'assets/images/circle_(2).png',
                  width: 170.0,
                  height: 170.0,
                  fit: BoxFit.cover,
                ).animateOnPageLoad(
                    animationsMap['imageOnPageLoadAnimation2']!),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.9),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await Future.delayed(const Duration(milliseconds: 2800));

                    context.pushNamed('signup');
                  },
                  child: Image.asset(
                    'assets/images/rays.png',
                    width: 186.0,
                    height: 74.0,
                    fit: BoxFit.cover,
                  ),
                ).animateOnPageLoad(
                    animationsMap['imageOnPageLoadAnimation3']!),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
