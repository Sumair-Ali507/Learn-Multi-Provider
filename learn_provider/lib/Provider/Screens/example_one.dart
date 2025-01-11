import 'package:flutter/material.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({super.key});

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      appBar: AppBar(
        title: const Text('Example One'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Expanded(
              child: Container(
                color: Colors.red,
                child: const Center(
                  child: Text('Container 1'),
                ),
                
              ),
            ),
          ),
          
          Center(
            child: Expanded(
              child: Container(
                color: Colors.blue,
                child: const Center(
                  child: Text('Container 2'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
