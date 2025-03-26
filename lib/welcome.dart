import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  String _output = '';
  final _textController = TextEditingController();
  final _numberController = TextEditingController();
  final _timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Welcome',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                    hintText: 'Enter your name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _numberController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Clothes',
                    hintText: 'Service price = clothes * 10',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _timeController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Time(Minutes)',
                    hintText: 'Service price = minutes / 60 * 0.8',
                  ),
                ),
              ),
              const Text(
                'welcome',
                style: TextStyle(fontSize: 18),
              ),
              ElevatedButton(
                onPressed: () {
                  String _input = _textController.text;
                  String _inputnum = _numberController.text;
                  String _inputtime = _timeController.text;

                  double? num = double.parse(_inputnum);
                  double? time = double.parse(_inputtime);
                  setState(() {
                    _output = 'Service is ${num * time * 10 / 60 * 0.8} baht';
                  });
                  debugPrint(
                      'Hi .. $_input , Your clothes are $num , $_output');
                },
                child: Text('Calculate'),
              ),
              Text('$_output'),
            ],
          ),
        ));
  }
}
