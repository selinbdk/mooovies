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

class HomeTextField extends StatefulWidget {
  const HomeTextField({
    super.key,
    this.labelText = 'Enter movie name',
    this.decoration,
  });

  final String? labelText;
  final InputDecoration? decoration;

  @override
  State<HomeTextField> createState() => _HomeTextFieldState();
}

class _HomeTextFieldState extends State<HomeTextField> {
  
  final TextEditingController _controller = TextEditingController();
  String? query = "";

  @override
  void initState() {
    _controller.addListener(() => setState(() {
          query = _controller.text;
        }));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: widget.labelText,
        labelStyle: const TextStyle(color: Colors.white),
      ),
    );
  }
}
