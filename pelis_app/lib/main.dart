import 'package:flutter/material.dart';

import 'package:pelis_app/providers/movies_provider.dart';
import 'package:pelis_app/screens/screens.dart';
import 'package:pelis_app/theme/app_theme.dart';

import 'package:provider/provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


Future main()async{
  await dotenv.load(fileName: ".env");
  runApp(const AppState());
} 
  

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MoviesProvider(), lazy: false,)
      ],
      child: const MyApp(),
      );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = MediaQuery.of(context).platformBrightness == Brightness.dark;

    final theme = isDarkMode ? AppTheme.darkTheme : AppTheme.lightTheme;


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas App',
      initialRoute: "home",
      routes: {
        'home': (_) => const HomeScreen(),
        'details': (_) => const DetailsScreen(),
      },
      theme: theme
    );
  }
}