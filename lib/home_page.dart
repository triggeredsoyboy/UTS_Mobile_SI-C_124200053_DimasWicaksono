import 'package:flutter/material.dart';
import 'package:uts_mobile_c_124200053_dimaswicaksono/home_lingkaran.dart';
import 'package:uts_mobile_c_124200053_dimaswicaksono/home_persegi_panjang.dart';
import 'home_trapesium.dart';
import 'home_segitiga.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  final pages = [
    const Page1(),
    const Page2(),
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
              return HomeTrapesium();
            }));
          },
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.blue[100],
            child: const Text('Trapesium'),
            alignment: Alignment.center,
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeSegitiga();
            }));
          },
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.blue[200],
            child: const Text('Segitiga'),
            alignment: Alignment.center,
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeLingkaran();
            }));
          },
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.blue[300],
            child: const Text('Lingkaran'),
            alignment: Alignment.center,
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomePersegiPanjang();
            }));
          },
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.blue[400],
            child: const Text('Persegi Panjang'),
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.amber,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              height: 250,
              width: 250,
              child: Image.asset("dimas.jpg"),
            ),
            Container(
              child: Text('Dimas Wicaksono\n'
                  '124200053\n'
                  'TTL\n'
                  'Berkemah'),
            ),
          ],
        ),
      ),
    );
  }
}
