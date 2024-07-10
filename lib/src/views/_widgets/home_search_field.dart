import 'package:flutter/material.dart';
import 'package:mooovies/src/core/constants/app_constants.dart';
import 'package:mooovies/src/core/models/movie_model.dart';
import 'package:mooovies/src/core/repository/repository.dart';
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
  HomeTextField({
    super.key,
    this.labelText = 'Enter movie name',
    this.decoration,
  });

  final String? labelText;
  final InputDecoration? decoration;
  final TextEditingController _controller = TextEditingController();
  String query = "";

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      onChanged: (value){
        query=value;
      },
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.white),
      ),
    );
  }
}
