import 'package:riverpod_hook/Domain/todo.dart';

abstract class Todo_Repo {
  List<Todo> getTodo();

  void addTodo({required Todo todo});

  void updateTodo({required Todo todo});
}
