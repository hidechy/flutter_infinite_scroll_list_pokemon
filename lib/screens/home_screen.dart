import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/pokemon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _controller = ScrollController();

  bool _isLoading = false;

  final List<Pokemon> _pokemons = [];

  String? _nextPageLink;

  ///
  @override
  void initState() {
    _fetchPokemon(Uri.https('pokeapi.co', '/api/v2/pokemon'));

    _controller.addListener(() {
      if (_controller.position.maxScrollExtent == _controller.offset) {
        _add();
      }
    });

    super.initState();
  }

  ///
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  ///
  void _add() {
    if (_nextPageLink != null) {
      _fetchPokemon(Uri.parse(_nextPageLink!));
    }
  }

  ///
  void _fetchPokemon(Uri uri) async {
    setState(() => _isLoading = true);

    http.Response res = await http.get(uri);

    Map<String, dynamic> data = jsonDecode(res.body);

    List<dynamic> dd = data['results'].map((item) => Pokemon.fromJson(item)).toList();

    setState(() {
      _pokemons.addAll(dd.map((item) => item as Pokemon).toList());

      _nextPageLink = data['next'];

      _isLoading = false;
    });
  }

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.2)),
              height: 200,
              child: ListView.builder(
                controller: _controller,
                itemCount: _pokemons.length + 1,
                itemBuilder: (context, index) {
                  ///=====
                  if (index + 1 == _pokemons.length + 1) {
                    return Padding(
                      padding: const EdgeInsets.all(40),
                      child: _isLoading
                          ? const Center(
                              child: SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(),
                            ))
                          : Container(),
                    );
                  }

                  ///=====

                  //                return ListTile(title: Text(_pokemons[index].name), tileColor: Colors.greenAccent);

                  return Text(_pokemons[index].name);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
