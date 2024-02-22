import 'package:flutter/material.dart';
import 'package:scrollable_session_task/home_page.dart';

void main() {
  runApp(const ScrollableTask());
}

class ScrollableTask extends StatelessWidget {
  const ScrollableTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
