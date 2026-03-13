import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportesRecord extends FirestoreRecord {
  ReportesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "FechaCorte" field.
  DateTime? _fechaCorte;
  DateTime? get fechaCorte => _fechaCorte;
  bool hasFechaCorte() => _fechaCorte != null;

  // "TotalIngreso" field.
  double? _totalIngreso;
  double get totalIngreso => _totalIngreso ?? 0.0;
  bool hasTotalIngreso() => _totalIngreso != null;

  // "TotalEgresos" field.
  double? _totalEgresos;
  double get totalEgresos => _totalEgresos ?? 0.0;
  bool hasTotalEgresos() => _totalEgresos != null;

  // "VentasRealizadas" field.
  int? _ventasRealizadas;
  int get ventasRealizadas => _ventasRealizadas ?? 0;
  bool hasVentasRealizadas() => _ventasRealizadas != null;

  // "ProductosVendidos" field.
  int? _productosVendidos;
  int get productosVendidos => _productosVendidos ?? 0;
  bool hasProductosVendidos() => _productosVendidos != null;

  void _initializeFields() {
    _fechaCorte = snapshotData['FechaCorte'] as DateTime?;
    _totalIngreso = castToType<double>(snapshotData['TotalIngreso']);
    _totalEgresos = castToType<double>(snapshotData['TotalEgresos']);
    _ventasRealizadas = castToType<int>(snapshotData['VentasRealizadas']);
    _productosVendidos = castToType<int>(snapshotData['ProductosVendidos']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Reportes');

  static Stream<ReportesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReportesRecord.fromSnapshot(s));

  static Future<ReportesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReportesRecord.fromSnapshot(s));

  static ReportesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReportesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReportesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReportesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReportesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReportesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReportesRecordData({
  DateTime? fechaCorte,
  double? totalIngreso,
  double? totalEgresos,
  int? ventasRealizadas,
  int? productosVendidos,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'FechaCorte': fechaCorte,
      'TotalIngreso': totalIngreso,
      'TotalEgresos': totalEgresos,
      'VentasRealizadas': ventasRealizadas,
      'ProductosVendidos': productosVendidos,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReportesRecordDocumentEquality implements Equality<ReportesRecord> {
  const ReportesRecordDocumentEquality();

  @override
  bool equals(ReportesRecord? e1, ReportesRecord? e2) {
    return e1?.fechaCorte == e2?.fechaCorte &&
        e1?.totalIngreso == e2?.totalIngreso &&
        e1?.totalEgresos == e2?.totalEgresos &&
        e1?.ventasRealizadas == e2?.ventasRealizadas &&
        e1?.productosVendidos == e2?.productosVendidos;
  }

  @override
  int hash(ReportesRecord? e) => const ListEquality().hash([
        e?.fechaCorte,
        e?.totalIngreso,
        e?.totalEgresos,
        e?.ventasRealizadas,
        e?.productosVendidos
      ]);

  @override
  bool isValidKey(Object? o) => o is ReportesRecord;
}
