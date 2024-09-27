import 'package:ecommerce_app/features/products_screen/data/models/product_response.dart';
import 'package:ecommerce_app/features/products_screen/domain/repo/repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProductUseCase {
  ProductRepo repo;
  GetProductUseCase(this.repo);

  Future<List<ProductData>> call({String? categoryId, String? brandId}) async {
    return await repo.getProducts(categoryId: categoryId, brandId: brandId);
  }
}
