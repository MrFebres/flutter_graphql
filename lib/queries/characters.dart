const String allCharacters = r'''
query {
  characters {
    info {
      count
      next
      pages
      prev
    }
    results {
      id
      name
      status
      species
      type
      origin {
        id
        name
      }
      location {
        id
        name

      }
      image
      episode {
        id
        name
      }
      created
    }
  }
}
''';
