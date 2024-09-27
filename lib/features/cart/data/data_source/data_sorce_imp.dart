import 'package:dio/src/response.dart';
import 'package:ecommerce_app/core/services/network_service.dart';
import 'package:ecommerce_app/features/cart/data/data_source/data_source.dart';
import 'package:ecommerce_app/features/cart/data/models/cart_response.dart';
import 'package:ecommerce_app/features/cart/domain/entity/cart_data.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CartDataSource)
class CartDataSourceImp implements CartDataSource {
  Network network;
  CartDataSourceImp(this.network);

  @override
  Future<Response> getCart() async {
    return await network.get(path: "/api/v1/cart");
  }
}
