import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'itenary_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {},
          backgroundColor: Color(0xff0030A0),
        ),
        body: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff0030A0),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.zero, bottomRight: Radius.zero),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Itenaries',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CupertinoSearchTextField(
                      backgroundColor: Colors.white,
                      placeholder: 'Search',
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                  ItenaryCard(
                    cityName: 'Egypt',
                    departureCode: 'ARN',
                    arrivalCode: 'IFK',
                  ),
                  ItenaryCard(
                    cityName: 'Paris',
                    departureCode: 'IFK',
                    arrivalCode: 'COG',
                  ),
                  ItenaryCard(
                    cityName: 'New York',
                    departureCode: 'GOT',
                    arrivalCode: 'CGN',
                  ),
                  ItenaryCard(
                    cityName: 'Paris',
                    departureCode: 'IFK',
                    arrivalCode: 'COG',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
