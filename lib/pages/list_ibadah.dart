import 'package:flutter/material.dart';
import 'package:gky_project/utils/mytheme.dart';
import 'package:intl/intl.dart';
import 'package:gky_project/pages/peserta_ibadah.dart';
import 'package:gky_project/widgets/sesi_block.dart';

class ListIbadah extends StatelessWidget {
  
  ListIbadah({super.key});

  final DateFormat format = DateFormat("MMM dd");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5FA),
      bottomNavigationBar: BottomAppBar(
        color: MyTheme.appBarColor,
        child: Container(
          width: double.maxFinite,
          height: AppBar().preferredSize.height,
          child: Row(
            children: [
              Expanded(
                child: ListTile(
                  title: Text(
                    format.format(DateTime.now()),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("List Sesi Ibadah"),
        backgroundColor: MyTheme.appBarColor,
        elevation: 0,
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount:5,
        itemBuilder: (_, index) {
          return Container(
            padding: const EdgeInsets.only(bottom: 20),
            child: SesiBlock(
              
            ),
          );
        }),
    );
  }
}