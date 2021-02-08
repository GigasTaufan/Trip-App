import 'package:flutter/material.dart';
import 'package:lipsum/lipsum.dart' as lipsum;
import 'package:trips_app/models/trip.dart';
import 'package:trips_app/shared/hearth.dart';

class Details extends StatelessWidget {
  final Trip trip;

  Details({@required this.trip});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              child: Hero(
                tag: 'list-icon-${trip.img}',
                child: Image.asset(
                  'images/${trip.img}',
                  height: 360,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            ListTile(
              title: Text(
                trip.title,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                  '${trip.nights} night stay for only \$${trip.price}',
                  style: TextStyle(letterSpacing: 1)),
              trailing: Heart(),
            ),
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                lipsum.createText(numParagraphs: 1, numSentences: 3),
                style: TextStyle(color: Colors.grey[600], height: 1.4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
