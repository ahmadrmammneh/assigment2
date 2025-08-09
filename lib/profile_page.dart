import 'package:flutter/material.dart';
import 'package:myapp/summary_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController userCityController = TextEditingController();
  TextEditingController userAgeController = TextEditingController();
  TextEditingController userNationallityController = TextEditingController();

  List<String> hobbies = [];
  final List<String> hobbiesName = ['football', 'Basket', 'gaming', 'Diving'];
  String? selectedHobbiesName;

  void _addHobbies() {
    if (selectedHobbiesName != null && !hobbies.contains(selectedHobbiesName)) {
      setState(() {
        hobbies.add(selectedHobbiesName!);
        selectedHobbiesName = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Page')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'User Name'),
              controller: userNameController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'City'),
              controller: userCityController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Age'),
              controller: userAgeController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Nationality'),
              controller: userNationallityController,
            ),
            SizedBox(height: 16),

            DropdownButtonFormField<String>(
              value: selectedHobbiesName,
              items: hobbiesName.map((name) {
                return DropdownMenuItem(value: name, child: Text(name));
              }).toList(),
              onChanged: (value) => setState(() => selectedHobbiesName = value),
              decoration: InputDecoration(
                labelText: 'Select Hobby',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: _addHobbies, child: Text('Add Hobby')),
            SizedBox(height: 10),
            Text('Selected Hobbies: ${hobbies.join(', ')}'),
            SizedBox(height: 30),
            ElevatedButton(
              child: Text('Save'),
              onPressed: () {
                final userName = userNameController.text.trim();
                final userCity = userCityController.text.trim();
                final userAge = userAgeController.text.trim();
                final userNationallity = userNationallityController.text.trim();

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SummaryPage(
                      name: userName,
                      city: userCity,
                      age: userAge,
                      nationallity: userNationallity,
                      hobbies: hobbies,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
