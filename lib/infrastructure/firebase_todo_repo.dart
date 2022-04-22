import 'dart:convert';

import 'package:riverpod_hook/Domain/i_todo_repo.dart';
import 'package:riverpod_hook/Domain/todo.dart';

class Firebase_data extends Todo_Repo {
  String firebase_db = "";
  @override
  void addTodo({required Todo todo}) {
    final todos = getTodo();
    todos.add(todo);
    final mapList = todos.map((e) => e.toMap());

    firebase_db = jsonEncode(mapList);
  }

  @override
  List<Todo> getTodo() {
    Future.delayed(Duration(microseconds: 30));
    if (firebase_db.isNotEmpty) {
      final data = jsonDecode(firebase_db);
      if (data is List) {
        final todolist = data.map((e) => Todo.fromMap(e)).toList();
        return todolist;
      } else {
        return [];
      }
    } else {
      return [];
    }
  }

  @override
  void updateTodo({required Todo todo}) {
    // TODO: implement updateTodo
  }
}
