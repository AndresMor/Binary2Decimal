import 'package:demo_app/models/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'binary_decimal.dart';
import 'decimal_binary.dart';

class Converter extends StatefulWidget {
  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ModelChange>(
      create: (context)=> ModelChange(),
      child: Consumer<ModelChange>(
        builder: (context,modelChange,child){
          return Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    child: FlatButton(
                        onPressed: () {modelChange.changeFrame();},
                        child: Text(modelChange.binaryDecimal? "Binary -> Decimal":"Decimal -> Binary" ,
                            style: TextStyle(fontSize: 13, color: Theme.of(context).accentColor)))
                  ),
                  Container(
                      padding: const EdgeInsets.all(8.0),
                      alignment: Alignment.centerRight,
                      child: Text(
                        '${modelChange.binary}',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:Theme.of(context).accentColor,
                            fontSize: 35),
                      )),
                  Container(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.all(8.0),
                      child: Text('${modelChange.decimal}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).accentColor,
                              fontSize: 35))),
                  Expanded(
                    flex: 3,
                    child: SizedBox(
                      height: double.infinity,
                      child: modelChange.binaryDecimal? BinaryDecimal(
                        onChangedValue: (int number){
                          modelChange.onPressed(number, modelChange.binaryDecimal);
                        },
                      ): DecimalBinary(
                        onChangedValue: (int number){
                          modelChange.onPressed(number, modelChange.binaryDecimal);
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                          color: Theme.of(context).accentColor,
                          onPressed: () {
                            modelChange.clear();
                          },
                          child: Text("Reset",
                              style: new TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ))),
                    ),
                  ),
                    
                ]));
        }),
      );

    
  }
}
