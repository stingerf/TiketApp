import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TransactionHistoryPage(),
    );
  }
}

class TransactionHistoryPage extends StatelessWidget {
  final List<Transaction> transactions = [
  Transaction(
    appName: "Garuda Indonesia",
    description: "Tiket Penerbangan - Jakarta ke Bali (Economy Class)",
    date: "10 Nov",
    amount: "-Rp 1.250.000,00",
  ),
  Transaction(
    appName: "AirAsia",
    description: "Bagasi Tambahan 20kg - Jakarta ke Kuala Lumpur",
    date: "08 Nov",
    amount: "-Rp 350.000,00",
  ),
  Transaction(
    appName: "Traveloka",
    description: "Tiket Penerbangan - Surabaya ke Singapore (Business Class)",
    date: "05 Nov",
    amount: "-Rp 3.500.000,00",
  ),
  Transaction(
    appName: "Lion Air",
    description: "Tiket Penerbangan - Medan ke Jakarta (Economy Class)",
    date: "28 Okt",
    amount: "-Rp 950.000,00",
  ),
  Transaction(
    appName: "Citilink",
    description: "Bagasi Tambahan 10kg - Yogyakarta ke Bali",
    date: "15 Okt",
    amount: "-Rp 200.000,00",
  ),
  Transaction(
    appName: "Batik Air",
    description: "Makanan dan Minuman - Jakarta ke Lombok",
    date: "05 Sep",
    amount: "-Rp 75.000,00",
  ),
  Transaction(
    appName: "Scoot",
    description: "Tiket Penerbangan - Bali ke Sydney (Economy Class)",
    date: "20 Agu",
    amount: "-Rp 2.750.000,00",
  ),
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Riwayat Transaksi"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          final transaction = transactions[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Card(
              child: ListTile(
                title: Text(
                  transaction.appName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(transaction.description),
                    Text(transaction.date, style: TextStyle(color: Colors.grey)),
                  ],
                ),
                trailing: Text(
                  transaction.amount,
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Transaction {
  final String appName;
  final String description;
  final String date;
  final String amount;

  Transaction({
    required this.appName,
    required this.description,
    required this.date,
    required this.amount,
  });
}
