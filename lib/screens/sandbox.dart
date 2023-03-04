import 'package:flutter/material.dart';

class Sandbox extends StatefulWidget {
  const Sandbox({super.key});

  @override
  State<Sandbox> createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {
  double opacity = 1;
  double margin = 0;
  double width = 200;
  Color color = Colors.black87;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        margin: EdgeInsets.all(margin),
        width: width,
        color: color,
        duration: const Duration(seconds: 1),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  margin = 50;
                });
              },
              child: const Text('animate margin'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  color = Colors.purple;
                });
              },
              child: const Text('animate color'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  width = 400;
                });
              },
              child: const Text('animate width'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  opacity = 0;
                });
              },
              child: const Text('animate opacity'),
            ),
            AnimatedOpacity(
              opacity: opacity,
              duration: const Duration(seconds: 2),
              child: const Text(
                'Hide me',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
