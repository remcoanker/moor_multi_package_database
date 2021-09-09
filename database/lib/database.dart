import 'package:converter/type_converter.dart';
import 'package:moor/moor.dart';

part 'database.g.dart';

@UseMoor(
  include: {
    'package:module/table.moor',
  },
)
class ExampleDatabase extends _$ExampleDatabase {
  ExampleDatabase(QueryExecutor e) : super(e);

  @override
  // TODO: implement schemaVersion
  int get schemaVersion => throw UnimplementedError();
}