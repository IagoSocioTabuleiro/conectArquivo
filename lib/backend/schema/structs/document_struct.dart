// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DocumentStruct extends BaseStruct {
  DocumentStruct({
    String? id,
    String? name,
    DateTime? addedAt,
    DateTime? editedAt,
    List<IndexesStruct>? index,
    double? size,
    String? fileUrl,
    List<String>? categorias,
    double? countedHours,
  })  : _id = id,
        _name = name,
        _addedAt = addedAt,
        _editedAt = editedAt,
        _index = index,
        _size = size,
        _fileUrl = fileUrl,
        _categorias = categorias,
        _countedHours = countedHours;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "added_at" field.
  DateTime? _addedAt;
  DateTime? get addedAt => _addedAt;
  set addedAt(DateTime? val) => _addedAt = val;
  bool hasAddedAt() => _addedAt != null;

  // "editedAt" field.
  DateTime? _editedAt;
  DateTime? get editedAt => _editedAt;
  set editedAt(DateTime? val) => _editedAt = val;
  bool hasEditedAt() => _editedAt != null;

  // "index" field.
  List<IndexesStruct>? _index;
  List<IndexesStruct> get index => _index ?? const [];
  set index(List<IndexesStruct>? val) => _index = val;
  void updateIndex(Function(List<IndexesStruct>) updateFn) =>
      updateFn(_index ??= []);
  bool hasIndex() => _index != null;

  // "size" field.
  double? _size;
  double get size => _size ?? 0.0;
  set size(double? val) => _size = val;
  void incrementSize(double amount) => _size = size + amount;
  bool hasSize() => _size != null;

  // "file_url" field.
  String? _fileUrl;
  String get fileUrl => _fileUrl ?? '';
  set fileUrl(String? val) => _fileUrl = val;
  bool hasFileUrl() => _fileUrl != null;

  // "categorias" field.
  List<String>? _categorias;
  List<String> get categorias => _categorias ?? const [];
  set categorias(List<String>? val) => _categorias = val;
  void updateCategorias(Function(List<String>) updateFn) =>
      updateFn(_categorias ??= []);
  bool hasCategorias() => _categorias != null;

  // "countedHours" field.
  double? _countedHours;
  double get countedHours => _countedHours ?? 0.0;
  set countedHours(double? val) => _countedHours = val;
  void incrementCountedHours(double amount) =>
      _countedHours = countedHours + amount;
  bool hasCountedHours() => _countedHours != null;

  static DocumentStruct fromMap(Map<String, dynamic> data) => DocumentStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        addedAt: data['added_at'] as DateTime?,
        editedAt: data['editedAt'] as DateTime?,
        index: getStructList(
          data['index'],
          IndexesStruct.fromMap,
        ),
        size: castToType<double>(data['size']),
        fileUrl: data['file_url'] as String?,
        categorias: getDataList(data['categorias']),
        countedHours: castToType<double>(data['countedHours']),
      );

  static DocumentStruct? maybeFromMap(dynamic data) =>
      data is Map ? DocumentStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'added_at': _addedAt,
        'editedAt': _editedAt,
        'index': _index?.map((e) => e.toMap()).toList(),
        'size': _size,
        'file_url': _fileUrl,
        'categorias': _categorias,
        'countedHours': _countedHours,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'added_at': serializeParam(
          _addedAt,
          ParamType.DateTime,
        ),
        'editedAt': serializeParam(
          _editedAt,
          ParamType.DateTime,
        ),
        'index': serializeParam(
          _index,
          ParamType.DataStruct,
          true,
        ),
        'size': serializeParam(
          _size,
          ParamType.double,
        ),
        'file_url': serializeParam(
          _fileUrl,
          ParamType.String,
        ),
        'categorias': serializeParam(
          _categorias,
          ParamType.String,
          true,
        ),
        'countedHours': serializeParam(
          _countedHours,
          ParamType.double,
        ),
      }.withoutNulls;

  static DocumentStruct fromSerializableMap(Map<String, dynamic> data) =>
      DocumentStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        addedAt: deserializeParam(
          data['added_at'],
          ParamType.DateTime,
          false,
        ),
        editedAt: deserializeParam(
          data['editedAt'],
          ParamType.DateTime,
          false,
        ),
        index: deserializeStructParam<IndexesStruct>(
          data['index'],
          ParamType.DataStruct,
          true,
          structBuilder: IndexesStruct.fromSerializableMap,
        ),
        size: deserializeParam(
          data['size'],
          ParamType.double,
          false,
        ),
        fileUrl: deserializeParam(
          data['file_url'],
          ParamType.String,
          false,
        ),
        categorias: deserializeParam<String>(
          data['categorias'],
          ParamType.String,
          true,
        ),
        countedHours: deserializeParam(
          data['countedHours'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'DocumentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DocumentStruct &&
        id == other.id &&
        name == other.name &&
        addedAt == other.addedAt &&
        editedAt == other.editedAt &&
        listEquality.equals(index, other.index) &&
        size == other.size &&
        fileUrl == other.fileUrl &&
        listEquality.equals(categorias, other.categorias) &&
        countedHours == other.countedHours;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        addedAt,
        editedAt,
        index,
        size,
        fileUrl,
        categorias,
        countedHours
      ]);
}

DocumentStruct createDocumentStruct({
  String? id,
  String? name,
  DateTime? addedAt,
  DateTime? editedAt,
  double? size,
  String? fileUrl,
  double? countedHours,
}) =>
    DocumentStruct(
      id: id,
      name: name,
      addedAt: addedAt,
      editedAt: editedAt,
      size: size,
      fileUrl: fileUrl,
      countedHours: countedHours,
    );
