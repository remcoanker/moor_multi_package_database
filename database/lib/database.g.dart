// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class ExampleTableData extends DataClass
    implements Insertable<ExampleTableData> {
  final String? jsonColumn;
  ExampleTableData({this.jsonColumn});
  factory ExampleTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ExampleTableData(
      jsonColumn: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}json_column']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || jsonColumn != null) {
      map['json_column'] = Variable<String?>(jsonColumn);
    }
    return map;
  }

  ExampleTableCompanion toCompanion(bool nullToAbsent) {
    return ExampleTableCompanion(
      jsonColumn: jsonColumn == null && nullToAbsent
          ? const Value.absent()
          : Value(jsonColumn),
    );
  }

  factory ExampleTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ExampleTableData(
      jsonColumn: serializer.fromJson<String?>(json['json_column']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'json_column': serializer.toJson<String?>(jsonColumn),
    };
  }

  ExampleTableData copyWith({String? jsonColumn}) => ExampleTableData(
        jsonColumn: jsonColumn ?? this.jsonColumn,
      );
  @override
  String toString() {
    return (StringBuffer('ExampleTableData(')
          ..write('jsonColumn: $jsonColumn')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf(jsonColumn.hashCode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExampleTableData && other.jsonColumn == this.jsonColumn);
}

class ExampleTableCompanion extends UpdateCompanion<ExampleTableData> {
  final Value<String?> jsonColumn;
  const ExampleTableCompanion({
    this.jsonColumn = const Value.absent(),
  });
  ExampleTableCompanion.insert({
    this.jsonColumn = const Value.absent(),
  });
  static Insertable<ExampleTableData> custom({
    Expression<String?>? jsonColumn,
  }) {
    return RawValuesInsertable({
      if (jsonColumn != null) 'json_column': jsonColumn,
    });
  }

  ExampleTableCompanion copyWith({Value<String?>? jsonColumn}) {
    return ExampleTableCompanion(
      jsonColumn: jsonColumn ?? this.jsonColumn,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (jsonColumn.present) {
      map['json_column'] = Variable<String?>(jsonColumn.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExampleTableCompanion(')
          ..write('jsonColumn: $jsonColumn')
          ..write(')'))
        .toString();
  }
}

class ExampleTable extends Table
    with TableInfo<ExampleTable, ExampleTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  ExampleTable(this._db, [this._alias]);
  final VerificationMeta _jsonColumnMeta = const VerificationMeta('jsonColumn');
  late final GeneratedColumn<String?> jsonColumn = GeneratedColumn<String?>(
      'json_column', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false, $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [jsonColumn];
  @override
  String get aliasedName => _alias ?? 'example_table';
  @override
  String get actualTableName => 'example_table';
  @override
  VerificationContext validateIntegrity(Insertable<ExampleTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('json_column')) {
      context.handle(
          _jsonColumnMeta,
          jsonColumn.isAcceptableOrUnknown(
              data['json_column']!, _jsonColumnMeta));
    }
    return context;
  }

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

  @override
  bool get dontWriteConstraints => true;
}

abstract class _$ExampleDatabase extends GeneratedDatabase {
  _$ExampleDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final ExampleTable exampleTable = ExampleTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [exampleTable];
}
