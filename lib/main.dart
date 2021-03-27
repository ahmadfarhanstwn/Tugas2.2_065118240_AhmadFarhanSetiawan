import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutProfile(),
    );
  }
}

class LayoutProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            Colors.purple[600],
            Colors.purple[500],
            Colors.purple[400],
            Colors.purple[300],
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Container(
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/profile.jpg'),
                radius: 50,
              ),
              Text(
                'Ahmad Farhan Setiawan',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'University Student',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
              Container(
                height: 400,
                child: Column(
                  children: [
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Icon(
                              Icons.call,
                              color: Colors.grey[700],
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '+6285770663971',
                              style: TextStyle(
                                color: Colors.purple[600],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Icon(
                              Icons.mail,
                              color: Colors.grey[700],
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'ahmad@unpak.ac.id',
                              style: TextStyle(
                                color: Colors.purple[600],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
