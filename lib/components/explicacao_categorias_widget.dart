import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'explicacao_categorias_model.dart';
export 'explicacao_categorias_model.dart';

class ExplicacaoCategoriasWidget extends StatefulWidget {
  const ExplicacaoCategoriasWidget({super.key});

  @override
  State<ExplicacaoCategoriasWidget> createState() =>
      _ExplicacaoCategoriasWidgetState();
}

class _ExplicacaoCategoriasWidgetState
    extends State<ExplicacaoCategoriasWidget> {
  late ExplicacaoCategoriasModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExplicacaoCategoriasModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
          child: Text(
            'Se possível digite o título mais evidente do documento, que possa descrever o documento em uma linha',
            style: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0.0,
                ),
          ),
        ),
      ],
    );
  }
}
