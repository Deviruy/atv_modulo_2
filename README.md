# 🚀 Como rodar este projeto Flutter do zero no VS Code (PC novo)

Este guia mostra como configurar todo o ambiente para rodar este projeto Flutter em um computador que ainda não tem nada instalado.

## 🧩 1. Instalar o Git

**Windows:**
- Baixe o instalador: https://git-scm.com/download/win
- Instale com as opções padrão
- Reinicie o computador, se necessário
- Verifique se está funcionando:

```bash
git --version
```

## 🐦 2. Instalar o Flutter SDK

**Windows:**
- Acesse: https://docs.flutter.dev/get-started/install/windows
- Baixe o arquivo .zip do Flutter SDK
- Extraia o conteúdo para `C:\src\flutter` (ou outro local sem espaços no caminho)
- Adicione `C:\src\flutter\bin` à variável de ambiente PATH
- Verifique a instalação:

```bash
flutter doctor
```

## 🤖 3. Instalar o Android Studio (para criar emuladores)

- Baixe o Android Studio: https://developer.android.com/studio
- Durante a instalação, marque as opções:
  - Android SDK
  - Android SDK Platform
  - Android Virtual Device (AVD)
- Após instalar, abra o Android Studio:
  - Vá em More Actions > SDK Manager e baixe o SDK mais recente
  - Vá em Device Manager e crie um emulador Android

## 🧪 4. Instalar o VS Code

- Baixe o Visual Studio Code: https://code.visualstudio.com/
- Instale com as opções padrão
- **Extensões recomendadas:**
  - Flutter
  - Dart
  - (opcional) Material Icon Theme

## 🔗 5. Clonar o repositório do projeto

```bash
git clone https://github.com/Deviruy/atv_modulo_2.git
cd atv_modulo_2
```

## 📦 6. Instalar as dependências do projeto

No terminal dentro da pasta do projeto:

```bash
flutter pub get
```

## ▶️ 7. Executar o projeto

### Opção 1: Emulador Android
- Inicie o Android Studio e abra um AVD (emulador)
- Ou use:

```bash
flutter emulators --launch nome_do_emulador
```

Depois, execute:

```bash
flutter run
```

### Opção 2: Rodar no navegador (Web)

```bash
flutter run -d chrome
```

## 🛠️ 8. Verificar se está tudo certo com o ambiente

```bash
flutter doctor
```

Se aparecerem mensagens em vermelho, siga as sugestões para resolver.

## 🌐 Alternativa: Rodar o projeto online com FlutLab.io

Se preferir não instalar nada, é possível rodar o projeto direto no navegador:

### ✔️ Como usar:
1. Acesse: https://flutlab.io
2. Crie uma conta (ou use login com Google)
3. Clique em "Import Project"
4. Cole o link do repositório:

```bash
https://github.com/Deviruy/atv_modulo_2.git
```

5. Aguarde carregar o projeto
6. Clique em "Run" para executar no navegador

## 👨💻 Autor

Desenvolvido por **Yuri Oliveira Trindade**  
Repositório: [github.com/Deviruy](https://github.com/Deviruy)

## 📄 Licença

Uso acadêmico. Todos os direitos reservados.
