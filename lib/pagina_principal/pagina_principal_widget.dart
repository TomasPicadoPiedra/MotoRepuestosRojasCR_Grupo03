import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'pagina_principal_model.dart';
export 'pagina_principal_model.dart';

class PaginaPrincipalWidget extends StatefulWidget {
  const PaginaPrincipalWidget({super.key});

  static String routeName = 'PaginaPrincipal';
  static String routePath = '/paginaPrincipal';

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
      ),
    );
  }
}
