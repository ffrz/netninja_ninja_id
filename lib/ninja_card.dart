import 'package:flutter/material.dart';

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: const Text('Ninja Card Id',
              style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: () {
            setState(() {
              level++;
            });
          },
          child: Icon(Icons.add, color: Colors.white),
          backgroundColor: Colors.amber,

        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Center(
              child: CircleAvatar(
                  backgroundImage: AssetImage('assets/thumb.jpg'),
                  radius: 40.0),
            ),
            Divider(
              height: 90,
              color: Colors.grey[800],
            ),
            const Text('NAME',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
            const Text('Chun-Li',
                style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 10),
            const Text('CURRENT NINJA LEVEL',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
            Text('$level',
                style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.email, color: Colors.grey[400]),
                const SizedBox(width: 10),
                Text('chun.li@ninja.com',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    ))
              ],
            )
          ]),
        ));
  }
}
