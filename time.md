import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ClockPage(),
    );
  }
}

class ClockPage extends StatefulWidget {
  const ClockPage({Key? key}) : super(key: key);

  @override
  _ClockPageState createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  late String _currentTime;

  @override
  void initState() {
    super.initState();
    _currentTime = _getCurrentTime();
    Timer.periodic(const Duration(seconds: 1), (Timer t) {
      setState(() {
        _currentTime = _getCurrentTime();
      });
    });
  }

  String _getCurrentTime() {
    final now = DateTime.now();
    return "${now.year}-${_formatTwoDigits(now.month)}-${_formatTwoDigits(now.day)}\n오후 ${_formatTwoDigits(now.hour % 12 == 0 ? 12 : now.hour % 12)}:${_formatTwoDigits(now.minute)}:${_formatTwoDigits(now.second)}";
  }

  String _formatTwoDigits(int n) {
    return n.toString().padLeft(2, '0');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: null,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Center(
            child: Text(
              '현재 시각',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: Center(
        child: Text(
          _currentTime,
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
