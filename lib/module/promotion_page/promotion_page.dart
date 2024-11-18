import 'package:flutter/material.dart';

class PromotionPage extends StatelessWidget {
  final List<Map<String, String>> flightSchedules = [
    {
      "route": "Gorontalo - Pohuwato",
      "day": "Senin",
      "departure": "07:00",
      "arrival": "07:40"
    },
    {
      "route": "Pohuwato - Palu",
      "day": "Senin",
      "departure": "07:55",
      "arrival": "09:20"
    },
    {
      "route": "Palu - Pohuwato",
      "day": "Senin",
      "departure": "09:50",
      "arrival": "11:15"
    },
    {
      "route": "Pohuwato - Gorontalo",
      "day": "Senin",
      "departure": "11:30",
      "arrival": "12:10"
    },
    {
      "route": "Gorontalo - Bolmong",
      "day": "Senin",
      "departure": "12:40",
      "arrival": "13:28"
    },
    {
      "route": "Bolmong - Manado",
      "day": "Senin",
      "departure": "13:45",
      "arrival": "14:27"
    },
    {
      "route": "Manado - Siau",
      "day": "Selasa",
      "departure": "06:00",
      "arrival": "06:46"
    },
    {
      "route": "Siau - Naha",
      "day": "Selasa",
      "departure": "07:00",
      "arrival": "07:41"
    },
    {
      "route": "Naha - Miangas",
      "day": "Selasa",
      "departure": "08:10",
      "arrival": "09:16"
    },
    {
      "route": "Miangas - Melonguane",
      "day": "Selasa",
      "departure": "09:30",
      "arrival": "10:22"
    },
    {
      "route": "Melonguane - Miangas",
      "day": "Selasa",
      "departure": "10:50",
      "arrival": "11:43"
    },
    {
      "route": "Miangas - Naha",
      "day": "Selasa",
      "departure": "12:00",
      "arrival": "13:06"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Jadwal Penerbangan",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        color: Colors.black, // Background gelap
        child: ListView.builder(
          itemCount: flightSchedules.length,
          itemBuilder: (context, index) {
            final flight = flightSchedules[index];
            return Card(
              color: Colors.grey[900], // Warna kartu gelap
              margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      flight["route"]!,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 6.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hari: ${flight["day"]}",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey[400],
                          ),
                        ),
                        Text(
                          "Berangkat: ${flight["departure"]}",
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.lightBlue,
                          ),
                        ),
                        Text(
                          "Tiba: ${flight["arrival"]}",
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.lightGreen,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}