import 'dart:developer';
import 'package:cep_app/models/endereco_model.dart' show EnderecoModel;
import 'package:dio/dio.dart';
import 'cep_repository.dart';


class CepRepositoryImpl implements CepRepository {
  @override
  Future<EnderecoModel> getCep(String cep) async {
    try {
  final result = Dio().get('https://viacep.com.br/ws/$cep/json/');
  return EnderecoModel.fromMap((await result).data);
} on DioError catch (e) {
  log('Erro ao buscar o CEP:', error: e);
  throw Exception('Erro ao buscar o CEP');
}
  }
}
