import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab1/models/item.dart';
import 'package:lab1/service/ItemService.dart';
import 'package:lab1/widgets/item_grid.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Item> items = [];
  ItemService service = ItemService();

  @override
  void initState() {
    super.initState();
    getItems();
  }

  void getItems() async {
    service.getAllItems().then((res) {
      setState(() {
        items = res;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
       title: const Text("211198", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: ItemGrid(items: items),
      backgroundColor: Colors.white70,
    );
  }
}
