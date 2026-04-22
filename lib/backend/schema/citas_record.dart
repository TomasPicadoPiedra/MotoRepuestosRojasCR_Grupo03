import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CitasRecord extends FirestoreRecord {
  CitasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Cliente" field.
  DocumentReference? _cliente;
  DocumentReference? get cliente => _cliente;
  bool hasCliente() => _cliente != null;

  // "FechaHora" field.
  DateTime? _fechaHora;
  DateTime? get fechaHora => _fechaHora;
  bool hasFechaHora() => _fechaHora != null;

  // "Motivo" field.
  String? _motivo;
  String get motivo => _motivo ?? '';
  bool hasMotivo() => _motivo != null;

  // "modeloMoto" field.
  String? _modeloMoto;
  String get modeloMoto => _modeloMoto ?? '';
  bool hasModeloMoto() => _modeloMoto != null;

  // "Placa" field.
  String? _placa;
  String get placa => _placa ?? '';
  bool hasPlaca() => _placa != null;

  // "Estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "Servicios" field.
  List<String>? _servicios;
  List<String> get servicios => _servicios ?? const [];
  bool hasServicios() => _servicios != null;

  void _initializeFields() {
    _cliente = snapshotData['Cliente'] as DocumentReference?;
    _fechaHora = snapshotData['FechaHora'] as DateTime?;
    _motivo = snapshotData['Motivo'] as String?;
    _modeloMoto = snapshotData['modeloMoto'] as String?;
    _placa = snapshotData['Placa'] as String?;
    _estado = snapshotData['Estado'] as String?;
    _servicios = getDataList(snapshotData['Servicios']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Citas');

  static Stream<CitasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CitasRecord.fromSnapshot(s));

  static Future<CitasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CitasRecord.fromSnapshot(s));

  static CitasRecord fromSnapshot(DocumentSnapshot snapshot) => CitasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CitasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CitasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CitasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CitasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCitasRecordData({
  DocumentReference? cliente,
  DateTime? fechaHora,
  String? motivo,
  String? modeloMoto,
  String? placa,
  String? estado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Cliente': cliente,
      'FechaHora': fechaHora,
      'Motivo': motivo,
      'modeloMoto': modeloMoto,
      'Placa': placa,
      'Estado': estado,
    }.withoutNulls,
  );

  return firestoreData;
}

class CitasRecordDocumentEquality implements Equality<CitasRecord> {
  const CitasRecordDocumentEquality();

  @override
  bool equals(CitasRecord? e1, CitasRecord? e2) {
    const listEquality = ListEquality();
    return e1?.cliente == e2?.cliente &&
        e1?.fechaHora == e2?.fechaHora &&
        e1?.motivo == e2?.motivo &&
        e1?.modeloMoto == e2?.modeloMoto &&
        e1?.placa == e2?.placa &&
        e1?.estado == e2?.estado &&
        listEquality.equals(e1?.servicios, e2?.servicios);
  }

  @override
  int hash(CitasRecord? e) => const ListEquality().hash([
        e?.cliente,
        e?.fechaHora,
        e?.motivo,
        e?.modeloMoto,
        e?.placa,
        e?.estado,
        e?.servicios
      ]);

  @override
  bool isValidKey(Object? o) => o is CitasRecord;
}
