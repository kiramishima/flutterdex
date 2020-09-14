// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ISprites.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ISprite _$ISpriteFromJson(Map<String, dynamic> json) {
  return ISprite(
    Other: json['other'] == null
        ? null
        : ISpriteOther.fromJson(json['other'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ISpriteToJson(ISprite instance) => <String, dynamic>{
      'other': instance.Other,
    };

ISpriteOther _$ISpriteOtherFromJson(Map<String, dynamic> json) {
  return ISpriteOther(
    (json['dream_world'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    (json['official-artwork'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
  );
}

Map<String, dynamic> _$ISpriteOtherToJson(ISpriteOther instance) =>
    <String, dynamic>{
      'dream_world': instance.DreamWorld,
      'official-artwork': instance.OfficialArtWork,
    };
