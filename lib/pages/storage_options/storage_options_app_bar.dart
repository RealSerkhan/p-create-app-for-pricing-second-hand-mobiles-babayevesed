import 'package:flutter/material.dart';
import 'package:telefonchu/shared/widgets/app_bar.dart';

class StorageOptionsAppBar extends CustomAppBar {
  const StorageOptionsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: 'Storage Options',
    );
  }
}
