import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:xy_todo/src/features/task/models/task.dart';

void main() {
  test(
    "Test convert task to json",
    () {
      Map<String, dynamic> modelMap = jsonDecode(createdTaskJson);
      var createdTask = Task.fromJson(modelMap);
      var createdDate = DateTime.parse('2023-09-23 09:57:27.205');
      var expected = Task(true, 'test title', createdDate);

      expect(createdTask, expected);
    },
  );

  test(
    "Test updated task",
    () {
      var createdDate = DateTime.parse('2023-09-23 09:57:27.205');
      var updatedDate = DateTime.parse('2023-09-23 10:04:21.326');

      Map<String, dynamic> modelMap = jsonDecode(updatedTaskJson);
      var createdTask = Task.fromJson(modelMap);
      var updatedTask = Task.update(createdTask, updatedDate);

      var expected =
          Task(true, 'test title', createdDate, updated: updatedDate);

      expect(updatedTask, expected);
    },
  );
}

const String createdTaskJson = '''
{
  "isCompleted": true,
  "title": "test title",
  "created": "2023-09-23 09:57:27.205"
}
''';

const String updatedTaskJson = '''
{
  "isCompleted": true,
  "title": "test title",
  "created": "2023-09-23 09:57:27.205",
  "updated": "2023-09-23 10:04:21.326"
}
''';
