import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/counter_provider.dart';
import 'package:provider_example/screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: MaterialApp(
        title: "State Mangement - Counter App",
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}