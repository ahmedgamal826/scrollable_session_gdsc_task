import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: Padding(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 80,
                child: Text(
                  'A',
                  style: TextStyle(
                      fontSize: 70,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Ahmed Elnemr',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                leading: Icon(
                  Icons.mail,
                  size: 30,
                ),
                title: Text('ahmedelnemr@gmail.com'),
              ),
              ListTile(
                leading: Icon(
                  Icons.phone,
                  size: 30,
                ),
                title: Text('01011904241'),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: const Text(
          'Contacts',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_forward))
        ],
      ),
      body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return const ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blue,
                child: Text(
                  'A',
                  style: TextStyle(fontSize: 23, color: Colors.white),
                ),
              ),
              title: Text('Ahmed Elnemr'),
              subtitle: Text('ahmedelm12@gmail.com'),
              trailing: Icon(Icons.phone),
            );
          }),
    );
  }
}
