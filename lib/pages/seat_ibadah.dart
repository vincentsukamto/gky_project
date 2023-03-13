import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gky_project/utils/mytheme.dart';

class SeatIbadah extends StatelessWidget {
  const SeatIbadah({super.key});

  @override
  Widget build(BuildContext context) {
    int alphabetCounter = -1;
    int seatCounter = 0;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyTheme.appBarColor,
        title: Text("Pilih Tempat Duduk"),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            SvgPicture.asset("assets/image/screen_here.svg"),
            Text("Mimbar Gereja"),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount:1,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10,),
                        ...List.generate(
                          26, 
                          (row) {
                            alphabetCounter++;
                            return Wrap(
                              children: List.generate(
                                10, 
                                (col) {
                                  if(col == 0) {
                                    return Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: SizedBox(
                                        child: Text(String.fromCharCode(65 + alphabetCounter)),
                                        height: 25,
                                        width: 25,
                                      ),
                                    );
                                  }
                                  // untuk buat gap
                                  if((col == 5 || col == 5) || (row == 15 || row == 15)) {
                                    return Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                      ),
                                    );
                                  }
                                  seatCounter++;
                                  return Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2.0),
                                        color: const Color(0xffffffff),
                                        border: Border.all(width: .5, color: const Color(0xff707070))
                                      ),
                                      child: Center(child: Text(String.fromCharCode(65 + alphabetCounter)+"$col")),
                                    )
                                  );
                                }
                              ),
                            );
                          }
                        ),
                      ],
                    ),
                  );
                }, 
              ),
            )
          ],
        ),
      ),
    );
  }
}