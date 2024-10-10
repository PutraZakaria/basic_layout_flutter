import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override

  /// downloaded from Pixabay.
  Widget build(BuildContext context) {
    /// The image is a network image, which means it is downloaded from the
    /// internet when the widget is built.
    return MaterialApp(
      title: 'Putra Zakaria Muzaki - 2241720220',
      home: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                flex: 1,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 30.0),
                        child: Text(
                          'Strawberry Pavlova',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 50.0, vertical: 10.0),
                        child: Text(
                          'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.black),
                                  Icon(Icons.star, color: Colors.black),
                                  Icon(Icons.star, color: Colors.black),
                                  Icon(Icons.star, color: Colors.black),
                                  Icon(Icons.star, color: Colors.black),
                                ],
                              ),
                              Text(
                                '170 Reviews',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.all(30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _buildButtonColumn(
                                  Icons.microwave, 'PREP:', '25 min'),
                              _buildButtonColumn(Icons.timer, 'COOK:', '1 hr'),
                              _buildButtonColumn(
                                  Icons.restaurant, 'FEEDS:', '4-6'),
                            ],
                          ))
                    ])),
            Expanded(
              flex: 2,
              child: Image.network(
                'https://cdn.pixabay.com/photo/2016/06/20/23/50/mixed-berries-1470228_1280.jpg',
                fit: BoxFit.cover,
                height: double.infinity,
              ),
            )
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(IconData icon, String label, String desc) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.green),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            desc,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
