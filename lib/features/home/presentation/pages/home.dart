import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../cart/presentation/pages/cart.dart';
import '../../../login/presentation/pages/auth.dart';
import '../../../menu/presentation/pages/menu.dart';
import '../../../profile/presentation/pages/profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //metodo per il logout
  Future<void> signOut() async {
    await Auth().signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('SUSHIMIKU',style: TextStyle(fontSize: 30.0,color: Colors.red[300]),)),
        actions: [
          IconButton(
              onPressed: () {
                signOut();
              },
              icon: Icon(Icons.logout)),
          IconButton(
            onPressed: () {
              // Aggiungi l'azione per navigare alla pagina del profilo
              Get.to(Profile());
            },
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ようこそ',
              style: TextStyle(fontSize: 40.0),
            ),
            Image.asset('img/sushi.png',height: 200,),
            SizedBox(height: 20.0), // Spazio tra il titolo e i pulsanti
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0, // Altezza dei pulsanti
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  height: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Implementa l'azione per il pulsante del Menu
                      Get.to(Menu());
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.all(16.0), // Padding interno
                    ),
                    child: Text(
                      'Menù',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.0), // Spazio tra i pulsanti
              Expanded(
                child: Container(
                  height: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Implementa l'azione per il pulsante del Carrello
                      Get.to(Cart());
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.all(16.0), // Padding interno
                    ),
                    child: Text(
                      'Carrello',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
