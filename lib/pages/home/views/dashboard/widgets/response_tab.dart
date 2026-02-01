import 'package:flutter/material.dart';
import 'package:resonance/contexts/request_context.dart';
import 'package:resonance/utils/enums.dart';

class ResponseTab extends StatelessWidget {
  final RequestContext context;

  const ResponseTab({super.key, required this.context});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (this.context.requestStatus == StatusRequest.Finished)
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Chip(
                label: const Text("Status: 200 OK"),
                backgroundColor: Colors.green,
                labelStyle: const TextStyle(color: Colors.white),
              ),
            ),
          Expanded(
            child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerLow,
                border: Border.all(
                  color: Theme.of(context).colorScheme.outlineVariant,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: SingleChildScrollView(
                child: SelectableText(
                  this.context.responseText.isEmpty
                      ? "Response will appear here..."
                      : this.context.responseText,
                  style: const TextStyle(fontFamily: "monospace", fontSize: 12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
