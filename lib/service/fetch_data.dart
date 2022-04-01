import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:flutter_complete_guide/models/repo.dart';

import 'package:flutter_complete_guide/widgets/list_item_widget.dart';
import 'package:http/http.dart' as http;

class DataFetch extends StatefulWidget {
  DataFetch({Key? key}) : super(key: key);

  @override
  State<DataFetch> createState() => _DataFetchState();
}

class _DataFetchState extends State<DataFetch> {
  Repositories? repoItem;

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  Future<void> fetchData() async {
    const url =
        'https://api.github.com/search/repositories?q=created:%3E2022-03-08';

    final response = await http.get(Uri.parse(url));

    final jsonData = jsonDecode(response.body);

    final parsed = Repositories.fromJson(jsonData);
    print('@@@@@@');
    print(parsed);
    ;

    setState(() {
      repoItem = parsed;
      //if (repoItem != null)
      print(repoItem!.items![0].id);
    });
  }

  @override
  Widget build(BuildContext context) {
    // List<Item> selectedItems =
    //     repoItem!.items!.where((it) => it.id! > 478743437).toList();
    return repoItem != null
        ? ListItem(repoItem: repoItem)
        : Center(child: CircularProgressIndicator());
  }
}
