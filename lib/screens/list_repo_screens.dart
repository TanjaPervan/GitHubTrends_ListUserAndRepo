import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/repo.dart';
import 'package:flutter_complete_guide/search_model/search_screen.dart';
import 'package:flutter_complete_guide/service/fetch_data.dart';
import 'package:flutter_complete_guide/widgets/list_item_widget.dart';

class ListRepo extends StatelessWidget {
  ListRepo({Key? key}) : super(key: key);

//lista

  final List<Repositories> repoItems = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GitHub Trends'),
        actions: [
          IconButton(
              onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (c) => SearchScreen(),
                    ),
                  ),
              icon: Icon(Icons.search)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: DataFetch(),
      ),
    );
  }
}
