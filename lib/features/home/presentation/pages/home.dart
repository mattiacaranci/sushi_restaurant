import 'package:flutter/material.dart';

import '../../../login/presentation/pages/auth.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<void> signOut() async {
    await Auth().signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SUSHIMIKU'),
        actions: [
          IconButton(onPressed: () {signOut();}, icon: Icon(Icons.logout)),
          IconButton(
            onPressed: () {
              // Aggiungi l'azione per navigare alla pagina del profilo
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
              'SUSHIMIKU',
              style: TextStyle(fontSize: 24.0),
            ),
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
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.all(16.0), // Padding interno
                    ),
                    child: Text(
                      'Menu',
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
