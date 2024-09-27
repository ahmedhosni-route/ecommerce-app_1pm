import 'package:ecommerce_app/features/main_layout/data/models/category_response.dart';
import 'package:ecommerce_app/features/products_screen/data/models/product_response.dart';
import 'package:injectable/injectable.dart';
import '../../data/models/brands_response.dart';
import '../repo/repo.dart';

@injectable
class GetWashListUseCase {
  MainRepo mainRepo;
  GetWashListUseCase(this.mainRepo);

  Future<List<ProductData>> call() async {
    return await mainRepo.getWashList();
  }
}
