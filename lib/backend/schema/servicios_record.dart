import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiciosRecord extends FirestoreRecord {
  ServiciosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "NombreS" field.
  String? _nombreS;
  String get nombreS => _nombreS ?? '';
  bool hasNombreS() => _nombreS != null;

  // "Precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "Duracion" field.
  int? _duracion;
  int get duracion => _duracion ?? 0;
  bool hasDuracion() => _duracion != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  void _initializeFields() {
    _nombreS = snapshotData['NombreS'] as String?;
    _precio = castToType<double>(snapshotData['Precio']);
    _duracion = castToType<int>(snapshotData['Duracion']);
    _descripcion = snapshotData['Descripcion'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Servicios');

  static Stream<ServiciosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServiciosRecord.fromSnapshot(s));

  static Future<ServiciosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServiciosRecord.fromSnapshot(s));

  static ServiciosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServiciosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServiciosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServiciosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServiciosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServiciosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServiciosRecordData({
  String? nombreS,
  double? precio,
  int? duracion,
  String? descripcion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NombreS': nombreS,
      'Precio': precio,
      'Duracion': duracion,
      'Descripcion': descripcion,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServiciosRecordDocumentEquality implements Equality<ServiciosRecord> {
  const ServiciosRecordDocumentEquality();

  @override
  bool equals(ServiciosRecord? e1, ServiciosRecord? e2) {
    return e1?.nombreS == e2?.nombreS &&
        e1?.precio == e2?.precio &&
        e1?.duracion == e2?.duracion &&
        e1?.descripcion == e2?.descripcion;
  }

  @override
  int hash(ServiciosRecord? e) => const ListEquality()
      .hash([e?.nombreS, e?.precio, e?.duracion, e?.descripcion]);

  @override
  bool isValidKey(Object? o) => o is ServiciosRecord;
}
