import 'package:database/database.dart';
import 'package:moor/moor.dart';

part 'repository.g.dart';

@UseDao(include: {'queries.moor'})
class ExampleRepository extends DatabaseAccessor<ExampleDatabase> with _$ExampleRepositoryMixin {
  ExampleDatabase get db => attachedDatabase;

  ExampleRepository(ExampleDatabase database) : super(database);

  Future<List<ExampleSearchResult>> search(String searchValue) async {
    return exampleSearch(search: searchValue).get();
  }
}