import 'package:flutter/material.dart';

class MySearchDelegate extends SearchDelegate {
  List<String> searchResult = [
    "ekm",
    "ktm",
    "kozhi",
    "mala",
    "evs",
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    IconButton(
      icon: const Icon(
        Icons.clear,
      ),
      onPressed: () {
        if (query.isEmpty) {
          close(context, null);
        } else {
          query = "";
        }
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(query),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestion = searchResult.where((searchResult) {
      final result = searchResult.toString();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();
    return ListView.builder(
      itemCount: suggestion.length,
      itemBuilder: (context, index) {
        final suggestions = suggestion[index];
        return ListTile(
            title: const Text("suggestion"),
            onTap: () {
              query = suggestions;
              showResults(context);
            });
      },
    );
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
      icon: const Icon(
        Icons.arrow_back,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }
}
