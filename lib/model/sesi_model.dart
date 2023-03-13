import 'package:flutter/foundation.dart';

class SesiModel {
  final List<String> id;
  final List<String> sesi;
  final List<String> waktu;

  SesiModel({
    this.id = const [
      "1","2","3","4"
    ],
    this.sesi = const [
      "Kebaktian Umum",
      "Kebaktian Doa",
      "Komisi Remaja",
      "Sekolah Minggu"
    ],
    this.waktu = const [
      "10:00 AM",
      "13:30 PM",
      "18:30 PM",
      "20:00 PM"
    ],
  });
}