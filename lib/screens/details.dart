import 'package:flutter/material.dart';
import 'package:lab1/service/ItemService.dart';
import '../models/item.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final ItemService _itemService = ItemService();
  Item? item;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final argItem = ModalRoute.of(context)?.settings.arguments as Item;

    if (argItem != null) {
      setState(() {
        item = argItem;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.network(
                  item!.image,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),

              Text(
                item!.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

              Text(
                item!.description,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),

              Text(
                'Price: \$${item!.price.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
