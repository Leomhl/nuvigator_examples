import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';

class OneScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final nuvigator = Nuvigator.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Screen one"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Tap a button to change the page',
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              child: Text('Home'),
              onPressed: () => nuvigator.closeFlow(), // close flow of screens and return to the root page
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              child: Text('Screen 2'),
              onPressed: () => nuvigator.open('two'),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              child: Text('Screen 3'),
              onPressed: () => nuvigator.open('three'),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
