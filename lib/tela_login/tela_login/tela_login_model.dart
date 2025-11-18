import 'package:get_it/get_it.dart';
import 'package:hydrate_me/backend/backend_exception.dart';
import 'package:hydrate_me/backend/request/credencial.dart';
import 'package:hydrate_me/services/auth_service.dart';
import 'package:hydrate_me/services/login_service.dart';

import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'tela_login_widget.dart' show TelaLoginWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TelaLoginModel extends FlutterFlowModel<TelaLoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;

  Future<void> login(BuildContext context) async {
    try {
      final loginService = GetIt.I<LoginService>();

      await loginService.autentica(
        Credencial(textController1.text, textController2.text),
      );

      if (GetIt.I<AuthService>().isLogado) {
        //await loginService.getCurrentUserInfo();

        if (context.mounted) {
          context.pushNamed(
            TelaInicialWidget.routeName,
            extra: <String, dynamic>{
              kTransitionInfoKey: const TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.fade,
                duration: Duration(milliseconds: 0),
              ),
            },
          );
        }
      }
    } on BackendException catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Ocorreu um erro: ${e.message}")),
        );
      }
    }
  }
}
