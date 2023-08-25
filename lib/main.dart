import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentLevel = 0;

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentLevel = currentLevel + 1;
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        color: Colors.grey[800],
        padding: const EdgeInsets.all(20.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 30),
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.jpg'),
                  radius: 50,
                ),
              ),
              const Divider(
                height: 60,
                color: Colors.grey,
              ),
              const Row(
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
              const Text('Sharp Shooter',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Colors.amber,
                  )),
              const SizedBox(
                height: 20,
              ),
              const Row(
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
              Text('$currentLevel',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Colors.amber,
                  )),
              const SizedBox(height: 20),
              const Row(children: [
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
              const Text('sharp.shooter@serniormanlevel.com',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Colors.amber,
                  )),
              const SizedBox(height: 20),
              const Divider(
                height: 60,
                color: Colors.grey,
              ),
            ]),
      ),
    );
  }
}
