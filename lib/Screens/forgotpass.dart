import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPassPage extends StatelessWidget {
  static String id = 'forgotPassword_page';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      appBar: AppBar(
        backgroundColor: Color(0xffF4F4F4),
        leading: IconButton(
          color: Color(0xFF011C53),
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {},
        ),
        /*
         * Texto de inicio sesion
        */
        title:
        Text(
          'Recuperar contraseña',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF333333),
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Lato',
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            /*
               * Seccion de formulario
              */
            _textFieldEmail(),
            SizedBox(height: 100),
            _buttonSingIn()

          ],
        ),
      ),
    )
    );
  }
  
  void setState(Null Function() param0) {}
}

Widget _textFieldEmail() {
  return _textFieldGeneral(
    labelText: 'Correo electronico',
    icon: Icons.email_outlined,
    hintText: 'example@hotmail.com',
    obscureText: true,
    onChanged: () {},
  );
}

Widget _buttonSingIn() {
  return  RaisedButton(
    color: Color(0xFF011C53),
    padding: EdgeInsets.symmetric(
      horizontal: 100,
      vertical: 20,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    onPressed: () {},
    child: Text(
           'Enviar',
           style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Lato'
           ),
          ),
  );
}

/**
 * Clase generica de text labels
 */
class _textFieldGeneral extends StatefulWidget {

  final String labelText; //Texto del label
  final String? hintText; //Texto de muestra
  final TextInputType? keyboardType;
  final IconData icon;
  final Function onChanged;
  final bool obscureText;

  const _textFieldGeneral({
    required this.labelText,
    this.hintText,
    this.keyboardType,
    required this.icon,
    required this.onChanged,
    this.obscureText = false,
  });

  @override
  State<_textFieldGeneral> createState() => _textFieldGeneralState();
}

class _textFieldGeneralState extends State<_textFieldGeneral> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 50,
      ),
      child: TextField(
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
            prefixIcon: Icon(widget.icon),
            labelText: '${widget.labelText}',
            hintText: widget.hintText,
          ),
        onChanged: (value) {},
      ),
    );
  }
}