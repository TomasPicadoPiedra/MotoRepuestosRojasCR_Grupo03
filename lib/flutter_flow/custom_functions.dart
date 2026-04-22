import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

double calcularPrecioVenta(
  double precioCompra,
  double porcentaje,
) {
  return precioCompra + (precioCompra * (porcentaje / 100));
}

bool? validarHorario(DateTime? fecha) {
  if (fecha == null) return false;

  // 6 = Sábado. Cerrado todo el día.
  if (fecha.weekday == 6) return false;

  // 7 = Domingo. Horario de 9am a 6pm (18:00)
  if (fecha.weekday == 7) {
    if (fecha.hour < 9 || fecha.hour >= 18) return false;
  } else {
    // Lunes a Viernes (1 a 5). Horario de 8am a 6pm (18:00)
    if (fecha.hour < 8 || fecha.hour >= 18) return false;
  }
  return true;
}

/// sumar total
double? sumarTotal(
  double? totalActual,
  double? precio,
) {
  return (totalActual ?? 0) + (precio ?? 0);
}

double? calcularIVA(double? total) {
  return (total ?? 0) * 0.16;
}

double? calcularTotal(double? total) {
  return (total ?? 0) * 1.16;
}

double? restarTotal(
  double? totalActual,
  double? precio,
) {
  return (totalActual ?? 0) - (precio ?? 0);
}

String? searchEnd(String? query) {
  return (query ?? '') + '\uf8ff';
}
