import 'package:flutter/material.dart';
import 'package:lesson002/api/crypto_api_service.dart';
import 'package:lesson002/bloc1/crypto_bloc.dart';
import 'package:lesson002/model/crypto_repository.dart';
import 'package:lesson002/ui/crypto_screen.dart';

void main() {
  final repository = CryptoRepository(CryptoApiService());
  final bloc = CryptoBloc(repository);

  runApp(MaterialApp(
    home: CryptoScreen(bloc: bloc),
  ));
}