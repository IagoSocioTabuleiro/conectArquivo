// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IndexesStruct extends BaseStruct {
  IndexesStruct({
    String? id,
    String? madeBy,
    DateTime? addedAt,
    DateTime? editedAt,
    String? titulo,
    String? descricao,
    String? opiniao,
    List<String>? categoria,
    String? data,
    double? entendimento,
  })  : _id = id,
        _madeBy = madeBy,
        _addedAt = addedAt,
        _editedAt = editedAt,
        _titulo = titulo,
        _descricao = descricao,
        _opiniao = opiniao,
        _categoria = categoria,
        _data = data,
        _entendimento = entendimento;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "madeBy" field.
  String? _madeBy;
  String get madeBy => _madeBy ?? '';
  set madeBy(String? val) => _madeBy = val;
  bool hasMadeBy() => _madeBy != null;

  // "addedAt" field.
  DateTime? _addedAt;
  DateTime? get addedAt => _addedAt;
  set addedAt(DateTime? val) => _addedAt = val;
  bool hasAddedAt() => _addedAt != null;

  // "editedAt" field.
  DateTime? _editedAt;
  DateTime? get editedAt => _editedAt;
  set editedAt(DateTime? val) => _editedAt = val;
  bool hasEditedAt() => _editedAt != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  set titulo(String? val) => _titulo = val;
  bool hasTitulo() => _titulo != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;
  bool hasDescricao() => _descricao != null;

  // "opiniao" field.
  String? _opiniao;
  String get opiniao => _opiniao ?? '';
  set opiniao(String? val) => _opiniao = val;
  bool hasOpiniao() => _opiniao != null;

  // "categoria" field.
  List<String>? _categoria;
  List<String> get categoria => _categoria ?? const [];
  set categoria(List<String>? val) => _categoria = val;
  void updateCategoria(Function(List<String>) updateFn) =>
      updateFn(_categoria ??= []);
  bool hasCategoria() => _categoria != null;

  // "data" field.
  String? _data;
  String get data => _data ?? '';
  set data(String? val) => _data = val;
  bool hasData() => _data != null;

  // "entendimento" field.
  double? _entendimento;
  double get entendimento => _entendimento ?? 0.0;
  set entendimento(double? val) => _entendimento = val;
  void incrementEntendimento(double amount) =>
      _entendimento = entendimento + amount;
  bool hasEntendimento() => _entendimento != null;

  static IndexesStruct fromMap(Map<String, dynamic> data) => IndexesStruct(
        id: data['id'] as String?,
        madeBy: data['madeBy'] as String?,
        addedAt: data['addedAt'] as DateTime?,
        editedAt: data['editedAt'] as DateTime?,
        titulo: data['titulo'] as String?,
        descricao: data['descricao'] as String?,
        opiniao: data['opiniao'] as String?,
        categoria: getDataList(data['categoria']),
        data: data['data'] as String?,
        entendimento: castToType<double>(data['entendimento']),
      );

  static IndexesStruct? maybeFromMap(dynamic data) =>
      data is Map ? IndexesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'madeBy': _madeBy,
        'addedAt': _addedAt,
        'editedAt': _editedAt,
        'titulo': _titulo,
        'descricao': _descricao,
        'opiniao': _opiniao,
        'categoria': _categoria,
        'data': _data,
        'entendimento': _entendimento,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'madeBy': serializeParam(
          _madeBy,
          ParamType.String,
        ),
        'addedAt': serializeParam(
          _addedAt,
          ParamType.DateTime,
        ),
        'editedAt': serializeParam(
          _editedAt,
          ParamType.DateTime,
        ),
        'titulo': serializeParam(
          _titulo,
          ParamType.String,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'opiniao': serializeParam(
          _opiniao,
          ParamType.String,
        ),
        'categoria': serializeParam(
          _categoria,
          ParamType.String,
          true,
        ),
        'data': serializeParam(
          _data,
          ParamType.String,
        ),
        'entendimento': serializeParam(
          _entendimento,
          ParamType.double,
        ),
      }.withoutNulls;

  static IndexesStruct fromSerializableMap(Map<String, dynamic> data) =>
      IndexesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        madeBy: deserializeParam(
          data['madeBy'],
          ParamType.String,
          false,
        ),
        addedAt: deserializeParam(
          data['addedAt'],
          ParamType.DateTime,
          false,
        ),
        editedAt: deserializeParam(
          data['editedAt'],
          ParamType.DateTime,
          false,
        ),
        titulo: deserializeParam(
          data['titulo'],
          ParamType.String,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        opiniao: deserializeParam(
          data['opiniao'],
          ParamType.String,
          false,
        ),
        categoria: deserializeParam<String>(
          data['categoria'],
          ParamType.String,
          true,
        ),
        data: deserializeParam(
          data['data'],
          ParamType.String,
          false,
        ),
        entendimento: deserializeParam(
          data['entendimento'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'IndexesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is IndexesStruct &&
        id == other.id &&
        madeBy == other.madeBy &&
        addedAt == other.addedAt &&
        editedAt == other.editedAt &&
        titulo == other.titulo &&
        descricao == other.descricao &&
        opiniao == other.opiniao &&
        listEquality.equals(categoria, other.categoria) &&
        data == other.data &&
        entendimento == other.entendimento;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        madeBy,
        addedAt,
        editedAt,
        titulo,
        descricao,
        opiniao,
        categoria,
        data,
        entendimento
      ]);
}

IndexesStruct createIndexesStruct({
  String? id,
  String? madeBy,
  DateTime? addedAt,
  DateTime? editedAt,
  String? titulo,
  String? descricao,
  String? opiniao,
  String? data,
  double? entendimento,
}) =>
    IndexesStruct(
      id: id,
      madeBy: madeBy,
      addedAt: addedAt,
      editedAt: editedAt,
      titulo: titulo,
      descricao: descricao,
      opiniao: opiniao,
      data: data,
      entendimento: entendimento,
    );
