import 'package:flutter/material.dart';
import '../constants.dart';
import '../model/bicicleta.dart';

class EmailWidget extends StatelessWidget {
  final Bicicleta bicicleta;
  final Function onTap;


  const EmailWidget(
      {Key? key,
      required this.bicicleta,
      required this.onTap,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
      },
      onLongPress: () {
      },
      onTap: () {
        onTap(bicicleta);
      },
      
      child: Container(
      
        padding: const EdgeInsets.all(10.0),
        height: 80.0,

        child: Row(
       
          
          children: <Widget> [
            
            
            Expanded(
              flex: 1,
              child: Container(
                height: 12.0,
                
              ),
              
            ),
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Nombre : ${bicicleta.name}', style: fromTextStyle),
                   Text('Color: ${bicicleta.color}', style: subjectTextStyle),
                  Text('Precio: ${bicicleta.precio}',
                      style: fromTextStyle),
                 
                ],
              ),
            )
       
          ],
        ),
      ),
    );
  }
}
