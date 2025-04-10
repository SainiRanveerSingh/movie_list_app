import 'package:http/http.dart' as http;
import 'movie.dart'; 

Future<List<Movie>> fetchMovies() async {
  final response = await http.get(Uri.parse('https://freetestapi.com/api/v1/movies'));
  if (response.statusCode == 200) {
    // If the server returns a 200 OK response, parse the JSON
    return parseMovies(response.body);
  } else {
    // If the server returns an error, throw an exception
    throw Exception('Failed to load movies');
  }
}