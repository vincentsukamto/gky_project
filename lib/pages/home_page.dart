import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gky_project/pages/presensi_ibadah.dart';

class HomePage extends StatelessWidget {
  List<Text> menuList = [
      const Text("Presensi"),
      const Text("Download PDF"),
      const Text("Comming Soon"),
      const Text("Comming Soon"),
  ];
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar( 
          centerTitle: true,
          title: Text("GKY Puri"),
          backgroundColor: Colors.blue,
        ),
        // BODY 
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(4, (index) {
            return ListTile(
              title: Center(
                child: menuList[index],
              ),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return PresensiIbadah();
                  }),
                );
              },
            );
          }),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none),
              label: 'Notifikasi',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_2_rounded),
              label: 'Scan QR',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}



            