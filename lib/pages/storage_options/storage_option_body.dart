import 'package:flutter/material.dart';

class StorageOptionBody extends StatelessWidget {
  const StorageOptionBody({super.key, required this.options, required this.selectedOptions});
  final List<int> options;
  final List<int> selectedOptions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
        itemCount: options.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          final option = options[index];
          return RadioListTile(
            tileColor: Colors.lightBlue.shade200,
            activeColor: Colors.black,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            value: option,
            title: Text('$option gb'),
            groupValue: option,
            onChanged: (value) {},
          );
        },
      ),
    );
  }
}
