import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;

import '../../model/pokemon.dart';
import 'pokemon_response_state.dart';

////////////////////////////////////////////////

final pokemonProvider = StateNotifierProvider.autoDispose<PokemonNotifier, PokemonResponseState>((ref) {
  return PokemonNotifier(const PokemonResponseState());
});

class PokemonNotifier extends StateNotifier<PokemonResponseState> {
  PokemonNotifier(super.state);

  ///
  void fetchPokemon({required Uri uri, required List<Pokemon> list}) async {
    state = state.copyWith(isLoading: true);

    http.Response res = await http.get(uri);

    Map<String, dynamic> data = jsonDecode(res.body);

    List<dynamic> dd = data['results'].map((item) => Pokemon.fromJson(item)).toList();

    list.addAll(dd.map((item) {
      return item as Pokemon;
    }).toList());

    state = state.copyWith(pokemonList: AsyncValue.data(list), isLoading: false, nextPageLink: data['next']);
  }
}
////////////////////////////////////////////////
