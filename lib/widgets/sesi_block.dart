import 'package:flutter/material.dart';

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
          Text(
            'Sesi Ibadah'
          ),
        ],
      ),
    );
  }
}