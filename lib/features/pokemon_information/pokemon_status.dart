import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_project/common/utils/utils.dart';
import 'package:pokedex_project/features/pokemon_information/components/pokemon_base.dart';
import 'package:pokedex_project/models/pokemon_model.dart';

class PokemonStatus extends StatefulWidget {
  final PokemonModel model;
  PokemonStatus({@required this.model});

  @override
  _PokemonStatusState createState() => _PokemonStatusState();
}

class _PokemonStatusState extends State<PokemonStatus> {
  @override
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Utils.statusScreen,
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          PokemonBase(
            model: widget.model,
          ),
          profile(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 80,
          child: bottomBarText(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: selectFloatingButtonIcon(),
          backgroundColor: Colors.white,
          foregroundColor: Colors.blue,
          onPressed: () {
            _captureAlert(context);
          }),
    );
  }

  _selectCorrectImage({int id}) {
    if (id < 10) {
      return Image.asset("images/pokemons/00$id.png");
    } else if (id < 100) {
      return Image.asset("images/pokemons/0$id.png");
    } else {
      return Image.asset("images/pokemons/$id.png");
    }
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

  selectFloatingButtonIcon() {
    if (widget.model.capture == null || widget.model.capture == false) {
      return Icon(Icons.add);
    } else {
      return Icon(Icons.delete);
    }
  }

  bottomBarText() {
    if (widget.model.capture == null || widget.model.capture == false) {
      return Container(
        padding: EdgeInsets.only(left: 32),
        child: Center(
          child: Text("NÃO CAPTURADO",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 32,
                  fontWeight: FontWeight.bold)),
        ),
      );
    } else {
      return Container(
        padding: EdgeInsets.only(left: 32),
        child: Center(
          child: Text("CAPTURADO",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 32,
                  fontWeight: FontWeight.bold)),
        ),
      );
    }
  }

  _captureAlert(BuildContext context) {
    if (widget.model.capture == null || widget.model.capture == false) {
      showDialog(
          context: context,
          builder: (_) => AlertDialog(
                title: Text("Parabéns"),
                content: Text("${widget.model.name} adicionado"),
                actions: [
                  FlatButton(
                    child: Text('Sair!'),
                    onPressed: () {
                      if (widget.model.capture == null) {
                        widget.model.capture = true;
                      } else {
                        widget.model.capture = !widget.model.capture;
                      }

                      Navigator.of(context).pop();
                      Navigator.pop(context);
                    },
                  )
                ],
              ));
    } else {
      showDialog(
          context: context,
          builder: (_) => AlertDialog(
                title: Text("Removendo da Pokedex"),
                content: Text("${widget.model.name} Removido"),
                actions: [
                  FlatButton(
                    child: Text('Sair!'),
                    onPressed: () {
                      widget.model.capture = false;
                      Navigator.of(context).pop();
                      Navigator.pop(context);
                    },
                  )
                ],
              ));
    }
  }

  profile() {
    return Positioned(
      top: 32,
      left: 110,
      child: Container(
          //largura da imagem do pokemon
          width: 170,
          child: Column(
            // espacos iguais entre a imagem e o texto
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _selectCorrectImage(id: widget.model.id),
              Text(
                widget.model.name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )),
    );
  }
}
