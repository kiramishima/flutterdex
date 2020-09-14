// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _PokeApi implements PokeApi {
  _PokeApi(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    this.baseUrl ??= 'https://pokeapi.co/api/v2/pokemon';
  }

  final Dio _dio;

  String baseUrl;

  @override
  getPokemonItems() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request('/',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl,
            responseType: ResponseType.json),
        data: _data);
    final value = Result.fromJson(_result.data);
    return value;
  }

  @override
  getPokemon(PokemonId) async {
    ArgumentError.checkNotNull(PokemonId, 'PokemonId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/$PokemonId',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl,
            responseType: ResponseType.json),
        data: _data);
    final value = IPokemon.fromJson(_result.data);
    return value;
  }
}
