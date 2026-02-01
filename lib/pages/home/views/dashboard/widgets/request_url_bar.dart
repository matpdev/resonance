import 'package:flutter/material.dart';
import 'package:resonance/contexts/request_context.dart';
import 'package:resonance/utils/enums.dart';

class RequestUrlBar extends StatelessWidget {
  final RequestContext requestContext;

  const RequestUrlBar({super.key, required this.requestContext});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).colorScheme.outlineVariant,
          ),
        ),
      ),
      child: Column(
        spacing: 12,
        children: [
          Row(
            spacing: 12,
            children: [
              // Method Dropdown
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.outlineVariant,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButton<String>(
                  value: requestContext.method,
                  underline: const SizedBox(),
                  items: const [
                    DropdownMenuItem(value: "GET", child: Text("GET")),
                    DropdownMenuItem(value: "POST", child: Text("POST")),
                    DropdownMenuItem(value: "PATCH", child: Text("PATCH")),
                    DropdownMenuItem(value: "PUT", child: Text("PUT")),
                    DropdownMenuItem(value: "DELETE", child: Text("DELETE")),
                  ],
                  onChanged: (method) {
                    if (method != null) {
                      requestContext.changeMethod(method);
                    }
                  },
                ),
              ),
              // URL Input
              Expanded(
                child: TextField(
                  controller: requestContext.url,
                  decoration: InputDecoration(
                    hintText: "Enter request URL",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                  ),
                ),
              ),
              // Send Button
              ElevatedButton(
                onPressed: requestContext.isLoading
                    ? () => requestContext.cancelRequest()
                    : () => requestContext.startRequest(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: requestContext.isLoading
                      ? Colors.red
                      : Theme.of(context).colorScheme.primary,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 12,
                  ),
                ),
                child: requestContext.isLoading
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation(Colors.white),
                        ),
                      )
                    : const Text("Send", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          // Status Indicator
          if (requestContext.requestStatus != StatusRequest.None)
            Align(
              alignment: Alignment.centerLeft,
              child: Chip(
                label: Text(_getStatusText(requestContext.requestStatus)),
                backgroundColor: _getStatusColor(requestContext.requestStatus),
                labelStyle: const TextStyle(color: Colors.white),
              ),
            ),
        ],
      ),
    );
  }

  String _getStatusText(StatusRequest status) {
    switch (status) {
      case StatusRequest.Started:
        return "Loading...";
      case StatusRequest.Finished:
        return "Finished";
      case StatusRequest.Error:
        return "Error";
      case StatusRequest.Canceled:
        return "Canceled";
      default:
        return "None";
    }
  }

  Color _getStatusColor(StatusRequest status) {
    switch (status) {
      case StatusRequest.Started:
        return Colors.blue;
      case StatusRequest.Finished:
        return Colors.green;
      case StatusRequest.Error:
        return Colors.red;
      case StatusRequest.Canceled:
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }
}
