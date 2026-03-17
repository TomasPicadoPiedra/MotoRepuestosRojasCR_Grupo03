import '/flutter_flow/flutter_flow_util.dart';
import 'reportes_widget.dart' show ReportesWidget;
import 'package:flutter/material.dart';

class ReportesModel extends FlutterFlowModel<ReportesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
