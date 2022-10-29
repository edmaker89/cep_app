// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class EnderecoModel {
  // modelo de dados
  final String cep;
  final String logradouro;
  final String complemento;

  EnderecoModel(
      { //generic constructor
      required this.cep,
      required this.logradouro,
      required this.complemento});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cep': cep,
      'logradouro': logradouro,
      'complemento': complemento,
    };
  }

  factory EnderecoModel.fromMap(Map<String, dynamic> map) {
    return EnderecoModel(
      cep: map['cep'] ?? '',
      logradouro: map['logradouro'] ?? '',
      complemento: map['complemento'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory EnderecoModel.fromJson(String source) => EnderecoModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
