// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) {
  return Result(
    Count: json['count'] as int,
    Next: json['next'] as String,
    Previous: json['previous'] as String,
    Data: (json['results'] as List)
        ?.map((e) =>
            e == null ? null : IPokemonItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'count': instance.Count,
      'next': instance.Next,
      'previous': instance.Previous,
      'results': instance.Data,
    };
