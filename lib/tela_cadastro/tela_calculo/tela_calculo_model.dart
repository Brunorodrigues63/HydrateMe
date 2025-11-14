import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'tela_calculo_widget.dart' show TelaCalculoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class TelaCalculoModel extends FlutterFlowModel<TelaCalculoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for idadeField widget.
  FocusNode? idadeFieldFocusNode;
  TextEditingController? idadeFieldTextController;
  late MaskTextInputFormatter idadeFieldMask;
  String? Function(BuildContext, String?)? idadeFieldTextControllerValidator;
  // State field(s) for pesoField widget.
  FocusNode? pesoFieldFocusNode;
  TextEditingController? pesoFieldTextController;
  late MaskTextInputFormatter pesoFieldMask;
  String? Function(BuildContext, String?)? pesoFieldTextControllerValidator;
  // State field(s) for alturaField widget.
  FocusNode? alturaFieldFocusNode;
  TextEditingController? alturaFieldTextController;
  late MaskTextInputFormatter alturaFieldMask;
  String? Function(BuildContext, String?)? alturaFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    idadeFieldFocusNode?.dispose();
    idadeFieldTextController?.dispose();

    pesoFieldFocusNode?.dispose();
    pesoFieldTextController?.dispose();

    alturaFieldFocusNode?.dispose();
    alturaFieldTextController?.dispose();
  }
}
