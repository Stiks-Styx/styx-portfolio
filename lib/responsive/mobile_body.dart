import 'package:flutter/material.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("J O H N    A L E X    A L C A Z A R"),),
      body: Row(
        children: [
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.red,
                    ),
                  )
                ],
              )
          ),
          Expanded(
              flex: 2,
              child: Container(
                  color: Colors.red[400])
          ),
        ],
      ),
    );
  }
}
