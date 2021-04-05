// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _PokeApi implements PokeApi {
  _PokeApi(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://pokeapi.co/api/v2/pokemon';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Result> getPokemonItems() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Result>(Options(
                method: 'GET',
                headers: <String, dynamic>{},
                extra: _extra,
                responseType: ResponseType.json)
            .compose(_dio.options, '/',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Result.fromJson(_result.data!);
    return value;
  }

  @override
  Future<IPokemon> getPokemon(pokemonId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<IPokemon>(Options(
                method: 'GET',
                headers: <String, dynamic>{},
                extra: _extra,
                responseType: ResponseType.json)
            .compose(_dio.options, '/$pokemonId/',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = IPokemon.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
