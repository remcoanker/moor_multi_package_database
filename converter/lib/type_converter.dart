import 'dart:convert';

import 'package:moor/moor.dart';

class JsonConverter extends TypeConverter<Map<String, dynamic>, String> {
  const JsonConverter();

  @override
  Map<String, dynamic>? mapToDart(String? fromDb) {
    if (fromDb == null) {
      return null;
    }
    return json.decode(fromDb) as Map<String, dynamic>;
  }

  @override
  String? mapToSql(Map<String, dynamic>? value) {
    if (value == null) {
      return null;
    }

    return json.encode(value);
  }
}