import 'package:flutter/material.dart';
import 'package:myapp/details.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _idController = TextEditingController();
  final _modeloController = TextEditingController();
  final _marcaController = TextEditingController();
  final _tallaController = TextEditingController();
  final _colorController = TextEditingController();
  final _precioController = TextEditingController();
  final _estadoController = TextEditingController();

  @override
  void dispose() {
    _idController.dispose();
    _modeloController.dispose();
    _marcaController.dispose();
    _tallaController.dispose();
    _colorController.dispose();
    _precioController.dispose();
    _estadoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text("Registro de Tenis"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            MyTextField(
              myController: _idController,
              fieldName: "ID del Producto",
              myIcon: Icons.numbers,
              prefixIconColor: Colors.orange.shade300,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _modeloController,
              fieldName: "Modelo",
              myIcon: Icons.style,
              prefixIconColor: Colors.orange.shade300,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _marcaController,
              fieldName: "Marca",
              myIcon: Icons.shopping_bag,
              prefixIconColor: Colors.orange.shade300,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _tallaController,
              fieldName: "Talla",
              myIcon: Icons.straighten,
              prefixIconColor: Colors.orange.shade300,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _colorController,
              fieldName: "Color",
              myIcon: Icons.palette,
              prefixIconColor: Colors.orange.shade300,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _precioController,
              fieldName: "Precio",
              myIcon: Icons.attach_money,
              prefixIconColor: Colors.orange.shade300,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _estadoController,
              fieldName: "Disponibilidad",
              myIcon: Icons.check_circle,
              prefixIconColor: Colors.orange.shade300,
            ),
            const SizedBox(height: 20.0),
            myBtn(context),
          ],
        ),
      ),
    );
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Details(
              id: _idController.text,
              model: _modeloController.text,
              brand: _marcaController.text,
              size: _tallaController.text,
              color: _colorController.text,
              price: _precioController.text,
              availability: _estadoController.text,
            );
          }),
        );
      },
      child: Text(
        "Confirmar".toUpperCase(),
        style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.deepOrange,
  });

  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
        labelText: fieldName,
        prefixIcon: Icon(myIcon, color: prefixIconColor),
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.orange.shade400),
        ),
        labelStyle: const TextStyle(color: Colors.black),
      ),
    );
  }
}
