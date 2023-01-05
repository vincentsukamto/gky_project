import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gky_project/pages/home_page.dart';
import 'package:gky_project/pages/presensi_ibadah.dart';

const List<int> list = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

class PesertaIbadah extends StatelessWidget {
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
        body: Column(
          children: [
            Row(
              children: [
                TextButton(
                  onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return PresensiIbadah();
                      }),
                    );
                  },
                  child: Text("< Kembali")
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Ibadah Sesi I", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),),
                Text("Jumat, 6 Januari 2023"),
                Text("Pukul 17.00 WIB"),
                Divider(),
                Text("No Kursi:"),
                Text("C-3"),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Silahkan masukkan jumlah peserta",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                ),
                Center(
                  child: DropdownButtonExample(),
                ),
              ],
            ),
            Column(
              children: [
                TextButton(
                  style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue)),
                  onPressed: () {

                  },
                  child: Text(
                    "Submit", 
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  int dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      onChanged: (int? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<int>>((int value) {
        return DropdownMenuItem<int>(
          value: value,
          child: Text(value.toString()),
        );
      }).toList(),
    );
  }
}


            