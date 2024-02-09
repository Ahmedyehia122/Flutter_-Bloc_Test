import 'package:bloc_test/bloc_test_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Statful(setState)',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_counter',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                    color: Colors.red,
                    textColor: Colors.white,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    onPressed: _decrementCounter,
                    child: const Icon(
                      Icons.remove,
                    )),
                const SizedBox(
                  width: 10,
                ),
                MaterialButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    onPressed: _incrementCounter,
                    child: const Icon(
                      Icons.add,
                    )),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            MaterialButton(
              color: Colors.amber,
              textColor: Colors.blue,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const BlocTest(),
                ));
              },
              child: const Text(
                'Test Bloc',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
