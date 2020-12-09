import 'package:pokedex_project/models/pokemon_model.dart';

class DataSource {
  static List<PokemonModel> models = [
    PokemonModel(
      id: 1,
      name: "Bulbasaur",
      status: Status(
          hp: 45,
          attack: 49,
          defense: 49,
          spAttack: 65,
          spDefense: 65,
          speed: 45),
    ),
    PokemonModel(
      id: 2,
      name: "Ivysaur",
      status: Status(
          hp: 60,
          attack: 62,
          defense: 63,
          spAttack: 80,
          spDefense: 80,
          speed: 60),
    ),
    PokemonModel(
      id: 3,
      name: "Venusaur",
      status: Status(
          hp: 80,
          attack: 82,
          defense: 83,
          spAttack: 100,
          spDefense: 100,
          speed: 80),
    ),
    PokemonModel(
      id: 4,
      name: "Charmander ",
      status: Status(
          hp: 39,
          attack: 52,
          defense: 43,
          spAttack: 60,
          spDefense: 50,
          speed: 65),
    ),
    PokemonModel(
      id: 5,
      name: "Charmeleon",
      status: Status(
          hp: 58,
          attack: 64,
          defense: 58,
          spAttack: 80,
          spDefense: 65,
          speed: 80),
    ),
    PokemonModel(
      id: 6,
      name: "Charizard",
      status: Status(
          hp: 78,
          attack: 84,
          defense: 78,
          spAttack: 109,
          spDefense: 85,
          speed: 100),
    ),
    PokemonModel(
      id: 7,
      name: "Squirtle",
      status: Status(
          hp: 44,
          attack: 48,
          defense: 65,
          spAttack: 50,
          spDefense: 64,
          speed: 43),
    ),
    PokemonModel(
      id: 8,
      name: "Wartortle",
      status: Status(
          hp: 59,
          attack: 63,
          defense: 80,
          spAttack: 65,
          spDefense: 80,
          speed: 58),
    ),
    PokemonModel(
      id: 9,
      name: "Blastoise",
      status: Status(
          hp: 79,
          attack: 83,
          defense: 100,
          spAttack: 85,
          spDefense: 105,
          speed: 78),
    ),
    PokemonModel(
      id: 10,
      name: "Caterpie",
      status: Status(
          hp: 45,
          attack: 30,
          defense: 35,
          spAttack: 20,
          spDefense: 20,
          speed: 45),
    ),
    PokemonModel(
      id: 11,
      name: "Metapod",
      status: Status(
          hp: 50,
          attack: 20,
          defense: 55,
          spAttack: 25,
          spDefense: 25,
          speed: 30),
    ),
    PokemonModel(
      id: 12,
      name: "Butterfree",
      status: Status(
          hp: 60,
          attack: 45,
          defense: 50,
          spAttack: 90,
          spDefense: 80,
          speed: 70),
    ),
  ];
}
