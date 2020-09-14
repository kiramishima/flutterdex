import 'package:json_annotation/json_annotation.dart';
import 'package:layouts/models/IPokemonType.dart';
import 'package:layouts/models/ISprites.dart';

part 'IPokemon.g.dart';

@JsonSerializable()
class IPokemon {
  @JsonKey(name: 'id')
  final int Id;
  @JsonKey(name: 'height')
  final int Height;
  @JsonKey(name: 'name')
  final String Name;
  @JsonKey(name: 'types')
  final List<IPokemonType> Types;
  @JsonKey(name: 'sprites')
  final ISprite Sprites;

  IPokemon(this.Id, this.Height, this.Name, this.Types, this.Sprites);

  factory IPokemon.fromJson(Map<String, dynamic> json) => _$IPokemonFromJson(json);
}