import 'package:flutter/material.dart';

class Exercicio3 extends StatefulWidget {
  const Exercicio3({Key? key}) : super(key: key);

  @override
  _Exercicio3State createState() => _Exercicio3State();
}

class _Exercicio3State extends State<Exercicio3> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Size?> sizeAnimation;
  late Animation<Alignment> alignmentAnimation;
  late Animation<BorderRadius?> borderRadiusAnimation;

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
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    sizeAnimation = SizeTween(
      begin: const Size(100, 50),
      end: const Size(50, 50),
    ).animate(controller);

    alignmentAnimation = AlignmentTween(
      begin: Alignment.topCenter,
      end: Alignment.bottomRight,
    ).animate(controller);

    borderRadiusAnimation = BorderRadiusTween(
      begin: null,
      end: BorderRadius.circular(30),
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
        title: const Text('Desafio do Botão Flutuante'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return GestureDetector(
              onTap: () {
                toogle();
              },
              child: Align(
                alignment: alignmentAnimation.value,
                child: Container(
                  height: sizeAnimation.value?.height,
                  width: sizeAnimation.value?.width,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: borderRadiusAnimation.value,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
