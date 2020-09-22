
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layouts/api/poke_api.dart';
import 'package:layouts/models/IPokemon.dart';
import 'package:layouts/models/IPokemonItem.dart';
import 'package:layouts/models/result.dart';
import 'package:layouts/widgets/pokemon_item.dart';

class HomePage extends StatefulWidget {
  final String title;
  HomePage({Key key, this.title}): super(key: key);

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<IPokemon> pokes = [];
  final _apiClient = PokeApi(Dio());

  @override
  void initState() {
    super.initState();
    loadPokemons();
  }

  void loadPokemons() async {
    List<IPokemon> temp = [];
    Result resp = await _apiClient.getPokemonItems();
      // Get The Pokemons Image
    for (IPokemonItem item in resp.Data) {
      final List<String> _elements = item.Url.split('/').toList();
      var id = _elements.elementAt(6);
      var pokemon = await _apiClient.getPokemon(id);
      temp.add(pokemon);
    }

    setState(() {
      pokes = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final pokeSize = screenSize.width * 0.66;
    final pokeTop = -(screenSize.width * 0.154);
    final pokeRight = -(screenSize.width * 0.23);
    final appBarTop = pokeSize / 2 + pokeTop - IconTheme.of(context).size / 2;

    return new Scaffold(
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        color: Colors.black12,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: pokeTop,
              right: pokeRight,
              child: Image.asset(
                "assets/images/pokeball.png",
                width: pokeSize,
                height: pokeSize,
                color: Color(0xFF303943).withOpacity(0.25),
              ),
            ),
            GridView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: pokes.length,
                padding: EdgeInsets.only(left: 10, right: 10, top: 58),
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (context, int index) {
                  IPokemon item = pokes.elementAt(index);
                  return PokemonItem(pokemon: item,);
                }
            )
            /*Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: <Widget>[
                GridView.builder(
                  physics: BouncingScrollPhysics(),
                    itemCount: pokes.length,
                    padding: EdgeInsets.only(left: 28, right: 28, bottom: 58),
                    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    itemBuilder: (context, int index) {
                      IPokemon item = pokes.elementAt(index);
                      return PokemonItem(pokemon: item,);
                    }
                )
              ],
            )*/
          ],
        ),
      )/*GridView.builder(
        itemCount: pokes.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, int index) {
          IPokemon item = pokes.elementAt(index);
          return PokemonItem(pokemon: item,);
        }
      )*/,
    );
  }
}