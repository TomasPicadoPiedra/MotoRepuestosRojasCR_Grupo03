import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VentasRecord extends FirestoreRecord {
  VentasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Cliente" field.
  DocumentReference? _cliente;
  DocumentReference? get cliente => _cliente;
  bool hasCliente() => _cliente != null;

  // "ListaProductos" field.
  List<DocumentReference>? _listaProductos;
  List<DocumentReference> get listaProductos => _listaProductos ?? const [];
  bool hasListaProductos() => _listaProductos != null;

  // "Total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "MetodoPago" field.
  String? _metodoPago;
  String get metodoPago => _metodoPago ?? '';
  bool hasMetodoPago() => _metodoPago != null;

  // "FechaVenta" field.
  DateTime? _fechaVenta;
  DateTime? get fechaVenta => _fechaVenta;
  bool hasFechaVenta() => _fechaVenta != null;

  // "Vendedor" field.
  DocumentReference? _vendedor;
  DocumentReference? get vendedor => _vendedor;
  bool hasVendedor() => _vendedor != null;

  void _initializeFields() {
    _cliente = snapshotData['Cliente'] as DocumentReference?;
    _listaProductos = getDataList(snapshotData['ListaProductos']);
    _total = castToType<double>(snapshotData['Total']);
    _metodoPago = snapshotData['MetodoPago'] as String?;
    _fechaVenta = snapshotData['FechaVenta'] as DateTime?;
    _vendedor = snapshotData['Vendedor'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Ventas');

  static Stream<VentasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VentasRecord.fromSnapshot(s));

  static Future<VentasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VentasRecord.fromSnapshot(s));

  static VentasRecord fromSnapshot(DocumentSnapshot snapshot) => VentasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VentasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VentasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VentasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VentasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVentasRecordData({
  DocumentReference? cliente,
  double? total,
  String? metodoPago,
  DateTime? fechaVenta,
  DocumentReference? vendedor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Cliente': cliente,
      'Total': total,
      'MetodoPago': metodoPago,
      'FechaVenta': fechaVenta,
      'Vendedor': vendedor,
    }.withoutNulls,
  );

  return firestoreData;
}

class VentasRecordDocumentEquality implements Equality<VentasRecord> {
  const VentasRecordDocumentEquality();

  @override
  bool equals(VentasRecord? e1, VentasRecord? e2) {
    const listEquality = ListEquality();
    return e1?.cliente == e2?.cliente &&
        listEquality.equals(e1?.listaProductos, e2?.listaProductos) &&
        e1?.total == e2?.total &&
        e1?.metodoPago == e2?.metodoPago &&
        e1?.fechaVenta == e2?.fechaVenta &&
        e1?.vendedor == e2?.vendedor;
  }

  @override
  int hash(VentasRecord? e) => const ListEquality().hash([
        e?.cliente,
        e?.listaProductos,
        e?.total,
        e?.metodoPago,
        e?.fechaVenta,
        e?.vendedor
      ]);

  @override
  bool isValidKey(Object? o) => o is VentasRecord;
}
