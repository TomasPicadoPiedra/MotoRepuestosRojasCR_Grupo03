import '/flutter_flow/flutter_flow_util.dart';
import 'detalle_producto_widget.dart' show DetalleProductoWidget;
import 'package:flutter/material.dart';

class DetalleProductoModel extends FlutterFlowModel<DetalleProductoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for infoNombre widget.
  FocusNode? infoNombreFocusNode;
  TextEditingController? infoNombreTextController;
  String? Function(BuildContext, String?)? infoNombreTextControllerValidator;
  // State field(s) for infoCodigo widget.
  FocusNode? infoCodigoFocusNode;
  TextEditingController? infoCodigoTextController;
  String? Function(BuildContext, String?)? infoCodigoTextControllerValidator;
  // State field(s) for infoMarca widget.
  FocusNode? infoMarcaFocusNode;
  TextEditingController? infoMarcaTextController;
  String? Function(BuildContext, String?)? infoMarcaTextControllerValidator;
  // State field(s) for infoCategoria widget.
  FocusNode? infoCategoriaFocusNode;
  TextEditingController? infoCategoriaTextController;
  String? Function(BuildContext, String?)? infoCategoriaTextControllerValidator;
  // State field(s) for infoPrecioC widget.
  FocusNode? infoPrecioCFocusNode;
  TextEditingController? infoPrecioCTextController;
  String? Function(BuildContext, String?)? infoPrecioCTextControllerValidator;
  // State field(s) for infoPorcentaje widget.
  FocusNode? infoPorcentajeFocusNode;
  TextEditingController? infoPorcentajeTextController;
  String? Function(BuildContext, String?)?
      infoPorcentajeTextControllerValidator;
  // State field(s) for infoPrecioV widget.
  FocusNode? infoPrecioVFocusNode;
  TextEditingController? infoPrecioVTextController;
  String? Function(BuildContext, String?)? infoPrecioVTextControllerValidator;
  // State field(s) for infoCantidad widget.
  FocusNode? infoCantidadFocusNode;
  TextEditingController? infoCantidadTextController;
  String? Function(BuildContext, String?)? infoCantidadTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    infoNombreFocusNode?.dispose();
    infoNombreTextController?.dispose();

    infoCodigoFocusNode?.dispose();
    infoCodigoTextController?.dispose();

    infoMarcaFocusNode?.dispose();
    infoMarcaTextController?.dispose();

    infoCategoriaFocusNode?.dispose();
    infoCategoriaTextController?.dispose();

    infoPrecioCFocusNode?.dispose();
    infoPrecioCTextController?.dispose();

    infoPorcentajeFocusNode?.dispose();
    infoPorcentajeTextController?.dispose();

    infoPrecioVFocusNode?.dispose();
    infoPrecioVTextController?.dispose();

    infoCantidadFocusNode?.dispose();
    infoCantidadTextController?.dispose();
  }
}
