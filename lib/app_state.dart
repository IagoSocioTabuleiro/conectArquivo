import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _documents = prefs
              .getStringList('ff_documents')
              ?.map((x) {
                try {
                  return DocumentStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _documents;
    });
    _safeInit(() {
      _indexacoes = prefs
              .getStringList('ff_indexacoes')
              ?.map((x) {
                try {
                  return IndexesStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _indexacoes;
    });
    _safeInit(() {
      _categoriesDefault =
          prefs.getStringList('ff_categoriesDefault') ?? _categoriesDefault;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentStruct> _documents = [];
  List<DocumentStruct> get documents => _documents;
  set documents(List<DocumentStruct> value) {
    _documents = value;
    prefs.setStringList(
        'ff_documents', value.map((x) => x.serialize()).toList());
  }

  void addToDocuments(DocumentStruct value) {
    _documents.add(value);
    prefs.setStringList(
        'ff_documents', _documents.map((x) => x.serialize()).toList());
  }

  void removeFromDocuments(DocumentStruct value) {
    _documents.remove(value);
    prefs.setStringList(
        'ff_documents', _documents.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromDocuments(int index) {
    _documents.removeAt(index);
    prefs.setStringList(
        'ff_documents', _documents.map((x) => x.serialize()).toList());
  }

  void updateDocumentsAtIndex(
    int index,
    DocumentStruct Function(DocumentStruct) updateFn,
  ) {
    _documents[index] = updateFn(_documents[index]);
    prefs.setStringList(
        'ff_documents', _documents.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInDocuments(int index, DocumentStruct value) {
    _documents.insert(index, value);
    prefs.setStringList(
        'ff_documents', _documents.map((x) => x.serialize()).toList());
  }

  List<IndexesStruct> _indexacoes = [];
  List<IndexesStruct> get indexacoes => _indexacoes;
  set indexacoes(List<IndexesStruct> value) {
    _indexacoes = value;
    prefs.setStringList(
        'ff_indexacoes', value.map((x) => x.serialize()).toList());
  }

  void addToIndexacoes(IndexesStruct value) {
    _indexacoes.add(value);
    prefs.setStringList(
        'ff_indexacoes', _indexacoes.map((x) => x.serialize()).toList());
  }

  void removeFromIndexacoes(IndexesStruct value) {
    _indexacoes.remove(value);
    prefs.setStringList(
        'ff_indexacoes', _indexacoes.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromIndexacoes(int index) {
    _indexacoes.removeAt(index);
    prefs.setStringList(
        'ff_indexacoes', _indexacoes.map((x) => x.serialize()).toList());
  }

  void updateIndexacoesAtIndex(
    int index,
    IndexesStruct Function(IndexesStruct) updateFn,
  ) {
    _indexacoes[index] = updateFn(_indexacoes[index]);
    prefs.setStringList(
        'ff_indexacoes', _indexacoes.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInIndexacoes(int index, IndexesStruct value) {
    _indexacoes.insert(index, value);
    prefs.setStringList(
        'ff_indexacoes', _indexacoes.map((x) => x.serialize()).toList());
  }

  List<String> _categoriesDefault = [];
  List<String> get categoriesDefault => _categoriesDefault;
  set categoriesDefault(List<String> value) {
    _categoriesDefault = value;
    prefs.setStringList('ff_categoriesDefault', value);
  }

  void addToCategoriesDefault(String value) {
    _categoriesDefault.add(value);
    prefs.setStringList('ff_categoriesDefault', _categoriesDefault);
  }

  void removeFromCategoriesDefault(String value) {
    _categoriesDefault.remove(value);
    prefs.setStringList('ff_categoriesDefault', _categoriesDefault);
  }

  void removeAtIndexFromCategoriesDefault(int index) {
    _categoriesDefault.removeAt(index);
    prefs.setStringList('ff_categoriesDefault', _categoriesDefault);
  }

  void updateCategoriesDefaultAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _categoriesDefault[index] = updateFn(_categoriesDefault[index]);
    prefs.setStringList('ff_categoriesDefault', _categoriesDefault);
  }

  void insertAtIndexInCategoriesDefault(int index, String value) {
    _categoriesDefault.insert(index, value);
    prefs.setStringList('ff_categoriesDefault', _categoriesDefault);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
