import 'package:flutter/material.dart';
import '../models/concepto_poo.dart';

class ConceptoCard extends StatelessWidget {
  final ConceptoPOO concepto;
  final VoidCallback onToggle;

  const ConceptoCard({
    super.key,
    required this.concepto,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: Icon(
          concepto.completado ? Icons.check_circle : Icons.radio_button_unchecked,
          color: concepto.completado ? Colors.green : Colors.grey,
        ),
        title: Text(
          concepto.titulo,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            decoration: concepto.completado ? TextDecoration.lineThrough : null,
          ),
        ),
        subtitle: Text('${concepto.modulo} · ${concepto.descripcion}'),
        trailing: IconButton(
          icon: const Icon(Icons.touch_app),
          onPressed: onToggle,
          tooltip: 'Marcar como completado',
        ),
        onTap: onToggle,
      ),
    );
  }
}
