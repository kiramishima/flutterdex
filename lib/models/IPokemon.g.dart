// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'IPokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IPokemon _$IPokemonFromJson(Map<String, dynamic> json) {
  return IPokemon(
    json['id'] as int,
    json['height'] as int,
    json['name'] as String,
    (json['types'] as List<dynamic>)
        .map((e) => IPokemonType.fromJson(e as Map<String, dynamic>))
        .toList(),
    ISprite.fromJson(json['sprites'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$IPokemonToJson(IPokemon instance) => <String, dynamic>{
      'id': instance.Id,
      'height': instance.Height,
      'name': instance.Name,
      'types': instance.Types,
      'sprites': instance.Sprites,
    };
