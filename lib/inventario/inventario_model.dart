import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'inventario_widget.dart' show InventarioWidget;
import 'package:flutter/material.dart';

class InventarioModel extends FlutterFlowModel<InventarioWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
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
  // State field(s) for txtcodigo widget.
  FocusNode? txtcodigoFocusNode;
  TextEditingController? txtcodigoTextController;
  String? Function(BuildContext, String?)? txtcodigoTextControllerValidator;
  // State field(s) for txtmarca widget.
  FocusNode? txtmarcaFocusNode;
  TextEditingController? txtmarcaTextController;
  String? Function(BuildContext, String?)? txtmarcaTextControllerValidator;
  // State field(s) for txtprecioc widget.
  FocusNode? txtpreciocFocusNode;
  TextEditingController? txtpreciocTextController;
  String? Function(BuildContext, String?)? txtpreciocTextControllerValidator;
  // State field(s) for txtporcentaje widget.
  FocusNode? txtporcentajeFocusNode;
  TextEditingController? txtporcentajeTextController;
  String? Function(BuildContext, String?)? txtporcentajeTextControllerValidator;
  // State field(s) for txtcantidad widget.
  FocusNode? txtcantidadFocusNode;
  TextEditingController? txtcantidadTextController;
  String? Function(BuildContext, String?)? txtcantidadTextControllerValidator;
  bool isDataUploading_uploadDataA2w = false;
  FFUploadedFile uploadedLocalFile_uploadDataA2w =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataA2w = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    txtnombreFocusNode?.dispose();
    txtnombreTextController?.dispose();

    txtcodigoFocusNode?.dispose();
    txtcodigoTextController?.dispose();

    txtmarcaFocusNode?.dispose();
    txtmarcaTextController?.dispose();

    txtpreciocFocusNode?.dispose();
    txtpreciocTextController?.dispose();

    txtporcentajeFocusNode?.dispose();
    txtporcentajeTextController?.dispose();

    txtcantidadFocusNode?.dispose();
    txtcantidadTextController?.dispose();
  }
}
