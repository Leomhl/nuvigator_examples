import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final nuvigator;

  HomeScreen({
    this.nuvigator,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController _nameController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Nuvigator router example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'What\'s your name?',
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _nameController,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text('Next'),
                onPressed: () async {
                  final result = await nuvigator
                      .open('myapp://one?name=${_nameController.text}');
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Route Closed'),
                        content: Text('Value Returned: $result'),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('Close'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
