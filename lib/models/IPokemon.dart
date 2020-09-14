import 'package:json_annotation/json_annotation.dart';
import 'package:layouts/models/IPokemonType.dart';

part 'IPokemon.g.dart';

@JsonSerializable()
class IPokemon {
  @JsonKey(name: 'id')
  final int Id;
  @JsonKey(name: 'height')
  final int Height;
  @JsonKey(name: 'name')
  final String Name;
  // @JsonKey(name: 'types')
  // final IPokemonType Types;

  IPokemon(this.Id, this.Height, this.Name/*, this.Types*/);

  factory IPokemon.fromJson(Map<String, dynamic> json) => _$IPokemonFromJson(json);
}