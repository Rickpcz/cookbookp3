import 'package:cookbookp3/Gestures/addmaterial.dart';
import 'package:cookbookp3/Gestures/handdletaps.dart';
import 'package:cookbookp3/Gestures/swipe.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: GesturesMain(),
  ));
}

class GesturesMain extends StatelessWidget {
  const GesturesMain({super.key});

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
                    MaterialPageRoute(builder: (context) => const AddMaterial() )
                  );
                  
                },
                child: const Text('Add Material'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HanddleTaps() )
                  );
                },
                child: const Text('Handdle Taps'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Swipe() )
                  );
                  //mk
                },
                child: const Text('Swipe'),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}