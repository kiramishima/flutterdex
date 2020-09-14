import 'package:json_annotation/json_annotation.dart';

part 'IPokemonItem.g.dart';

@JsonSerializable()
class IPokemonItem {
  @JsonKey(name: 'name')
  final String Name;
  @JsonKey(name: 'url')
  final String Url;

  IPokemonItem(this.Name, this.Url);

  factory IPokemonItem.fromJson(Map<String, dynamic> json) => _$IPokemonItemFromJson(json);

  @override
  String toString() {
    return 'IPokemonItem {Name: $Name, URL: $Url}';
  }
}