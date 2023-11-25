class Pokemon {
  String name;
  String url;

  Pokemon({required this.name, required this.url});

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    final pokemon = Pokemon(
      name: json['name'],
      url: json['url'],
    );
    return pokemon;
  }
}
