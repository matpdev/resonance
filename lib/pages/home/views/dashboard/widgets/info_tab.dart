import 'package:flutter/material.dart';
import 'package:resonance/contexts/request_context.dart';
import 'package:resonance/utils/enums.dart';

class InfoTab extends StatelessWidget {
  final RequestContext context;

  const InfoTab({super.key, required this.context});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: [
          _buildInfoTile(context, "Request URL", this.context.url.text),
          _buildInfoTile(context, "Method", this.context.method),
          _buildInfoTile(
            context,
            "Status",
            _getStatusText(this.context.requestStatus),
          ),
          _buildInfoTile(
            context,
            "Loading",
            this.context.isLoading ? "Yes" : "No",
          ),
          const SizedBox(height: 16),
          const Text("Headers:"),
          const SizedBox(height: 8),
          ...this.context.headers.entries.map(
            (e) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text("${e.key}: ${e.value}"),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoTile(BuildContext context, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(value),
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
}
