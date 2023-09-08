// class ChangeNotifierScreen extends StatelessWidget {

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/providers.dart';
import '../../providers/todos_change_notifier.dart';

class ChangeNotifierScreen extends ConsumerWidget {
  const ChangeNotifierScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Notifier Provider'),
      ),
      body: const _TodosView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(todosChangeNotifierProvider.notifier).addTodo();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _TodosView extends ConsumerWidget {
  const _TodosView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todosChangeNotifier = ref.watch(todosChangeNotifierProvider);
    final todos = todosChangeNotifier.todos;

    return Column(
      children: [
        const SizedBox(height: 5),
        Expanded(
          child: ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];
              return SwitchListTile(
                  title: Text(todo.description),
                  value: todo.done,
                  onChanged: (value) {
                    ref
                        .read(todosChangeNotifierProvider.notifier)
                        .toogleTodo(todo.id);
                  });
            },
          ),
        )
      ],
    );
  }
}
