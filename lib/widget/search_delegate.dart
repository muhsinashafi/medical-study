import 'package:flutter/material.dart';

/*class SearchDelegate extends StatefulWidget {
  const SearchDelegate({super.key});

  @override
  State<SearchDelegate> createState() => _SearchDelegateState();
}

class _SearchDelegateState extends State<SearchDelegate> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}*/
class MySearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    IconButton(
      icon: Icon(
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
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
      icon: Icon(
        Icons.arrow_back,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }
}
