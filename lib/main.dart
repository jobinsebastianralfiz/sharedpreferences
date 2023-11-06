import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sharedprefrences/dashboard_page.dart';
import 'package:sharedprefrences/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final themeProvider = ThemeProvider();
  await themeProvider.loadThemeMode();
  runApp(MyApp(themeProvider));
}

class MyApp extends StatelessWidget {
  final ThemeProvider themeProvider;

  MyApp(this.themeProvider);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => themeProvider), // Use the same themeProvider instance
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light(useMaterial3: true),
            darkTheme: ThemeData.dark(useMaterial3: true),
            themeMode: themeProvider.themeMode, // Use the themeProvider's themeMode
            home: DashBoard(),
          );
        },
      ),
    );
  }
}


