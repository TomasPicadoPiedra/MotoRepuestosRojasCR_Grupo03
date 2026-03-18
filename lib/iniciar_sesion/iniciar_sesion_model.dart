import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'iniciar_sesion_widget.dart' show IniciarSesionWidget;
import 'package:flutter/material.dart';

class IniciarSesionModel extends FlutterFlowModel<IniciarSesionWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoTextController;
  String? Function(BuildContext, String?)? txtCorreoTextControllerValidator;
  // State field(s) for txtContrasenna widget.
  FocusNode? txtContrasennaFocusNode;
  TextEditingController? txtContrasennaTextController;
  late bool txtContrasennaVisibility;
  String? Function(BuildContext, String?)?
      txtContrasennaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtContrasennaVisibility = false;
  }

  @override
  void dispose() {
    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();

    txtContrasennaFocusNode?.dispose();
    txtContrasennaTextController?.dispose();
  }
}
