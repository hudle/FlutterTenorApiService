enum Endpoints {
  search('search'),
  categories('categories'),
  autoComplete('autocomplete'),
  featured('featured'),
  registerShare('registershare'),
  searchSuggestions('search_suggestions'),
  posts('posts'),
  tendingTerms('trending_terms');

  final String endpoints;

  const Endpoints(this.endpoints);
}

const kBaseUrl = 'https://tenor.googleapis.com/v2/';