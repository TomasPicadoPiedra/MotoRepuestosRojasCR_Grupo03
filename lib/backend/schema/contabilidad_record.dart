import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContabilidadRecord extends FirestoreRecord {
  ContabilidadRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "Monto" field.
  double? _monto;
  double get monto => _monto ?? 0.0;
  bool hasMonto() => _monto != null;

  // "Categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "FechaRegistro" field.
  DateTime? _fechaRegistro;
  DateTime? get fechaRegistro => _fechaRegistro;
  bool hasFechaRegistro() => _fechaRegistro != null;

  void _initializeFields() {
    _tipo = snapshotData['Tipo'] as String?;
    _monto = castToType<double>(snapshotData['Monto']);
    _categoria = snapshotData['Categoria'] as String?;
    _descripcion = snapshotData['Descripcion'] as String?;
    _fechaRegistro = snapshotData['FechaRegistro'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Contabilidad');

  static Stream<ContabilidadRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContabilidadRecord.fromSnapshot(s));

  static Future<ContabilidadRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContabilidadRecord.fromSnapshot(s));

  static ContabilidadRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContabilidadRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContabilidadRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContabilidadRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContabilidadRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContabilidadRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContabilidadRecordData({
  String? tipo,
  double? monto,
  String? categoria,
  String? descripcion,
  DateTime? fechaRegistro,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Tipo': tipo,
      'Monto': monto,
      'Categoria': categoria,
      'Descripcion': descripcion,
      'FechaRegistro': fechaRegistro,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContabilidadRecordDocumentEquality
    implements Equality<ContabilidadRecord> {
  const ContabilidadRecordDocumentEquality();

  @override
  bool equals(ContabilidadRecord? e1, ContabilidadRecord? e2) {
    return e1?.tipo == e2?.tipo &&
        e1?.monto == e2?.monto &&
        e1?.categoria == e2?.categoria &&
        e1?.descripcion == e2?.descripcion &&
        e1?.fechaRegistro == e2?.fechaRegistro;
  }

  @override
  int hash(ContabilidadRecord? e) => const ListEquality().hash(
      [e?.tipo, e?.monto, e?.categoria, e?.descripcion, e?.fechaRegistro]);

  @override
  bool isValidKey(Object? o) => o is ContabilidadRecord;
}
