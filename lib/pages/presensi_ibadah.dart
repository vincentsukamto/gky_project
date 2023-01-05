import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gky_project/pages/home_page.dart';
import 'package:gky_project/pages/peserta_ibadah.dart';

class PresensiIbadah extends StatelessWidget {
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
        body: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    TextButton(
                      onPressed: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }),
                        );
                      },
                      child: Text("< Kembali")
                    ),
                  ],
                )
              ],
            ),
            ListTile(
              title: Text("Ibadah Sesi I"),
              subtitle: Text("Jumat, 6 Januari 2023"),
              trailing: Text("Pukul 17.00"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return PesertaIbadah();
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}



            