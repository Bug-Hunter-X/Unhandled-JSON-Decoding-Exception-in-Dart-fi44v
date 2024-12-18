# Unhandled JSON Decoding Exception in Dart

This repository demonstrates a common error in Dart applications involving network requests and JSON parsing.  The `bug.dart` file shows the original code with a missing error handler for JSON decoding exceptions.  The `bugSolution.dart` file provides a corrected version that handles these exceptions gracefully.

This bug can lead to application crashes if the server returns invalid JSON data.  The solution involves using a `try-catch` block to handle `FormatException` during JSON decoding.