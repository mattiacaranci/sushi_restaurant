import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sushi_m/features/menu/presentation/controllers/menuSushiController.dart';

import '../../../login/presentation/pages/auth.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  //metodo per il logout
  Future<void> signOut() async {
    await Auth().signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text('Menù'),
        actions: [
          IconButton(
              onPressed: () {
                signOut();
              },
              icon: Icon(Icons.logout)),
        ],
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('dishes').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator(); // Indicatore di caricamento se lo stream è in attesa
          }
          if (snapshot.hasError) {
            return Text('Errore: ${snapshot.error}'); // Messaggio di errore se lo stream ha un errore
          }
          // Altrimenti, mostra i dati effettivi
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              var dish = snapshot.data!.docs[index];
              var categoria = dish['categoria'];
              var descrizione = dish['descrizione'];
              var prezzo = dish['prezzo'];
              return ListTile(
                title: Text(categoria),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(descrizione),
                    Text('Prezzo: $prezzo €'),
                  ],
                ),
              );
            },
          );
        },
      )


    );
  }
}
