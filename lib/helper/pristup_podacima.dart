// @override
//   Widget build(BuildContext context) {
//     List<Item> selectedItems =
//         repoItem!.items!.where((it) => it.id! < 470743437).toList();
//     return ListView.builder(
//         itemCount: selectedItems.length,
//         itemBuilder: (context, index) {
//           Item item = selectedItems[index];
//           return Card(
//             child: Padding(
//               padding: EdgeInsets.all(20),
//               child: Column(
//                 children: [
//                   Text((index + 1).toString()),
//                   if (repoItem != null) Text(item.id.toString()),
//                 ],
//               ), //+ '.' + repoItem.items!.toString()),
//             ),
//           );
//         });