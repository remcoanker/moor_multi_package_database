// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$ExampleRepositoryMixin on DatabaseAccessor<ExampleDatabase> {
  ExampleTable get exampleTable => attachedDatabase.exampleTable;
  ExampleTableSearch get exampleTableSearch =>
      attachedDatabase.exampleTableSearch;
  Selectable<ExampleSearchResult> exampleSearch({required String search}) {
    return customSelect(
        'SELECT "example_table"."json_column" AS "nested_0.json_column", "example_table"."name" AS "nested_0.name", "example_table"."content" AS "nested_0.content", s.* FROM example_table\n    INNER JOIN (\n        SELECT rowid,\n            highlight(example_table_search, 0, \'[match]\', \'[match]\') name,\n            snippet(example_table_search, 1, \'[match]\', \'[match]\', \'...\', 10) content,\n            bm25(example_table_search) AS rank\n        FROM example_table_search WHERE example_table_search MATCH :search\n    ) AS s\n    ON s.rowid = example_table.rowid',
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
