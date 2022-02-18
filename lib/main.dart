import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Text('Hisheb Nikesh'),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text('Home'),
            ),
            ListTile(
              title: Text('Talikhata'),
            ),
            ListTile(
              title: Text('Khoroch'),
            ),
            ListTile(
              title: Text('Bechakena'),
            ),
            ListTile(
              title: Text('Cash Hishab'),
            ),
          ],
        ),
      ),
      body: Card(
        child: Container(
          height: 150,
          color: Colors.orange,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blueGrey,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Center(child: Text('Ajker Becha 0')),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Center(child: Text('Bortoman Cash 0')),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.green,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Expanded(
                          child: Container(
                            child: Center(child: Text('Ajker Becha')),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Center(child: Text('Bortoman Cash')),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
      ),
    );
  }
}
