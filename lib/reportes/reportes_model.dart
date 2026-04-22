import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'reportes_widget.dart' show ReportesWidget;
import 'package:flutter/material.dart';

class ReportesModel extends FlutterFlowModel<ReportesWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Column widget.
  List<InventarioRecord>? listaProductos;
  // Stores action output result for [Firestore Query - Query a collection] action in Column widget.
  List<CitasRecord>? listaCitas;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
