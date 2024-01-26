import 'package:cookbookp3/Effects/chatbubbles.dart';
import 'package:cookbookp3/Effects/downloadbtn.dart';
import 'package:cookbookp3/Effects/fab.dart';
import 'package:cookbookp3/Effects/indicator.dart';
import 'package:cookbookp3/Effects/navigationflow.dart';
import 'package:cookbookp3/Effects/photofiltercarousel.dart';
import 'package:cookbookp3/Effects/scrollingparallaxeffect.dart';
import 'package:cookbookp3/Effects/shimmerlloading.dart';
import 'package:cookbookp3/Effects/staggered.dart';
import 'package:cookbookp3/Effects/uielement.dart';
import 'package:cookbookp3/Gestures/maingestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: EffectsMain(),
  ));
}

class EffectsMain extends StatelessWidget {
  const EffectsMain({super.key});

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
                    MaterialPageRoute(builder: (context) => const DownloadBtn() )
                  );
                  
                },
                child: const Text('Download Button'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) =>  SetupFlow(setupPageRoute: routeDeviceSetupStartPage, ) )
                  );
                },
                child: const Text('Navigation Flow'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const PhotoFilter() )
                  );
                  //mk
                },
                child: const Text('Filter Carousel'),
              ),


              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const ScrollingEffect() )
                  );
                  //mk
                },
                child: const Text('Scrolling'),
              ),



              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const LoadingAnimation() )
                  );
                  //mk
                },
                child: const Text('Loading'),
              ),



              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const StaggeredAnimations() )
                  );
                  //mk
                },
                child: const Text('Menu'),
              ),



              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const ExampleIsTyping() )
                  );
                  //mk
                },
                child: const Text('Indicator'),
              ),



              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const ExampleExpandableFab() )
                  );
                  //mk
                },
                child: const Text('FAB'),
              ),



              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const ExampleGradientBubbles() )
                  );
                  //mk
                },
                child: const Text('Chat Bubbles'),
              ),



              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const ExampleDragAndDrop() )
                  );
                  //mk
                },
                child: const Text('UI Element'),
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