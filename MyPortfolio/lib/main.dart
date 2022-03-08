import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
    return PhoneTabletOrComputer(context);
  }

  Widget PhoneTabletOrComputer(BuildContext context) {
    Widget ChoosenScaffold = MediaQuery.of(context).size.shortestSide < 600
        ? PhoneScaffold(context)
        : ComputerScaffold(context);
    return ChoosenScaffold;
  }

  Widget PhoneScaffold(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("PhoneTablet ${MediaQuery.of(context).size.shortestSide}"),
      ),
    );
  }

  Widget ComputerScaffold(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Computer ${MediaQuery.of(context).size.shortestSide}"),
      ),
    );
  }
}
