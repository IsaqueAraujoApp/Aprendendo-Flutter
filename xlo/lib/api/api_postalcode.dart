import 'package:dio/dio.dart';

getAdressFromAPI(String postalCode) async {

  final String endpoint = 'http://viacep.com.br/ws/${postalCode.replaceAll('.', '').replaceAll('-', '')}/json/';

  final Response response = await  Dio().get<Map>(endpoint);

  print(response.data);
}