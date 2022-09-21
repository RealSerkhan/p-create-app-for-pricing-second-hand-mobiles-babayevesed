import 'package:equatable/equatable.dart';
import 'package:telefonchu/features/brands/data/models/brand.dart';

class Model extends Equatable {
  final String? name;
  final String? id;
  final String? brandID;
  final String? docId;
  final BrandModel? brand;
  // final CollectionReference? brandReference;
  const Model({
    this.name,
    this.id,
    this.brandID,
    this.docId,
    this.brand,
  });

  @override
  List<Object?> get props => [name, id, brandID, brand, docId];
}
