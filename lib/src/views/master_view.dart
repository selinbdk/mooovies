// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:mooovies/src/views/favorite_view.dart';
import 'package:mooovies/src/views/home_view.dart';

class MasterView extends StatefulWidget {
  const MasterView({super.key});

  @override
  State<MasterView> createState() => _MasterViewState();
}

class _MasterViewState extends State<MasterView> {
  final List<Widget> views = [
    const HomeView(),
    const FavoriteView(),
  ];

  int currentpage = 0;
//   //*
//   //*int bir index olacak
//   // */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[currentpage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentpage = index;
          });
        },
        currentIndex: currentpage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
        ],
      ), //* navigation bar burada olmalı,
//       // body: view[index]
    );
  }
}






//* iki tane dart view dosya (Master, FavoriteView)

//* master içine bottom navigation bar eklenmesi ve inddex aracılığıyla mevcut sayfanın değişitirilebilir olması.