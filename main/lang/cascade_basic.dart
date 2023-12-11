void main() {
  // use (..) operator to chain methods over one object
  final numbers = [342, 23423, 53, 232, 534]
    ..insert(0, 10)
    ..sort((a, b) => a.compareTo(b));
}

class UrlBuilder {
  String scheme = '';
  String host = '';
  List<String> routes = [];

  @override String toString() {
    final paths = [host, if (routes != []) ...routes];
    final path = paths.join('/');
    return '$scheme://$path';
  }

// use (..) operator to chain methods over one object
  void cascadePlayground() {
    final url = UrlBuilder()
      ..scheme = 'https'
      ..host = 'dart.dev'
      ..routes = [ 'guides', 'language', 'language-tour#cascade-notation'];
    print(url);
  }

