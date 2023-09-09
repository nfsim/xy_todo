import 'package:equatable/equatable.dart';
import 'package:xy_todo/src/features/task/models/task.dart';

/// The list of task.
class Tasks extends Equatable {
  /// The stats of `Tasks` model
  final TasksState state;
  final List<Task> tasks;

  const Tasks(this.state, this.tasks);

  @override
  List<Object?> get props => [
        state,
        tasks,
      ];
}

/// The stats of the list of the task.
enum TasksState {
  loading,
  loaded,
  error,
}
