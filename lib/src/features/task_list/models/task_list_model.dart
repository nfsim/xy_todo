import 'package:xy_todo/src/features/task/models/task.dart';

/// The list of task.
class Tasks implements Comparable<Tasks> {
  /// The stats of `Tasks` model
  TasksState state;
  List<Task> tasks;

  Tasks(this.state, this.tasks);

  @override
  int compareTo(Tasks other) {
    if (state != other.state) {
      return -1;
    }
    if (tasks != other.tasks) {
      return -1;
    }
    return 0;
  }
}

/// The stats of the list of the task.
enum TasksState {
  loading,
  loaded,
  error,
}
