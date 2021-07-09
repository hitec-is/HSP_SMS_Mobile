import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NfcReadPage extends StatelessWidget {
  const NfcReadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(""),
              ElevatedButton(
                onPressed: () {},
                child: Text("Scan"),
              )
            ],
          ),
        ),
      ),
    );
  }
}