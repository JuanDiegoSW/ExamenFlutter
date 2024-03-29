import 'package:flutter/material.dart';


class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 300.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen()
            ),
          ],
        ),
      ),
    );
  }


  Widget _crearSlider() {

    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: ( _bloquearCheck ) ? null : ( valor ){

        setState(() {
          _valorSlider = valor;
        });

      },
    );

  }

  Widget _checkBox() {

    return CheckboxListTile(
      title: Text('Bloquear slider Tipo 1'),
      value: _bloquearCheck,
      onChanged: (valor){ 
        setState(() {
          _bloquearCheck = valor;
        });
      },

    );


  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear slider Tipo 2'),
      value: _bloquearCheck,
      onChanged: (valor){ 
        setState(() {
          _bloquearCheck = valor;
        });
      },

    );
  }


  Widget _crearImagen() {

    return Image(
      image: NetworkImage('data:image/png;base64,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'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );

  }

}