import 'package:json_annotation/json_annotation.dart';
import 'package:layouts/models/IPokemonItem.dart';

part 'ISprites.g.dart';

@JsonSerializable()
class ISprite {
  @JsonKey(name: 'other')
  final ISpriteOther Other;

  ISprite({required this.Other});

  factory ISprite.fromJson(Map<String, dynamic> json) => _$ISpriteFromJson(json);
}

@JsonSerializable()
class ISpriteOther {
  @JsonKey(name: 'dream_world')
  final Map<String, dynamic?> DreamWorld;
  @JsonKey(name: 'official-artwork')
  final Map<String, dynamic?> OfficialArtWork;

  ISpriteOther(this.DreamWorld, this.OfficialArtWork);

  factory ISpriteOther.fromJson(Map<String, dynamic> json) => _$ISpriteOtherFromJson(json);
}