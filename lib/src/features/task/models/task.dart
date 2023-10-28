// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task.g.dart';

/// The detail of the task.
@JsonSerializable()
class Task extends Equatable {
  /// The flag indicates whether the task is complted or not.
  final bool isCompleted;

  /// The title of the task.
  final String title;

  /// The date time when the task was created.
  final DateTime created;

  /// The date time when the task was updated.
  final DateTime? updated;

  const Task(this.isCompleted, this.title, this.created, {this.updated});

  /// Creats the [Task] from given [isCompleted] and [title].
  ///
  /// The [updated] property is `null`.
  /// Uses [Task.update] to update the [updated].
  Task.create(this.isCompleted, this.title)
      : created = DateTime.now(),
        updated = null;

  /// Creates the [Task] from the given [other] task with [updated] date time.
  Task.update(Task other, DateTime this.updated)
      : isCompleted = other.isCompleted,
        title = other.title,
        created = other.created;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
  Map<String, dynamic> toJson() => _$TaskToJson(this);

  @override
  List<Object?> get props => [
        isCompleted,
        title,
        created,
        updated,
      ];
}
