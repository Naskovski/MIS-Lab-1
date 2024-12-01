import 'package:flutter/cupertino.dart';
import 'package:lab1/models/item.dart';
import 'package:lab1/widgets/item_card.dart';

class ItemGrid extends StatefulWidget {
  final List<Item> items;

  const ItemGrid({super.key, required this.items});

  @override
  State<ItemGrid> createState() => _ItemGridState();
}

class _ItemGridState extends State<ItemGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        padding: const EdgeInsets.all(4),
        crossAxisCount: 2,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        semanticChildCount: 250,
        childAspectRatio: 200 / 244,
        shrinkWrap: true,
        children: widget.items
            .map((item) => ItemCard(
                id: item.id,
                name: item.name,
                image: item.image,
                description: item.description,
                price: item.price))
            .toList());
  }
}
