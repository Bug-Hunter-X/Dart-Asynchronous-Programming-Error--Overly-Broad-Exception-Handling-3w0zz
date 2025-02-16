# Dart Asynchronous Programming Error: Overly Broad Exception Handling

This repository demonstrates a common error in Dart asynchronous programming: using overly broad exception handling that masks specific errors. The code includes a `fetchData` function that simulates an asynchronous operation that might throw different types of exceptions. The initial implementation uses a single `catch (e)` block that handles all exceptions, making it difficult to identify the specific type of error.

The solution refactors the error handling to use more specific `catch` blocks for different types of exceptions, enabling more precise error handling and improving the application's robustness.