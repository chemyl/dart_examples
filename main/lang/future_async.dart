/**
 *  A Future is like a promise for a result to be provided sometime in the future
 *  A Stream is a way to get a sequence of values, such as events.
 *  Future, Stream, and more are in the dart:async library. Using right from dart:core
 *  The Dart language supports asynchronous coding using keywords such as async and await.
 *
 *  Future objects appear throughout the Dart libraries, often as the object returned by an asynchronous method.
 *  When a future completes, its value is ready to use.
 *
 */

void main() {
  Future<void> runUsingAsyncAwait() async {
    var entryPoint = await findEntryPoint();
    var exitCode = await runExecutable(entryPoint, args);
    await flushThenExit(exitCode);
  }
// You can use then() to schedule code that runs when the future completes:
  httpClient.read(url).then((String result) {
    print(result);
  });
// The then() method returns a Future, providing a useful way to run multiple asynchronous functions in a certain order.
  Future result = costlyQuery(url);
  result
      .then((value) => expensiveWork(value))
      .then((_) => lengthyComputation())
      .then((_) => print('Done!'))
      .catchError((exception) {
    /* Handle exception... */
  });

// Waiting multiple Futures Future.wait(futures..)
  Future<void> deleteLotsOfFiles() async =>  ...
  Future<void> copyLotsOfFiles() async =>  ...
  Future<void> checksumLotsOfOtherFiles() async =>  ...

  await Future.wait([
  deleteLotsOfFiles(),
  copyLotsOfFiles(),
  checksumLotsOfOtherFiles(),
  ]);
  print('Done with all the long steps!');

}



