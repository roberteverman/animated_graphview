import 'package:animated_graphview/helpers/graph_change_notifier.dart';
import 'package:animated_graphview/screens/graph_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LandingScreen extends StatelessWidget {
  static const String id = "landing_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: MaterialButton(
              onPressed: () {
                Provider.of<GraphChangeNotifier>(context, listen: false)
                    .graphType = 'tree';
                Provider.of<GraphChangeNotifier>(context, listen: false)
                    .graphWidth = MediaQuery.of(context).size.height;
                Provider.of<GraphChangeNotifier>(context, listen: false)
                    .graphWidth = MediaQuery.of(context).size.width;
                Navigator.pushNamed(context, GraphScreen.id);
              },
              color: Colors.redAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                "Tree Graph",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: MaterialButton(
              onPressed: () {
                Provider.of<GraphChangeNotifier>(context, listen: false)
                    .graphType = 'square';
                Provider.of<GraphChangeNotifier>(context, listen: false)
                    .graphWidth = MediaQuery.of(context).size.height;
                Provider.of<GraphChangeNotifier>(context, listen: false)
                    .graphWidth = MediaQuery.of(context).size.width;
                Navigator.pushNamed(context, GraphScreen.id);
              },
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                "Square Grid",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: MaterialButton(
              onPressed: () {
                Provider.of<GraphChangeNotifier>(context, listen: false)
                    .graphType = 'triangle';
                Provider.of<GraphChangeNotifier>(context, listen: false)
                    .graphWidth = MediaQuery.of(context).size.height;
                Provider.of<GraphChangeNotifier>(context, listen: false)
                    .graphWidth = MediaQuery.of(context).size.width;
                Navigator.pushNamed(context, GraphScreen.id);
              },
              color: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                "Triangle Grid",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
