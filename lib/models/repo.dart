import 'item.dart';

class Repositories {
  List<Item>? items;
  final int? totalCount;

  Repositories({this.totalCount, this.items});

  factory Repositories.fromJson(Map<String, dynamic> json) => Repositories(
        items: (json['items'] as List<dynamic>?)
            ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
            .toList(),
        totalCount: json['total_count'] as int,
        // items: List<Item>.from(
        //   json["items"].map((x) => Item.fromJson(x) as List),),
      );
}
