import 'package:flutter/material.dart';
import 'package:tul/constants.dart';

class Admin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Bienvenido",
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AgregarProducto extends StatefulWidget {
  @override
  _AgregarProductoState createState() => _AgregarProductoState();
}

class _AgregarProductoState extends State<AgregarProducto> {
  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();

  TextEditingController nombreInputController;
  TextEditingController descripcionInputController;
  TextEditingController precioInputController;

  @override
  void initState() {
    nombreInputController = TextEditingController();
    descripcionInputController = TextEditingController();
    precioInputController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Para agregar un nuevo producto inserta los siguientes datos:",
          style: TextStyle(
            color: textColor,
            fontSize: 16.0,
          ),
        ),
        Form(
          key: _registerFormKey,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: secondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  controller: nombreInputController,
                  onChanged: (value) => print(value),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: "Producto",
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: secondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  controller: descripcionInputController,
                  onChanged: (value) => print(value),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: "Descripción",
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: secondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  controller: precioInputController,
                  onChanged: (value) => print(value),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: "Precio",
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: ElevatedButton(
                  onPressed: () => () {},
                  child: Text(
                    "Registrar",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                    onPrimary: secondaryColor,
                    padding: EdgeInsets.symmetric(
                      horizontal: 64,
                      vertical: 8,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
