import 'package:cookbookp3/Animation/container.dart';
import 'package:cookbookp3/Animation/pageroute.dart';
import 'package:cookbookp3/Animation/physical.dart';
import 'package:cookbookp3/Animation/widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: AnimationMain(),
  ));
}

class AnimationMain extends StatelessWidget {
  const AnimationMain({super.key});

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
                    MaterialPageRoute(builder: (context) => const Page1() )
                  );
                  
                },
                child: const Text('Transition page Route'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const PhysicsCardDragDemo() )
                  );
                },
                child: const Text('physical simulation'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const AnimatedContainerApp() )
                  );
                  //mk
                },
                child: const Text("Container's "),
              ),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const WigetOpacity() )
                  );
                  //mk
                },
                child: const Text('Widget in and out'),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}