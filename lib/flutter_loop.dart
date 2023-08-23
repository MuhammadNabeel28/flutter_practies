import 'dart:typed_data';

import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
List<String> FrinendsList = [
  'Ali..',
  'Abid...',
  'Faraz...',
  'Sohail...',
  'Nabeel...',
  'Afaq...',
  'Jamel...',
  'Jamal...',
  'Kabir...',
  'Sameer...',
  'Jumbo...',
  'Qaseel...',
  'Rubab...',
];
List<String> getResults = [];

class FlutterLoop extends StatefulWidget {
  const FlutterLoop({super.key});

  @override
  State<FlutterLoop> createState() => _FlutterLoopState();
}

class _FlutterLoopState extends State<FlutterLoop> {
  TextEditingController secrchController = TextEditingController();
  TextEditingController friendListController = TextEditingController();
  TextEditingController friendListUpdateController = TextEditingController();
  int selectedIndex = -1;

  void removeItem(int index) {
    setState(() {
      FrinendsList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            'Item List View',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: SerchItem(),
                );
              },
            )
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.view_agenda),
                text: 'View List Item',
              ),
              Tab(
                icon: Icon(Icons.archive),
                text: 'View archive Item',
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://images.cars.com/cldstatic/wp-content/uploads/toyota-tundra-capstone-2022-01-exterior-front-angle-truck-white-scaled.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  // physics: const NeverScrollableScrollPhysics(),
                  itemCount: FrinendsList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: ListTile(
                          tileColor: selectedIndex == index
                              ? Colors.grey
                              : Colors.brown,
                          title: Text(
                            FrinendsList[index],
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              removeItem(index);
                            },
                            icon: const Icon(
                              Icons.delete,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (selectedIndex != -1) {
              friendListUpdateController.text = FrinendsList[selectedIndex];
            }
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Edit Record'),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        controller: friendListUpdateController,
                      ),
                    ],
                  ),
                  actions: [
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.cancel),
                      label: const Text('Cancel'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          FrinendsList[selectedIndex] =
                              friendListUpdateController.text;
                        });
                        friendListUpdateController.clear();
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.save),
                      label: const Text('Save'),
                    ),
                  ],
                );
              },
            );
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.edit,
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          child: Container(
            height: 50.0,
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniEndDocked,
      ),
    );
  }
}

class SerchItem extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    for (var friends in FrinendsList) {
      if (friends.toLowerCase().contains(query.toLowerCase())) {
        getResults.add(friends);
      }
    }
    return ListView.builder(
        itemCount: getResults.length,
        itemBuilder: (context, index) {
          var result = getResults[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    getResults = [];
    for (var friends in FrinendsList) {
      if (friends.toLowerCase().contains(query.toLowerCase())) {
        getResults.add(friends);
      }
    }

    return ListView.builder(
        itemCount: getResults.length,
        itemBuilder: (context, index) {
          var result = getResults[index];
          return ListTile(
            title: Text(result),
          );
        });
  }
}
