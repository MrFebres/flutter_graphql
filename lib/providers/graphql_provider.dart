import 'package:graphql/client.dart';

class GraphQLProvider {
  static final _httpLink = HttpLink('https://rickandmortyapi.com/graphql');

  static final GraphQLClient client =
      GraphQLClient(cache: GraphQLCache(), link: _httpLink);
}
