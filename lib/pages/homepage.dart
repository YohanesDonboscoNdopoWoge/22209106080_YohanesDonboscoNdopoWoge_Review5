import 'package:flutter/material.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future<dynamic> showAlertDialog(
        BuildContext context, String judul, String konten) {
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(judul),
            content: Text(konten),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("OK"),
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nama Kalian'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showAlertDialog(
              context,
              "Alert Dialog",
              "Ini adalah sebuah alert dialog. Ini juga bagian konten",
            );
          },
          child: const Text("Tampilkan Alert Dialog"),
        ),
      ),
      // Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       const mySnackBar = SnackBar(
      //         content: Text("Berhasil membuat SnackBar"),
      //         duration: Duration(seconds: 3),
      //         padding: EdgeInsets.all(10),
      //         backgroundColor: Colors.blueAccent,
      //       );
      //       ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
      //     },
      //     child: Text(
      //       "Tampilkan SnackBar",
      //       style: Theme.of(context).textTheme.bodyLarge,
      //     ),
      //   ),
      // ),
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text('Headline Large',
      //           style: Theme.of(context).textTheme.headlineLarge),
      //       const SizedBox(height: 20),
      //       Text('Body Large', style: Theme.of(context).textTheme.bodyLarge),
      //       Text('Body Medium', style: Theme.of(context).textTheme.bodyMedium),
      //       Text('Body Small', style: Theme.of(context).textTheme.bodySmall),
      //       const SizedBox(height: 20),
      //       ElevatedButton(
      //         onPressed: () {},
      //         child: const Text('Elevated Button'),
      //       ),
      //       const SizedBox(height: 20),
      //       OutlinedButton(
      //         onPressed: () {},
      //         child: const Text('Outlined Button'),
      //       ),
      //       const SizedBox(height: 20),
      //       TextButton(
      //         onPressed: () {},
      //         child: const Text('Text Button'),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}