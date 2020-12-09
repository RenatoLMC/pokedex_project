import 'package:flutter/material.dart';
import 'package:pokedex_project/common/data_source.dart';
import 'package:pokedex_project/common/utils/utils.dart';
import 'package:pokedex_project/features/home/components/pokemon_cell.dart';
import 'package:pokedex_project/features/pokemon_information/pokemon_status.dart';
import 'package:pokedex_project/models/pokemon_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<PokemonModel> pokemons = DataSource.models;

  void updateModel() {
    setState(() {
      pokemons = DataSource.models;
    });
  }

  build(BuildContext context) {
    // usando involucro para conter todos os widgets (ViewController)
    return Scaffold(
      appBar: AppBar(
        title: Text(Utils.appName),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //utilizando padding para dar espacamento de tela entre o topo
            // e a barra separator horizontal
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Container(
                width: double.infinity,
                child: createHorizontalSeparator("Todos os Pokemons"),
              ),
            ),
            SizedBox(height: 20),

            Expanded(
              child: Container(
                height: 600,
                color: Color(0x7adfc4),
                // construindo uma lista de pokemons
                child: ListView.builder(
                    itemCount: pokemons.length,
                    itemBuilder: (context, index) {
                      var model = pokemons[index];
                      // realizando passagem de dados pela navegacao
                      return GestureDetector(
                          onTap: () {
                            updateModel();
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PokemonStatus(
                                      model: model,
                                    )));
                          },
                          child: PokemonCell(
                            model: model,
                            index: index,
                          ));
                    }),
              ),
            ),
            Container(
                height: 20,
                width: double.infinity,
                child: createHorizontalSeparator("")),
            Container(
              height: 80,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }

  // usando parametro posicional no metodo
  Widget createHorizontalSeparator(String description) {
    return Card(
      color: Colors.blue,
      child: Text(
        description,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
