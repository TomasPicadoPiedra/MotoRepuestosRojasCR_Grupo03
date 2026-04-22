// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

Future generarPDFCitas(List<CitasRecord>? citasList) async {
  final pdf = pw.Document();
  final items = citasList ?? [];

  final headers = ['Placa', 'Modelo', 'Motivo', 'Fecha/Hora', 'Estado'];

  final data = items.map((item) {
    return [
      item.placa ?? '',
      item.modeloMoto ?? '',
      item.motivo ?? '',
      item.fechaHora?.toString().split('.')[0] ??
          '', // Limpia el formato de fecha
      item.estado ?? '',
    ];
  }).toList();

  pdf.addPage(
    pw.MultiPage(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return [
          pw.Text('MotoRepuestos Rojas',
              style:
                  pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 5),
          pw.Text('Reporte de Citas de Taller',
              style: pw.TextStyle(fontSize: 18, color: PdfColors.grey700)),
          pw.SizedBox(height: 15),
          pw.TableHelper.fromTextArray(
            headers: headers,
            data: data,
            headerStyle: pw.TextStyle(
                fontWeight: pw.FontWeight.bold,
                fontSize: 10,
                color: PdfColors.white),
            cellStyle: pw.TextStyle(fontSize: 9),
            headerDecoration:
                pw.BoxDecoration(color: PdfColors.red900), // Color corporativo
            cellAlignment: pw.Alignment.centerLeft,
          ),
        ];
      },
    ),
  );

  await Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => pdf.save(),
    name: 'Reporte_Citas_MotoRepuestos.pdf',
  );
}
