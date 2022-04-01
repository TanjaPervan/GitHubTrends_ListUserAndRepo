import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/item.dart';

Widget RoWidgetSF(Item item, BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Icon(
            Icons.star_rate_rounded,
            size: 28,
            color: Colors.orangeAccent,
          ),
          Text(item.stargazersCount.toString() + ' stars',
              style: Theme.of(context).textTheme.subtitle1)
        ],
      ),
      Row(
        children: [
          SizedBox(
              height: 25,
              width: 25,
              child: Image.network(
                  'https://user-images.githubusercontent.com/17777237/54873012-40fa5b00-4dd6-11e9-98e0-cc436426c720.png')),
          Text(item.forksCount.toString() + ' forks',
              style: Theme.of(context).textTheme.subtitle1),
        ],
      )
    ],
  );
}
