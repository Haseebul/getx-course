import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeTheme extends StatefulWidget {
  const ChangeTheme({super.key});

  @override
  State<ChangeTheme> createState() => _ChangeThemeState();
}

class _ChangeThemeState extends State<ChangeTheme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Change Theme"),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              onTap: () {
                Get.defaultDialog(
                  title: "Delete Chat",
                  middleText:
                      'Are you sure you want to delete this chat? This will also delete the messages related to Posts ',
                  contentPadding: const EdgeInsets.all(10),
                  titlePadding: const EdgeInsets.only(top: 20),
                  textCancel: 'Yes',
                  textConfirm: 'No',
                  confirm: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Text('Confirm'),
                  ),
                  cancel: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Text('Cancel'),
                  ),
                );
              },
              title: const Text('GetX Utils'),
              subtitle: const Text(
                'Getx Utils with source code like, snackbar, dialog alert, bottom nav bar, change app theme',
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('GetX Bottom sheet'),
              subtitle: const Text('Getx dialog alert twith getx'),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          selectedColor: Colors.white,
                          leading: const Icon(Icons.light_mode),
                          title: const Text("Light Theme"),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          selectedColor: Colors.white,
                          leading: const Icon(Icons.dark_mode),
                          title: const Text("Dark Theme"),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                        ListTile(
                          selectedColor: Colors.white,
                          leading: const Icon(Icons.dark_mode),
                          title: const Text("highContrastDark Theme"),
                          onTap: () {
                            Get.changeTheme(
                              ThemeData.from(
                                colorScheme:
                                    const ColorScheme.highContrastDark(),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
