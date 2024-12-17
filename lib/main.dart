import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';
import 'Widgets/balance_widget.dart';
import 'Widgets/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kashoro',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyanAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Kashoro'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100), // Altura personalizada
        child: CustomHeader(),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Flexible(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 2,
              children: const [
                InfoCard(
                    icon: Icons.account_balance,
                    title: "My Balance",
                    amount: "\$10"),
                InfoCard(
                    icon: Icons.receipt_long, title: "Expense", amount: "\$5"),
                InfoCard(
                    icon: Icons.savings,
                    title: "Total Savings",
                    amount: "\$53"),
                InfoCard(
                    icon: Icons.trending_up, title: "Incomes", amount: "\$20")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
