import 'package:flutter/material.dart';
import 'package:ido_english/src/bloc/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final bloc = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home')
      ),
      body:Container(),
      floatingActionButtonLocation: _crearBoton(context),
          );
        }
      
 _crearBoton(BuildContext context) {

       return FloatingActionButton(
         child: Icon(Icons.add),
         backgroundColor: Colors.deepOrange,
         onPressed: ()=>Navigator.pushNamed(context,'producto' )
         );
         
     }
}