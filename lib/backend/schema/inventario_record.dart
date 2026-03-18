import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InventarioRecord extends FirestoreRecord {
  InventarioRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "NombreP" field.
  String? _nombreP;
  String get nombreP => _nombreP ?? '';
  bool hasNombreP() => _nombreP != null;

  // "Codigo" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  bool hasCodigo() => _codigo != null;

  // "Marca" field.
  String? _marca;
  String get marca => _marca ?? '';
  bool hasMarca() => _marca != null;

  // "stockActual" field.
  int? _stockActual;
  int get stockActual => _stockActual ?? 0;
  bool hasStockActual() => _stockActual != null;

  // "stockMin" field.
  int? _stockMin;
  int get stockMin => _stockMin ?? 0;
  bool hasStockMin() => _stockMin != null;

  // "precioCompra" field.
  double? _precioCompra;
  double get precioCompra => _precioCompra ?? 0.0;
  bool hasPrecioCompra() => _precioCompra != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "porcentaje" field.
  double? _porcentaje;
  double get porcentaje => _porcentaje ?? 0.0;
  bool hasPorcentaje() => _porcentaje != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "precioVenta" field.
  double? _precioVenta;
  double get precioVenta => _precioVenta ?? 0.0;
  bool hasPrecioVenta() => _precioVenta != null;

  void _initializeFields() {
    _nombreP = snapshotData['NombreP'] as String?;
    _codigo = snapshotData['Codigo'] as String?;
    _marca = snapshotData['Marca'] as String?;
    _stockActual = castToType<int>(snapshotData['stockActual']);
    _stockMin = castToType<int>(snapshotData['stockMin']);
    _precioCompra = castToType<double>(snapshotData['precioCompra']);
    _imagen = snapshotData['imagen'] as String?;
    _porcentaje = castToType<double>(snapshotData['porcentaje']);
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _precioVenta = castToType<double>(snapshotData['precioVenta']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Inventario');

  static Stream<InventarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InventarioRecord.fromSnapshot(s));

  static Future<InventarioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InventarioRecord.fromSnapshot(s));

  static InventarioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InventarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InventarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InventarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InventarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InventarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInventarioRecordData({
  String? nombreP,
  String? codigo,
  String? marca,
  int? stockActual,
  int? stockMin,
  double? precioCompra,
  String? imagen,
  double? porcentaje,
  int? cantidad,
  double? precioVenta,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NombreP': nombreP,
      'Codigo': codigo,
      'Marca': marca,
      'stockActual': stockActual,
      'stockMin': stockMin,
      'precioCompra': precioCompra,
      'imagen': imagen,
      'porcentaje': porcentaje,
      'cantidad': cantidad,
      'precioVenta': precioVenta,
    }.withoutNulls,
  );

  return firestoreData;
}

class InventarioRecordDocumentEquality implements Equality<InventarioRecord> {
  const InventarioRecordDocumentEquality();

  @override
  bool equals(InventarioRecord? e1, InventarioRecord? e2) {
    return e1?.nombreP == e2?.nombreP &&
        e1?.codigo == e2?.codigo &&
        e1?.marca == e2?.marca &&
        e1?.stockActual == e2?.stockActual &&
        e1?.stockMin == e2?.stockMin &&
        e1?.precioCompra == e2?.precioCompra &&
        e1?.imagen == e2?.imagen &&
        e1?.porcentaje == e2?.porcentaje &&
        e1?.cantidad == e2?.cantidad &&
        e1?.precioVenta == e2?.precioVenta;
  }

  @override
  int hash(InventarioRecord? e) => const ListEquality().hash([
        e?.nombreP,
        e?.codigo,
        e?.marca,
        e?.stockActual,
        e?.stockMin,
        e?.precioCompra,
        e?.imagen,
        e?.porcentaje,
        e?.cantidad,
        e?.precioVenta
      ]);

  @override
  bool isValidKey(Object? o) => o is InventarioRecord;
}
