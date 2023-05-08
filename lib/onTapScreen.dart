import 'package:flutter/material.dart';
import 'models/article.dart';

class OnScreen extends StatefulWidget {
  Article snapshot;
  OnScreen({Key? key, required this.snapshot}) : super(key: key);

  @override
  State<OnScreen> createState() => _OnScreenState();
}

class _OnScreenState extends State<OnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Card(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
       //         child: Image.network('${snapshot.urlToImage}'),
              ),
            ],
          ),
        ),
      )
    );
  }
}
