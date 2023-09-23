import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int x = 0;
  int y = 0;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Lottery App')),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Lottery Winning Number is $y'),
            const SizedBox(
              height: 10,
            ),
            x == y ?  Container(
              height: 220,
              width: 220,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
              child: Padding(
                padding:  const EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     const Icon(
                      Icons.done_all,
                      color: Colors.green,
                    ),
                     const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Congrtulation You Won the Lottery Your Match is $x',
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            )
            :
            Container(
              height: 220,
              width: 220,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error_outline,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Better Luck Next Time your number is ${x} Try Again',
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          y = random.nextInt(10);
          x = random.nextInt(10);
          setState(() {});
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
