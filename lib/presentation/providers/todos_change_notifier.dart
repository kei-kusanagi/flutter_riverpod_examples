import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/domain/domain.dart';
import 'package:uuid/uuid.dart';

import 'package:riverpod_app/config/helpers/random_generator.dart';

const uuid = Uuid();

final todosChangeNotifierProvider =
    ChangeNotifierProvider<TodosChangeNotifier>((ref) {
  return TodosChangeNotifier();
});

class TodosChangeNotifier extends ChangeNotifier {
  List<Todo> todos = <Todo>[
    Todo(
        id: uuid.v4(),
        description: RandomGenerator.getRandomName(),
        completedAt: null),
    Todo(
        id: uuid.v4(),
        description: RandomGenerator.getRandomName(),
        completedAt: DateTime.now()),
    Todo(
        id: uuid.v4(),
        description: RandomGenerator.getRandomName(),
        completedAt: null),
  ];

  void addTodo() {
    todos = [
      ...todos,
      Todo(
          id: uuid.v4(),
          description: RandomGenerator.getRandomName(),
          completedAt: null),
    ];
    notifyListeners();
  }

  void toogleTodo(String id) {
    todos = todos.map((todo) {
      if (todo.id == id) {
        todo = todo.copyWith(completedAt: todo.done ? null : DateTime.now());
      }
      return todo;
    }).toList();
    notifyListeners();
  }
}
