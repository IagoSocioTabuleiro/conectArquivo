import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'explicacao_titulo_model.dart';
export 'explicacao_titulo_model.dart';

class ExplicacaoTituloWidget extends StatefulWidget {
  const ExplicacaoTituloWidget({super.key});

  @override
  State<ExplicacaoTituloWidget> createState() => _ExplicacaoTituloWidgetState();
}

class _ExplicacaoTituloWidgetState extends State<ExplicacaoTituloWidget> {
  late ExplicacaoTituloModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExplicacaoTituloModel());

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
