import 'package:flutter/material.dart';
import 'package:using_getx/widgets/record_list_tile.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'History',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
        ],
      ),
    );
  }
}
