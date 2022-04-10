import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/counter_provider.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter Page')),
      body: Consumer<CounterProvider>(
        builder: (context, counterProvider, child) {
          final counter = counterProvider.count;
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '$counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        Provider.of<CounterProvider>(context, listen: false).resetCount();
                      },
                      child: const Icon(Icons.replay),
                    ),
                    SizedBox(width: 20,),
                    FloatingActionButton(
                      onPressed: () {
                        Provider.of<CounterProvider>(context, listen: false).decrement();
                      },
                      child: const Icon(Icons.remove),
                    ),
                    SizedBox(width: 20,),
                    FloatingActionButton(
                      onPressed: () {
                        Provider.of<CounterProvider>(context, listen: false).increment();
                      },
                      child: const Icon(Icons.add),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}