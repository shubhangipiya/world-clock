// ignore: unused_import
import 'dart:html';
import 'package:app/services/world_time.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(location: 'London', flag: 'london.png', url: 'Europe/London'),
    WorldTime(location: 'Athens', flag: 'athens.png', url: 'Europe/Berlin'),
    WorldTime(location: 'Cairo', flag: 'egypt.jpg', url: 'Africa/Cairo'),
    WorldTime(location: 'Nairobi', flag: 'kenya.jpg', url: 'Africa/Nairobi'),
    WorldTime(location: 'Chicago', flag: 'usa.jpg', url: 'america/Chicago'),
    WorldTime(location: 'New York', flag: 'usa.jpg', url: 'america/new_york'),
    WorldTime(location: 'Seoul', flag: 'korea.jpg', url: 'Asia/Seoul'),
    WorldTime(location: 'Jakarta', flag: 'indonesia.jpg', url: 'Asia/Jakaarta'),
  ];
  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('choose a location'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {},
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            );
          }),
    );
  }
}
