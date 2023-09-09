// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) => Task(
      json['isCompleted'] as bool,
      json['title'] as String,
      DateTime.parse(json['created'] as String),
      updated: json['updatd'] == null
          ? null
          : DateTime.parse(json['updatd'] as String),
    );

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'isCompleted': instance.isCompleted,
      'title': instance.title,
      'created': instance.created.toIso8601String(),
      'updatd': instance.updated?.toIso8601String(),
    };
