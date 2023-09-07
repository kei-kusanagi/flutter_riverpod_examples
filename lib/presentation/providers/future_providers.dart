import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';

part 'future_providers.g.dart';

@Riverpod(keepAlive: true)
Future<String> pokemonName(PokemonNameRef ref) async {
  final pokemonId = ref.watch(pokemonIdProvider);
  final pokemonName = await PokemonInformation.getPokemonName(pokemonId);

  // Al cambiar de pagina, si no le ponemos el keepAlive, se destruye
  // ref.onDispose(() {print('Eliminando provider');});

  return pokemonName;
}

@Riverpod(keepAlive: true)
class PokemonId extends _$PokemonId {
  @override
  int build() => 1;

  void nextPokemon() {
    state++;
  }

  void prevPokemon() {
    if (state > 1) {
      state--;
    }
  }

  void randomPokemon() {
    state = Random().nextInt(151) + 1;
  }
}
