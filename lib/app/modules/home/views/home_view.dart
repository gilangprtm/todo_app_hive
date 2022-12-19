import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../calendar/views/calendar_view.dart';
import '../../todo/views/todo_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.list_rounded)),
              Tab(icon: Icon(Icons.calendar_month_outlined)),
            ],
          ),
          title: const Text('Todo App'),
          centerTitle: true,
          elevation: 0,
        ),
        body: TabBarView(
          children: [
            TodoView(),
            CalendarView(),
          ],
        ),
      ),
    );
  }
}
