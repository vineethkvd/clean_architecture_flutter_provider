import 'package:clean_architecture_flutter_provider/features/counter/presentation/pages/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'config/themes/dark_themes.dart';
import 'config/themes/light_theme.dart';
import 'features/counter/presentation/providers/counter_provider.dart';

//entry point of our application
void main() {
  //run app create the instance of myapp
  runApp(const MyApp());
}
// Representing root widget of our application
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterProvider>(
          create: (context) => CounterProvider(),
        ),
      ],
      child: MaterialApp(
        // Set light theme as default theme
        theme: lightTheme,
        // Set dark theme
        darkTheme: darkTheme,
        // Use system theme mode
        themeMode: ThemeMode.system,
        home: const CounterPage(),
      ),
    );
  }
}
