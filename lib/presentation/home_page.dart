import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_hook/Domain/todo.dart';
import 'package:riverpod_hook/applications/app_provider.dart';

class MyHomePage extends HookConsumerWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final _count = ref.watch(Counter_provider);

    useEffect(() {
      Future.delayed(Duration(microseconds: 2), () {
        ref.read(Counter_provider.notifier).loaddata();
      });
      return null;
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Hook_Riverpod"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${_count}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(Counter_provider.notifier).addTodo();
        },
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
