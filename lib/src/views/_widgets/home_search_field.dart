import 'package:flutter/material.dart';

/***
 * Buraya arayacağımız filmin adı yazılacak. ve yazmanın sonucunda aşağıdaki kalan movie cardlar yeni gelen verilre göre değişecek.
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 */

class HomeTextField extends StatelessWidget {
  const HomeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
          border: UnderlineInputBorder(), labelText: 'Enter movie name'),
    );
  }
}



