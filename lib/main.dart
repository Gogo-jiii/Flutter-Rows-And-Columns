import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Rows and Columns'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Row 1 - Item 1,"),
              SizedBox(width: 20),
              Text("Row 1 - Item 2"),
            ],
          ),
          const SizedBox(width: double.infinity, height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Row 2 - Item 1,"),
              SizedBox(width: 20),
              Text("Row 2 - Item 2"),
            ],
          ),
        ],
      ),
    );
  }
}
