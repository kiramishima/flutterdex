
import 'package:json_annotation/json_annotation.dart';

part 'IPokemonType.g.dart';

@JsonSerializable()
class IPokemonType {
  @JsonKey(name: 'slot')
  final int Slot;
  @JsonKey(name: 'type')
  final IType Type;
  IPokemonType(this.Slot, this.Type);

  factory IPokemonType.fromJson(Map<String, dynamic> json) => _$IPokemonTypeFromJson(json);
}

@JsonSerializable()
class IType {
  @JsonKey(name: 'name')
  final String Name;
  @JsonKey(name: 'url')
  final String Url;

  IType(this.Name, this.Url);
  factory IType.fromJson(Map<String, dynamic> json) => _$ITypeFromJson(json);
}