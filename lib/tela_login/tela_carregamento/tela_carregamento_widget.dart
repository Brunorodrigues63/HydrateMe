import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tela_carregamento_model.dart';
export 'tela_carregamento_model.dart';

class TelaCarregamentoWidget extends StatefulWidget {
  const TelaCarregamentoWidget({super.key});

  static String routeName = 'TelaCarregamento';
  static String routePath = '/telaCarregamento';

  @override
  State<TelaCarregamentoWidget> createState() => _TelaCarregamentoWidgetState();
}

class _TelaCarregamentoWidgetState extends State<TelaCarregamentoWidget> {
  late TelaCarregamentoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TelaCarregamentoModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.goNamed(
        TelaLoginWidget.routeName,
        extra: <String, dynamic>{
          kTransitionInfoKey: TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.topToBottom,
            duration: Duration(milliseconds: 100),
          ),
        },
      );
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF43AEF0),
        body: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pushNamed(TelaLoginWidget.routeName);
          },
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'HydrateMe',
                    style: FlutterFlowTheme.of(context).displayMedium.override(
                          font: GoogleFonts.interTight(
                            fontWeight: FlutterFlowTheme.of(context)
                                .displayMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .displayMedium
                                .fontStyle,
                          ),
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          fontSize: 40.0,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .displayMedium
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .displayMedium
                              .fontStyle,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
