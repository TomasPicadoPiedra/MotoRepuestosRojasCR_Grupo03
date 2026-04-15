import 'package:flutter/material.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

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

  List<dynamic> _CarItem = [jsonDecode('{}')];
  List<dynamic> get CarItem => _CarItem;
  set CarItem(List<dynamic> value) {
    _CarItem = value;
  }

  void addToCarItem(dynamic value) {
    CarItem.add(value);
  }

  void removeFromCarItem(dynamic value) {
    CarItem.remove(value);
  }

  void removeAtIndexFromCarItem(int index) {
    CarItem.removeAt(index);
  }

  void updateCarItemAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    CarItem[index] = updateFn(_CarItem[index]);
  }

  void insertAtIndexInCarItem(int index, dynamic value) {
    CarItem.insert(index, value);
  }
}
