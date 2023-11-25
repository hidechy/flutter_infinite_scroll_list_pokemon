// ignore: depend_on_referenced_packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/pokemon.dart';

part 'pokemon_response_state.freezed.dart';

@freezed
class PokemonResponseState with _$PokemonResponseState {
  const factory PokemonResponseState({
    @Default(AsyncValue<List<Pokemon>>.loading()) AsyncValue<List<Pokemon>> pokemonList,
    @Default(false) bool isLoading,
    @Default('') String nextPageLink,
  }) = _PokemonResponseState;
}
