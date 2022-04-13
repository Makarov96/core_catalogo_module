// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model_database.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetProductModelDatabaseCollection on Isar {
  IsarCollection<ProductModelDatabase> get productModelDatabases {
    return getCollection('ProductModelDatabase');
  }
}

final ProductModelDatabaseSchema = CollectionSchema(
  name: 'ProductModelDatabase',
  schema:
      '{"name":"ProductModelDatabase","idName":"id","properties":[],"indexes":[],"links":[]}',
  nativeAdapter: const _ProductModelDatabaseNativeAdapter(),
  webAdapter: const _ProductModelDatabaseWebAdapter(),
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

class _ProductModelDatabaseWebAdapter
    extends IsarWebTypeAdapter<ProductModelDatabase> {
  const _ProductModelDatabaseWebAdapter();

  @override
  Object serialize(IsarCollection<ProductModelDatabase> collection,
      ProductModelDatabase object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(jsObj, 'id', object.id);
    return jsObj;
  }

  @override
  ProductModelDatabase deserialize(
      IsarCollection<ProductModelDatabase> collection, dynamic jsObj) {
    final object = ProductModelDatabase();
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
  void attachLinks(Isar isar, int id, ProductModelDatabase object) {}
}

class _ProductModelDatabaseNativeAdapter
    extends IsarNativeTypeAdapter<ProductModelDatabase> {
  const _ProductModelDatabaseNativeAdapter();

  @override
  void serialize(
      IsarCollection<ProductModelDatabase> collection,
      IsarRawObject rawObj,
      ProductModelDatabase object,
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
  ProductModelDatabase deserialize(
      IsarCollection<ProductModelDatabase> collection,
      int id,
      IsarBinaryReader reader,
      List<int> offsets) {
    final object = ProductModelDatabase();
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
  void attachLinks(Isar isar, int id, ProductModelDatabase object) {}
}

extension ProductModelDatabaseQueryWhereSort
    on QueryBuilder<ProductModelDatabase, ProductModelDatabase, QWhere> {
  QueryBuilder<ProductModelDatabase, ProductModelDatabase, QAfterWhere>
      anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }
}

extension ProductModelDatabaseQueryWhere
    on QueryBuilder<ProductModelDatabase, ProductModelDatabase, QWhereClause> {
  QueryBuilder<ProductModelDatabase, ProductModelDatabase, QAfterWhereClause>
      idEqualTo(int? id) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<ProductModelDatabase, ProductModelDatabase, QAfterWhereClause>
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

  QueryBuilder<ProductModelDatabase, ProductModelDatabase, QAfterWhereClause>
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

  QueryBuilder<ProductModelDatabase, ProductModelDatabase, QAfterWhereClause>
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

  QueryBuilder<ProductModelDatabase, ProductModelDatabase, QAfterWhereClause>
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

extension ProductModelDatabaseQueryFilter on QueryBuilder<ProductModelDatabase,
    ProductModelDatabase, QFilterCondition> {
  QueryBuilder<ProductModelDatabase, ProductModelDatabase,
      QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<ProductModelDatabase, ProductModelDatabase,
      QAfterFilterCondition> idEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ProductModelDatabase, ProductModelDatabase,
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

  QueryBuilder<ProductModelDatabase, ProductModelDatabase,
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

  QueryBuilder<ProductModelDatabase, ProductModelDatabase,
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

extension ProductModelDatabaseQueryLinks on QueryBuilder<ProductModelDatabase,
    ProductModelDatabase, QFilterCondition> {}

extension ProductModelDatabaseQueryWhereSortBy
    on QueryBuilder<ProductModelDatabase, ProductModelDatabase, QSortBy> {
  QueryBuilder<ProductModelDatabase, ProductModelDatabase, QAfterSortBy>
      sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<ProductModelDatabase, ProductModelDatabase, QAfterSortBy>
      sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }
}

extension ProductModelDatabaseQueryWhereSortThenBy
    on QueryBuilder<ProductModelDatabase, ProductModelDatabase, QSortThenBy> {
  QueryBuilder<ProductModelDatabase, ProductModelDatabase, QAfterSortBy>
      thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<ProductModelDatabase, ProductModelDatabase, QAfterSortBy>
      thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }
}

extension ProductModelDatabaseQueryWhereDistinct
    on QueryBuilder<ProductModelDatabase, ProductModelDatabase, QDistinct> {
  QueryBuilder<ProductModelDatabase, ProductModelDatabase, QDistinct>
      distinctById() {
    return addDistinctByInternal('id');
  }
}

extension ProductModelDatabaseQueryProperty on QueryBuilder<
    ProductModelDatabase, ProductModelDatabase, QQueryProperty> {
  QueryBuilder<ProductModelDatabase, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }
}

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetProductDatabaseCollection on Isar {
  IsarCollection<ProductDatabase> get productDatabases {
    return getCollection('ProductDatabase');
  }
}

final ProductDatabaseSchema = CollectionSchema(
  name: 'ProductDatabase',
  schema:
      '{"name":"ProductDatabase","idName":"id","properties":[{"name":"isFavorite","type":"Bool"},{"name":"productDescription","type":"String"},{"name":"productImage","type":"String"},{"name":"productName","type":"String"},{"name":"productPrice","type":"String"},{"name":"urlMoreDetail","type":"String"}],"indexes":[],"links":[]}',
  nativeAdapter: const _ProductDatabaseNativeAdapter(),
  webAdapter: const _ProductDatabaseWebAdapter(),
  idName: 'id',
  propertyIds: {
    'isFavorite': 0,
    'productDescription': 1,
    'productImage': 2,
    'productName': 3,
    'productPrice': 4,
    'urlMoreDetail': 5
  },
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

class _ProductDatabaseWebAdapter extends IsarWebTypeAdapter<ProductDatabase> {
  const _ProductDatabaseWebAdapter();

  @override
  Object serialize(
      IsarCollection<ProductDatabase> collection, ProductDatabase object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(jsObj, 'id', object.id);
    IsarNative.jsObjectSet(jsObj, 'isFavorite', object.isFavorite);
    IsarNative.jsObjectSet(
        jsObj, 'productDescription', object.productDescription);
    IsarNative.jsObjectSet(jsObj, 'productImage', object.productImage);
    IsarNative.jsObjectSet(jsObj, 'productName', object.productName);
    IsarNative.jsObjectSet(jsObj, 'productPrice', object.productPrice);
    IsarNative.jsObjectSet(jsObj, 'urlMoreDetail', object.urlMoreDetail);
    return jsObj;
  }

  @override
  ProductDatabase deserialize(
      IsarCollection<ProductDatabase> collection, dynamic jsObj) {
    final object = ProductDatabase();
    object.id = IsarNative.jsObjectGet(jsObj, 'id');
    object.isFavorite = IsarNative.jsObjectGet(jsObj, 'isFavorite') ?? false;
    object.productDescription =
        IsarNative.jsObjectGet(jsObj, 'productDescription') ?? '';
    object.productImage = IsarNative.jsObjectGet(jsObj, 'productImage') ?? '';
    object.productName = IsarNative.jsObjectGet(jsObj, 'productName') ?? '';
    object.productPrice = IsarNative.jsObjectGet(jsObj, 'productPrice') ?? '';
    object.urlMoreDetail = IsarNative.jsObjectGet(jsObj, 'urlMoreDetail') ?? '';
    return object;
  }

  @override
  P deserializeProperty<P>(Object jsObj, String propertyName) {
    switch (propertyName) {
      case 'id':
        return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
      case 'isFavorite':
        return (IsarNative.jsObjectGet(jsObj, 'isFavorite') ?? false) as P;
      case 'productDescription':
        return (IsarNative.jsObjectGet(jsObj, 'productDescription') ?? '') as P;
      case 'productImage':
        return (IsarNative.jsObjectGet(jsObj, 'productImage') ?? '') as P;
      case 'productName':
        return (IsarNative.jsObjectGet(jsObj, 'productName') ?? '') as P;
      case 'productPrice':
        return (IsarNative.jsObjectGet(jsObj, 'productPrice') ?? '') as P;
      case 'urlMoreDetail':
        return (IsarNative.jsObjectGet(jsObj, 'urlMoreDetail') ?? '') as P;
      default:
        throw 'Illegal propertyName';
    }
  }

  @override
  void attachLinks(Isar isar, int id, ProductDatabase object) {}
}

class _ProductDatabaseNativeAdapter
    extends IsarNativeTypeAdapter<ProductDatabase> {
  const _ProductDatabaseNativeAdapter();

  @override
  void serialize(
      IsarCollection<ProductDatabase> collection,
      IsarRawObject rawObj,
      ProductDatabase object,
      int staticSize,
      List<int> offsets,
      AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.isFavorite;
    final _isFavorite = value0;
    final value1 = object.productDescription;
    final _productDescription = IsarBinaryWriter.utf8Encoder.convert(value1);
    dynamicSize += (_productDescription.length) as int;
    final value2 = object.productImage;
    final _productImage = IsarBinaryWriter.utf8Encoder.convert(value2);
    dynamicSize += (_productImage.length) as int;
    final value3 = object.productName;
    final _productName = IsarBinaryWriter.utf8Encoder.convert(value3);
    dynamicSize += (_productName.length) as int;
    final value4 = object.productPrice;
    final _productPrice = IsarBinaryWriter.utf8Encoder.convert(value4);
    dynamicSize += (_productPrice.length) as int;
    final value5 = object.urlMoreDetail;
    final _urlMoreDetail = IsarBinaryWriter.utf8Encoder.convert(value5);
    dynamicSize += (_urlMoreDetail.length) as int;
    final size = staticSize + dynamicSize;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
    final writer = IsarBinaryWriter(buffer, staticSize);
    writer.writeBool(offsets[0], _isFavorite);
    writer.writeBytes(offsets[1], _productDescription);
    writer.writeBytes(offsets[2], _productImage);
    writer.writeBytes(offsets[3], _productName);
    writer.writeBytes(offsets[4], _productPrice);
    writer.writeBytes(offsets[5], _urlMoreDetail);
  }

  @override
  ProductDatabase deserialize(IsarCollection<ProductDatabase> collection,
      int id, IsarBinaryReader reader, List<int> offsets) {
    final object = ProductDatabase();
    object.id = id;
    object.isFavorite = reader.readBool(offsets[0]);
    object.productDescription = reader.readString(offsets[1]);
    object.productImage = reader.readString(offsets[2]);
    object.productName = reader.readString(offsets[3]);
    object.productPrice = reader.readString(offsets[4]);
    object.urlMoreDetail = reader.readString(offsets[5]);
    return object;
  }

  @override
  P deserializeProperty<P>(
      int id, IsarBinaryReader reader, int propertyIndex, int offset) {
    switch (propertyIndex) {
      case -1:
        return id as P;
      case 0:
        return (reader.readBool(offset)) as P;
      case 1:
        return (reader.readString(offset)) as P;
      case 2:
        return (reader.readString(offset)) as P;
      case 3:
        return (reader.readString(offset)) as P;
      case 4:
        return (reader.readString(offset)) as P;
      case 5:
        return (reader.readString(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }

  @override
  void attachLinks(Isar isar, int id, ProductDatabase object) {}
}

extension ProductDatabaseQueryWhereSort
    on QueryBuilder<ProductDatabase, ProductDatabase, QWhere> {
  QueryBuilder<ProductDatabase, ProductDatabase, QAfterWhere> anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }
}

extension ProductDatabaseQueryWhere
    on QueryBuilder<ProductDatabase, ProductDatabase, QWhereClause> {
  QueryBuilder<ProductDatabase, ProductDatabase, QAfterWhereClause> idEqualTo(
      int? id) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterWhereClause>
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

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterWhereClause>
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

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterWhereClause> idLessThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [id],
      includeUpper: include,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterWhereClause> idBetween(
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

extension ProductDatabaseQueryFilter
    on QueryBuilder<ProductDatabase, ProductDatabase, QFilterCondition> {
  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      idEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      isFavoriteEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'isFavorite',
      value: value,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productDescriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'productDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productDescriptionGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'productDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productDescriptionLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'productDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productDescriptionBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'productDescription',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'productDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'productDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productDescriptionContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'productDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productDescriptionMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'productDescription',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productImageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'productImage',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productImageGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'productImage',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productImageLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'productImage',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productImageBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'productImage',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productImageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'productImage',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productImageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'productImage',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productImageContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'productImage',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productImageMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'productImage',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'productName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'productName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'productName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'productName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'productName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'productName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productNameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'productName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productNameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'productName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productPriceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'productPrice',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productPriceGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'productPrice',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productPriceLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'productPrice',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productPriceBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'productPrice',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productPriceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'productPrice',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productPriceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'productPrice',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productPriceContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'productPrice',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      productPriceMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'productPrice',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      urlMoreDetailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'urlMoreDetail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      urlMoreDetailGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'urlMoreDetail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      urlMoreDetailLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'urlMoreDetail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      urlMoreDetailBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'urlMoreDetail',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      urlMoreDetailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'urlMoreDetail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      urlMoreDetailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'urlMoreDetail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      urlMoreDetailContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'urlMoreDetail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterFilterCondition>
      urlMoreDetailMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'urlMoreDetail',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension ProductDatabaseQueryLinks
    on QueryBuilder<ProductDatabase, ProductDatabase, QFilterCondition> {}

extension ProductDatabaseQueryWhereSortBy
    on QueryBuilder<ProductDatabase, ProductDatabase, QSortBy> {
  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy>
      sortByIsFavorite() {
    return addSortByInternal('isFavorite', Sort.asc);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy>
      sortByIsFavoriteDesc() {
    return addSortByInternal('isFavorite', Sort.desc);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy>
      sortByProductDescription() {
    return addSortByInternal('productDescription', Sort.asc);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy>
      sortByProductDescriptionDesc() {
    return addSortByInternal('productDescription', Sort.desc);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy>
      sortByProductImage() {
    return addSortByInternal('productImage', Sort.asc);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy>
      sortByProductImageDesc() {
    return addSortByInternal('productImage', Sort.desc);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy>
      sortByProductName() {
    return addSortByInternal('productName', Sort.asc);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy>
      sortByProductNameDesc() {
    return addSortByInternal('productName', Sort.desc);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy>
      sortByProductPrice() {
    return addSortByInternal('productPrice', Sort.asc);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy>
      sortByProductPriceDesc() {
    return addSortByInternal('productPrice', Sort.desc);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy>
      sortByUrlMoreDetail() {
    return addSortByInternal('urlMoreDetail', Sort.asc);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy>
      sortByUrlMoreDetailDesc() {
    return addSortByInternal('urlMoreDetail', Sort.desc);
  }
}

extension ProductDatabaseQueryWhereSortThenBy
    on QueryBuilder<ProductDatabase, ProductDatabase, QSortThenBy> {
  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy>
      thenByIsFavorite() {
    return addSortByInternal('isFavorite', Sort.asc);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy>
      thenByIsFavoriteDesc() {
    return addSortByInternal('isFavorite', Sort.desc);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy>
      thenByProductDescription() {
    return addSortByInternal('productDescription', Sort.asc);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy>
      thenByProductDescriptionDesc() {
    return addSortByInternal('productDescription', Sort.desc);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy>
      thenByProductImage() {
    return addSortByInternal('productImage', Sort.asc);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy>
      thenByProductImageDesc() {
    return addSortByInternal('productImage', Sort.desc);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy>
      thenByProductName() {
    return addSortByInternal('productName', Sort.asc);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy>
      thenByProductNameDesc() {
    return addSortByInternal('productName', Sort.desc);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy>
      thenByProductPrice() {
    return addSortByInternal('productPrice', Sort.asc);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy>
      thenByProductPriceDesc() {
    return addSortByInternal('productPrice', Sort.desc);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy>
      thenByUrlMoreDetail() {
    return addSortByInternal('urlMoreDetail', Sort.asc);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QAfterSortBy>
      thenByUrlMoreDetailDesc() {
    return addSortByInternal('urlMoreDetail', Sort.desc);
  }
}

extension ProductDatabaseQueryWhereDistinct
    on QueryBuilder<ProductDatabase, ProductDatabase, QDistinct> {
  QueryBuilder<ProductDatabase, ProductDatabase, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QDistinct>
      distinctByIsFavorite() {
    return addDistinctByInternal('isFavorite');
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QDistinct>
      distinctByProductDescription({bool caseSensitive = true}) {
    return addDistinctByInternal('productDescription',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QDistinct>
      distinctByProductImage({bool caseSensitive = true}) {
    return addDistinctByInternal('productImage', caseSensitive: caseSensitive);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QDistinct>
      distinctByProductName({bool caseSensitive = true}) {
    return addDistinctByInternal('productName', caseSensitive: caseSensitive);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QDistinct>
      distinctByProductPrice({bool caseSensitive = true}) {
    return addDistinctByInternal('productPrice', caseSensitive: caseSensitive);
  }

  QueryBuilder<ProductDatabase, ProductDatabase, QDistinct>
      distinctByUrlMoreDetail({bool caseSensitive = true}) {
    return addDistinctByInternal('urlMoreDetail', caseSensitive: caseSensitive);
  }
}

extension ProductDatabaseQueryProperty
    on QueryBuilder<ProductDatabase, ProductDatabase, QQueryProperty> {
  QueryBuilder<ProductDatabase, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<ProductDatabase, bool, QQueryOperations> isFavoriteProperty() {
    return addPropertyNameInternal('isFavorite');
  }

  QueryBuilder<ProductDatabase, String, QQueryOperations>
      productDescriptionProperty() {
    return addPropertyNameInternal('productDescription');
  }

  QueryBuilder<ProductDatabase, String, QQueryOperations>
      productImageProperty() {
    return addPropertyNameInternal('productImage');
  }

  QueryBuilder<ProductDatabase, String, QQueryOperations>
      productNameProperty() {
    return addPropertyNameInternal('productName');
  }

  QueryBuilder<ProductDatabase, String, QQueryOperations>
      productPriceProperty() {
    return addPropertyNameInternal('productPrice');
  }

  QueryBuilder<ProductDatabase, String, QQueryOperations>
      urlMoreDetailProperty() {
    return addPropertyNameInternal('urlMoreDetail');
  }
}
