import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:using_getx/models/record.dart';
import 'package:using_getx/view_models/controller.dart';

class RecordListTile extends StatelessWidget {
  final Record record;
  RecordListTile({super.key, required this.record});
  final Controller _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ListTile(
          leading: _buidDate(),
          title: _buidWeight(),
          trailing: _buidIcons(),
        ),
      ),
    );
  }

  Text _buidDate() => Text(
        DateFormat('dd.MM.y').format(record.dateTime),
        style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
      );
  Center _buidWeight() => Center(
        child: Text(
          '${record.weight}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ),
        ),
      );
  Row _buidIcons() => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const IconButton(
              onPressed: null, icon: Icon(Icons.edit, color: Colors.blue)),
          IconButton(
              onPressed: () {
                _controller.deleteRecord(record);
              },
              icon: const Icon(Icons.delete, color: Colors.red)),
        ],
      );
}
