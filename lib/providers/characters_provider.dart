import 'package:flutter/material.dart';
import 'package:flutter_graphql/queries/characters.dart';
import 'package:graphql/client.dart';

import 'graphql_provider.dart';

class CharactersProvider extends ChangeNotifier {
  final client = GraphQLProvider.client;

  CharactersProvider() {
    print('got here');
    _getCharacters();
  }

  List<dynamic> characters = [];

  void _getCharacters() async {
    final QueryOptions options = QueryOptions(document: gql(allCharacters));

    final QueryResult result = await client.query(options);

    print(result.data);
  }
}
