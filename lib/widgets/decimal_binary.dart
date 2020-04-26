import 'package:flutter/material.dart';

class DecimalBinary extends StatelessWidget {
  final Function(int) onChangedValue;
  
  const DecimalBinary({Key key, this.onChangedValue}):super(key:key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _numberButton(7, context),
              _numberButton(8, context),
              _numberButton(9, context),
            ],
          )),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _numberButton(4, context),
              _numberButton(5, context),
              _numberButton(6, context),
            ],
          )),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _numberButton(1, context),
              _numberButton(2, context),
              _numberButton(3, context),
            ],
          )),
          Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _numberButton(0, context),
            ],
          )),
      ],
      
    );
  }

   Widget _numberButton(int number,BuildContext context ) {
    return Expanded(
      flex: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
            color: Theme.of(context).primaryColor,
            onPressed: () => onChangedValue(number),
            child: Text(number.toString(),
                style: new TextStyle(
                  fontSize: 26.0,
                  color: Colors.white,
                ))),
      ),
    );
  }

}


