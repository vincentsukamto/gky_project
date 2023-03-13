import 'package:flutter/material.dart';
import 'package:gky_project/utils/mytheme.dart';

import 'package:gky_project/pages/seat_ibadah.dart';

class SesiBlock extends StatelessWidget {
  const SesiBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sesi Ibadah 1'
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.info_outline,
                  color:Colors.black45.withOpacity(0.3)
                ),
              )
            ],
          ),

          RichText(text: TextSpan(
            children: [
              const WidgetSpan(
                child: Icon(
                  Icons.calendar_month_outlined, 
                  size: 18,
                )
              ),
              TextSpan(
                text: "Sekolah Minggu", 
                style: TextStyle(color: Color(0xff999999)),
              ),
            ],
          )),
          const SizedBox(
            height: 10,
          ),
          Wrap(
            runSpacing: 10,
            spacing: 20,
            children: List.generate(
              4, 
              (index) {
                Color color = index % 2 == 0 ? MyTheme.orangeColor : MyTheme.greenColor;
                return GestureDetector(
                  onTap: () {
                    // seat selection
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return SeatIbadah();
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0x22E5E5E5),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1, color: Color(0xffE5E5E5))
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Text("10:00 AM", style: TextStyle(color: color),),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}