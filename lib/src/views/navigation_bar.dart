import 'package:flutter/material.dart';
import 'package:mooovies/src/core/theme/app_colors.dart';

class navigationBar extends StatefulWidget {
  const navigationBar({super.key});

  @override
  State<navigationBar> createState() => _navigationBarState();
}

class _navigationBarState extends State<navigationBar> {


  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index){setState(() {
          currentpage=index;
        }
        );
        },
        indicatorColor: AppColors.indicatorColor,
        selectedIndex: currentpage,
        destinations: const<Widget>[

          NavigationDestination(
          icon: Icon(Icons.home),
          selectedIcon: Icon(Icons.home),
          label: "Home"),

          NavigationDestination(
            icon: Icon(Icons.favorite), 
            selectedIcon: Icon(Icons.favorite),
            label: "Favorites"),

          NavigationDestination(
            icon: Icon(Icons.alarm),
            selectedIcon: Icon(Icons.alarm),
            label: "Watch Later"),

          NavigationDestination(
            icon:Icon(Icons.settings),
            selectedIcon: Icon(Icons.settings),
            label:"Settings",
            
          ), 

          ],
            ),

      );
  
  }
}
