import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'ventas_widget.dart' show VentasWidget;
import 'package:flutter/material.dart';

class VentasModel extends FlutterFlowModel<VentasWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtBuscador widget.
  FocusNode? txtBuscadorFocusNode;
  TextEditingController? txtBuscadorTextController;
  String? Function(BuildContext, String?)? txtBuscadorTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtBuscadorFocusNode?.dispose();
    txtBuscadorTextController?.dispose();
  }
}
