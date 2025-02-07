# Unhandled JSON Key Access in Dart's Future

This repository demonstrates a common error in Dart when handling asynchronous operations and JSON data. The `fetchData` function fetches JSON data from a remote API and attempts to access a specific key. However, it lacks error handling for cases where the key might be missing, leading to runtime exceptions.

The `bug.dart` file showcases the flawed code, while `bugSolution.dart` provides a corrected version with robust error handling.

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart`.  Observe the error message if the API response doesn't contain the expected 'key'.
3. Run `bugSolution.dart` to see the improved error handling.

## Solution

The solution involves adding checks to ensure the key exists before accessing it.  This prevents runtime errors and allows for graceful handling of unexpected data.