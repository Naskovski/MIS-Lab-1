import 'package:flutter/material.dart';

class ItemCardData extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final double price;

  const ItemCardData({super.key, required this.image, required this.name, required this.description, required this.price});

  @override
  Widget build(BuildContext context) {

    return Column(mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
            child: Image.network(image, fit: BoxFit.contain)),
            const Divider(),
            Text(name, style: const TextStyle(
                color: Colors.black54, fontSize: 20, fontWeight: FontWeight.w600
                ),
            ),
            Text(price.toString(), style: const TextStyle(
                color: Colors.red, fontSize: 10, fontWeight: FontWeight.w400
                )
            )
      ],
    );
  }
}
