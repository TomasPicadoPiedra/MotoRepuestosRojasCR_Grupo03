import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'usuario_widget.dart' show UsuarioWidget;
import 'package:flutter/material.dart';

class UsuarioModel extends FlutterFlowModel<UsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtBuscador widget.
  FocusNode? txtBuscadorFocusNode;
  TextEditingController? txtBuscadorTextController;
  String? Function(BuildContext, String?)? txtBuscadorTextControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtBuscadorFocusNode?.dispose();
    txtBuscadorTextController?.dispose();

    tabBarController?.dispose();
  }
}
