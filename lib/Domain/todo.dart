// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  final String title;
  final String details;
  final DateTime createAt;
  const Todo({
    required this.title,
    required this.details,
    required this.createAt,
  });
  

  Todo copyWith({
    String? title,
    String? details,
    DateTime? createAt,
  }) {
    return Todo(
      title: title ?? this.title,
      details: details ?? this.details,
      createAt: createAt ?? this.createAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'details': details,
      'createAt': createAt.millisecondsSinceEpoch,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      title: map['title'] as String,
      details: map['details'] as String,
      createAt: DateTime.fromMillisecondsSinceEpoch(map['createAt'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory Todo.fromJson(String source) => Todo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [title, details, createAt];
}
