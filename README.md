# Entrega Final 1SCJRBB-FIAP-mobile

## Crypto List App

O objetivo desse aplicativo é a entrega final do trabalho da disciplina Mobile Development.

## Integrantes

- Caio Cesar Silva Dantas
- Diogo Raul Martins
- Marcos Alencar de Arruda
- Vinicius Rodrigues Tonhá

## Funcionalidades do Projeto

Trata-se de um aplicativo para consulta de valores de criptomoedas. Aplicativo nativo Android.

A listagem das criptomoedas vem da api cryptingup, uma api pública que não exige API keys ou qualquer outro tipo de autenticação. 

A documentação pode ser encontrada no link abaixo:

[Documentação api](https://www.cryptingup.com/apidoc/#introduction)

## Autenticação do app

Possui login por email.

A autenticação foi feita no projeto base android seguindo a documentação do firebase.

[Documentação autenticação firebase para android](https://firebase.google.com/docs/auth/android/password-auth)

## Estrutura do projeto

O Projeto é baseado em tree-architecture. 

Possui uma tela de splash.

Possui tela de login e cadastro separados. Caso o usuário já esteja logado, redireciona para a listagem de criptomoedas.

## Abrir e rodar o projeto.

Esse projeto é baseado na linguagem Flutter.

Para executar este projeto você precisa:

- Ter o [Flutter](https://flutter.dev/docs/get-started/install) instalado na sua máquina
- Ter algum editor de códigos ou IDE como o [Android Studio](https://developer.android.com/studio) ou [Intellij Idea](https://www.jetbrains.com/pt-br/idea/download/).
- Alguns recursos para ajudar seu inicio caso esse seja o seu primeiro projeto Flutter:
- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)