import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'servicios_widget.dart' show ServiciosWidget;
import 'package:flutter/material.dart';

class ServiciosModel extends FlutterFlowModel<ServiciosWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for txtnombre widget.
  FocusNode? txtnombreFocusNode;
  TextEditingController? txtnombreTextController;
  String? Function(BuildContext, String?)? txtnombreTextControllerValidator;
  // State field(s) for txtdescripcion widget.
  FocusNode? txtdescripcionFocusNode;
  TextEditingController? txtdescripcionTextController;
  String? Function(BuildContext, String?)?
      txtdescripcionTextControllerValidator;
  // State field(s) for txtprecio widget.
  FocusNode? txtprecioFocusNode;
  TextEditingController? txtprecioTextController;
  String? Function(BuildContext, String?)? txtprecioTextControllerValidator;
  // State field(s) for txtduracion widget.
  FocusNode? txtduracionFocusNode;
  TextEditingController? txtduracionTextController;
  String? Function(BuildContext, String?)? txtduracionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    txtnombreFocusNode?.dispose();
    txtnombreTextController?.dispose();

    txtdescripcionFocusNode?.dispose();
    txtdescripcionTextController?.dispose();

    txtprecioFocusNode?.dispose();
    txtprecioTextController?.dispose();

    txtduracionFocusNode?.dispose();
    txtduracionTextController?.dispose();
  }
}
