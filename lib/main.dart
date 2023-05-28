import 'package:flutter/material.dart';
import 'package:project_6/homepage.dart';


void main() {
  runApp(const MaterialApp(
    home: MyHome(),
  ));
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'Orange #FC6500',
      'Tiger #FD6A02',
      'Pumkin #FF7417',
      'Carrot #EF7215',
      'Honey #CB8E00',
    ];
    final List<int> colorCodes = <int>[
      900,
      800,
      700,
      600,
      500
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("List Warna Orange"),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(15),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Homepage(),
                ),
              );
            },
            child: Container(
              height: 250,
              width: 250,
              color: Colors.orange[colorCodes[index]],
              child: Center(child: Text(entries[index])),
            ),
          );
        },
      ),
    );
  }
}