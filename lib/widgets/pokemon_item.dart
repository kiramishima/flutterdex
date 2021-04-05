import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:layouts/models/ColorTypes.dart';
import 'package:layouts/models/IPokemon.dart';
import 'package:layouts/pages/detail_page.dart';

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

class PokemonItem extends StatelessWidget {
  final IPokemon pokemon;
  PokemonItem({required this.pokemon});

  Color getColor() {
    return ColorTypes[pokemon.Types[0].Type.Name] ?? Colors.white38;
  }

  @override
  Widget build(BuildContext context) {
    return new GridTile(child: new InkResponse(
        child: Card(
        elevation: 15.0,
        color: getColor(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0)
        ),
        child: Column(
          children: <Widget>[
            Expanded(
                child: CachedNetworkImage(
                  imageUrl: pokemon.Sprites.Other.OfficialArtWork["front_default"] ?? '',
                  width: 250.0,
                  height: 250.0,
                  placeholder: (context, url) => Center(child: CircularProgressIndicator(),),
                )
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                pokemon.Name.capitalize(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              )
            )
          ],
        ),
      ),
      enableFeedback: true,
      onTap: () => onTapPokemon(context),
    ));
  }

  onTapPokemon(BuildContext context) {
    Navigator.pushNamed(context,
      DetailPage.routeName,
      arguments: DetailPageArguments(this.pokemon.Name)
    );
  }
}