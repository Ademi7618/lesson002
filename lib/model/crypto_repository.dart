import 'package:lesson002/api/crypto_api_service.dart';
import 'package:lesson002/model/coin_model.dart';

class CryptoRepository {
  final CryptoApiService api;

  CryptoRepository(this.api);

  Future<List<CoinModel>> getCoins() => api.fetchCoins();
}