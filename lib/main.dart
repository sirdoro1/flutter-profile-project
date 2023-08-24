import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'IDCARD',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.grey[900],
      ),
      body: Container(
        color: Colors.grey[800],
        padding: const EdgeInsets.all(20.0),
        child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 30),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.jpg'),
                  radius: 50,
                ),
              ),
              Divider(
                height: 60,
                color: Colors.grey,
              ),
              Row(
                children: [
                  Icon(Icons.person, color: Colors.grey, size: 20),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'NAME',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Text('Sharp Shooter',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Colors.amber,
                  )),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(Icons.leaderboard_rounded, color: Colors.grey, size: 20),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'CURRENT LEVEL',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Text('Senior Man',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Colors.amber,
                  )),
              SizedBox(height: 20),
              Row(children: [
                Icon(Icons.email, color: Colors.grey, size: 20),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'EMAIL',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Colors.grey,
                  ),
                ),
              ]),
              Text('sharp.shooter@serniormanlevel.com',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Colors.amber,
                  )),
              SizedBox(height: 20),
              Divider(
                height: 60,
                color: Colors.grey,
              ),
            ]),
      ),
    );
  }
}
