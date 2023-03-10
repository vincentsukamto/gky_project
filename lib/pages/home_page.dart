import 'package:flutter/material.dart';

void main() => runApp(const HomePage());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home', //Ganti Halaman Disini?
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('GKY Puri'),
      ),
      body: Column(children: <Widget>[
        Row(
          //ROW 1
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                "Shalom, Name",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Row(//ROW 2
            children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Semoga hari ini menyenangkan",
              style: TextStyle(fontSize: 17),
            ),
          ),
        ]),
        Row(
            // ROW 3
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 17),
                child: Image.network(
                    'http://www.gky.or.id/images/publication/313-3.jpg',
                    height: 200,
                    width: 390,
                    fit: BoxFit.cover),
              ),
            ]),
        Row(
            mainAxisAlignment: MainAxisAlignment.center, // ROW 3
            children: [
              Container(
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.white10,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Ink.image(
                          image: NetworkImage(
                              'http://www.gky.or.id/images/publication/423.jpg'),
                          height: 150,
                          width: 180,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        child: Text("Presensi Ibadah",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        padding: const EdgeInsets.all(12),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 15),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.white10,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Ink.image(
                          image: NetworkImage(
                              'https://assets-a1.kompasiana.com/items/album/2021/06/28/alkitab-freepik-60d9116bbb44866c18752882.jpg'),
                          height: 150,
                          width: 180,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        child: Text("Download PDF",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        padding: const EdgeInsets.all(12),
                      )
                    ],
                  ),
                ),
              ),
            ]),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifikasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'Scan QR',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
