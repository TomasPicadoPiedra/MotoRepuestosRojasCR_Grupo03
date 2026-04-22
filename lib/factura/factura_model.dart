import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'factura_widget.dart' show FacturaWidget;
import 'package:flutter/material.dart';

class FacturaModel extends FlutterFlowModel<FacturaWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadTransferencia = false;
  FFUploadedFile uploadedLocalFile_uploadTransferencia =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadTransferencia = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
