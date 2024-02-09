import 'package:flutter/material.dart';

class BlocTest extends StatelessWidget {
  const BlocTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bloc Test',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '0',
              style: TextStyle(
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
                    onPressed: () {},
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
                    onPressed: () {},
                    child: const Icon(
                      Icons.add,
                    )),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            // MaterialButton(
            //   color: Colors.amber,
            //   textColor: Colors.blue,
            //   onPressed: () {
            //     Navigator.of(context).push(MaterialPageRoute(
            //       builder: (context) => const BlocTest(),
            //     ));
            //   },
            //   child: const Text(
            //     'Test Bloc',
            //     style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       fontSize: 16,
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
