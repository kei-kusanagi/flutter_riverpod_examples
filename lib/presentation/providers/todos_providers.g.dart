// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$filteredTodosHash() => r'4538499627ebd85830599c62a6a8bbf5a0d9397e';

/// See also [filteredTodos].
@ProviderFor(filteredTodos)
final filteredTodosProvider = AutoDisposeProvider<List<Todo>>.internal(
  filteredTodos,
  name: r'filteredTodosProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$filteredTodosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FilteredTodosRef = AutoDisposeProviderRef<List<Todo>>;
String _$todoCurrentFilerHash() => r'f870cad85665772cc164070259b1d731ccd010d0';

/// See also [TodoCurrentFiler].
@ProviderFor(TodoCurrentFiler)
final todoCurrentFilerProvider =
    NotifierProvider<TodoCurrentFiler, FilterType>.internal(
  TodoCurrentFiler.new,
  name: r'todoCurrentFilerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$todoCurrentFilerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TodoCurrentFiler = Notifier<FilterType>;
String _$todosHash() => r'1e5773b624e82bc3d8ef92de3bf9bdc8c5f7cdfb';

/// See also [Todos].
@ProviderFor(Todos)
final todosProvider = NotifierProvider<Todos, List<Todo>>.internal(
  Todos.new,
  name: r'todosProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$todosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Todos = Notifier<List<Todo>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
