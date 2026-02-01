import 'package:flutter/material.dart';
import 'package:resonance/contexts/request_context.dart';

class HeadersTab extends StatefulWidget {
  final RequestContext context;

  const HeadersTab({super.key, required this.context});

  @override
  State<HeadersTab> createState() => _HeadersTabState();
}

class _HeadersTabState extends State<HeadersTab> {
  late final TextEditingController _headerKeyController;
  late final TextEditingController _headerValueController;

  @override
  void initState() {
    super.initState();
    _headerKeyController = TextEditingController();
    _headerValueController = TextEditingController();
  }

  @override
  void dispose() {
    _headerKeyController.dispose();
    _headerValueController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Headers Table Header
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainer,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 40,
                  child: Checkbox(value: false, onChanged: (_) {}),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "Key",
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    "Value",
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    "Description",
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(width: 40),
              ],
            ),
          ),
          // Headers List
          Expanded(
            child: widget.context.headers.isEmpty
                ? _buildEmptyState(context)
                : _buildHeadersList(context),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
      ),
      child: Center(
        child: Text(
          "No headers added",
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }

  Widget _buildHeadersList(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
      ),
      child: ListView.separated(
        itemCount: widget.context.headers.length + 1,
        separatorBuilder: (_, __) => Divider(
          height: 1,
          color: Theme.of(context).colorScheme.outlineVariant,
        ),
        itemBuilder: (ctx, index) {
          if (index == widget.context.headers.length) {
            return _buildAddHeaderRow(context);
          }
          return _buildHeaderRow(context, index);
        },
      ),
    );
  }

  Widget _buildAddHeaderRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          const SizedBox(width: 40),
          Expanded(
            flex: 1,
            child: TextField(
              controller: _headerKeyController,
              style: Theme.of(context).textTheme.bodySmall,
              decoration: InputDecoration(
                hintText: "Key",
                hintStyle: Theme.of(context).textTheme.bodySmall,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 8,
                ),
                isDense: true,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            flex: 2,
            child: TextField(
              controller: _headerValueController,
              style: Theme.of(context).textTheme.bodySmall,
              decoration: InputDecoration(
                hintText: "Value",
                hintStyle: Theme.of(context).textTheme.bodySmall,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 8,
                ),
                isDense: true,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            flex: 2,
            child: TextField(
              style: Theme.of(context).textTheme.bodySmall,
              decoration: InputDecoration(
                hintText: "Description",
                hintStyle: Theme.of(context).textTheme.bodySmall,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 8,
                ),
                isDense: true,
              ),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            width: 40,
            child: ElevatedButton(
              onPressed: () {
                if (_headerKeyController.text.isNotEmpty &&
                    _headerValueController.text.isNotEmpty) {
                  widget.context.addHeader(
                    _headerKeyController.text,
                    _headerValueController.text,
                  );
                  _headerKeyController.clear();
                  _headerValueController.clear();
                }
              },
              style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(0)),
              child: const Icon(Icons.add, size: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderRow(BuildContext context, int index) {
    final entries = widget.context.headers.entries.toList();
    final key = entries[index].key;
    final value = entries[index].value;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          SizedBox(width: 40, child: Checkbox(value: true, onChanged: (_) {})),
          Expanded(
            flex: 1,
            child: Text(
              key,
              style: Theme.of(context).textTheme.bodySmall,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            flex: 2,
            child: Text(
              value.toString(),
              style: Theme.of(context).textTheme.bodySmall,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            flex: 2,
            child: Text(
              "",
              style: Theme.of(context).textTheme.bodySmall,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            width: 40,
            child: IconButton(
              icon: const Icon(Icons.close, size: 16),
              onPressed: () => widget.context.removeHeader(key),
              padding: EdgeInsets.zero,
            ),
          ),
        ],
      ),
    );
  }
}
