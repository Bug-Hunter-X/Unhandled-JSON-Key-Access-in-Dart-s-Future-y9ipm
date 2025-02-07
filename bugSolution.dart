```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      if (jsonData.containsKey('key')) {
        // Access jsonData['key'] safely
        final value = jsonData['key'];
        print('Key found: $value');
      } else {
        print('Key not found in JSON response');
        // Handle the case where the key is missing
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    rethrow;
  }
}
```