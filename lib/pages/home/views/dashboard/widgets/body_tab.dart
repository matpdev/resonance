import 'package:flutter/material.dart';
import 'package:resonance/contexts/request_context.dart';

class BodyTab extends StatefulWidget {
  final RequestContext context;

  const BodyTab({super.key, required this.context});

  @override
  State<BodyTab> createState() => _BodyTabState();
}

class _BodyTabState extends State<BodyTab> {
  late final TextEditingController _bodyController;

  @override
  void initState() {
    super.initState();
    _bodyController = TextEditingController();
  }

  @override
  void dispose() {
    _bodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text("Request Body (JSON)"),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: TextField(
              controller: _bodyController,
              maxLines: null,
              expands: true,
              decoration: InputDecoration(
                hintText: '{\n  "key": "value"\n}',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () => _bodyController.clear(),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                child: const Text("Clear"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
