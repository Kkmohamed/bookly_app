import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const Blooky());
}

class Blooky extends StatelessWidget {
  const Blooky({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp();
  }
}
