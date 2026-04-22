import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _rol = '';
  String get rol => _rol;
  set rol(String value) {
    _rol = value;
  }

  double _cartTotal = 0.0;
  double get cartTotal => _cartTotal;
  set cartTotal(double value) {
    _cartTotal = value;
  }

  List<DocumentReference> _CarItem = [];
  List<DocumentReference> get CarItem => _CarItem;
  set CarItem(List<DocumentReference> value) {
    _CarItem = value;
  }

  void addToCarItem(DocumentReference value) {
    CarItem.add(value);
  }

  void removeFromCarItem(DocumentReference value) {
    CarItem.remove(value);
  }

  void removeAtIndexFromCarItem(int index) {
    CarItem.removeAt(index);
  }

  void updateCarItemAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    CarItem[index] = updateFn(_CarItem[index]);
  }

  void insertAtIndexInCarItem(int index, DocumentReference value) {
    CarItem.insert(index, value);
  }

  List<String> _cartCodigos = [];
  List<String> get cartCodigos => _cartCodigos;
  set cartCodigos(List<String> value) {
    _cartCodigos = value;
  }

  void addToCartCodigos(String value) {
    cartCodigos.add(value);
  }

  void removeFromCartCodigos(String value) {
    cartCodigos.remove(value);
  }

  void removeAtIndexFromCartCodigos(int index) {
    cartCodigos.removeAt(index);
  }

  void updateCartCodigosAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    cartCodigos[index] = updateFn(_cartCodigos[index]);
  }

  void insertAtIndexInCartCodigos(int index, String value) {
    cartCodigos.insert(index, value);
  }

  List<int> _cartCantidades = [];
  List<int> get cartCantidades => _cartCantidades;
  set cartCantidades(List<int> value) {
    _cartCantidades = value;
  }

  void addToCartCantidades(int value) {
    cartCantidades.add(value);
  }

  void removeFromCartCantidades(int value) {
    cartCantidades.remove(value);
  }

  void removeAtIndexFromCartCantidades(int index) {
    cartCantidades.removeAt(index);
  }

  void updateCartCantidadesAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    cartCantidades[index] = updateFn(_cartCantidades[index]);
  }

  void insertAtIndexInCartCantidades(int index, int value) {
    cartCantidades.insert(index, value);
  }

  String _imagentransferencia = '';
  String get imagentransferencia => _imagentransferencia;
  set imagentransferencia(String value) {
    _imagentransferencia = value;
  }

  String _searchquey = '';
  String get searchquey => _searchquey;
  set searchquey(String value) {
    _searchquey = value;
  }
}
