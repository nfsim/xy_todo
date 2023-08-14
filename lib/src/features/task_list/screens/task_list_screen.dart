import 'package:flutter/material.dart';
import 'package:xy_todo/generated/l10n.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({Key? key}) : super(key: key);

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
      body: Container(),
    );
  }
}
