import 'package:flutter/material.dart';
import 'package:news_api/service/appService.dart';
import 'models/article.dart';

class CustApi extends StatelessWidget {
  const CustApi({Key? key}) : super(key: key);

  get index => null;

  @override
  Widget build(BuildContext context) {
    var snapshot;
    return Card(
        elevation: 5,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.network(
                '${snapshot.data![index].urlToImage}',
              ),
            ),
            Text('${snapshot.data![index].title}',style: TextStyle(fontSize: 20),),
            Text('${snapshot.data![index].description}',maxLines: 2),
          ],
        ));
  }
}
