import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/data_models/item.dart';
import 'package:flutter_complete_guide/data_models/repo.dart';
import 'package:flutter_complete_guide/widgets/list_item_widget.dart';

class SortButton extends StatefulWidget {
  SortButton({
    Key? key,
  }) : super(key: key);
  // List<Item>? selectedItems;
  // bool? hasPress;this.selectedItems, this.hasPress

  @override
  State<SortButton> createState() => _SortButtonState();
}

class _SortButtonState extends State<SortButton> {
  List<Item>? selectedItems;
  bool? hasPress;

  Repositories? repoItem;

  @override
  Widget build(BuildContext context) {
    List<Item> sortByStar(List<Item> selectedItems, bool hasPressed) {
      selectedItems.sort((itemA, itemB) =>
          itemA.stargazersCount!.compareTo(itemB.stargazersCount!));
      if (hasPressed) {
        return selectedItems;
      } else {
        return selectedItems = selectedItems.reversed.toList();
      }
    }

    hasPress = true;
    return Row(
      children: [
        Text('Sort By'),
        IconButton(
            onPressed: () {
              setState(() {
                hasPress != hasPress;
                sortByStar(selectedItems!, hasPress!);
              });
            },
            icon: Icon(
              Icons.arrow_downward_sharp,
            )),
        IconButton(
            onPressed: () {
              setState(() {
                hasPress != hasPress;
              });
              sortByStar(selectedItems!, hasPress!);
              ListItem(repoItem: repoItem);
            },
            icon: Icon(
              Icons.arrow_upward_sharp,
            )),
      ],
    );
  }
}
