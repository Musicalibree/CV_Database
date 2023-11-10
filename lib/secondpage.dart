import 'package:flutter/material.dart';

class secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Information"),
        backgroundColor: Color.fromRGBO(236, 114, 0, 0.957),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
            child: Text(
              'Name: Ernesto E. Dela Cruz Jr.',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                fontSize: 19,
                color: Colors.orange,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Text(
              'Age: 21 Years Old',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                color: Colors.orange,
                fontSize: 19,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Text(
              'Date of Birth: June 1, 2001',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                color: Colors.orange,
                fontSize: 19,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Text(
              'Add: Pantal Guibang Dagupan City',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                color: Colors.orange,
                fontSize: 19,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Text(
              'Height: 170cm',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                color: Colors.orange,
                fontSize: 19,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Text(
              'Weight: 60kg',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                color: Colors.orange,
                fontSize: 19,
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
