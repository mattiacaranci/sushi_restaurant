import 'package:flutter/material.dart';

import '../../../login/presentation/pages/auth.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  //metodo per il logout
  Future<void> signOut() async {
    await Auth().signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text('Il mio carrello'),
        actions: [
          IconButton(
              onPressed: () {
                signOut();
              },
              icon: Icon(Icons.logout)),
        ],
      ),

    );
  }
}
