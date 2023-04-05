import 'package:http/http.dart' as http;

import 'package:chat_app/global/environment.dart';
import 'package:chat_app/models/models.dart';
import 'package:chat_app/services/auth_service.dart';

class UsuariosService {
  Future<List<Usuario>> getUsuarios() async {
    String? token = await AuthService.getToken();
    try {
      final resp = await http.get(
        Uri.parse('${Environment.apiUrl}/usuarios'),
        headers: {
          'Content-Type': 'application/json',
          'x-token': token.toString(),
        },
      );

      final usuariosResponse = usuariosResponseFromJson(resp.body);

      return usuariosResponse.usuarios;
    } catch (e) {
      return [];
    }
  }
}
