import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson002/bloc1/crypto_event.dart';
import 'package:lesson002/bloc1/crypto_state.dart';
import 'package:lesson002/model/crypto_repository.dart';

class CryptoBloc extends Bloc<CryptoEvent, CryptoState> {
  final CryptoRepository repository;

  CryptoBloc(this.repository) : super(CryptoLoading()) {
    on<LoadCoinsEvent>((event, emit) async {
      try {
        emit(CryptoLoading());
        final coins = await repository.getCoins();
        emit(CryptoLoaded(coins));
      } catch (e) {
        emit(CryptoError(e.toString()));
      }
    });
  }
}