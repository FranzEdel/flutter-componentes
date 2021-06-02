import 'package:flutter/material.dart';

class ListasPage extends StatelessWidget {
  final opciones = ['Inicio', 'Productos', 'Categorias', 'Usuarios'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componente ListView!'),
      ),
      body: ListView(
        children: _crearItemsCortos(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = <Widget>[];

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCortos() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + '!!'),
            subtitle: Text('Descripcion'),
            leading: Icon(Icons.adb_rounded),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
