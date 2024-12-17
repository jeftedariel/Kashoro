import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';
import 'Widgets/balance_widget.dart';
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      toastification.show(
	  context: context,
	  type: ToastificationType.success,
	  style: ToastificationStyle.flatColored,
	  title: Text("Justin"),
	  description: Text("Engripado"),
	  alignment: Alignment.topLeft,
	  autoCloseDuration: const Duration(seconds: 3),
	  showProgressBar: true,
	  dragToClose: true,
	  applyBlurEffect: true,
	);
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GridView.count(
        crossAxisCount: 2, // 2 columnas
        crossAxisSpacing: 8, // Espaciado horizontal
        mainAxisSpacing: 8, // Espaciado vertical
        childAspectRatio: 2, // Relación de aspecto de cada tarjeta
        children: const [
          InfoCard(icon: Icons.account_balance, title: "My Balance", amount: "\$10")
        ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
