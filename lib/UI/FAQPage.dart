import 'package:covid19/DataSource/datasorce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FAQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: DataSource.questionAnswers.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(
                DataSource.questionAnswers[index]['question'],
                style: GoogleFonts.monda(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    DataSource.questionAnswers[index]['answer'],
                    style: GoogleFonts.monda(),
                  ),
                )
              ],
            );
          }),
    );
  }
}
