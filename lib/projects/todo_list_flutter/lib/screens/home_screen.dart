import 'package:flutter/material.dart';
import '../widgets/todo_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, dynamic>> _todos = [];

  void _addTodo() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _todos.add({'task': _controller.text, 'done': false});
        _controller.clear();
      });
    }
  }

  void _toggleDone(int index) {
    setState(() {
      _todos[index]['done'] = !_todos[index]['done'];
    });
  }

  void _deleteTodo(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Hapus Tugas'),
          content: const Text('Yakin mau menghapus tugas ini?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), // Tutup dialog
              child: const Text('Batal'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
              ),
              onPressed: () {
                setState(() {
                  _todos.removeAt(index);
                });
                Navigator.pop(context); // Tutup dialog

                // 🎉 SnackBar konfirmasi penghapusan
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Tugas berhasil dihapus!'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              child: const Text('Hapus'),
            ),
          ],
        );
      },
    );
  }

  void _editTodoDialog(int index) {
    TextEditingController editController = TextEditingController(
      text: _todos[index]['task'],
    );

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Tugas'),
          content: TextField(
            controller: editController,
            decoration: const InputDecoration(
              hintText: 'Edit tugas kamu...',
              border: OutlineInputBorder(),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Batal'),
            ),
            ElevatedButton(
              onPressed: () {
                if (editController.text.isNotEmpty) {
                  setState(() {
                    _todos[index]['task'] = editController.text;
                  });
                  Navigator.pop(context);

                  // 🎉 SnackBar konfirmasi edit
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Tugas berhasil diedit!'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                }
              },
              child: const Text('Simpan'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TO DO LIST MIKHAI'),
        backgroundColor: Colors.deepPurple.shade100,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Tambahkan kamu...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _addTodo,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _todos.length,
                itemBuilder: (context, index) {
                  final todo = _todos[index];
                  return TodoItem(
                    task: todo['task'],
                    done: todo['done'],
                    onToggle: () => _toggleDone(index),
                    onDelete: () => _deleteTodo(index),
                    onEdit: () => _editTodoDialog(index), // 🆕 Tambahin ini!
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
