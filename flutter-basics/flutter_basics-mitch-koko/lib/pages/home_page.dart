import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Center(
          child: Text("Home Page"),
        ),
      ),
      /*
      // For Routes and Drawers
      appBar: AppBar(title: Text("Home Page")),
      */
    );
  }
}
