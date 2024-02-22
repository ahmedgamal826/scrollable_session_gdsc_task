import 'package:flutter/material.dart';
import 'package:scrollable_session_task/Screens/GridView.builder_screen.dart';
import 'package:scrollable_session_task/Screens/listview_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: const Text(
            'Scrollable Session Task',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const ListViewScreen()));
                  },
                  child: const Text(
                    'ListView Screen',
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  )),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const GridViewBuilderScreen()));
                  },
                  child: const Text(
                    'GridView Screen',
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  )),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
