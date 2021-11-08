import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bar chart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Bar Chart'),
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
      body: Center(
          child: BarChart(BarChartData(
              borderData: FlBorderData(
                  border: const Border(
                top: BorderSide.none,
                right: BorderSide.none,
                left: BorderSide(width: 1),
                bottom: BorderSide(width: 1),
              )),
              barGroups: [
            BarChartGroupData(x: 1, barRods: [
              BarChartRodData(y: 10, width: 15, colors: [Colors.amber]),
            ]),
            BarChartGroupData(x: 2, barRods: [
              BarChartRodData(y: 9, width: 15, colors: [Colors.amber]),
            ]),
            BarChartGroupData(x: 3, barRods: [
              BarChartRodData(y: 4, width: 15, colors: [Colors.amber]),
            ]),
            BarChartGroupData(x: 4, barRods: [
              BarChartRodData(y: 2, width: 15, colors: [Colors.amber]),
            ]),
            BarChartGroupData(x: 5, barRods: [
              BarChartRodData(y: 13, width: 15, colors: [Colors.amber]),
            ]),
            BarChartGroupData(x: 6, barRods: [
              BarChartRodData(y: 17, width: 15, colors: [Colors.amber]),
            ]),
            BarChartGroupData(x: 7, barRods: [
              BarChartRodData(y: 19, width: 15, colors: [Colors.amber]),
            ]),
            BarChartGroupData(x: 8, barRods: [
              BarChartRodData(y: 21, width: 15, colors: [Colors.amber]),
            ]),
          ]))),
    );
  }
}
