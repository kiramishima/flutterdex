import 'package:flutter/material.dart';

class PokemonItem extends StatelessWidget {
  final String Name;
  PokemonItem({this.Name});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15.0,
      color: Colors.cyan,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0)
      ),
      child: Column(
        children: <Widget>[
          Expanded(
              child: Image.network(
                  "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png",
                  width: 250.0,
                  height: 250.0,
              )
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              "Bulbasaur",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            )
          )
        ],
      ),
    );
  }
}