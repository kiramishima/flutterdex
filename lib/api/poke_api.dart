
import 'package:dio/dio.dart';
import 'package:layouts/models/IPokemon.dart';
import 'package:layouts/models/result.dart';
import 'package:retrofit/retrofit.dart';

part 'poke_api.g.dart';

@RestApi(baseUrl: "https://pokeapi.co/api/v2/pokemon")
abstract class PokeApi {

  factory PokeApi(Dio dio, {String baseUrl}) = _PokeApi;

  @GET("/")
  @DioResponseType(ResponseType.json)
  Future<Result> getPokemonItems();

  @GET("/{pokemonId}/")
  @DioResponseType(ResponseType.json)
  Future<IPokemon> getPokemon(@Path() String pokemonId);
}