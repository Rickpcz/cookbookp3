import 'package:cookbookp3/Animation/animationmain.dart';
import 'package:cookbookp3/Effects/effectsmain.dart';
import 'package:cookbookp3/Gestures/maingestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Botones'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const AnimationMain() )
                  );
                  
                },
                child: const Text('Animation'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const EffectsMain() )
                  );
                },
                child: const Text('Effects'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const GesturesMain() )
                  );
                  //mk
                },
                child: const Text('Gestures'),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}