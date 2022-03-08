import 'package:flutter/material.dart';
import 'package:percobaan1/detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Image.asset('assets/img/1.jpg', height: 300.0 ),
          Container(
              margin: const EdgeInsets.only(top: 16.0),
              child:const Text(
                  "Surabaya Submarine Monument",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: 'Lobster',
              ),
              ),
          ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: const <Widget>[
                      Icon(Icons.calendar_today),
                      Text('Open Everiday'),
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(Icons.alarm_sharp),
                      Text('08.00-16.00'),
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(Icons.airplane_ticket_sharp),
                      Text('Rp 10.000,-'),
                    ],
                  )
                ]
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Museum inside a decommissioned Russian war submarime with tours & an adjcent park with cafes. Clean and well maintained. Car park cost 10k, entrace fee 15k/person. You can see KRI pasopati there, it is a russian whiskey class. You can also watch the vidio about the indonesian Navy at building beside the submarine.',
                    textAlign:TextAlign.center,
                style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Oxygen'),
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.network('https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child : Image.asset('assets/img/1.jpg'),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child:Image.asset('assets/img/2.png'),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset('assets/img/3.jpg'),
                  ),
                ],
              ),
            )
        ],
        ),
      ),
    );
  }
}
