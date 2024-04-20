import '/flutter_flow/flutter_flow_util.dart';
import 'search_list_widget.dart' show SearchListWidget;
import 'package:flutter/material.dart';

class SearchListModel extends FlutterFlowModel<SearchListWidget> {
  ///  Local state fields for this component.

  bool procurado = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
