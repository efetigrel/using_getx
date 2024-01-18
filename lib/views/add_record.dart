import 'package:flutter/material.dart';

class addRecordView extends StatefulWidget {
  const addRecordView({super.key});

  @override
  State<addRecordView> createState() => _addRecordViewState();
}

class _addRecordViewState extends State<addRecordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Record'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ],
      ),
    );
  }
}
