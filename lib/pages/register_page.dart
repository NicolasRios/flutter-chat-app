// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Logo(titulo: 'Registro'),
                _Form(),
                Labels(
                  ruta: 'login',
                  titulo: 'Já tem conta?',
                  subtitulo: 'Entrar agora',
                ),
                Text(
                  'Termos e condições de uso',
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  const _Form();

  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.perm_identity_rounded,
            placeholder: 'Nome',
            textController: nameCtrl,
            isPassword: false,
          ),
          CustomInput(
            icon: Icons.mail_outline_rounded,
            placeholder: 'E-mail',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
            isPassword: false,
          ),
          CustomInput(
            icon: Icons.lock_outline_rounded,
            placeholder: 'Senha',
            textController: passCtrl,
            isPassword: true,
          ),
          BotonAzul(
            text: 'Registrar',
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
