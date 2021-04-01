import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:layouts/api/poke_api.dart';
import 'package:layouts/models/IPokemon.dart';
import 'package:layouts/models/IPokemonItem.dart';
import 'package:layouts/models/result.dart';

class PokemonRepository extends ChangeNotifier {
  final _apiClient = PokeApi(Dio());
  PokemonRepository();

  Future<List<IPokemon>> getPokemonItems(ref) async {
    List<IPokemon> temp = [];
    Result resp = await this._apiClient.getPokemonItems();

    // Get The Pokemons Image
    for (IPokemonItem item in resp.Data) {
      final List<String> _elements = item.Url.split('/').toList();
      var id = _elements.elementAt(6);
      var pokemon = await _apiClient.getPokemon(id);
      temp.add(pokemon);
    }

    return temp;
  }

  Future<IPokemon> getPokemon(String pokemonId) {

  }
}