import 'package:animated_graphview/screens/graph_screen.dart';
import 'package:animated_graphview/screens/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'helpers/graph_change_notifier.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<GraphChangeNotifier>(
            create: (context) => GraphChangeNotifier()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Animated Graphview',
        theme: ThemeData.dark(),
        initialRoute: LandingScreen.id,
        routes: {
          LandingScreen.id: (context) => LandingScreen(),
          GraphScreen.id: (context) => GraphScreen(),
        },
      ),
    );
  }
}
