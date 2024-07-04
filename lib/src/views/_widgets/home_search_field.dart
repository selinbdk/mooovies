import 'package:flutter/material.dart';

/// *
/// Buraya arayacağımız filmin adı yazılacak. ve yazmanın sonucunda aşağıdaki kalan movie cardlar yeni gelen verilre göre değişecek.
///
///
///
///
///
///
///

class HomeTextField extends StatelessWidget {
  const HomeTextField({
    super.key,
    this.labelText = 'Enter movie name',
    this.decoration,
  });

  final String? labelText;
  final InputDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.white),
      ),
    );
  }
}
