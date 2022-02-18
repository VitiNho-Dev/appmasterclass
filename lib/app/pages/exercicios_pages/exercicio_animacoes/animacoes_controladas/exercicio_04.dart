import 'package:flutter/material.dart';

class Exercicio4 extends StatefulWidget {
  const Exercicio4({Key? key}) : super(key: key);

  @override
  State<Exercicio4> createState() => _Exercicio4State();
}

class _Exercicio4State extends State<Exercicio4> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Color?> colorAnimation;
  late Animation<double> angleAnimation;
  late Animation<double> heightFactorAnimation;

  void toogle() {
    if (controller.value == 0) {
      controller.forward();
    } else {
      controller.reverse();
    }
  }

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    colorAnimation = ColorTween(
      begin: null,
      end: Colors.blue,
    ).animate(controller);

    angleAnimation = Tween<double>(
      begin: 0,
      end: 3.1,
    ).animate(controller);

    heightFactorAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(controller);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyScrollView'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () {
                    toogle();
                  },
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Texto 1',
                          style: TextStyle(
                            color: colorAnimation.value,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Transform.rotate(
                        angle: angleAnimation.value,
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: colorAnimation.value,
                        ),
                      ),
                    ],
                  ),
                ),
                ClipRect(
                  child: AnimatedAlign(
                    duration: const Duration(milliseconds: 300),
                    alignment: Alignment.centerLeft,
                    heightFactor: heightFactorAnimation.value,
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
            );
          },
        ),
      ),
    );
  }
}
