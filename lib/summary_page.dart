import 'package:flutter/material.dart';

class SummaryPage extends StatelessWidget {
  final String name;
  final String city;
  final String age;
  final String nationallity;
  final List<String> hobbies;

  SummaryPage({
    required this.name,
    required this.city,
    required this.age,
    required this.nationallity,
    required this.hobbies,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Summary Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Name: $name'),
            Text('City: $city'),
            Text('Age: $age'),
            Text('Nationallity: $nationallity'),
            Text('Hoobies: $hobbies'),
          ],
        ),
      ),
    );
  }
}
