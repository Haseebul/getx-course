import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'favourite_controller.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  final controller = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite App'),
      ),
      body: ListView.builder(
          itemCount: controller.fruitList.length,
          itemBuilder: (context, index) {
            return Obx(() => Card(
                  child: ListTile(
                    onTap: () {
                      if (controller.favourite
                          .contains(controller.fruitList[index])) {
                        controller
                            .removeFromFavourite(controller.fruitList[index]);
                      } else {
                        controller.addToFavourite(controller.fruitList[index]);
                      }
                    },
                    title: Text(
                      controller.fruitList[index],
                    ),
                    trailing: Icon(Icons.favorite,
                        color: controller.favourite
                                .contains(controller.fruitList[index])
                            ? Colors.red
                            : Colors.white),
                  ),
                ));
          }),
    );
  }
}
