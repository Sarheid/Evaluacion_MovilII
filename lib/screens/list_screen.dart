import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/backend.dart';
import '../widgets/bicicleta_widget.dart';
import 'detail_screen.dart';
import '../model/bicicleta.dart';

class ListScreen extends StatefulWidget {


  const ListScreen({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {


  
  
  var bicicletas = Backend().getBibicletas();
 

  void showDetail( Bicicleta bicicleta) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DetailScreen( bicicleta: bicicleta,);
    }));
    
    setState(() {
 
      bicicletas = Backend().getBibicletas();
    });
  }

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), 
    
      ),


      
      body: ListView.separated(
        itemCount: bicicletas.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: primaryColor,
          indent: 40.0,
          endIndent: 20.0,
        ),
          itemBuilder: (BuildContext context, int index) => EmailWidget(
          bicicleta: bicicletas[index],
          onTap: showDetail,  
  
        ),
      
          
      ),  

    );  
  }
}
