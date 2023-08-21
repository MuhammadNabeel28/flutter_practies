import 'package:flutter/material.dart';

List<String> FrinendsList = [];
List<String> getResults = [];

class FlutterLoop extends StatefulWidget {
  const FlutterLoop({super.key});

  @override
  State<FlutterLoop> createState() => _FlutterLoopState();
}

class _FlutterLoopState extends State<FlutterLoop> {
  TextEditingController secrchController = TextEditingController();

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
