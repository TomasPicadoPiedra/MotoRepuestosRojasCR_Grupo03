import '/flutter_flow/flutter_flow_util.dart';
import 'detalle_servicio_widget.dart' show DetalleServicioWidget;
import 'package:flutter/material.dart';

class DetalleServicioModel extends FlutterFlowModel<DetalleServicioWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for infoNombre widget.
  FocusNode? infoNombreFocusNode;
  TextEditingController? infoNombreTextController;
  String? Function(BuildContext, String?)? infoNombreTextControllerValidator;
  // State field(s) for infoDescripcion widget.
  FocusNode? infoDescripcionFocusNode;
  TextEditingController? infoDescripcionTextController;
  String? Function(BuildContext, String?)?
      infoDescripcionTextControllerValidator;
  // State field(s) for infoDuracion widget.
  FocusNode? infoDuracionFocusNode;
  TextEditingController? infoDuracionTextController;
  String? Function(BuildContext, String?)? infoDuracionTextControllerValidator;
  // State field(s) for infoPrecio widget.
  FocusNode? infoPrecioFocusNode;
  TextEditingController? infoPrecioTextController;
  String? Function(BuildContext, String?)? infoPrecioTextControllerValidator;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    infoNombreFocusNode?.dispose();
    infoNombreTextController?.dispose();

    infoDescripcionFocusNode?.dispose();
    infoDescripcionTextController?.dispose();

    infoDuracionFocusNode?.dispose();
    infoDuracionTextController?.dispose();

    infoPrecioFocusNode?.dispose();
    infoPrecioTextController?.dispose();
  }
}
