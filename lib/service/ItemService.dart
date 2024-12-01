import 'package:lab1/models/item.dart';

class ItemService {
  final List<Item> _mockItems = [
    Item(
      id: 1,
      name: 'Bomber Jacket',
      image: 'https://images.unsplash.com/photo-1591047139829-d91aecb6caea?q=80&w=1936&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      description: 'A stylish bomber jacket perfect for any season.',
      price: 150.0,
    ),
    Item(
      id: 2,
      name: 'Denim Jeans',
      image: 'https://images.unsplash.com/photo-1721637217881-f0ad35dd4829?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      description: 'Comfortable and durable denim jeans.',
      price: 70.0,
    ),
    Item(
      id: 3,
      name: 'Sneakers',
      image: 'https://images.unsplash.com/photo-1560769629-975ec94e6a86?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      description: 'Trendy sneakers for casual outings.',
      price: 100.0,
    ),
    Item(
      id: 4,
      name: 'Sweater',
      image: 'https://www.jcrew.com/s7-img-facade/BU880_SR2394?hei=800&crop=0,0,600,0',
      description: 'Warm winter sweater',
      price: 139.0,
    ),
  ];

  Future<List<Item>> getAllItems() async {
    return _mockItems;
  }

  Future<Item?> getItemById(int id) async {
    return _mockItems.firstWhere((item) => item.id == id);
  }
}
