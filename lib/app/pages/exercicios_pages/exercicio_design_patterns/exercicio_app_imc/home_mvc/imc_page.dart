import 'package:appmasterclass/app/pages/exercicios_pages/exercicio_design_patterns/exercicio_app_imc/home_mvc/imc_controller.dart';
import 'package:flutter/material.dart';

class ImcPage extends StatefulWidget {
  const ImcPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ImcPage> createState() => _ImcPageState();
}

class _ImcPageState extends State<ImcPage> {
  final controller = ImcController();

  @override
  void initState() {
    controller.result;
    super.initState();
  }

  @override
  void dispose() {
    controller.result;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App IMC'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: controller.setPeso,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Peso',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              onChanged: controller.setAlutra,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Altura',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: controller.resultImc,
              child: const Text('Calcular'),
            ),
            const SizedBox(
              height: 8,
            ),
            ValueListenableBuilder<String>(
              valueListenable: controller.result,
              builder: (context, value, child) {
                return Text(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
