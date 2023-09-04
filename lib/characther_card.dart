import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  final String name;
  final String image;
  final String type;
  final String status;
  final String gender;

  CharacterCard({
    required this.name,
    required this.image,
    required this.type,
    required this.status,
    required this.gender,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.lightGreenAccent,
      child: ListTile(
        leading: Image(
          image: NetworkImage(image),
        ),
        title: Text(name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Type: $type'),
            Text('Status: $status'),
            Text('Gender: $gender'),
          ],
        ),
      ),
    );
  }
}
