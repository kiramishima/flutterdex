
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
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          widget.title,
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body: /*GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          for(var item in pokes) PokemonItem(Name: item.Name,)
        ],
      )*/GridView.builder(
        itemCount: pokes.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, int index) {
          IPokemon item = pokes.elementAt(index);
          return PokemonItem(pokemon: item,);
        }
      ),
    );
  }
}