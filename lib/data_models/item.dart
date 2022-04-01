import 'owner.dart';

class Item {
  int? id;
  String? fullName;
  Owner? owner;
  String? description;
  int? stargazersCount;
  int? forksCount;
  String? name;

  Item({
    this.id,
    this.fullName,
    this.owner,
    this.description,
    this.stargazersCount,
    this.forksCount,
    this.name,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json['id'] as int?,
        fullName: json['full_name'] as String?,
        owner: json['owner'] == null
            ? null
            : Owner.fromJson(json['owner'] as Map<String, dynamic>),
        description: json['description'] as String?,
        stargazersCount: json['stargazers_count'] as int?,
        forksCount: json['forks_count'] as int?,
        name: json['name'] as String,
      );
}
