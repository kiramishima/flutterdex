// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'IPokemonType.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IPokemonType _$IPokemonTypeFromJson(Map<String, dynamic> json) {
  return IPokemonType(
    json['slot'] as int,
    json['type'] == null
        ? null
        : IType.fromJson(json['type'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$IPokemonTypeToJson(IPokemonType instance) =>
    <String, dynamic>{
      'slot': instance.Slot,
      'type': instance.Type,
    };

IType _$ITypeFromJson(Map<String, dynamic> json) {
  return IType(
    json['name'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$ITypeToJson(IType instance) => <String, dynamic>{
      'name': instance.Name,
      'url': instance.Url,
    };
