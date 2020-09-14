import 'package:json_annotation/json_annotation.dart';
import 'package:layouts/models/IPokemonItem.dart';

part 'result.g.dart';

@JsonSerializable()
class Result {
  @JsonKey(name: 'count')
  final int Count;
  @JsonKey(name: 'next')
  final String Next;
  @JsonKey(name: 'previous')
  final String Previous;
  @JsonKey(name: 'results')
  final List<IPokemonItem> Data;

  Result({this.Count, this.Next, this.Previous, this.Data});

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}