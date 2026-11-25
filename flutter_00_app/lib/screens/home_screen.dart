import 'package:flutter/material.dart';
import '../models/concepto_poo.dart';
import '../widgets/concepto_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<ConceptoPOO> _conceptos = [
    ConceptoPOO(
      titulo: 'Variables y Null Safety',
      modulo: 'Dart_00',
      descripcion: 'Uso de final, const, tipos nullable (?) y operador ??.',
      completado: true,
    ),
    ConceptoPOO(
      titulo: 'Bucles, Excepciones y Herencia',
      modulo: 'Dart_01',
      descripcion: 'Traducción de C# a Dart: for-in, try-catch, extends y @override.',
      completado: true,
    ),
    ConceptoPOO(
      titulo: 'Encapsulamiento, Abstract y Mixins',
      modulo: 'Dart_02',
      descripcion: 'Privacidad por librería (_), interfaces y reutilización con with.',
    ),
    ConceptoPOO(
      titulo: 'Árbol de Widgets y setState',
      modulo: 'Flutter_00',
      descripcion: 'Diferencia entre StatelessWidget y StatefulWidget en UI.',
    ),
  ];

  int get _completados => _conceptos.where((c) => c.completado).length;

  void _alternarConcepto(int index) {
    setState(() {
      _conceptos[index].alternarEstado();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fundamentos Dart & Flutter'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            color: Theme.of(context).colorScheme.primaryContainer,
            child: Text(
              'Progreso del curso: $_completados de ${_conceptos.length} módulos dominados',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _conceptos.length,
              itemBuilder: (context, index) {
                return ConceptoCard(
                  concepto: _conceptos[index],
                  onToggle: () => _alternarConcepto(index),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
