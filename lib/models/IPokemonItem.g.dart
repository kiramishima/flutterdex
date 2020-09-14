// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'IPokemonItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IPokemonItem _$IPokemonItemFromJson(Map<String, dynamic> json) {
  return IPokemonItem(
    json['name'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$IPokemonItemToJson(IPokemonItem instance) =>
    <String, dynamic>{
      'name': instance.Name,
      'url': instance.Url,
    };
