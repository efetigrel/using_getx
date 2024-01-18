import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RecordListTile extends StatelessWidget {
  const RecordListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ListTile(
          leading: Text(
            DateFormat('dd.MM.y').format(DateTime.now()),
            style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          title: const Center(
              child: Text(
            '75',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 19,
            ),
          )),
          trailing: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  onPressed: null, icon: Icon(Icons.edit, color: Colors.grey)),
              IconButton(
                  onPressed: null, icon: Icon(Icons.delete, color: Colors.red)),
            ],
          ),
        ),
      ),
    );
  }
}
