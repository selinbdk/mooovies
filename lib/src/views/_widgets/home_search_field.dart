import 'package:flutter/material.dart';
import 'package:mooovies/src/core/constants/app_constants.dart';
import 'package:mooovies/src/core/models/movie_model.dart';
import 'package:mooovies/src/core/repository/repository.dart';
import 'package:mooovies/src/views/_widgets/home_states/home_empty_state.dart';
import 'package:mooovies/src/views/_widgets/home_states/home_search_state.dart';

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
  });

  final String? labelText;
  final InputDecoration? decoration;
  final TextEditingController controller;
  final void Function(String)? onChanged;

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
          onPressed: () {
            controller.text = "";
          },
        ),
        border: const UnderlineInputBorder(),
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.white),
      ),
    );
  }
}
