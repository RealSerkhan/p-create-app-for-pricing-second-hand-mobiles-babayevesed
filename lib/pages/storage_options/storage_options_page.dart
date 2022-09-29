import 'package:flutter/material.dart';
import 'package:telefonchu/pages/storage_options/storage_option_body.dart';
import 'package:telefonchu/pages/storage_options/storage_options_app_bar.dart';

class StorageOptionsPage extends StatelessWidget {
  const StorageOptionsPage({super.key, required this.modelID});
  static const String routeName = '/storage_options';
  final String modelID;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StorageOptionsAppBar(),
      body: StorageOptionBody(options: [32, 64],selectedOptions: [],),
    );
  }
}
