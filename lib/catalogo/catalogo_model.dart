import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'catalogo_widget.dart' show CatalogoWidget;
import 'package:flutter/material.dart';

class CatalogoModel extends FlutterFlowModel<CatalogoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtBuscador widget.
  FocusNode? txtBuscadorFocusNode;
  TextEditingController? txtBuscadorTextController;
  String? Function(BuildContext, String?)? txtBuscadorTextControllerValidator;
  List<InventarioRecord> simpleSearchResults = [];
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtBuscadorFocusNode?.dispose();
    txtBuscadorTextController?.dispose();
  }
}
