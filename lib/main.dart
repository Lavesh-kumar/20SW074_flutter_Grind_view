import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyGridView(),
    );
  }
}

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complex Grid View Example'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          // Define a list of colors and icons
          final List<Color> colors = [
            Colors.red,
            Colors.blue,
            Colors.green,
            Colors.orange,
            Colors.purple,
          ];
          final List<IconData> icons = [
            Icons.favorite,
            Icons.star,
            Icons.home,
            Icons.android,
            Icons.pets,
          ];

         
          final colorIndex = index % colors.length;
          final iconIndex = index % icons.length;

          return Card(
            color: colors[colorIndex],
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icons[iconIndex],
                  size: 64,
                  color: Colors.white,
                ),
                SizedBox(height: 8),
                Text(
                  'Item $index',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
