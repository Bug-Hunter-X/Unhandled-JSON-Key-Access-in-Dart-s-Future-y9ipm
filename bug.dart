```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Handle successful response
      final jsonData = jsonDecode(response.body);
      // Access jsonData['key'] here
    } else {
      // Handle error response
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle exceptions during the network request
    print('Error: $e');
    // Additional error handling logic could go here.  For instance, you might want to rethrow the exception
    // or return a default value if the network call fails.
    rethrow; // Re-throws the exception to allow a higher level function to handle it.
  }
}
```