import 'package:json_annotation/json_annotation.dart';
import 'package:layouts/models/IPokemonItem.dart';

part 'result.g.dart';

@JsonSerializable()
class Result {
  @JsonKey(name: 'count')
  late final int Count;
  @JsonKey(name: 'next')
  late final String Next;
  @JsonKey(name: 'previous')
  late final String? Previous;
  @JsonKey(name: 'results')
  late final List<IPokemonItem> Data;

  Result({this.Count = 0, this.Next = '', this.Previous = '', this.Data = const <IPokemonItem>[]});

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}