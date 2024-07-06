// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonImpl _$$PersonImplFromJson(Map<String, dynamic> json) => _$PersonImpl(
      name: json['name'] as String?,
      dob: json['dob'] as String?,
      cid: json['cid'] as String?,
      heartrate: json['heartrate'] as String?,
    );

Map<String, dynamic> _$$PersonImplToJson(_$PersonImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'dob': instance.dob,
      'cid': instance.cid,
      'heartrate': instance.heartrate,
    };
