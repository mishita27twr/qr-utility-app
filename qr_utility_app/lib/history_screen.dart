import 'package:flutter/material.dart';
import 'history_service.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  List<Map<String, dynamic>> history = [];

  Future<void> loadHistory() async {
    final data = await HistoryService.getHistory();

    setState(() {
      history = data;
    });
  }

  @override
  void initState() {
    super.initState();
    loadHistory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QR History"),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_sweep),
            onPressed: () async {
              await HistoryService.clearHistory();
              loadHistory();
            },
          ),
        ],
      ),
      body: history.isEmpty
          ? const Center(
              child: Text("No History Found"),
            )
          : ListView.builder(
              itemCount: history.length,
              itemBuilder: (context, index) {
                final item = history[index];

                return Card(
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    title: Text(item["value"]),
                    subtitle: Text(
                      "${item["type"]}\n${item["date"]}",
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () async {
                        await HistoryService.deleteItem(index);
                        loadHistory();
                      },
                    ),
                  ),
                );
              },
            ),
    );
  }
}