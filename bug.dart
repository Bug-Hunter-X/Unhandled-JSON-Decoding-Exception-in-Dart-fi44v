```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here. For example, decode JSON:
      final jsonData = jsonDecode(response.body);
      // Use jsonData
    } else {
      // Handle error. For example, throw an exception with HTTP status code:
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle any exceptions that occur during the network request.
    print('Error: $e');
    // Consider rethrowing the exception or handling it differently based on your application's needs.
    rethrow; // Re-throw to allow higher-level error handling
  }
}
```