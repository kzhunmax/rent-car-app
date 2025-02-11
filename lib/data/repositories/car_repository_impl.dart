import 'package:flutter_projects/data/datasources/firebase_car_data_source.dart';
import 'package:flutter_projects/data/models/car.dart';
import 'package:flutter_projects/domain/repositories/car_repository.dart';

class CarRepositoryImpl implements CarRepository {
  final FirebaseCarDataSource dataSource;

  CarRepositoryImpl(this.dataSource);

  @override
  Future<List<Car>> fetchCars() {
    return dataSource.getCars();
  }
}
