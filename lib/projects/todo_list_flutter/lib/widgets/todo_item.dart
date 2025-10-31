import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  final String task;
  final bool done;
  final VoidCallback onToggle;
  final VoidCallback onDelete;
  final VoidCallback onEdit; // 🆕 Tambahkan ini

  const TodoItem({
    super.key,
    required this.task,
    required this.done,
    required this.onToggle,
    required this.onDelete,
    required this.onEdit, // 🆕 Wajib juga di sini
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        leading: Checkbox(value: done, onChanged: (_) => onToggle()),
        title: Text(
          task,
          style: TextStyle(
            decoration: done ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.edit, color: Colors.blueAccent),
              onPressed: onEdit,
            ),
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.redAccent),
              onPressed: onDelete,
            ),
          ],
        ),
      ),
    );
  }
}
