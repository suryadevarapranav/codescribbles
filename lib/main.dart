import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  
  List names = ["Mitch", "Sharon", "Vince"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.deepPurple,
        // AppBar is the top of the Screen.
        appBar: AppBar(
          title: Text("My App"),
          backgroundColor: Colors.deepPurple[200],
          elevation: 0,
          leading: Icon(Icons.menu), // icon for the left side.
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))], // icon on the right side.
        ),

        /*
        // Body of the Applciation Screen.
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.amber,
              // curving the corners
              borderRadius: BorderRadius.circular(20)
            ),
            padding: EdgeInsets.all(25),
            // child: Text(
            //   "Pranav Suryadevara",
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 28,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            child: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 64,
            ),
          ),
        ),

        */

        /* 

        // Columns
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.start,
          
          /*
          children: [
          // 1st box
          Container(
            height: 200,
            width: 200,
            color: Colors.deepPurple,
          ),
          // 2nd box
          Container(
            height: 200,
            width: 200,
            color: Colors.deepPurple[400],
          ),
          // 3rd box
          Container(
            height: 0,
            width: 200,
            color: Colors.deepOrange[200],
          ),
          // 3rd box
          Expanded( // fills up the rest of the space.
            child: Container( 
              // when height isn't specified it means 0.
              width: 200,
              color: Colors.deepPurple[200],
            ),
          )
        ]),
        */
        // instead we can just give three Expanded to divide the screen evenly without specifying a height or width.
        children: [
          // 1st box
          Expanded(
            child: Container(
              color: Colors.deepPurple,
            ),
          ),

          // 2nd box
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.deepPurple[400],
            ),
          ),

          // 3rd box
          Expanded(
            child: Container(
              color: Colors.deepPurple[200],
            ),
          ),
        ]),

        */
      
      /*
        // ListView
        body: ListView(
          scrollDirection: Axis.horizontal, // scroll direction is vertical by default.
        children: [
          // 1st box
          Container(
            height: 350,
            width: 450,
            color: Colors.deepPurple,
          ),
          // 2nd box
          Container(
            width: 450,
            height: 350,
            color: Colors.deepPurple[400],
          ),

          // 3rd box
          Container(
            width: 450,
            height: 350,
            color: Colors.deepPurple[200],
          ),
        ]),

        */

        /*
        // ListView using a builder.
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => ListTile(
            title: Text(index.toString()),
          ),
        ),
        */
        
        /*
        // ListView using a builder.
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(names[index]),
          ),
        ),
        */

        /*
        body: GridView.builder(
          itemCount: 64,
          gridDelegate: 
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8), // how many we want in each row of the grid.
          itemBuilder: (context, index) => Container(
            color: Colors.deepOrange,
            margin: EdgeInsets.all(2),
          ),
        ),
        */

        /*
        // Stack() Widget.
        body: Stack(
          children: [
            //big box
            Container(
              height: 300,
              width: 300,
              color: Colors.deepPurple,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.deepPurple[400],
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.deepPurple[200],
            ),
          ],
        ),
        */

        // Gesture Detector
        body: Center(
          child: GestureDetector(
            onTap: () {
              // do something when the user taps on the conatiner.
              print("User Tapped...");
            },
            child: Container(
              height: 200,
              width: 200,
              color: Colors.deepPurple[300],
              child: Center(child: Text("Tap Me!!!!")),
            ),
          ),
        ),
      ),
    );
  }
}