import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../config/config.dart';

part 'state_providers.g.dart';

@riverpod
class Counter extends _$Counter {
  @override
  int build() => 5;

  void increaseByOne() {
    state++;
  }
}

// DarkMode -> boolean default: false
// void toogleDarkMode()

@riverpod
class DarkMode extends _$DarkMode {
  @override
  bool build() => false;

  void toogleDarkMode() {
    state = !state;
  }
}

// Username => String
// Default: 'Karen Marisol'
// changeName (String name)
// usernameProvider.notifier.changeName ( RandomGenerator.getRandomName())
@riverpod
class Username extends _$Username {
  @override
  String build() {
    return 'Juan Carlos';
  }

  void changeName(String name) {
    state = name;
  }
}
