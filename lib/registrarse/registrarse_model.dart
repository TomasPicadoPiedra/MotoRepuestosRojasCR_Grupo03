import '/flutter_flow/flutter_flow_util.dart';
import 'registrarse_widget.dart' show RegistrarseWidget;
import 'package:flutter/material.dart';

class RegistrarseModel extends FlutterFlowModel<RegistrarseWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;
  // State field(s) for txtApellidoPaterno widget.
  FocusNode? txtApellidoPaternoFocusNode;
  TextEditingController? txtApellidoPaternoTextController;
  String? Function(BuildContext, String?)?
      txtApellidoPaternoTextControllerValidator;
  // State field(s) for txtApellidoMaterno widget.
  FocusNode? txtApellidoMaternoFocusNode;
  TextEditingController? txtApellidoMaternoTextController;
  String? Function(BuildContext, String?)?
      txtApellidoMaternoTextControllerValidator;
  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoTextController;
  String? Function(BuildContext, String?)? txtCorreoTextControllerValidator;
  // State field(s) for txtContrasenna widget.
  FocusNode? txtContrasennaFocusNode;
  TextEditingController? txtContrasennaTextController;
  String? Function(BuildContext, String?)?
      txtContrasennaTextControllerValidator;
  // State field(s) for txtConfirmarContrasenna widget.
  FocusNode? txtConfirmarContrasennaFocusNode;
  TextEditingController? txtConfirmarContrasennaTextController;
  String? Function(BuildContext, String?)?
      txtConfirmarContrasennaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    txtApellidoPaternoFocusNode?.dispose();
    txtApellidoPaternoTextController?.dispose();

    txtApellidoMaternoFocusNode?.dispose();
    txtApellidoMaternoTextController?.dispose();

    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();

    txtContrasennaFocusNode?.dispose();
    txtContrasennaTextController?.dispose();

    txtConfirmarContrasennaFocusNode?.dispose();
    txtConfirmarContrasennaTextController?.dispose();
  }
}
