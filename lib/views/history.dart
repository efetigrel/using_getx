import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:using_getx/models/record.dart';
import 'package:using_getx/view_models/controller.dart';
import 'package:using_getx/widgets/record_list_tile.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final Controller _controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    RxList<Record> records = _controller.records;

    return Obx(
      () => Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: _controller.addRecord, icon: const Icon(Icons.add)),
          ],
          centerTitle: true,
          title: const Text('History'),
        ),
        body: records.isEmpty
            ? const Center(
                child: Text(
                  'Please Add Some Records',
                  style: TextStyle(fontSize: 20),
                ),
              )
            : ListView(
                physics: const BouncingScrollPhysics(),
                children: records
                    .map(
                      (record) => RecordListTile(record: record),
                    )
                    .toList(),
              ),
      ),
    );
  }
}
