import 'package:flutter/material.dart';
import 'package:xy_todo/generated/l10n.dart';
import 'package:xy_todo/src/features/task_list/models/task_list_model.dart';

class TaskListScreen extends StatefulWidget {
  final Tasks tasks;
  const TaskListScreen({Key? key, required this.tasks}) : super(key: key);

  @override
  State<TaskListScreen> createState() => _TaskListState();
}

class _TaskListState extends State<TaskListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).s_taskLists),
      ),
      body: ListView.separated(
        itemCount: widget.tasks.tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(widget.tasks.tasks[index].title),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
      ),
    );
  }
}
