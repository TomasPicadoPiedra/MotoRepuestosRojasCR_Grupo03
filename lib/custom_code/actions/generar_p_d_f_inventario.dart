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

Future generarPDFInventario(List<InventarioRecord>? inventarioList) async {
  final pdf = pw.Document();
  final items = inventarioList ?? [];

  final headers = [
    'Código',
    'Nombre',
    'Categoría',
    'Marca',
    'Cant.',
    'Costo',
    '%',
    'P. Venta'
  ];

  final data = items.map((item) {
    return [
      item.codigo,
      item.nombreP,
      item.categoria,
      item.marca,
      item.cantidad.toString(),
      '₡${item.precioCompra.toStringAsFixed(2)}',
      '${item.porcentaje.toStringAsFixed(0)}%',
      '₡${item.precioVenta.toStringAsFixed(2)}',
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
          pw.Text('Reporte de Inventario',
              style: pw.TextStyle(fontSize: 18, color: PdfColors.grey700)),
          pw.SizedBox(height: 15),
          pw.TableHelper.fromTextArray(
            headers: headers,
            data: data,
            headerStyle:
                pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 10),
            cellStyle: pw.TextStyle(fontSize: 9),
            headerDecoration: pw.BoxDecoration(color: PdfColors.grey300),
          ),
        ];
      },
    ),
  );

  await Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => pdf.save(),
    name: 'Inventario_MotoRepuestos.pdf',
  );
}
