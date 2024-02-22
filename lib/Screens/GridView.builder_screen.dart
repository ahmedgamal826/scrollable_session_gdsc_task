import 'package:flutter/material.dart';

class GridViewBuilderScreen extends StatelessWidget {
  const GridViewBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('GridView Screen'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 20, crossAxisSpacing: 15),
              itemCount: 21,
              itemBuilder: (context, index) {
                return Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(16)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.car_crash_outlined,
                          size: 40,
                        ),
                        Text(
                          'Car',
                          style: TextStyle(fontSize: 25),
                        )
                      ],
                    ));
              }),
        ));
  }
}
