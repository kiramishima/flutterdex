import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layouts/providers/pokemons_provider.dart';
import 'package:provider/provider.dart';

class DetailPageArguments {
  final String pokemonName;

  DetailPageArguments(this.pokemonName);
}

class DetailPage extends StatelessWidget {
  static const routeName = '/pokemon';

  final String title;
  DetailPage({Key? key, required this.title}): super(key: key);

/*
  void loadPokemon() {
    final DetailPageArguments args = ModalRoute.of(context)!.settings.arguments as DetailPageArguments;
    final provider = Provider.of<PokemonRepository>(context, listen: false);
    provider.getPokemon(args.pokemonName);
  }*/

  @override
  Widget build(BuildContext context) {
    final DetailPageArguments args = ModalRoute.of(context)!.settings.arguments as DetailPageArguments;
    final provider = Provider.of<PokemonRepository>(context, listen: false);

    final screenSize = MediaQuery.of(context).size;
    final pokeSize = screenSize.width * 0.66;
    final pokeTop = -(screenSize.width * 0.154);
    final pokeRight = -(screenSize.width * 0.23);

    return Container(
      width: screenSize.width,
      height: screenSize.height,
      color: Colors.black12,
      child: Consumer(
        builder: (context, PokemonRepository repo, _) {
          if (repo.pokemon == null || repo.pokemon?.Name != args.pokemonName) {
            repo.getPokemon(args.pokemonName);
          }

          if (repo.isLoading) {
            return Center(
                heightFactor: 100,
                widthFactor: 100,
                child: CircularProgressIndicator(color: Colors.blueAccent,)
            );
          } else {
            return Center(child: Text("${repo.pokemon?.Id} - ${repo.pokemon?.Name}"));
          }
        },
      )
    );
  }
}