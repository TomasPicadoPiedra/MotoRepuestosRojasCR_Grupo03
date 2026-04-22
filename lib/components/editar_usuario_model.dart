import '/flutter_flow/flutter_flow_util.dart';
import 'editar_usuario_widget.dart' show EditarUsuarioWidget;
import 'package:flutter/material.dart';

class EditarUsuarioModel extends FlutterFlowModel<EditarUsuarioWidget> {
  ///  State fields for stateful widgets in this component.

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
  // State field(s) for txtNumero widget.
  FocusNode? txtNumeroFocusNode;
  TextEditingController? txtNumeroTextController;
  String? Function(BuildContext, String?)? txtNumeroTextControllerValidator;
  // State field(s) for txtToken widget.
  FocusNode? txtTokenFocusNode;
  TextEditingController? txtTokenTextController;
  String? Function(BuildContext, String?)? txtTokenTextControllerValidator;

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

    txtNumeroFocusNode?.dispose();
    txtNumeroTextController?.dispose();

    txtTokenFocusNode?.dispose();
    txtTokenTextController?.dispose();
  }
}
