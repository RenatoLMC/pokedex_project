import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_project/models/pokemon_model.dart';

class PokemonBase extends StatelessWidget {
  final PokemonModel model;

  const PokemonBase({Key key, this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      top: 180,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: SafeArea(
            child: Container(
          color: Colors.blue,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 64),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  formatStatusText("HP"),
                  formatStatusText("${model.status.hp}"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  formatStatusText("Attack"),
                  formatStatusText("${model.status.attack}"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  formatStatusText("Defense"),
                  formatStatusText("${model.status.defense}"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  formatStatusText("SpAttack"),
                  formatStatusText("${model.status.spAttack}"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  formatStatusText("SpDefense"),
                  formatStatusText("${model.status.spDefense}"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  formatStatusText("Speed"),
                  formatStatusText("${model.status.speed}"),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }

  formatStatusText(
    String data,
  ) {
    return Text(
      data,
      style: TextStyle(
          color: Colors.white70, fontSize: 25, fontWeight: FontWeight.w300),
    );
  }
}
