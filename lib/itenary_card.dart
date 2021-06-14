import 'package:flutter/material.dart';
import 'dart:math';

class ItenaryCard extends StatelessWidget {
  final String cityName;
  final String departureCode;
  final String arrivalCode;

  const ItenaryCard(
      {Key? key,
      required this.cityName,
      required this.departureCode,
      required this.arrivalCode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 2.0),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Vacation IN $cityName',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Sept. 20',
                          style:
                              TextStyle(fontSize: 14.0, color: Colors.black54),
                        ),
                        Text(
                          '$departureCode',
                          style: TextStyle(fontSize: 18.0, color: Colors.black),
                        ),
                        Text(
                          '8:30 AM',
                          style: TextStyle(fontSize: 14.0, color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Transform.rotate(
                            angle: pi / 2,
                            child: Icon(Icons.airplanemode_active)),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Sept. 20',
                          style:
                              TextStyle(fontSize: 14.0, color: Colors.black54),
                        ),
                        Text(
                          '$arrivalCode',
                          style: TextStyle(fontSize: 18.0, color: Colors.black),
                        ),
                        Text(
                          '12:35 PM',
                          style: TextStyle(fontSize: 18.0, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
