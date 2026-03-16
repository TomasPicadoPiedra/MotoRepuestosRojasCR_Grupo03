import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pagina_principal_model.dart';
export 'pagina_principal_model.dart';

class PaginaPrincipalWidget extends StatefulWidget {
  const PaginaPrincipalWidget({super.key});

  static String routeName = 'PaginaPrincipal';
  static String routePath = '/PaginaPrincipal';

  @override
  State<PaginaPrincipalWidget> createState() => _PaginaPrincipalWidgetState();
}

class _PaginaPrincipalWidgetState extends State<PaginaPrincipalWidget> {
  late PaginaPrincipalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaginaPrincipalModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFF6B0000),
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                    child: AuthUserStreamWidget(
                      builder: (context) => Text(
                        currentUserDisplayName,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Colors.white,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(VerPerfilWidget.routeName);
                    },
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 457.8,
                height: 733.22,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('btnInventario pressed ...');
                          },
                          text: 'Inventario',
                          icon: Icon(
                            Icons.move_to_inbox_sharp,
                            size: 50.0,
                          ),
                          options: FFButtonOptions(
                            width: 350.0,
                            height: 100.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Colors.black,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                              fontFamily: 'WorkSans',
                              color: Colors.white,
                              fontSize: 30.0,
                              letterSpacing: 0.0,
                              shadows: [
                                Shadow(
                                  color: Color(0xFFC60000),
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 4.0,
                                )
                              ],
                            ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('btnCitas pressed ...');
                          },
                          text: 'Citas',
                          icon: Icon(
                            Icons.calendar_month,
                            size: 50.0,
                          ),
                          options: FFButtonOptions(
                            width: 350.0,
                            height: 100.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Colors.black,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                              fontFamily: 'WorkSans',
                              color: Colors.white,
                              fontSize: 30.0,
                              letterSpacing: 0.0,
                              shadows: [
                                Shadow(
                                  color: Color(0xFFC60000),
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 4.0,
                                )
                              ],
                            ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('btnUsuarios pressed ...');
                          },
                          text: 'Usuarios',
                          icon: Icon(
                            Icons.person_search,
                            size: 50.0,
                          ),
                          options: FFButtonOptions(
                            width: 350.0,
                            height: 100.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Colors.black,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                              fontFamily: 'WorkSans',
                              color: Colors.white,
                              fontSize: 30.0,
                              letterSpacing: 0.0,
                              shadows: [
                                Shadow(
                                  color: Color(0xFFC60000),
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 4.0,
                                )
                              ],
                            ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('btnReportes pressed ...');
                          },
                          text: 'Reportes',
                          icon: Icon(
                            Icons.document_scanner_sharp,
                            size: 50.0,
                          ),
                          options: FFButtonOptions(
                            width: 350.0,
                            height: 100.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Colors.black,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                              fontFamily: 'WorkSans',
                              color: Colors.white,
                              fontSize: 30.0,
                              letterSpacing: 0.0,
                              shadows: [
                                Shadow(
                                  color: Color(0xFFC60000),
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 4.0,
                                )
                              ],
                            ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('btnPuntoVenta pressed ...');
                          },
                          text: 'Punto de Venta',
                          icon: Icon(
                            Icons.attach_money,
                            size: 50.0,
                          ),
                          options: FFButtonOptions(
                            width: 350.0,
                            height: 100.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Colors.black,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                              fontFamily: 'WorkSans',
                              color: Colors.white,
                              fontSize: 30.0,
                              letterSpacing: 0.0,
                              shadows: [
                                Shadow(
                                  color: Color(0xFFC60000),
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 4.0,
                                )
                              ],
                            ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('btnServicio pressed ...');
                          },
                          text: 'Servicios',
                          icon: Icon(
                            Icons.room_service,
                            size: 50.0,
                          ),
                          options: FFButtonOptions(
                            width: 350.0,
                            height: 100.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Colors.black,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                              fontFamily: 'WorkSans',
                              color: Colors.white,
                              fontSize: 30.0,
                              letterSpacing: 0.0,
                              shadows: [
                                Shadow(
                                  color: Color(0xFFC60000),
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 4.0,
                                )
                              ],
                            ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
