import 'package:flutter/material.dart';

class Fullscreen extends StatefulWidget {
  const Fullscreen({super.key, required this.imgurl});

  final String imgurl;

  @override
  State<Fullscreen> createState() => _FullscreenState();
}

class _FullscreenState extends State<Fullscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(child: Container(child: Image.network(widget.imgurl),)),
            InkWell(
              onTap: () {},
              child: Container(
                height: 60,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Set wallpaper',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
