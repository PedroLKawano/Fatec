import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppRainConverter());
}

class MyAppRainConverter extends StatelessWidget {
  const MyAppRainConverter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conversor de dias chuvosos',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const RainConverterPage(),
    );
  }
}

class RainConverterPage extends StatefulWidget {
  const RainConverterPage({Key? key}) : super(key: key);

  @override
  _RainConverterPageState createState() => _RainConverterPageState();
}

class _RainConverterPageState extends State<RainConverterPage> {
  double inputValue = 0.0;
  double resultValue = 0.0;

  void performConversion() {
    setState(() {
      resultValue = inputValue * 25.4;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conversor de dias chuvosos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  inputValue = double.tryParse(value) ?? 0.0;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Quantidade em polegadas',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: performConversion,
              child: const Text('Converter'),
            ),
            const SizedBox(height: 20),
            Text('Quantidade em milímetros: $resultValue mm'),
          ],
        ),
      ),
    );
  }
}