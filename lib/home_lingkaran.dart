import 'package:flutter/material.dart';
import 'keliling_lingkaran.dart';
import 'lingkaran.dart';

class HomeLingkaran extends StatefulWidget {
  const HomeLingkaran({Key? key}) : super(key: key);

  @override
  State<HomeLingkaran> createState() => _HomeLingkaranState();
}

class _HomeLingkaranState extends State<HomeLingkaran> {
  int pageIndex = 0;
  final pages = [
    const Page1(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UTS Pemrograman Aplikasi Mobile'),
        centerTitle: true,
      ),
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: pageIndex,
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Lingkaran();
            }));
          },
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.blue[100],
            child: const Text('Luas Lingkaran'),
            alignment: Alignment.center,
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return KelilingLingkaran();
            }));
          },
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.blue[200],
            child: const Text('Keliling Lingkaran'),
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }
}
