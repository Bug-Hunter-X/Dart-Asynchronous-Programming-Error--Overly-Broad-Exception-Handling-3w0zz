```dart
import 'dart:async';

Future<void> fetchData() async {
  // Simulate an asynchronous operation that might throw an exception
  try {
    await Future.delayed(Duration(seconds: 2));
    var data = await Future.error(Exception('Network Error')); // Simulate network error
    print('Data fetched: $data');
  } on TimeoutException catch (e) {
    print('Timeout Error: $e');
  } on FormatException catch (e) {
    print('Format Error: $e');
  } on Exception catch (e) {
    print('General Error: $e');
  } catch (e) {
    print('Unexpected Error: $e');
  }
}

void main() async {
  await fetchData();
}
```