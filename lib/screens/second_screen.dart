import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/pokemon.dart';
import '../state/pokemon/pokemon_notifier.dart';

// ignore: must_be_immutable
class SecondScreen extends ConsumerWidget {
  SecondScreen({super.key});

  final ScrollController scrollController = ScrollController();

  List<Pokemon> list = [];

  ///
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var pokemonState = ref.watch(pokemonProvider);

    var pokemonListLength = (pokemonState.pokemonList.value != null) ? pokemonState.pokemonList.value!.length : 0;

    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent == scrollController.offset) {
        ref.read(pokemonProvider.notifier).fetchPokemon(uri: Uri.parse(pokemonState.nextPageLink), list: list);
      }
    });

    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    ref
                        .read(pokemonProvider.notifier)
                        .fetchPokemon(uri: Uri.https('pokeapi.co', '/api/v2/pokemon'), list: list);
                  },
                  child: const Text('button'),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(pokemonState.nextPageLink),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.black.withOpacity(0.2)),
                  height: 400,
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: pokemonListLength + 1,
                    itemBuilder: (context, index) {
                      ///=====
                      if (index + 1 == pokemonListLength + 1) {
                        return Padding(
                          padding: const EdgeInsets.all(40),
                          child: pokemonState.isLoading
                              ? const Center(
                                  child: SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(),
                                ))
                              : Container(),
                        );
                      }

                      return (pokemonState.pokemonList.value != null)
                          ? Row(
                              children: [
                                Expanded(child: Text(pokemonState.pokemonList.value![index].name)),
                                Expanded(flex: 3, child: Text(pokemonState.pokemonList.value![index].url)),
                              ],
                            )
                          : Container();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
