import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;
  _MyAppState() {
    for (int i = 0; i < 15; i++)
      widgets.add(Text(
        'data ke-' + i.toString(),
        style: TextStyle(fontSize: 55),
      ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my listview flutter'),
        ),
        body: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widgets.add(Text(
                        'data ke- ' + counter.toString(),
                        style: TextStyle(fontSize: 17),
                      ));
                      counter++;
                    });
                  },
                  child: Text('tambah data')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text('hapus data')),
              ElevatedButton(onPressed: (){
                setState(() {
                  widgets.removeLast();
                  counter--;
                });
              }
                  , child: Text('hapus bos'))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgets,
          )
        ]),
      ),
    );
  }
}
