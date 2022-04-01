import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/row_star_fork_w.dart';

import 'package:flutter_complete_guide/data_models/item.dart';

class DetailsRepo extends StatelessWidget {
  DetailsRepo({Key? key, required this.item}) : super(key: key);
  final Item item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Repository Owner '),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      child: FittedBox(
                        child: Image.network(item.owner!.avatarUrl!),
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox.square(
                      dimension: 20,
                    ),
                    Text(
                      item.owner!.login!,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    (item.description != null)
                        ? Padding(
                            padding: const EdgeInsets.only(left: 28, right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Divider(),
                                Text(
                                  ''.toLowerCase(),
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 14,
                                      color: Colors.blueGrey),
                                ),
                                Text(item.description.toString()),
                                Divider(),
                                Divider(),
                                Divider(),
                              ],
                            ),
                          )
                        : Center(
                            child: Text('...'),
                          ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.book_outlined,
                        color: Colors.white70,
                      ),
                      Text('  Repositories:  ',
                          style: Theme.of(context).textTheme.bodyText2),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    item.fullName.toString(),
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RoWidgetSF(item, context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
