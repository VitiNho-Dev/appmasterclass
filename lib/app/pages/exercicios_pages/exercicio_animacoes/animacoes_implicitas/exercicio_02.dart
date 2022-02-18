import 'package:flutter/material.dart';

class Exercicio2 extends StatefulWidget {
  const Exercicio2({Key? key}) : super(key: key);

  @override
  State<Exercicio2> createState() => _Exercicio2State();
}

class _Exercicio2State extends State<Exercicio2> {
  bool _expansion = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyScrollView'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _expansion = !_expansion;
                });
              },
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Texto 1',
                      style: TextStyle(
                        color: _expansion ? Colors.blue : null,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  AnimatedRotation(
                    turns: _expansion ? 0.5 : 0,
                    duration: const Duration(milliseconds: 300),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: _expansion ? Colors.blue : null,
                    ),
                  ),
                ],
              ),
            ),
            ClipRect(
              child: AnimatedAlign(
                duration: const Duration(milliseconds: 300),
                alignment: Alignment.centerLeft,
                heightFactor: _expansion ? 1 : 0,
                child: Column(
                  children: const [
                    FlutterLogo(),
                    Text(
                      """Lorem Ipsum is simply dummy text of theprinting
and typesetting industry. Lorem Ipsum has been the
industry's standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and 
scrambled it to make a type specimen book. It has 
survived not only five centuries, but also the leap 
into electronic typesetting, remaining essentially 
unchanged. It was popularised in the 1960s with the 
release of Letraset sheets containing Lorem Ipsum 
passages, and more recently with desktop publishing 
software like Aldus PageMaker including versions of 
Lorem Ipsum.
                        """,
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
