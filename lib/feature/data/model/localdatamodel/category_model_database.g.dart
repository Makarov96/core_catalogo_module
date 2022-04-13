// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model_database.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetCategoryModelDataBaseCollection on Isar {
  IsarCollection<CategoryModelDataBase> get categoryModelDataBases {
    return getCollection('CategoryModelDataBase');
  }
}

final CategoryModelDataBaseSchema = CollectionSchema(
  name: 'CategoryModelDataBase',
  schema:
      '{"name":"CategoryModelDataBase","idName":"id","properties":[],"indexes":[],"links":[]}',
  nativeAdapter: const _CategoryModelDataBaseNativeAdapter(),
  webAdapter: const _CategoryModelDataBaseWebAdapter(),
  idName: 'id',
  propertyIds: {},
  listProperties: {},
  indexIds: {},
  indexTypes: {},
  linkIds: {},
  backlinkIds: {},
  linkedCollections: [],
  getId: (obj) {
    if (obj.id == Isar.autoIncrement) {
      return null;
    } else {
      return obj.id;
    }
  },
  setId: (obj, id) => obj.id = id,
  getLinks: (obj) => [],
  version: 2,
);

class _CategoryModelDataBaseWebAdapter
    extends IsarWebTypeAdapter<CategoryModelDataBase> {
  const _CategoryModelDataBaseWebAdapter();

  @override
  Object serialize(IsarCollection<CategoryModelDataBase> collection,
      CategoryModelDataBase object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(jsObj, 'id', object.id);
    return jsObj;
  }

  @override
  CategoryModelDataBase deserialize(
      IsarCollection<CategoryModelDataBase> collection, dynamic jsObj) {
    final object = CategoryModelDataBase();
    object.id = IsarNative.jsObjectGet(jsObj, 'id');
    return object;
  }

  @override
  P deserializeProperty<P>(Object jsObj, String propertyName) {
    switch (propertyName) {
      case 'id':
        return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
      default:
        throw 'Illegal propertyName';
    }
  }

  @override
  void attachLinks(Isar isar, int id, CategoryModelDataBase object) {}
}

class _CategoryModelDataBaseNativeAdapter
    extends IsarNativeTypeAdapter<CategoryModelDataBase> {
  const _CategoryModelDataBaseNativeAdapter();

  @override
  void serialize(
      IsarCollection<CategoryModelDataBase> collection,
      IsarRawObject rawObj,
      CategoryModelDataBase object,
      int staticSize,
      List<int> offsets,
      AdapterAlloc alloc) {
    var dynamicSize = 0;
    final size = staticSize + dynamicSize;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
    final writer = IsarBinaryWriter(buffer, staticSize);
  }

  @override
  CategoryModelDataBase deserialize(
      IsarCollection<CategoryModelDataBase> collection,
      int id,
      IsarBinaryReader reader,
      List<int> offsets) {
    final object = CategoryModelDataBase();
    object.id = id;
    return object;
  }

  @override
  P deserializeProperty<P>(
      int id, IsarBinaryReader reader, int propertyIndex, int offset) {
    switch (propertyIndex) {
      case -1:
        return id as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }

  @override
  void attachLinks(Isar isar, int id, CategoryModelDataBase object) {}
}

extension CategoryModelDataBaseQueryWhereSort
    on QueryBuilder<CategoryModelDataBase, CategoryModelDataBase, QWhere> {
  QueryBuilder<CategoryModelDataBase, CategoryModelDataBase, QAfterWhere>
      anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }
}

extension CategoryModelDataBaseQueryWhere on QueryBuilder<CategoryModelDataBase,
    CategoryModelDataBase, QWhereClause> {
  QueryBuilder<CategoryModelDataBase, CategoryModelDataBase, QAfterWhereClause>
      idEqualTo(int? id) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<CategoryModelDataBase, CategoryModelDataBase, QAfterWhereClause>
      idNotEqualTo(int? id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<CategoryModelDataBase, CategoryModelDataBase, QAfterWhereClause>
      idGreaterThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: include,
    ));
  }

  QueryBuilder<CategoryModelDataBase, CategoryModelDataBase, QAfterWhereClause>
      idLessThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [id],
      includeUpper: include,
    ));
  }

  QueryBuilder<CategoryModelDataBase, CategoryModelDataBase, QAfterWhereClause>
      idBetween(
    int? lowerId,
    int? upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [lowerId],
      includeLower: includeLower,
      upper: [upperId],
      includeUpper: includeUpper,
    ));
  }
}

extension CategoryModelDataBaseQueryFilter on QueryBuilder<
    CategoryModelDataBase, CategoryModelDataBase, QFilterCondition> {
  QueryBuilder<CategoryModelDataBase, CategoryModelDataBase,
      QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<CategoryModelDataBase, CategoryModelDataBase,
      QAfterFilterCondition> idEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<CategoryModelDataBase, CategoryModelDataBase,
      QAfterFilterCondition> idGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<CategoryModelDataBase, CategoryModelDataBase,
      QAfterFilterCondition> idLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<CategoryModelDataBase, CategoryModelDataBase,
      QAfterFilterCondition> idBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension CategoryModelDataBaseQueryLinks on QueryBuilder<CategoryModelDataBase,
    CategoryModelDataBase, QFilterCondition> {}

extension CategoryModelDataBaseQueryWhereSortBy
    on QueryBuilder<CategoryModelDataBase, CategoryModelDataBase, QSortBy> {
  QueryBuilder<CategoryModelDataBase, CategoryModelDataBase, QAfterSortBy>
      sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<CategoryModelDataBase, CategoryModelDataBase, QAfterSortBy>
      sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }
}

extension CategoryModelDataBaseQueryWhereSortThenBy
    on QueryBuilder<CategoryModelDataBase, CategoryModelDataBase, QSortThenBy> {
  QueryBuilder<CategoryModelDataBase, CategoryModelDataBase, QAfterSortBy>
      thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<CategoryModelDataBase, CategoryModelDataBase, QAfterSortBy>
      thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }
}

extension CategoryModelDataBaseQueryWhereDistinct
    on QueryBuilder<CategoryModelDataBase, CategoryModelDataBase, QDistinct> {
  QueryBuilder<CategoryModelDataBase, CategoryModelDataBase, QDistinct>
      distinctById() {
    return addDistinctByInternal('id');
  }
}

extension CategoryModelDataBaseQueryProperty on QueryBuilder<
    CategoryModelDataBase, CategoryModelDataBase, QQueryProperty> {
  QueryBuilder<CategoryModelDataBase, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }
}

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetProductCategoryDataBaseCollection on Isar {
  IsarCollection<ProductCategoryDataBase> get productCategoryDataBases {
    return getCollection('ProductCategoryDataBase');
  }
}

final ProductCategoryDataBaseSchema = CollectionSchema(
  name: 'ProductCategoryDataBase',
  schema:
      '{"name":"ProductCategoryDataBase","idName":"id","properties":[{"name":"description","type":"String"}],"indexes":[],"links":[]}',
  nativeAdapter: const _ProductCategoryDataBaseNativeAdapter(),
  webAdapter: const _ProductCategoryDataBaseWebAdapter(),
  idName: 'id',
  propertyIds: {'description': 0},
  listProperties: {},
  indexIds: {},
  indexTypes: {},
  linkIds: {},
  backlinkIds: {},
  linkedCollections: [],
  getId: (obj) {
    if (obj.id == Isar.autoIncrement) {
      return null;
    } else {
      return obj.id;
    }
  },
  setId: (obj, id) => obj.id = id,
  getLinks: (obj) => [],
  version: 2,
);

class _ProductCategoryDataBaseWebAdapter
    extends IsarWebTypeAdapter<ProductCategoryDataBase> {
  const _ProductCategoryDataBaseWebAdapter();

  @override
  Object serialize(IsarCollection<ProductCategoryDataBase> collection,
      ProductCategoryDataBase object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(jsObj, 'description', object.description);
    IsarNative.jsObjectSet(jsObj, 'id', object.id);
    return jsObj;
  }

  @override
  ProductCategoryDataBase deserialize(
      IsarCollection<ProductCategoryDataBase> collection, dynamic jsObj) {
    final object = ProductCategoryDataBase();
    object.description = IsarNative.jsObjectGet(jsObj, 'description') ?? '';
    object.id = IsarNative.jsObjectGet(jsObj, 'id');
    return object;
  }

  @override
  P deserializeProperty<P>(Object jsObj, String propertyName) {
    switch (propertyName) {
      case 'description':
        return (IsarNative.jsObjectGet(jsObj, 'description') ?? '') as P;
      case 'id':
        return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
      default:
        throw 'Illegal propertyName';
    }
  }

  @override
  void attachLinks(Isar isar, int id, ProductCategoryDataBase object) {}
}

class _ProductCategoryDataBaseNativeAdapter
    extends IsarNativeTypeAdapter<ProductCategoryDataBase> {
  const _ProductCategoryDataBaseNativeAdapter();

  @override
  void serialize(
      IsarCollection<ProductCategoryDataBase> collection,
      IsarRawObject rawObj,
      ProductCategoryDataBase object,
      int staticSize,
      List<int> offsets,
      AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.description;
    final _description = IsarBinaryWriter.utf8Encoder.convert(value0);
    dynamicSize += (_description.length) as int;
    final size = staticSize + dynamicSize;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
    final writer = IsarBinaryWriter(buffer, staticSize);
    writer.writeBytes(offsets[0], _description);
  }

  @override
  ProductCategoryDataBase deserialize(
      IsarCollection<ProductCategoryDataBase> collection,
      int id,
      IsarBinaryReader reader,
      List<int> offsets) {
    final object = ProductCategoryDataBase();
    object.description = reader.readString(offsets[0]);
    object.id = id;
    return object;
  }

  @override
  P deserializeProperty<P>(
      int id, IsarBinaryReader reader, int propertyIndex, int offset) {
    switch (propertyIndex) {
      case -1:
        return id as P;
      case 0:
        return (reader.readString(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }

  @override
  void attachLinks(Isar isar, int id, ProductCategoryDataBase object) {}
}

extension ProductCategoryDataBaseQueryWhereSort
    on QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase, QWhere> {
  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase, QAfterWhere>
      anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }
}

extension ProductCategoryDataBaseQueryWhere on QueryBuilder<
    ProductCategoryDataBase, ProductCategoryDataBase, QWhereClause> {
  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase,
      QAfterWhereClause> idEqualTo(int? id) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase,
      QAfterWhereClause> idNotEqualTo(int? id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase,
      QAfterWhereClause> idGreaterThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: include,
    ));
  }

  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase,
      QAfterWhereClause> idLessThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [id],
      includeUpper: include,
    ));
  }

  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase,
      QAfterWhereClause> idBetween(
    int? lowerId,
    int? upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [lowerId],
      includeLower: includeLower,
      upper: [upperId],
      includeUpper: includeUpper,
    ));
  }
}

extension ProductCategoryDataBaseQueryFilter on QueryBuilder<
    ProductCategoryDataBase, ProductCategoryDataBase, QFilterCondition> {
  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase,
      QAfterFilterCondition> descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase,
      QAfterFilterCondition> descriptionGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase,
      QAfterFilterCondition> descriptionLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase,
      QAfterFilterCondition> descriptionBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'description',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase,
      QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase,
      QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase,
          QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase,
          QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'description',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase,
      QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase,
      QAfterFilterCondition> idEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase,
      QAfterFilterCondition> idGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase,
      QAfterFilterCondition> idLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase,
      QAfterFilterCondition> idBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension ProductCategoryDataBaseQueryLinks on QueryBuilder<
    ProductCategoryDataBase, ProductCategoryDataBase, QFilterCondition> {}

extension ProductCategoryDataBaseQueryWhereSortBy
    on QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase, QSortBy> {
  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase, QAfterSortBy>
      sortByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase, QAfterSortBy>
      sortByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase, QAfterSortBy>
      sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase, QAfterSortBy>
      sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }
}

extension ProductCategoryDataBaseQueryWhereSortThenBy on QueryBuilder<
    ProductCategoryDataBase, ProductCategoryDataBase, QSortThenBy> {
  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase, QAfterSortBy>
      thenByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase, QAfterSortBy>
      thenByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase, QAfterSortBy>
      thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase, QAfterSortBy>
      thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }
}

extension ProductCategoryDataBaseQueryWhereDistinct on QueryBuilder<
    ProductCategoryDataBase, ProductCategoryDataBase, QDistinct> {
  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase, QDistinct>
      distinctByDescription({bool caseSensitive = true}) {
    return addDistinctByInternal('description', caseSensitive: caseSensitive);
  }

  QueryBuilder<ProductCategoryDataBase, ProductCategoryDataBase, QDistinct>
      distinctById() {
    return addDistinctByInternal('id');
  }
}

extension ProductCategoryDataBaseQueryProperty on QueryBuilder<
    ProductCategoryDataBase, ProductCategoryDataBase, QQueryProperty> {
  QueryBuilder<ProductCategoryDataBase, String, QQueryOperations>
      descriptionProperty() {
    return addPropertyNameInternal('description');
  }

  QueryBuilder<ProductCategoryDataBase, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }
}
