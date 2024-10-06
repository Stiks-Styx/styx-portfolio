import 'package:flutter/material.dart';

class MyDeskBody extends StatelessWidget {
  const MyDeskBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("J O H N    A L E X    A L C A Z A R"),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.red,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.red[200],
                          ),
                        ),
                      ],
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 16/9,
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 16/9,
                    child: Container(
                      color: Colors.blue[400],
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 16/9,
                    child: Container(
                      color: Colors.blue[300],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 200,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
