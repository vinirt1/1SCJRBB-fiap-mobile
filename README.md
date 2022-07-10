# Entrega Final 1SCJRBB-FIAP-mobile

## Crypto List App

Aplicativo desenvolvido como projeto final da disciplina Mobile Development do curso MBA Full Stack Developmente, turma 1SCJRBB.

## Integrantes

- Caio Cesar Silva Dantas
- Diogo Raul Martins
- Marcos Alencar de Arruda
- Vinicius Rodrigues Tonhá

## Funcionalidades do Projeto

Trata-se de um aplicativo para consulta de valores de criptomoedas.

A listagem das criptomoedas vem da [API cryptingup](https://www.cryptingup.com/apidoc/#introduction), uma API pública que não exige autenticação. 

A documentação da API pode ser encontrada no link abaixo:

## Autenticação do app

O APP possui funcionalidade de login via email.

A autenticação foi implementada no projeto base Android utilizando [Firebase](https://firebase.google.com/docs/auth/android/password-auth).

## Estrutura do projeto

O projeto é baseado em tree-architecture. 

Possui uma tela de splash.

Possui tela de login e cadastro separados. Caso o usuário já esteja logado, redireciona diretamente para a listagem de criptomoedas.

## Abrir e executar o projeto.

Esse projeto é baseado na linguagem Flutter.

Para executar este projeto você precisa:

- Ter o [Flutter](https://flutter.dev/docs/get-started/install) instalado na sua máquina
- Ter algum editor de códigos ou IDE como o [Android Studio](https://developer.android.com/studio) ou [Intellij Idea](https://www.jetbrains.com/pt-br/idea/download/).
- Alguns recursos para ajudar seu início, caso esse seja o seu primeiro projeto Flutter:
- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)
- O Flutter possui um comando de linha para verificar se todos os requisitos do sistema foram atendidos. Basta executar na raiz do projeto o seguinte comando: `flutter doctor`
- O ponto de start do projeto é o `lib\main.dart` e para executar o projeto basta executar o comando `flutter run` ou a interface gráfica do seu IDE
- [Documentação do test-drive](https://docs.flutter.dev/get-started/test-drive)