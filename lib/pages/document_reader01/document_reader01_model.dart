import '/components/footer_widget.dart';
import '/components/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'document_reader01_widget.dart' show DocumentReader01Widget;
import 'package:flutter/material.dart';

class DocumentReader01Model extends FlutterFlowModel<DocumentReader01Widget> {
  ///  Local state fields for this page.

  List<String> categoriasLista = [];
  void addToCategoriasLista(String item) => categoriasLista.add(item);
  void removeFromCategoriasLista(String item) => categoriasLista.remove(item);
  void removeAtIndexFromCategoriasLista(int index) =>
      categoriasLista.removeAt(index);
  void insertAtIndexInCategoriasLista(int index, String item) =>
      categoriasLista.insert(index, item);
  void updateCategoriasListaAtIndex(int index, Function(String) updateFn) =>
      categoriasLista[index] = updateFn(categoriasLista[index]);

  double? entendimentoBool = 0.0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for header component.
  late HeaderModel headerModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  final textFieldKey2 = GlobalKey();
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? textFieldSelectedOption2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for Slider widget.
  double? sliderValue;
  // Model for footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerModel.dispose();
    tabBarController?.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    footerModel.dispose();
  }
}
