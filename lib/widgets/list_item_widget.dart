import 'package:flutter/material.dart';

import 'package:flutter_complete_guide/data_models/item.dart';
import 'package:flutter_complete_guide/data_models/repo.dart';
import 'package:flutter_complete_guide/screens/details_screen.dart';
import 'package:flutter_complete_guide/widgets/row_star_fork_w.dart';

class ListItem extends StatefulWidget {
  const ListItem({Key? key, this.repoItem}) : super(key: key);
  final Repositories? repoItem;

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    List<Item>? selectedItems = widget.repoItem!.items;
    return ListView.builder(
        itemCount: selectedItems!.length,
        itemBuilder: (context, index) {
          //List<Item> sortItems =

          selectedItems?.sort((itemA, itemB) =>
              itemA.stargazersCount!.compareTo(itemB.stargazersCount!));
          selectedItems = selectedItems!.reversed.toList();

          // sortByStar(selectedItems, false);
          Item item = selectedItems![index];
          return Card(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        child: FittedBox(
                          child: Image.network(item.owner!.avatarUrl!),
                          fit: BoxFit.fill,
                        ),
                        radius: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      //if (repoItem != null)
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 4,
                        child: Text(
                          // (index + 1).toString() +
                          //     '. ' +
                          item.fullName.toString(),
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                      Flexible(
                        fit: FlexFit.loose,
                        flex: 1,
                        child: ElevatedButton.icon(
                          label: Icon(Icons.arrow_forward,
                              size: 30, color: Colors.white),
                          icon: Text(
                            '',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.all(1.5)),
                              textStyle: MaterialStateProperty.all(TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500)),
                              elevation: MaterialStateProperty.all(3.5),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black38),
                              fixedSize:
                                  MaterialStateProperty.all(Size(10.0, 10.0))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => DetailsRepo(
                                          item: item,
                                        )));
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(
                      // height: 2,
                      ),
                  item.description != null
                      ? SizedBox(
                          height: 59,
                          child: Text(
                            item.description.toString(),
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        )
                      : SizedBox(
                          height: 5,
                        ),
                  Divider(),
                  RoWidgetSF(item, context),
                ],
              ),
            ),
          );
        });
  }
}
