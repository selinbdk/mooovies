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
//_controller.addListener(() => setState(() {
//    query = _controller.text;
// }));

class HomeTextField extends StatelessWidget {
  const HomeTextField({
    super.key,
    this.labelText = 'Enter movie name',
    this.decoration,
    required this.controller,
    this.onChanged,
    this.onPressed,
  });

  final String? labelText;
  final InputDecoration? decoration;
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: const Icon(
            Icons.clear,
          ),
          onPressed: onPressed,
        ),
        border: const UnderlineInputBorder(),
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.white),
      ),
    );
  }
}
