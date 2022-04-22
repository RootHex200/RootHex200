// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:riverpod_hook/Domain/todo.dart';

class Appstate extends Equatable {
  final List<Todo> todolist;
  final bool loading;
  const Appstate({
    required this.todolist,
    required this.loading,
  });
  

  Appstate copyWith({
    List<Todo>? todolist,
    bool? loading,
  }) {
    return Appstate(
      todolist: todolist ?? this.todolist,
      loading: loading ?? this.loading,
    );
  }

  
  @override
  bool get stringify => true;

  @override
  List<Object> get props => [todolist, loading];
}
