
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/repositories/menuRepository.dart';
import '../datasources/menuDataSource.dart';

class MenuRepositoryImpl extends MenuRepository{

  final MenuDataSource menuDataSource;
  MenuRepositoryImpl(this.menuDataSource);


  @override
  Stream<QuerySnapshot> getDishes() {
    return menuDataSource.getDishes();
  }
}