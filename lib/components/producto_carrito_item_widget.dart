import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'producto_carrito_item_model.dart';
export 'producto_carrito_item_model.dart';

class ProductoCarritoItemWidget extends StatefulWidget {
  const ProductoCarritoItemWidget({
    super.key,
    required this.precio,
  });

  final double? precio;

  @override
  State<ProductoCarritoItemWidget> createState() =>
      _ProductoCarritoItemWidgetState();
}

class _ProductoCarritoItemWidgetState extends State<ProductoCarritoItemWidget> {
  late ProductoCarritoItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductoCarritoItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 28.0,
          height: 28.0,
          decoration: BoxDecoration(
            color: Color(0xFFF0F0F0),
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: FlutterFlowIconButton(
            borderRadius: 8.0,
            buttonSize: 26.0,
            fillColor: Color(0xFFF5F5F5),
            icon: Icon(
              Icons.arrow_back_sharp,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 14.0,
            ),
            onPressed: () async {
              _model.cantidad = _model.cantidad + -1;
              _model.updatePage(() {});
              FFAppState().cartTotal = functions.restarTotal(
                  FFAppState().cartTotal, widget.precio)!;
              FFAppState().update(() {});
            },
          ),
        ),
        Text(
          _model.cantidad.toString(),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                color: Color(0xFF1A1A1A),
                fontSize: 13.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w600,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
        ),
        Container(
          width: 28.0,
          height: 28.0,
          decoration: BoxDecoration(
            color: Color(0xFF7B1A1A),
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: FlutterFlowIconButton(
              buttonSize: 26.0,
              fillColor: Color(0xFF7B1A1A),
              icon: Icon(
                Icons.add,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 14.0,
              ),
              onPressed: () async {
                _model.cantidad = _model.cantidad + 1;
                safeSetState(() {});
                FFAppState().cartTotal = functions.sumarTotal(
                    FFAppState().cartTotal,
                    functions.sumarTotal(
                        FFAppState().cartTotal, widget.precio))!;
                FFAppState().update(() {});
              },
            ),
          ),
        ),
      ].divide(SizedBox(width: 6.0)),
    );
  }
}
