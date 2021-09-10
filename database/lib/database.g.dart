// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class ExampleTableData extends DataClass
    implements Insertable<ExampleTableData> {
  final Map<String, dynamic>? jsonColumn;
  final String? name;
  final String? content;
  ExampleTableData({this.jsonColumn, this.name, this.content});
  factory ExampleTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ExampleTableData(
      jsonColumn: ExampleTable.$converter0.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}json_column'])),
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name']),
      content: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}content']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || jsonColumn != null) {
      final converter = ExampleTable.$converter0;
      map['json_column'] = Variable<String?>(converter.mapToSql(jsonColumn));
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String?>(name);
    }
    if (!nullToAbsent || content != null) {
      map['content'] = Variable<String?>(content);
    }
    return map;
  }

  factory ExampleTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ExampleTableData(
      jsonColumn:
          serializer.fromJson<Map<String, dynamic>?>(json['json_column']),
      name: serializer.fromJson<String?>(json['name']),
      content: serializer.fromJson<String?>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'json_column': serializer.toJson<Map<String, dynamic>?>(jsonColumn),
      'name': serializer.toJson<String?>(name),
      'content': serializer.toJson<String?>(content),
    };
  }

  ExampleTableData copyWith(
          {Value<Map<String, dynamic>?> jsonColumn = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<String?> content = const Value.absent()}) =>
      ExampleTableData(
        jsonColumn: jsonColumn.present ? jsonColumn.value : this.jsonColumn,
        name: name.present ? name.value : this.name,
        content: content.present ? content.value : this.content,
      );
  @override
  String toString() {
    return (StringBuffer('ExampleTableData(')
          ..write('jsonColumn: $jsonColumn, ')
          ..write('name: $name, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(jsonColumn.hashCode, $mrjc(name.hashCode, content.hashCode)));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExampleTableData &&
          other.jsonColumn == this.jsonColumn &&
          other.name == this.name &&
          other.content == this.content);
}

class ExampleTableCompanion extends UpdateCompanion<ExampleTableData> {
  final Value<Map<String, dynamic>?> jsonColumn;
  final Value<String?> name;
  final Value<String?> content;
  const ExampleTableCompanion({
    this.jsonColumn = const Value.absent(),
    this.name = const Value.absent(),
    this.content = const Value.absent(),
  });
  ExampleTableCompanion.insert({
    this.jsonColumn = const Value.absent(),
    this.name = const Value.absent(),
    this.content = const Value.absent(),
  });
  static Insertable<ExampleTableData> custom({
    Expression<Map<String, dynamic>?>? jsonColumn,
    Expression<String?>? name,
    Expression<String?>? content,
  }) {
    return RawValuesInsertable({
      if (jsonColumn != null) 'json_column': jsonColumn,
      if (name != null) 'name': name,
      if (content != null) 'content': content,
    });
  }

  ExampleTableCompanion copyWith(
      {Value<Map<String, dynamic>?>? jsonColumn,
      Value<String?>? name,
      Value<String?>? content}) {
    return ExampleTableCompanion(
      jsonColumn: jsonColumn ?? this.jsonColumn,
      name: name ?? this.name,
      content: content ?? this.content,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (jsonColumn.present) {
      final converter = ExampleTable.$converter0;
      map['json_column'] =
          Variable<String?>(converter.mapToSql(jsonColumn.value));
    }
    if (name.present) {
      map['name'] = Variable<String?>(name.value);
    }
    if (content.present) {
      map['content'] = Variable<String?>(content.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExampleTableCompanion(')
          ..write('jsonColumn: $jsonColumn, ')
          ..write('name: $name, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }
}

class ExampleTable extends Table
    with TableInfo<ExampleTable, ExampleTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  ExampleTable(this._db, [this._alias]);
  late final GeneratedColumnWithTypeConverter<Map<String, dynamic>, String?>
      jsonColumn = GeneratedColumn<String?>('json_column', aliasedName, true,
              typeName: 'TEXT',
              requiredDuringInsert: false,
              $customConstraints: '')
          .withConverter<Map<String, dynamic>>(ExampleTable.$converter0);
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false, $customConstraints: '');
  late final GeneratedColumn<String?> content = GeneratedColumn<String?>(
      'content', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false, $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [jsonColumn, name, content];
  @override
  String get aliasedName => _alias ?? 'example_table';
  @override
  String get actualTableName => 'example_table';
  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  ExampleTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ExampleTableData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  ExampleTable createAlias(String alias) {
    return ExampleTable(_db, alias);
  }

  static TypeConverter<Map<String, dynamic>, String> $converter0 =
      const JsonConverter();
  @override
  bool get dontWriteConstraints => true;
}

class ExampleTableSearchData extends DataClass
    implements Insertable<ExampleTableSearchData> {
  final String name;
  final String content;
  ExampleTableSearchData({required this.name, required this.content});
  factory ExampleTableSearchData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ExampleTableSearchData(
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      content: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}content'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['name'] = Variable<String>(name);
    map['content'] = Variable<String>(content);
    return map;
  }

  factory ExampleTableSearchData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ExampleTableSearchData(
      name: serializer.fromJson<String>(json['name']),
      content: serializer.fromJson<String>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'name': serializer.toJson<String>(name),
      'content': serializer.toJson<String>(content),
    };
  }

  ExampleTableSearchData copyWith({String? name, String? content}) =>
      ExampleTableSearchData(
        name: name ?? this.name,
        content: content ?? this.content,
      );
  @override
  String toString() {
    return (StringBuffer('ExampleTableSearchData(')
          ..write('name: $name, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(name.hashCode, content.hashCode));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExampleTableSearchData &&
          other.name == this.name &&
          other.content == this.content);
}

class ExampleTableSearchCompanion
    extends UpdateCompanion<ExampleTableSearchData> {
  final Value<String> name;
  final Value<String> content;
  const ExampleTableSearchCompanion({
    this.name = const Value.absent(),
    this.content = const Value.absent(),
  });
  ExampleTableSearchCompanion.insert({
    required String name,
    required String content,
  })  : name = Value(name),
        content = Value(content);
  static Insertable<ExampleTableSearchData> custom({
    Expression<String>? name,
    Expression<String>? content,
  }) {
    return RawValuesInsertable({
      if (name != null) 'name': name,
      if (content != null) 'content': content,
    });
  }

  ExampleTableSearchCompanion copyWith(
      {Value<String>? name, Value<String>? content}) {
    return ExampleTableSearchCompanion(
      name: name ?? this.name,
      content: content ?? this.content,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExampleTableSearchCompanion(')
          ..write('name: $name, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }
}

class ExampleTableSearch extends Table
    with
        TableInfo<ExampleTableSearch, ExampleTableSearchData>,
        VirtualTableInfo<ExampleTableSearch, ExampleTableSearchData> {
  final GeneratedDatabase _db;
  final String? _alias;
  ExampleTableSearch(this._db, [this._alias]);
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true, $customConstraints: '');
  late final GeneratedColumn<String?> content = GeneratedColumn<String?>(
      'content', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true, $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [name, content];
  @override
  String get aliasedName => _alias ?? 'example_table_search';
  @override
  String get actualTableName => 'example_table_search';
  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  ExampleTableSearchData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ExampleTableSearchData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  ExampleTableSearch createAlias(String alias) {
    return ExampleTableSearch(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
  @override
  String get moduleAndArgs =>
      'fts5(name, content, content=\'example_table\', content_rowid=\'rowid\')';
}

abstract class _$ExampleDatabase extends GeneratedDatabase {
  _$ExampleDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  _$ExampleDatabase.connect(DatabaseConnection c) : super.connect(c);
  late final ExampleTable exampleTable = ExampleTable(this);
  late final ExampleTableSearch exampleTableSearch = ExampleTableSearch(this);
  late final Trigger exampleTableAi = Trigger(
      'CREATE TRIGGER example_table_ai AFTER INSERT ON example_table BEGIN INSERT INTO example_table_search (name, content) VALUES (new.name, new.content);END',
      'example_table_ai');
  late final Trigger exampleTableAd = Trigger(
      'CREATE TRIGGER example_table_ad AFTER DELETE ON example_table BEGIN INSERT INTO example_table_search (example_table_search, name, content) VALUES (\'delete\', old.name, old.content);END',
      'example_table_ad');
  late final Trigger exampleTableAu = Trigger(
      'CREATE TRIGGER example_table_au AFTER UPDATE ON example_table BEGIN INSERT INTO example_table_search (example_table_search, name, content) VALUES (\'delete\', old.name, old.content);INSERT INTO example_table_search (name, content) VALUES (new.name, new.content);END',
      'example_table_au');
  Selectable<ExampleSearchResult> exampleSearch({required String search}) {
    return customSelect(
        'SELECT"example_table"."json_column" AS "nested_0.json_column", "example_table"."name" AS "nested_0.name", "example_table"."content" AS "nested_0.content", s.* FROM example_table INNER JOIN (SELECT "rowid", highlight(example_table_search, 0, \'[match]\', \'[match]\') AS name, snippet(example_table_search, 1, \'[match]\', \'[match]\', \'...\', 10) AS content, bm25(example_table_search) AS rank FROM example_table_search WHERE example_table_search MATCH ?1) AS s ON s."rowid" = example_table."rowid"',
        variables: [
          Variable<String>(search)
        ],
        readsFrom: {
          exampleTable,
          exampleTableSearch,
        }).map((QueryRow row) {
      return ExampleSearchResult(
        rowid: row.read<int>('rowid'),
        name: row.read<String>('name'),
        content: row.read<String>('content'),
        rank: row.read<double>('rank'),
        exampleTable: exampleTable.mapFromRow(row, tablePrefix: 'nested_0'),
      );
    });
  }

  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        exampleTable,
        exampleTableSearch,
        exampleTableAi,
        exampleTableAd,
        exampleTableAu
      ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules(
        [
          WritePropagation(
            on: TableUpdateQuery.onTableName('example_table',
                limitUpdateKind: UpdateKind.insert),
            result: [
              TableUpdate('example_table_search', kind: UpdateKind.insert),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('example_table',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('example_table_search', kind: UpdateKind.insert),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('example_table',
                limitUpdateKind: UpdateKind.update),
            result: [
              TableUpdate('example_table_search', kind: UpdateKind.insert),
            ],
          ),
        ],
      );
}

class ExampleSearchResult {
  final int rowid;
  final String name;
  final String content;
  final double rank;
  final ExampleTableData exampleTable;
  ExampleSearchResult({
    required this.rowid,
    required this.name,
    required this.content,
    required this.rank,
    required this.exampleTable,
  });
}
