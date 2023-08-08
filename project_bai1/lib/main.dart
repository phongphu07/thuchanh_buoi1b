import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My app', // used by the OS task switcher
      home: MyHomeScreen(),
    ),
  );
}

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trang chu'),
      ),
      body: SafeArea(
        child: Container(
            alignment: Alignment.center,
            width: 390,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Home Screen',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 20,
                ),
                buildRowLayout(),
                const SizedBox(
                  height: 20,
                ),
                Image.network(
                  'https://i0.wp.com/s3.ap-southeast-1.amazonaws.com/techover.storage/wp-content/uploads/2022/03/31225751/dart-logo-for-shares-2-300x168.png?resize=300%2C168&ssl=1',
                  height: 100,
                  width: 250,
                ),
                Image.network(
                  'data:image/png;base64,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',
                  height: 100,
                  width: 250,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLNkWodC-1A2ZzyR7ZTxF3l6EOJY0Gi6du3g&usqp=CAU',
                  height: 100,
                  width: 250,
                ),

                ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Nut da duoc bam!')));
                    },
                    child: const Text('Click here!')),
              ],
            )),
      ),
    );
  }
}

Widget buildRowLayout() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        color: Colors.blue,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.green,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.orange,
        height: 100,
        width: 100,
      )
    ],
  );
}
