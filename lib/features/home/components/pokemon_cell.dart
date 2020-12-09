import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_project/common/data_source.dart';
import 'package:pokedex_project/models/pokemon_model.dart';

class PokemonCell extends StatelessWidget {
  final PokemonModel model;
  final int index;
  PokemonCell({@required this.model, this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 70,
            child: _setConfigImageSelection(id: model.id),
          ),
          Container(
            height: 70,
            child: _test(model: model),
          ),
          Text(
            model.name,
          ),
        ],
      ),
    );
  }

  _test({PokemonModel model}) {
    if (model.capture != null && model.capture != false) {
      DataSource.models[index].capture = true;
      return Image.asset("images/pokeballs/normal.png");
    } else {
      DataSource.models[index].capture = false;
      return Text("");
    }
  }

  _setConfigImageSelection({int id}) {
    if (id < 10) {
      return Image.asset("images/pokemons/00$id.png");
    } else if (id < 100) {
      return Image.asset("images/pokemons/0$id.png");
    } else {
      return Image.asset("images/pokemons/$id.png");
    }
  }
}
