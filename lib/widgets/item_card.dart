import 'package:flutter/material.dart';
import 'package:lab1/models/item.dart';


class ItemCard extends StatelessWidget {
  final int id;
  final String name;
  final String image;
  final String description;
  final double price;

  const ItemCard({super.key, required this.id, required this.name, required this.image, required this.description, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.black,
      child: InkWell(
      onTap: () => {
            Navigator.pushNamed(context, '/details',
                arguments: Item(id: id, name: name, image: image, description: description, price: price))
          },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.3,
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              ),

              // Text Content Section
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "$price €",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

    // return Card(
    //   margin: const EdgeInsets.all(20),
    //   elevation: 6,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(20),
    //   ),
    //   clipBehavior: Clip.antiAlias,
    //   child: InkWell(
    //       borderRadius: BorderRadius.circular(50),
    //       onTap: () => {
    //         Navigator.pushNamed(context, '/details',
    //             arguments: Item(id: id, name: name, image: image, description: description, price: price))
    //       },
    //         child: Stack(
    //           children: [
    //             Positioned.fill(child: Image.network(image, fit: BoxFit.cover)),
    //             Positioned.fill(child: Container(
    //               decoration: BoxDecoration(
    //                 gradient: LinearGradient(
    //                   colors: [
    //                     Colors.black.withOpacity(1),
    //                     Colors.transparent,
    //                   ],
    //                   begin: Alignment.bottomCenter,
    //                   end: Alignment.center,
    //                 ),
    //               ),
    //             ),
    //             ),
    //             Positioned(
    //                 bottom: 30,
    //                 right: 30,
    //                 child: Text(
    //                   "$price €",
    //                   style: const TextStyle(
    //                       color: Colors.white,
    //                       fontSize: 20,
    //                   ),
    //                 )
    //
    //             ),
    //             Positioned(
    //                 bottom: 30,
    //                 left: 30,
    //                 child: Text(
    //                   "$name",
    //                   style: const TextStyle(
    //                       color: Colors.white,
    //                       fontSize: 20,
    //                   ),
    //                 )
    //             )
    //           ],
    //         ),
    //   ),
    // );
  }
}
