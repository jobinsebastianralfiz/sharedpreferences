

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sharedprefrences/theme_provider.dart';


class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {

  ;
    return Scaffold(

      appBar: AppBar(
        title: Text("SharedPrefernces Demo"),
        actions: [
          Consumer<ThemeProvider>(
            builder: (context,themeProvider,child){
              return IconButton(onPressed: (){
                themeProvider.toggleTheme(
                  themeProvider.themeMode == ThemeMode.dark
                      ? ThemeOptions.light
                      : ThemeOptions.dark,
                );

              }, icon: Icon(Icons.brightness_6));
            },
          )
        ],
      ),
    );
  }
}
