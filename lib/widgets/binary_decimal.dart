import 'package:flutter/material.dart';

class BinaryDecimal extends StatelessWidget {
  final Function(int) onChangedValue;
  
  const BinaryDecimal({Key key, this.onChangedValue}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return  Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
        _numberButton(1, context),
        Spacer(),
        _numberButton(0, context),
        ]);
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

