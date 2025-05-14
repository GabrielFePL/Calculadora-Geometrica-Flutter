# Calculadora-Geometrica-Flutter

Projeto Flutter para cálculo de figuras geométricas com telas de splashscreen, login, menu, entrada de dados e exibição de resultados. Inclui cálculos de área, perímetro e raio (círculo).

## Sobre o Projeto

Este projeto foi desenvolvido como parte de uma avaliação para a disciplina de **Desenvolvimento para Dispositivos Móveis** na **Fatec Matão**. O objetivo foi criar uma aplicação Flutter utilizando o padrão **MVC** para realizar cálculos de figuras geométricas.

### Requisitos do Projeto

O projeto atende aos seguintes requisitos:

1. **Tela de Splashscreen**:
   - Deve exibir os logotipos da CPS, Fatec Matão e do Curso de DSM.

2. **Tela de Login**:
   - Permite a entrada de um nome de usuário e uma senha.
   - Após validar as credenciais, redireciona para a tela de menu de opções.

3. **Tela de Menu de Opções**:
   - Contém botões que avançam para as telas de cálculos de cada figura geométrica.

4. **Tela de Entrada de Dados**:
   - Permite a entrada de dados para calcular cada figura geométrica.
   - Exemplo: Para o círculo, o usuário insere o diâmetro para calcular o raio, a área e o perímetro.

5. **Tela de Resultados**:
   - Exibe os valores calculados para cada figura geométrica.
   - Inclui os dados de entrada, a área e o perímetro. Para o círculo, exibe também o diâmetro e o raio.

### Observações

- Cada figura geométrica possui suas respectivas telas de entrada de dados e resultados.
- O projeto segue a estrutura de pastas recomendada, contendo as pastas: **Models**, **Controllers**, **Views**, e outras necessárias.

### Figuras Geométricas Implementadas

O projeto inclui cálculos para as seguintes figuras geométricas:
- Círculo
- Quadrado
- Retângulo
- Trapézio
- Triângulo
- Hexágono
- Losango
- Paralelogramo
- Esfera
- Cubo

# Documentação do Arquivo `main.dart`

O arquivo `main.dart` é o ponto de entrada principal da aplicação Flutter. Ele configura o aplicativo, inicializa o Firebase e define o tema global, as rotas e a tela inicial da aplicação.

---

## Estrutura do Arquivo

### Importações
O arquivo importa os seguintes pacotes e arquivos:
- **`package:flutter/material.dart`**: Biblioteca principal do Flutter para construção de interfaces.
- **`package:firebase_core/firebase_core.dart`**: Biblioteca para inicializar o Firebase.
- **`package:calculadora_geometrica/firebase_options.dart`**: Configurações específicas do Firebase para a plataforma.
- **`package:calculadora_geometrica/splash_screen.dart`**: Tela de splashscreen exibida ao iniciar o aplicativo.
- **`package:calculadora_geometrica/login_page.dart`**: Tela de login.
- **`package:calculadora_geometrica/signup_page.dart`**: Tela de cadastro de usuários.
- **`package:calculadora_geometrica/home_page.dart`**: Tela principal do aplicativo.

---

### Função `main()`
A função `main()` é o ponto de entrada da aplicação. Ela realiza as seguintes ações:
1. **Inicialização do Flutter**:
   - `WidgetsFlutterBinding.ensureInitialized()` garante que os widgets do Flutter sejam inicializados antes de qualquer outra ação.
2. **Inicialização do Firebase**:
   - `Firebase.initializeApp()` configura o Firebase com as opções fornecidas no arquivo `firebase_options.dart`.
3. **Execução do Aplicativo**:
   - `runApp(const MyApp())` inicia o aplicativo com o widget raiz `MyApp`.

---

### Classe `MyApp`
A classe `MyApp` é o widget raiz da aplicação. Ela define o tema global, as rotas e a tela inicial.

#### Propriedades
- **`title`**: Define o título do aplicativo como "Task Management".
- **`theme`**: Configura o tema global da aplicação:
  - **Fonte personalizada**: Define a fonte como `'Cera Pro'`.
  - **Botões elevados**: Configura o estilo padrão para botões elevados:
    - Cor de fundo: `Colors.black`.
    - Tamanho mínimo: `double.infinity` de largura e `60` de altura.
    - Bordas arredondadas: `15` de raio.
  - **Campos de entrada**: Configura o estilo padrão para campos de texto:
    - Preenchimento interno: `27`.
    - Bordas habilitadas: Cinza claro com largura de `3` e raio de `10`.
    - Bordas focadas: Cor personalizada com largura de `3` e raio de `10`.

#### Rotas
O aplicativo utiliza o sistema de rotas do Flutter para navegar entre as telas:
- **`'/'`**: Tela inicial (SplashScreen).
- **`'/login'`**: Tela de login (LoginPage).
- **`'/signup'`**: Tela de cadastro (SignUpPage).
- **`'/home'`**: Tela principal (MyHomePage).

---

## Fluxo de Navegação
1. **Tela Inicial**:
   - O aplicativo inicia na rota `'/'`, que exibe a tela de splashscreen.
2. **Tela de Login**:
   - Após a splashscreen, o usuário é redirecionado para a rota `'/login'`.
3. **Tela de Cadastro**:
   - O usuário pode acessar a rota `'/signup'` para criar uma conta.
4. **Tela Principal**:
   - Após o login, o usuário é redirecionado para a rota `'/home'`, que exibe a tela principal do aplicativo.

---

## Personalização do Tema
O tema global é configurado para garantir uma aparência consistente em toda a aplicação:
- **Botões**:
  - Cor de fundo preta.
  - Bordas arredondadas.
  - Tamanho mínimo definido.
- **Campos de Entrada**:
  - Bordas personalizadas para estados habilitado e focado.
  - Preenchimento interno para melhorar a usabilidade.

---

## Dependências
Este arquivo depende das seguintes bibliotecas e arquivos:
- **Firebase**: Para autenticação e integração com serviços em nuvem.
- **Arquivos Locais**: Telas como `SplashScreen`, `LoginPage`, `SignUpPage` e `MyHomePage`.

---

## Observações
- Certifique-se de que o Firebase esteja configurado corretamente no arquivo `firebase_options.dart`.
- As rotas devem ser registradas corretamente para evitar erros de navegação.
- O tema global pode ser ajustado conforme as necessidades do projeto.

# Documentação do Arquivo `splash_screen.dart`

O arquivo `splash_screen.dart` implementa a tela de splashscreen da aplicação Flutter. Ele é exibido ao iniciar o aplicativo e redireciona automaticamente para a tela de login após um período de tempo.

---

## Estrutura do Arquivo

### Importações
O arquivo importa os seguintes pacotes e arquivos:
- **`package:flutter/material.dart`**: Biblioteca principal do Flutter para construção de interfaces.
- **`package:calculadora_geometrica/login_page.dart`**: Tela de login para onde o usuário é redirecionado após a splashscreen.

---

### Classe `SplashScreen`
A classe `SplashScreen` é um widget do tipo `StatefulWidget` que representa a tela de splashscreen.

#### Método `route()`
- **Descrição**: Retorna uma rota para a tela de splashscreen.
- **Uso**: Utilizado para navegar para a splashscreen.

#### Método `initState()`
- **Descrição**: Inicializa o estado do widget e configura um atraso para redirecionar o usuário para a tela de login.
- **Funcionamento**:
  - Utiliza `WidgetsBinding.instance.addPostFrameCallback` para executar o redirecionamento após a renderização inicial.
  - Após 5 segundos (`Duration(seconds: 5)`), o usuário é redirecionado para a tela de login utilizando `Navigator.pushReplacement`.

---

### Classe `_SplashScreenState`
A classe `_SplashScreenState` é responsável por gerenciar o estado da splashscreen.

#### Método `build(BuildContext context)`
- **Descrição**: Constrói a interface da splashscreen.
- **Componentes**:
  - **Texto**:
    - Exibe o título: "Sistema de Figuras Geométricas".
    - Estilo: Negrito e tamanho de fonte 24.
  - **Imagens**:
    - Exibe os logotipos da CPS, Fatec Matão e do Curso de DSM.
    - Cada imagem tem uma altura de 60.
  - **Indicador de Progresso**:
    - Exibe um `CircularProgressIndicator` para indicar que o aplicativo está carregando.
  - **Informações Adicionais**:
    - Exibe os desenvolvedores do projeto e a versão do aplicativo.

---

## Fluxo de Navegação
1. **Tela de Splashscreen**:
   - Exibida ao iniciar o aplicativo.
   - Permanece visível por 5 segundos.
2. **Redirecionamento**:
   - Após o tempo definido, o usuário é redirecionado automaticamente para a tela de login (`LoginPage`).

---

## Componentes Visuais
- **Texto Principal**:
  - "Sistema de Figuras Geométricas".
  - Centralizado e estilizado com fonte em negrito e tamanho 24.
- **Imagens**:
  - Logotipos:
    - CPS: `assets/cps-55-anos.png`.
    - Fatec Matão: `assets/fatec-matao.jpg`.
    - Curso de DSM: `assets/cst-dsm.png`.
  - Cada imagem tem uma altura de 60.
- **Indicador de Progresso**:
  - Um `CircularProgressIndicator` é exibido para indicar o carregamento.
- **Informações Adicionais**:
  - Desenvolvedores: "Gabriel Fecchio Paravani Larocca".
  - Versão: "Versão 1.0".

---

## Dependências
Este arquivo depende das seguintes bibliotecas e arquivos:
- **`login_page.dart`**: Tela de login para onde o usuário é redirecionado após a splashscreen.
- **Imagens**:
  - `assets/cps-55-anos.png`.
  - `assets/fatec-matao.jpg`.
  - `assets/cst-dsm.png`.

---

## Observações
- Certifique-se de que os arquivos de imagem estejam localizados no diretório correto (`assets/`) e configurados no arquivo `pubspec.yaml`.
- O tempo de exibição da splashscreen pode ser ajustado alterando o valor de `Duration(seconds: 5)`.
- A navegação para a tela de login utiliza `Navigator.pushReplacement` para evitar que o usuário volte para a splashscreen.

# Documentação do Arquivo `login_page.dart`

O arquivo `login_page.dart` implementa a tela de login da aplicação Flutter. Ele permite que os usuários façam login utilizando email e senha, além de fornecer um link para a tela de cadastro.

---

## Estrutura do Arquivo

### Importações
O arquivo importa os seguintes pacotes e arquivos:
- **`package:flutter/material.dart`**: Biblioteca principal do Flutter para construção de interfaces.
- **`package:firebase_auth/firebase_auth.dart`**: Biblioteca para autenticação de usuários com Firebase.
- **`package:calculadora_geometrica/home_page.dart`**: Tela principal para onde o usuário é redirecionado após o login.
- **`package:calculadora_geometrica/signup_page.dart`**: Tela de cadastro para novos usuários.

---

### Classe `LoginPage`
A classe `LoginPage` é um widget do tipo `StatefulWidget` que representa a tela de login.

#### Método `route()`
- **Descrição**: Retorna uma rota para a tela de login.
- **Uso**: Utilizado para navegar para a tela de login.

---

### Classe `_LoginPageState`
A classe `_LoginPageState` gerencia o estado da tela de login.

#### Propriedades
- **`emailController`**: Controlador para o campo de entrada de email.
- **`passwordController`**: Controlador para o campo de entrada de senha.
- **`formKey`**: Chave global para validar o formulário.

#### Método `dispose()`
- **Descrição**: Libera os recursos utilizados pelos controladores de texto quando o widget é removido da árvore de widgets.

#### Método `loginUserWithEmailAndPassword()`
- **Descrição**: Realiza o login do usuário utilizando email e senha.
- **Funcionamento**:
  - Utiliza o método `FirebaseAuth.instance.signInWithEmailAndPassword` para autenticar o usuário.
  - Após o login bem-sucedido, redireciona o usuário para a tela principal (`MyHomePage`).
  - Em caso de erro, exibe a mensagem de erro no console.

---

### Método `build(BuildContext context)`
- **Descrição**: Constrói a interface da tela de login.
- **Componentes**:
  - **Título**:
    - Exibe o texto "Acesse sua conta" com estilo em negrito e tamanho de fonte 50.
  - **Campos de Entrada**:
    - **Email**:
      - Controlado por `emailController`.
      - Exibe o placeholder "Email".
    - **Senha**:
      - Controlado por `passwordController`.
      - Exibe o placeholder "Senha".
      - Oculta o texto digitado (`obscureText: true`).
  - **Botão de Login**:
    - Ao ser pressionado, chama o método `loginUserWithEmailAndPassword()`.
    - Exibe o texto "Entrar" com estilo branco e tamanho de fonte 16.
  - **Link para Cadastro**:
    - Exibe o texto "Não possui uma conta? Cadastre-se".
    - Redireciona o usuário para a tela de cadastro (`SignUpPage`) ao ser pressionado.

---

## Fluxo de Navegação
1. **Tela de Login**:
   - O usuário insere o email e a senha nos campos correspondentes.
   - Pressiona o botão "Entrar" para autenticar.
2. **Redirecionamento**:
   - Após o login bem-sucedido, o usuário é redirecionado para a tela principal (`MyHomePage`).
3. **Cadastro**:
   - Caso o usuário não tenha uma conta, pode clicar no link "Cadastre-se" para acessar a tela de cadastro (`SignUpPage`).

---

## Componentes Visuais
- **Título**:
  - Texto: "Acesse sua conta".
  - Estilo: Negrito, tamanho de fonte 50.
- **Campos de Entrada**:
  - **Email**:
    - Placeholder: "Email".
  - **Senha**:
    - Placeholder: "Senha".
    - Texto oculto para maior segurança.
- **Botão de Login**:
  - Texto: "Entrar".
  - Estilo: Branco com tamanho de fonte 16.
- **Link para Cadastro**:
  - Texto: "Não possui uma conta? Cadastre-se".
  - Estilo: Texto com parte em negrito para o link.

---

## Dependências
Este arquivo depende das seguintes bibliotecas e arquivos:
- **Firebase**: Para autenticação de usuários.
- **Arquivos Locais**:
  - `home_page.dart`: Tela principal para onde o usuário é redirecionado após o login.
  - `signup_page.dart`: Tela de cadastro para novos usuários.

---

## Observações
- Certifique-se de que o Firebase esteja configurado corretamente no projeto.
- Valide os campos de entrada antes de chamar o método de login para evitar erros.
- O link para cadastro redireciona para a tela de cadastro (`SignUpPage`).

# Documentação do Arquivo `signup_page.dart`

O arquivo `signup_page.dart` implementa a tela de cadastro da aplicação Flutter. Ele permite que novos usuários criem uma conta utilizando email e senha, além de fornecer um link para retornar à tela de login.

---

## Estrutura do Arquivo

### Importações
O arquivo importa os seguintes pacotes e arquivos:
- **`package:flutter/material.dart`**: Biblioteca principal do Flutter para construção de interfaces.
- **`package:firebase_auth/firebase_auth.dart`**: Biblioteca para autenticação de usuários com Firebase.
- **`package:calculadora_geometrica/login_page.dart`**: Tela de login para onde o usuário pode retornar após o cadastro.

---

### Classe `SignUpPage`
A classe `SignUpPage` é um widget do tipo `StatefulWidget` que representa a tela de cadastro.

#### Método `route()`
- **Descrição**: Retorna uma rota para a tela de cadastro.
- **Uso**: Utilizado para navegar para a tela de cadastro.

---

### Classe `_SignUpPageState`
A classe `_SignUpPageState` gerencia o estado da tela de cadastro.

#### Propriedades
- **`emailController`**: Controlador para o campo de entrada de email.
- **`passwordController`**: Controlador para o campo de entrada de senha.
- **`formKey`**: Chave global para validar o formulário.

#### Método `dispose()`
- **Descrição**: Libera os recursos utilizados pelos controladores de texto quando o widget é removido da árvore de widgets.

#### Método `createUserWithEmailAndPassword()`
- **Descrição**: Cria uma nova conta de usuário utilizando email e senha.
- **Funcionamento**:
  - Utiliza o método `FirebaseAuth.instance.createUserWithEmailAndPassword` para registrar o usuário.
  - Após o cadastro bem-sucedido, redireciona o usuário para a tela de login (`LoginPage`).
  - Em caso de erro, exibe a mensagem de erro no console.

---

### Método `build(BuildContext context)`
- **Descrição**: Constrói a interface da tela de cadastro.
- **Componentes**:
  - **Título**:
    - Exibe o texto "Cadastro" com estilo em negrito e tamanho de fonte 50.
  - **Campos de Entrada**:
    - **Email**:
      - Controlado por `emailController`.
      - Exibe o placeholder "Email".
    - **Senha**:
      - Controlado por `passwordController`.
      - Exibe o placeholder "Senha".
      - Oculta o texto digitado (`obscureText: true`).
  - **Botão de Cadastro**:
    - Ao ser pressionado, chama o método `createUserWithEmailAndPassword()`.
    - Exibe o texto "Cadastre-se" com estilo branco e tamanho de fonte 16.
  - **Link para Login**:
    - Exibe o texto "Já possui uma conta? Acesse-a".
    - Redireciona o usuário para a tela de login (`LoginPage`) ao ser pressionado.

---

## Fluxo de Navegação
1. **Tela de Cadastro**:
   - O usuário insere o email e a senha nos campos correspondentes.
   - Pressiona o botão "Cadastre-se" para criar uma conta.
2. **Redirecionamento**:
   - Após o cadastro bem-sucedido, o usuário é redirecionado para a tela de login (`LoginPage`).
3. **Retorno ao Login**:
   - Caso o usuário já tenha uma conta, pode clicar no link "Acesse-a" para retornar à tela de login.

---

## Componentes Visuais
- **Título**:
  - Texto: "Cadastro".
  - Estilo: Negrito, tamanho de fonte 50.
- **Campos de Entrada**:
  - **Email**:
    - Placeholder: "Email".
  - **Senha**:
    - Placeholder: "Senha".
    - Texto oculto para maior segurança.
- **Botão de Cadastro**:
  - Texto: "Cadastre-se".
  - Estilo: Branco com tamanho de fonte 16.
- **Link para Login**:
  - Texto: "Já possui uma conta? Acesse-a".
  - Estilo: Texto com parte em negrito para o link.

---

## Dependências
Este arquivo depende das seguintes bibliotecas e arquivos:
- **Firebase**: Para autenticação de usuários.
- **Arquivos Locais**:
  - `login_page.dart`: Tela de login para onde o usuário é redirecionado após o cadastro.

---

## Observações
- Certifique-se de que o Firebase esteja configurado corretamente no projeto.
- Valide os campos de entrada antes de chamar o método de cadastro para evitar erros.
- O link para login redireciona para a tela de login (`LoginPage`).

# Documentação do Arquivo `home_page.dart`

O arquivo `home_page.dart` implementa a tela principal da aplicação Flutter. Ele exibe um menu com botões que redirecionam para as telas de entrada de dados de diferentes figuras geométricas, além de permitir que o usuário encerre a sessão.

---

## Estrutura do Arquivo

### Importações
O arquivo importa os seguintes pacotes e arquivos:
- **`package:flutter/material.dart`**: Biblioteca principal do Flutter para construção de interfaces.
- **`package:flutter/cupertino.dart`**: Biblioteca para ícones do Cupertino.
- **`package:firebase_auth/firebase_auth.dart`**: Biblioteca para autenticação de usuários com Firebase.
- **Arquivos Locais**:
  - `circle_form.dart`: Tela de entrada de dados para o círculo.
  - `cube_form.dart`: Tela de entrada de dados para o cubo.
  - `sphere_form.dart`: Tela de entrada de dados para a esfera.
  - `hexagon_form.dart`: Tela de entrada de dados para o hexágono.
  - `rhombus_form.dart`: Tela de entrada de dados para o losango.
  - `parallelogram_form.dart`: Tela de entrada de dados para o paralelogramo.
  - `square_form.dart`: Tela de entrada de dados para o quadrado.
  - `rectangle_form.dart`: Tela de entrada de dados para o retângulo.
  - `trapezoid_form.dart`: Tela de entrada de dados para o trapézio.
  - `triangle_form.dart`: Tela de entrada de dados para o triângulo.

---

### Classe `MyHomePage`
A classe `MyHomePage` é um widget do tipo `StatefulWidget` que representa a tela principal.

#### Método `route()`
- **Descrição**: Retorna uma rota para a tela principal.
- **Uso**: Utilizado para navegar para a tela principal.

---

### Classe `_MyHomePageState`
A classe `_MyHomePageState` gerencia o estado da tela principal.

#### Método `build(BuildContext context)`
- **Descrição**: Constrói a interface da tela principal.
- **Componentes**:
  - **AppBar**:
    - Exibe o título "Calculadora Geométrica" centralizado com fonte de tamanho 32.
    - Inclui um botão de ação com o ícone `CupertinoIcons.add`.
  - **Menu de Botões**:
    - Exibe uma lista de botões que redirecionam para as telas de entrada de dados de diferentes figuras geométricas.
    - Cada botão possui:
      - Texto descritivo (ex.: "Círculo", "Cubo").
      - Estilo personalizado:
        - Cor de fundo: Roxo claro (`Colors.purple.shade200`).
        - Cor do texto: Preto.
        - Tamanho mínimo: Largura total da tela e altura de 50.
    - Botões disponíveis:
      - **Círculo**: Redireciona para `CircleInputPage`.
      - **Cubo**: Redireciona para `CubeInputPage`.
      - **Esfera**: Redireciona para `SphereInputPage`.
      - **Hexágono**: Redireciona para `HexagonInputPage`.
      - **Losango**: Redireciona para `RhombusInputPage`.
      - **Paralelogramo**: Redireciona para `ParallelogramInputPage`.
      - **Quadrado**: Redireciona para `SquareInputPage`.
      - **Retângulo**: Redireciona para `RectangleInputPage`.
      - **Trapézio**: Redireciona para `TrapezoidInputPage`.
      - **Triângulo**: Redireciona para `TriangleInputPage`.
  - **Botão de Encerrar Sessão**:
    - Permite que o usuário encerre a sessão atual.
    - Ao ser pressionado:
      - Chama `FirebaseAuth.instance.signOut()` para realizar o logout.
      - Redireciona o usuário para a tela de login (`'/login'`).

---

## Fluxo de Navegação
1. **Tela Principal**:
   - Exibe o menu com botões para acessar as telas de entrada de dados de diferentes figuras geométricas.
2. **Redirecionamento**:
   - Cada botão redireciona para a tela correspondente à figura geométrica selecionada.
3. **Encerrar Sessão**:
   - O botão "Encerrar sessão" realiza o logout e redireciona o usuário para a tela de login.

---

## Componentes Visuais
- **Título**:
  - Texto: "Calculadora Geométrica".
  - Estilo: Centralizado, fonte de tamanho 32.
- **Botões**:
  - Texto descritivo para cada figura geométrica (ex.: "Círculo", "Cubo").
  - Estilo:
    - Cor de fundo: Roxo claro (`Colors.purple.shade200`).
    - Cor do texto: Preto.
    - Tamanho mínimo: Largura total da tela e altura de 50.
- **Botão de Encerrar Sessão**:
  - Texto: "Encerrar sessão".
  - Realiza o logout e redireciona para a tela de login.

---

## Dependências
Este arquivo depende das seguintes bibliotecas e arquivos:
- **Firebase**: Para autenticação de usuários.
- **Arquivos Locais**:
  - Telas de entrada de dados para figuras geométricas, como `circle_form.dart`, `cube_form.dart`, etc.

---

## Observações
- O botão "Encerrar sessão" utiliza `FirebaseAuth` para realizar o logout.

# Documentação dos Arquivos Relacionados ao Círculo

Os arquivos relacionados ao círculo implementam a funcionalidade de cálculo de propriedades geométricas de um círculo, como área e circunferência. Eles incluem a modelagem do círculo, o controlador responsável pelos cálculos, a interface de entrada de dados e a exibição dos resultados.

---

## Estrutura dos Arquivos

### Importações
Os arquivos utilizam os seguintes pacotes e arquivos:
- **`package:flutter/material.dart`**: Biblioteca principal do Flutter para construção de interfaces.
- **`../../controllers/circle_controller.dart`**: Controlador responsável por gerenciar os cálculos relacionados ao círculo.
- **`../results/circle_result.dart`**: Tela de resultados que exibe os cálculos realizados para o círculo.
- **`../models/circle.dart`**: Modelo que representa o círculo e contém os métodos de cálculo.

---

### Arquivo `circle.dart`
O arquivo `circle.dart` define o modelo do círculo.

#### Classe `Circle`
- **Propriedades**:
  - `radius`: Representa o raio do círculo.
- **Métodos**:
  - `calculateArea()`: Calcula a área do círculo usando a fórmula `π * raio²`.
  - `calculateCircumference()`: Calcula a circunferência do círculo usando a fórmula `2 * π * raio`.

---

### Arquivo `circle_controller.dart`
O arquivo `circle_controller.dart` gerencia os cálculos e a lógica relacionada ao círculo.

#### Classe `CircleController`
- **Propriedades**:
  - `circle`: Instância da classe `Circle`.
  - `radius`: Armazena o valor do raio.
- **Métodos**:
  - `setRadius(double radius)`: Define o raio do círculo e cria uma instância da classe `Circle`.
  - `getArea()`: Retorna a área do círculo chamando o método `calculateArea()` do modelo.
  - `getPerimeter()`: Retorna a circunferência do círculo chamando o método `calculateCircumference()` do modelo.

---

### Arquivo `circle_form.dart`
O arquivo `circle_form.dart` implementa a tela de entrada de dados para o círculo.

#### Classe `CircleInputPage`
- **Propriedades**:
  - `circleController`: Instância de `CircleController` que gerencia os cálculos do círculo.
  - `radiusController`: Controlador para o campo de entrada de texto onde o usuário insere o raio do círculo.
- **Método `build(BuildContext context)`**:
  - **Componentes**:
    - **AppBar**:
      - Exibe o título "Entrada de dados: Círculo".
    - **Campo de Entrada**:
      - Controlado por `radiusController`.
      - Exibe o placeholder "Raio:".
      - Aceita apenas valores numéricos.
    - **Botão de Calcular**:
      - Ao ser pressionado:
        - Valida o valor inserido no campo de entrada.
        - Define o raio no controlador.
        - Redireciona para a tela de resultados (`CircleResult`).
      - Estilo:
        - Cor de fundo: Roxo claro (`Colors.purple.shade200`).
        - Cor do texto: Preto.
        - Tamanho mínimo: Largura total da tela e altura de 50.

---

### Arquivo `circle_result.dart`
O arquivo `circle_result.dart` implementa a tela de exibição dos resultados do círculo.

#### Classe `CircleResult`
- **Propriedades**:
  - `circleController`: Instância de `CircleController` que contém os cálculos do círculo.
- **Método `build(BuildContext context)`**:
  - **Componentes**:
    - **AppBar**:
      - Exibe o título "Resultados: Círculo".
    - **Cartão de Resultados**:
      - Exibe os seguintes valores:
        - Raio.
        - Área.
        - Circunferência.
      - Utiliza o método `_buildResultRow` para formatar os resultados.

---

## Fluxo de Navegação
1. **Tela de Entrada de Dados (`CircleInputPage`)**:
   - O usuário insere o raio do círculo no campo de entrada.
   - Pressiona o botão "Calcular".
2. **Validação**:
   - Se o campo estiver vazio ou o valor não for numérico, exibe um alerta.
   - Caso contrário, define o raio no controlador.
3. **Redirecionamento**:
   - Após a validação bem-sucedida, o usuário é redirecionado para a tela de resultados (`CircleResult`).
4. **Tela de Resultados (`CircleResult`)**:
   - Exibe o raio, a área e a circunferência do círculo.

---

## Componentes Visuais
- **Tela de Entrada de Dados**:
  - Campo de entrada para o raio.
  - Botão "Calcular" com estilo personalizado.
- **Tela de Resultados**:
  - Cartão que exibe os valores calculados:
    - Raio.
    - Área.
    - Circunferência.

---

## Dependências
Os arquivos dependem das seguintes bibliotecas e arquivos:
- **`circle.dart`**: Modelo que representa o círculo.
- **`circle_controller.dart`**: Controlador responsável pelos cálculos do círculo.
- **`circle_result.dart`**: Tela de resultados que exibe os cálculos realizados.

# Documentação dos Arquivos Relacionados ao Cubo

Os arquivos relacionados ao cubo implementam a funcionalidade de cálculo de propriedades geométricas de um cubo, como volume e área da superfície. Eles incluem a modelagem do cubo, o controlador responsável pelos cálculos, a interface de entrada de dados e a exibição dos resultados.

---

## Estrutura dos Arquivos

### Importações
Os arquivos utilizam os seguintes pacotes e arquivos:
- **`package:flutter/material.dart`**: Biblioteca principal do Flutter para construção de interfaces.
- **`../../controllers/cube_controller.dart`**: Controlador responsável por gerenciar os cálculos relacionados ao cubo.
- **`../results/cube_result.dart`**: Tela de resultados que exibe os cálculos realizados para o cubo.
- **`../models/cube.dart`**: Modelo que representa o cubo e contém os métodos de cálculo.

---

### Arquivo `cube.dart`
O arquivo `cube.dart` define o modelo do cubo.

#### Classe `Cube`
- **Propriedades**:
  - `side`: Representa o comprimento do lado do cubo.
- **Métodos**:
  - `calculateVolume()`: Calcula o volume do cubo usando a fórmula `lado³`.
  - `calculateSurfaceArea()`: Calcula a área da superfície do cubo usando a fórmula `6 * lado²`.

---

### Arquivo `cube_controller.dart`
O arquivo `cube_controller.dart` gerencia os cálculos e a lógica relacionada ao cubo.

#### Classe `CubeController`
- **Propriedades**:
  - `cube`: Instância da classe `Cube`.
- **Métodos**:
  - `setSide(double side)`: Define o comprimento do lado do cubo e cria uma instância da classe `Cube`.
  - `getVolume()`: Retorna o volume do cubo chamando o método `calculateVolume()` do modelo.
  - `getSurfaceArea()`: Retorna a área da superfície do cubo chamando o método `calculateSurfaceArea()` do modelo.

---

### Arquivo `cube_form.dart`
O arquivo `cube_form.dart` implementa a tela de entrada de dados para o cubo.

#### Classe `CubeInputPage`
- **Propriedades**:
  - `cubeController`: Instância de `CubeController` que gerencia os cálculos do cubo.
  - `sideController`: Controlador para o campo de entrada de texto onde o usuário insere o comprimento do lado do cubo.
- **Método `build(BuildContext context)`**:
  - **Componentes**:
    - **AppBar**:
      - Exibe o título "Entrada de dados: Cubo".
    - **Campo de Entrada**:
      - Controlado por `sideController`.
      - Exibe o placeholder "Lado:".
      - Aceita apenas valores numéricos.
    - **Botão de Calcular**:
      - Ao ser pressionado:
        - Converte o valor inserido no campo de entrada para um número (`double.parse`).
        - Define o lado no controlador.
        - Redireciona para a tela de resultados (`CubeResult`).
      - Estilo:
        - Cor de fundo: Roxo claro (`Colors.purple.shade200`).
        - Cor do texto: Preto.
        - Tamanho mínimo: Largura total da tela e altura de 50.

---

### Arquivo `cube_result.dart`
O arquivo `cube_result.dart` implementa a tela de exibição dos resultados do cubo.

#### Classe `CubeResult`
- **Propriedades**:
  - `cubeController`: Instância de `CubeController` que contém os cálculos do cubo.
- **Método `build(BuildContext context)`**:
  - **Componentes**:
    - **AppBar**:
      - Exibe o título "Resultado do Cubo".
    - **Cartão de Resultados**:
      - Exibe os seguintes valores:
        - Comprimento do lado.
        - Volume.
        - Área da superfície.
      - Utiliza o método `_buildResultRow` para formatar os resultados.

---

## Fluxo de Navegação
1. **Tela de Entrada de Dados (`CubeInputPage`)**:
   - O usuário insere o comprimento do lado do cubo no campo de entrada.
   - Pressiona o botão "Calcular".
2. **Validação**:
   - O valor inserido é convertido para um número e armazenado no controlador.
3. **Redirecionamento**:
   - Após a validação bem-sucedida, o usuário é redirecionado para a tela de resultados (`CubeResult`).
4. **Tela de Resultados (`CubeResult`)**:
   - Exibe o comprimento do lado, o volume e a área da superfície do cubo.

---

## Componentes Visuais
- **Tela de Entrada de Dados**:
  - Campo de entrada para o comprimento do lado.
  - Botão "Calcular" com estilo personalizado.
- **Tela de Resultados**:
  - Cartão que exibe os valores calculados:
    - Comprimento do lado.
    - Volume.
    - Área da superfície.

---

## Dependências
Os arquivos dependem das seguintes bibliotecas e arquivos:
- **`cube.dart`**: Modelo que representa o cubo.
- **`cube_controller.dart`**: Controlador responsável pelos cálculos do cubo.
- **`cube_result.dart`**: Tela de resultados que exibe os cálculos realizados.

# Documentação dos Arquivos Relacionados ao Hexágono

Os arquivos relacionados ao hexágono implementam a funcionalidade de cálculo de propriedades geométricas de um hexágono, como área e perímetro. Eles incluem a modelagem do hexágono, o controlador responsável pelos cálculos, a interface de entrada de dados e a exibição dos resultados.

---

## Estrutura dos Arquivos

### Importações
Os arquivos utilizam os seguintes pacotes e arquivos:
- **`package:flutter/material.dart`**: Biblioteca principal do Flutter para construção de interfaces.
- **`../../controllers/hexagon_controller.dart`**: Controlador responsável por gerenciar os cálculos relacionados ao hexágono.
- **`../results/hexagon_result.dart`**: Tela de resultados que exibe os cálculos realizados para o hexágono.
- **`../models/hexagon.dart`**: Modelo que representa o hexágono e contém os métodos de cálculo.

---

### Arquivo `hexagon.dart`
O arquivo `hexagon.dart` define o modelo do hexágono.

#### Classe `Hexagon`
- **Propriedades**:
  - `side`: Representa o comprimento do lado do hexágono.
- **Métodos**:
  - `calculateArea()`: Calcula a área do hexágono usando a fórmula `((3 * sqrt(3)) / 2) * lado²`.
  - `calculatePerimeter()`: Calcula o perímetro do hexágono usando a fórmula `6 * lado`.

---

### Arquivo `hexagon_controller.dart`
O arquivo `hexagon_controller.dart` gerencia os cálculos e a lógica relacionada ao hexágono.

#### Classe `HexagonController`
- **Propriedades**:
  - `hexagon`: Instância da classe `Hexagon`.
- **Métodos**:
  - `setSide(double side)`: Define o comprimento do lado do hexágono e cria uma instância da classe `Hexagon`.
  - `getArea()`: Retorna a área do hexágono chamando o método `calculateArea()` do modelo.
  - `getPerimeter()`: Retorna o perímetro do hexágono chamando o método `calculatePerimeter()` do modelo.

---

### Arquivo `hexagon_form.dart`
O arquivo `hexagon_form.dart` implementa a tela de entrada de dados para o hexágono.

#### Classe `HexagonInputPage`
- **Propriedades**:
  - `hexagonController`: Instância de `HexagonController` que gerencia os cálculos do hexágono.
  - `sideController`: Controlador para o campo de entrada de texto onde o usuário insere o comprimento do lado do hexágono.
- **Método `build(BuildContext context)`**:
  - **Componentes**:
    - **AppBar**:
      - Exibe o título "Entrada de dados: Hexágono".
    - **Campo de Entrada**:
      - Controlado por `sideController`.
      - Exibe o placeholder "Lado:".
      - Aceita apenas valores numéricos.
    - **Botão de Calcular**:
      - Ao ser pressionado:
        - Valida o valor inserido no campo de entrada.
        - Define o lado no controlador.
        - Redireciona para a tela de resultados (`HexagonResult`).
      - Estilo:
        - Cor de fundo: Roxo claro (`Colors.purple.shade200`).
        - Cor do texto: Preto.
        - Tamanho mínimo: Largura total da tela e altura de 50.

---

### Arquivo `hexagon_result.dart`
O arquivo `hexagon_result.dart` implementa a tela de exibição dos resultados do hexágono.

#### Classe `HexagonResult`
- **Propriedades**:
  - `hexagonController`: Instância de `HexagonController` que contém os cálculos do hexágono.
- **Método `build(BuildContext context)`**:
  - **Componentes**:
    - **AppBar**:
      - Exibe o título "Resultado: Hexágono".
    - **Cartão de Resultados**:
      - Exibe os seguintes valores:
        - Comprimento do lado.
        - Área.
        - Perímetro.
      - Utiliza o método `_buildResultRow` para formatar os resultados.

---

## Fluxo de Navegação
1. **Tela de Entrada de Dados (`HexagonInputPage`)**:
   - O usuário insere o comprimento do lado do hexágono no campo de entrada.
   - Pressiona o botão "Calcular".
2. **Validação**:
   - O valor inserido é validado e armazenado no controlador.
   - Caso o campo esteja vazio ou o valor não seja numérico, exibe um alerta.
3. **Redirecionamento**:
   - Após a validação bem-sucedida, o usuário é redirecionado para a tela de resultados (`HexagonResult`).
4. **Tela de Resultados (`HexagonResult`)**:
   - Exibe o comprimento do lado, a área e o perímetro do hexágono.

---

## Componentes Visuais
- **Tela de Entrada de Dados**:
  - Campo de entrada para o comprimento do lado.
  - Botão "Calcular" com estilo personalizado.
- **Tela de Resultados**:
  - Cartão que exibe os valores calculados:
    - Comprimento do lado.
    - Área.
    - Perímetro.

---

## Dependências
Os arquivos dependem das seguintes bibliotecas e arquivos:
- **`hexagon.dart`**: Modelo que representa o hexágono.
- **`hexagon_controller.dart`**: Controlador responsável pelos cálculos do hexágono.
- **`hexagon_result.dart`**: Tela de resultados que exibe os cálculos realizados.

# Documentação dos Arquivos Relacionados ao Paralelogramo

Os arquivos relacionados ao paralelogramo implementam a funcionalidade de cálculo de propriedades geométricas de um paralelogramo, como área e perímetro. Eles incluem a modelagem do paralelogramo, o controlador responsável pelos cálculos, a interface de entrada de dados e a exibição dos resultados.

---

## Estrutura dos Arquivos

### Importações
Os arquivos utilizam os seguintes pacotes e arquivos:
- **`package:flutter/material.dart`**: Biblioteca principal do Flutter para construção de interfaces.
- **`../../controllers/parallelogram_controller.dart`**: Controlador responsável por gerenciar os cálculos relacionados ao paralelogramo.
- **`../results/parallelogram_result.dart`**: Tela de resultados que exibe os cálculos realizados para o paralelogramo.
- **`../models/parallelogram.dart`**: Modelo que representa o paralelogramo e contém os métodos de cálculo.

---

### Arquivo `parallelogram.dart`
O arquivo `parallelogram.dart` define o modelo do paralelogramo.

#### Classe `Parallelogram`
- **Propriedades**:
  - `base`: Representa a base do paralelogramo.
  - `height`: Representa a altura do paralelogramo.
- **Métodos**:
  - `calculateArea()`: Calcula a área do paralelogramo usando a fórmula `base * altura`.
  - `calculatePerimeter()`: Calcula o perímetro do paralelogramo usando a fórmula `(base + altura) * 2`.

---

### Arquivo `parallelogram_controller.dart`
O arquivo `parallelogram_controller.dart` gerencia os cálculos e a lógica relacionada ao paralelogramo.

#### Classe `ParallelogramController`
- **Propriedades**:
  - `parallelogram`: Instância da classe `Parallelogram`.
  - `base`: Armazena o valor da base.
  - `height`: Armazena o valor da altura.
- **Métodos**:
  - `setDimensions(double base, double height)`: Define a base e a altura do paralelogramo e cria uma instância da classe `Parallelogram`.
  - `getArea()`: Retorna a área do paralelogramo chamando o método `calculateArea()` do modelo.
  - `getPerimeter()`: Retorna o perímetro do paralelogramo chamando o método `calculatePerimeter()` do modelo.

---

### Arquivo `parallelogram_form.dart`
O arquivo `parallelogram_form.dart` implementa a tela de entrada de dados para o paralelogramo.

#### Classe `ParallelogramInputPage`
- **Propriedades**:
  - `parallelogramController`: Instância de `ParallelogramController` que gerencia os cálculos do paralelogramo.
  - `baseController`: Controlador para o campo de entrada de texto onde o usuário insere a base do paralelogramo.
  - `heightController`: Controlador para o campo de entrada de texto onde o usuário insere a altura do paralelogramo.
- **Método `build(BuildContext context)`**:
  - **Componentes**:
    - **AppBar**:
      - Exibe o título "Entrada de dados: Paralelogramo".
    - **Campos de Entrada**:
      - **Base**:
        - Controlado por `baseController`.
        - Exibe o placeholder "Base:".
        - Aceita apenas valores numéricos.
      - **Altura**:
        - Controlado por `heightController`.
        - Exibe o placeholder "Altura:".
        - Aceita apenas valores numéricos.
    - **Botão de Calcular**:
      - Ao ser pressionado:
        - Valida os valores inseridos nos campos de entrada.
        - Define a base e a altura no controlador.
        - Redireciona para a tela de resultados (`ParallelogramResult`).
      - Estilo:
        - Cor de fundo: Roxo claro (`Colors.purple.shade200`).
        - Cor do texto: Preto.
        - Tamanho mínimo: Largura total da tela e altura de 50.

---

### Arquivo `parallelogram_result.dart`
O arquivo `parallelogram_result.dart` implementa a tela de exibição dos resultados do paralelogramo.

#### Classe `ParallelogramResult`
- **Propriedades**:
  - `parallelogramController`: Instância de `ParallelogramController` que contém os cálculos do paralelogramo.
- **Método `build(BuildContext context)`**:
  - **Componentes**:
    - **AppBar**:
      - Exibe o título "Resultado: Paralelogramo".
    - **Cartão de Resultados**:
      - Exibe os seguintes valores:
        - Base.
        - Altura.
        - Área.
        - Perímetro.
      - Utiliza o método `_buildResultRow` para formatar os resultados.

---

## Fluxo de Navegação
1. **Tela de Entrada de Dados (`ParallelogramInputPage`)**:
   - O usuário insere a base e a altura do paralelogramo nos campos de entrada.
   - Pressiona o botão "Calcular".
2. **Validação**:
   - Os valores inseridos são validados e armazenados no controlador.
   - Caso algum campo esteja vazio ou o valor não seja numérico, exibe um alerta.
3. **Redirecionamento**:
   - Após a validação bem-sucedida, o usuário é redirecionado para a tela de resultados (`ParallelogramResult`).
4. **Tela de Resultados (`ParallelogramResult`)**:
   - Exibe a base, a altura, a área e o perímetro do paralelogramo.

---

## Componentes Visuais
- **Tela de Entrada de Dados**:
  - Campos de entrada para a base e a altura.
  - Botão "Calcular" com estilo personalizado.
- **Tela de Resultados**:
  - Cartão que exibe os valores calculados:
    - Base.
    - Altura.
    - Área.
    - Perímetro.

---

## Dependências
Os arquivos dependem das seguintes bibliotecas e arquivos:
- **`parallelogram.dart`**: Modelo que representa o paralelogramo.
- **`parallelogram_controller.dart`**: Controlador responsável pelos cálculos do paralelogramo.
- **`parallelogram_result.dart`**: Tela de resultados que exibe os cálculos realizados.

# Documentação dos Arquivos Relacionados ao Retângulo

Os arquivos relacionados ao retângulo implementam a funcionalidade de cálculo de propriedades geométricas de um retângulo, como área e perímetro. Eles incluem a modelagem do retângulo, o controlador responsável pelos cálculos, a interface de entrada de dados e a exibição dos resultados.

---

## Estrutura dos Arquivos

### Importações
Os arquivos utilizam os seguintes pacotes e arquivos:
- **`package:flutter/material.dart`**: Biblioteca principal do Flutter para construção de interfaces.
- **`../../controllers/rectangle_controller.dart`**: Controlador responsável por gerenciar os cálculos relacionados ao retângulo.
- **`../results/rectangle_result.dart`**: Tela de resultados que exibe os cálculos realizados para o retângulo.
- **`../models/rectangle.dart`**: Modelo que representa o retângulo e contém os métodos de cálculo.

---

### Arquivo `rectangle.dart`
O arquivo `rectangle.dart` define o modelo do retângulo.

#### Classe `Rectangle`
- **Propriedades**:
  - `width`: Representa a largura do retângulo.
  - `height`: Representa a altura do retângulo.
- **Métodos**:
  - `calculateArea()`: Calcula a área do retângulo usando a fórmula `largura * altura`.
  - `calculatePerimeter()`: Calcula o perímetro do retângulo usando a fórmula `2 * (largura + altura)`.

---

### Arquivo `rectangle_controller.dart`
O arquivo `rectangle_controller.dart` gerencia os cálculos e a lógica relacionada ao retângulo.

#### Classe `RectangleController`
- **Propriedades**:
  - `rectangle`: Instância da classe `Rectangle`.
  - `width`: Armazena o valor da largura.
  - `height`: Armazena o valor da altura.
- **Métodos**:
  - `setDimensions(double width, double height)`: Define a largura e a altura do retângulo e cria uma instância da classe `Rectangle`.
  - `getArea()`: Retorna a área do retângulo chamando o método `calculateArea()` do modelo.
  - `getPerimeter()`: Retorna o perímetro do retângulo chamando o método `calculatePerimeter()` do modelo.

---

### Arquivo `rectangle_form.dart`
O arquivo `rectangle_form.dart` implementa a tela de entrada de dados para o retângulo.

#### Classe `RectangleInputPage`
- **Propriedades**:
  - `rectangleController`: Instância de `RectangleController` que gerencia os cálculos do retângulo.
  - `heightController`: Controlador para o campo de entrada de texto onde o usuário insere a altura do retângulo.
  - `widthController`: Controlador para o campo de entrada de texto onde o usuário insere a largura do retângulo.
- **Método `build(BuildContext context)`**:
  - **Componentes**:
    - **AppBar**:
      - Exibe o título "Entrada de dados: Retângulo".
    - **Campos de Entrada**:
      - **Altura**:
        - Controlado por `heightController`.
        - Exibe o placeholder "Altura:".
        - Aceita apenas valores numéricos.
      - **Largura**:
        - Controlado por `widthController`.
        - Exibe o placeholder "Base:".
        - Aceita apenas valores numéricos.
    - **Botão de Calcular**:
      - Ao ser pressionado:
        - Valida os valores inseridos nos campos de entrada.
        - Define a largura e a altura no controlador.
        - Redireciona para a tela de resultados (`RectangleResult`).
      - Estilo:
        - Cor de fundo: Roxo claro (`Colors.purple.shade200`).
        - Cor do texto: Preto.
        - Tamanho mínimo: Largura total da tela e altura de 50.

---

### Arquivo `rectangle_result.dart`
O arquivo `rectangle_result.dart` implementa a tela de exibição dos resultados do retângulo.

#### Classe `RectangleResult`
- **Propriedades**:
  - `rectangleController`: Instância de `RectangleController` que contém os cálculos do retângulo.
- **Método `build(BuildContext context)`**:
  - **Componentes**:
    - **AppBar**:
      - Exibe o título "Resultado: Retângulo".
      - Cor de fundo: Azul (`Colors.blueAccent`).
    - **Cartão de Resultados**:
      - Exibe os seguintes valores:
        - Altura.
        - Largura.
        - Área.
        - Perímetro.
      - Utiliza o método `_buildResultRow` para formatar os resultados.

---

## Fluxo de Navegação
1. **Tela de Entrada de Dados (`RectangleInputPage`)**:
   - O usuário insere a altura e a largura do retângulo nos campos de entrada.
   - Pressiona o botão "Calcular".
2. **Validação**:
   - Os valores inseridos são validados e armazenados no controlador.
   - Caso algum campo esteja vazio ou o valor não seja numérico, exibe um alerta.
3. **Redirecionamento**:
   - Após a validação bem-sucedida, o usuário é redirecionado para a tela de resultados (`RectangleResult`).
4. **Tela de Resultados (`RectangleResult`)**:
   - Exibe a altura, a largura, a área e o perímetro do retângulo.

---

## Componentes Visuais
- **Tela de Entrada de Dados**:
  - Campos de entrada para a altura e a largura.
  - Botão "Calcular" com estilo personalizado.
- **Tela de Resultados**:
  - Cartão que exibe os valores calculados:
    - Altura.
    - Largura.
    - Área.
    - Perímetro.

---

## Dependências
Os arquivos dependem das seguintes bibliotecas e arquivos:
- **`rectangle.dart`**: Modelo que representa o retângulo.
- **`rectangle_controller.dart`**: Controlador responsável pelos cálculos do retângulo.
- **`rectangle_result.dart`**: Tela de resultados que exibe os cálculos realizados.

# Documentação dos Arquivos Relacionados ao Losango

Os arquivos relacionados ao losango implementam a funcionalidade de cálculo de propriedades geométricas de um losango, como área e perímetro. Eles incluem a modelagem do losango, o controlador responsável pelos cálculos, a interface de entrada de dados e a exibição dos resultados.

---

## Estrutura dos Arquivos

### Importações
Os arquivos utilizam os seguintes pacotes e arquivos:
- **`package:flutter/material.dart`**: Biblioteca principal do Flutter para construção de interfaces.
- **`../../controllers/rhombus_controller.dart`**: Controlador responsável por gerenciar os cálculos relacionados ao losango.
- **`../results/rhombus_result.dart`**: Tela de resultados que exibe os cálculos realizados para o losango.
- **`../models/rhombus.dart`**: Modelo que representa o losango e contém os métodos de cálculo.

---

### Arquivo `rhombus.dart`
O arquivo `rhombus.dart` define o modelo do losango.

#### Classe `Rhombus`
- **Propriedades**:
  - `sideLength`: Representa o comprimento do lado do losango.
  - `height`: Representa a altura do losango (opcional).
- **Métodos**:
  - `calculateArea()`: Calcula a área do losango usando a fórmula `lado * altura`. Lança uma exceção se a altura não for fornecida.
  - `calculatePerimeter()`: Calcula o perímetro do losango usando a fórmula `4 * lado`.

---

### Arquivo `rhombus_controller.dart`
O arquivo `rhombus_controller.dart` gerencia os cálculos e a lógica relacionada ao losango.

#### Classe `RhombusController`
- **Propriedades**:
  - `rhombus`: Instância da classe `Rhombus`.
  - `side`: Armazena o valor do lado.
  - `height`: Armazena o valor da altura (opcional).
- **Métodos**:
  - `setDimensions(double side, [double? height])`: Define o lado e a altura do losango e cria uma instância da classe `Rhombus`.
  - `getArea()`: Retorna a área do losango chamando o método `calculateArea()` do modelo.
  - `getPerimeter()`: Retorna o perímetro do losango chamando o método `calculatePerimeter()` do modelo.

---

### Arquivo `rhombus_form.dart`
O arquivo `rhombus_form.dart` implementa a tela de entrada de dados para o losango.

#### Classe `RhombusInputPage`
- **Propriedades**:
  - `rhombusController`: Instância de `RhombusController` que gerencia os cálculos do losango.
  - `sideController`: Controlador para o campo de entrada de texto onde o usuário insere o lado do losango.
  - `heightController`: Controlador para o campo de entrada de texto onde o usuário insere a altura do losango (opcional).
- **Método `build(BuildContext context)`**:
  - **Componentes**:
    - **AppBar**:
      - Exibe o título "Entrada de dados: Losango".
    - **Campos de Entrada**:
      - **Lado**:
        - Controlado por `sideController`.
        - Exibe o placeholder "Lado:".
        - Aceita apenas valores numéricos.
      - **Altura**:
        - Controlado por `heightController`.
        - Exibe o placeholder "Altura:".
        - Aceita apenas valores numéricos.
    - **Botão de Calcular**:
      - Ao ser pressionado:
        - Valida os valores inseridos nos campos de entrada.
        - Define o lado e a altura no controlador.
        - Redireciona para a tela de resultados (`RhombusResult`).
      - Estilo:
        - Cor de fundo: Roxo claro (`Colors.purple.shade200`).
        - Cor do texto: Preto.
        - Tamanho mínimo: Largura total da tela e altura de 50.

---

### Arquivo `rhombus_result.dart`
O arquivo `rhombus_result.dart` implementa a tela de exibição dos resultados do losango.

#### Classe `RhombusResult`
- **Propriedades**:
  - `rhombusController`: Instância de `RhombusController` que contém os cálculos do losango.
- **Método `build(BuildContext context)`**:
  - **Componentes**:
    - **AppBar**:
      - Exibe o título "Resultado: Losango".
      - Cor de fundo: Azul (`Colors.blueAccent`).
    - **Cartão de Resultados**:
      - Exibe os seguintes valores:
        - Lado.
        - Altura (ou "Não informado" se não fornecida).
        - Área.
        - Perímetro.
      - Utiliza o método `_buildResultRow` para formatar os resultados.

---

## Fluxo de Navegação
1. **Tela de Entrada de Dados (`RhombusInputPage`)**:
   - O usuário insere o lado e, opcionalmente, a altura do losango nos campos de entrada.
   - Pressiona o botão "Calcular".
2. **Validação**:
   - Os valores inseridos são validados e armazenados no controlador.
   - Caso o campo do lado esteja vazio ou o valor não seja numérico, exibe um alerta.
3. **Redirecionamento**:
   - Após a validação bem-sucedida, o usuário é redirecionado para a tela de resultados (`RhombusResult`).
4. **Tela de Resultados (`RhombusResult`)**:
   - Exibe o lado, a altura (se fornecida), a área e o perímetro do losango.

---

## Componentes Visuais
- **Tela de Entrada de Dados**:
  - Campos de entrada para o lado e a altura.
  - Botão "Calcular" com estilo personalizado.
- **Tela de Resultados**:
  - Cartão que exibe os valores calculados:
    - Lado.
    - Altura.
    - Área.
    - Perímetro.

---

## Dependências
Os arquivos dependem das seguintes bibliotecas e arquivos:
- **`rhombus.dart`**: Modelo que representa o losango.
- **`rhombus_controller.dart`**: Controlador responsável pelos cálculos do losango.
- **`rhombus_result.dart`**: Tela de resultados que exibe os cálculos realizados.

# Documentação dos Arquivos Relacionados à Esfera

Os arquivos relacionados à esfera implementam a funcionalidade de cálculo de propriedades geométricas de uma esfera, como volume e área da superfície. Eles incluem a modelagem da esfera, o controlador responsável pelos cálculos, a interface de entrada de dados e a exibição dos resultados.

---

## Estrutura dos Arquivos

### Importações
Os arquivos utilizam os seguintes pacotes e arquivos:
- **`package:flutter/material.dart`**: Biblioteca principal do Flutter para construção de interfaces.
- **`../../controllers/sphere_controller.dart`**: Controlador responsável por gerenciar os cálculos relacionados à esfera.
- **`../results/sphere_result.dart`**: Tela de resultados que exibe os cálculos realizados para a esfera.
- **`../models/sphere.dart`**: Modelo que representa a esfera e contém os métodos de cálculo.

---

### Arquivo `sphere.dart`
O arquivo `sphere.dart` define o modelo da esfera.

#### Classe `Sphere`
- **Propriedades**:
  - `radius`: Representa o raio da esfera.
- **Métodos**:
  - `calculateVolume()`: Calcula o volume da esfera usando a fórmula `(4/3) * π * raio³`.
  - `calculateSurfaceArea()`: Calcula a área da superfície da esfera usando a fórmula `4 * π * raio²`.

---

### Arquivo `sphere_controller.dart`
O arquivo `sphere_controller.dart` gerencia os cálculos e a lógica relacionada à esfera.

#### Classe `SphereController`
- **Propriedades**:
  - `sphere`: Instância da classe `Sphere`.
  - `radius`: Armazena o valor do raio.
- **Métodos**:
  - `setRadius(double radius)`: Define o raio da esfera e cria uma instância da classe `Sphere`.
  - `getVolume()`: Retorna o volume da esfera chamando o método `calculateVolume()` do modelo.
  - `getSurfaceArea()`: Retorna a área da superfície da esfera chamando o método `calculateSurfaceArea()` do modelo.

---

### Arquivo `sphere_form.dart`
O arquivo `sphere_form.dart` implementa a tela de entrada de dados para a esfera.

#### Classe `SphereInputPage`
- **Propriedades**:
  - `sphereController`: Instância de `SphereController` que gerencia os cálculos da esfera.
  - `radiusController`: Controlador para o campo de entrada de texto onde o usuário insere o raio da esfera.
- **Método `build(BuildContext context)`**:
  - **Componentes**:
    - **AppBar**:
      - Exibe o título "Entrada de dados: Esfera".
    - **Campo de Entrada**:
      - Controlado por `radiusController`.
      - Exibe o placeholder "Raio:".
      - Aceita apenas valores numéricos.
    - **Botão de Calcular**:
      - Ao ser pressionado:
        - Valida o valor inserido no campo de entrada.
        - Define o raio no controlador.
        - Redireciona para a tela de resultados (`SphereResult`).
      - Estilo:
        - Cor de fundo: Roxo claro (`Colors.purple.shade200`).
        - Cor do texto: Preto.
        - Tamanho mínimo: Largura total da tela e altura de 50.
      - Exibe alertas caso o campo esteja vazio ou o valor inserido não seja numérico.

---

### Arquivo `sphere_result.dart`
O arquivo `sphere_result.dart` implementa a tela de exibição dos resultados da esfera.

#### Classe `SphereResult`
- **Propriedades**:
  - `sphereController`: Instância de `SphereController` que contém os cálculos da esfera.
- **Método `build(BuildContext context)`**:
  - **Componentes**:
    - **AppBar**:
      - Exibe o título "Resultado: Esfera".
      - Cor de fundo: Azul (`Colors.blueAccent`).
    - **Cartão de Resultados**:
      - Exibe os seguintes valores:
        - Raio.
        - Volume.
        - Área da superfície.
      - Utiliza o método `_buildResultRow` para formatar os resultados.
    - **Ícone de Sucesso**:
      - Exibe um ícone verde indicando que os cálculos foram realizados com sucesso.

---

## Fluxo de Navegação
1. **Tela de Entrada de Dados (`SphereInputPage`)**:
   - O usuário insere o raio da esfera no campo de entrada.
   - Pressiona o botão "Calcular".
2. **Validação**:
   - O valor inserido é validado e armazenado no controlador.
   - Caso o campo esteja vazio ou o valor não seja numérico, exibe um alerta.
3. **Redirecionamento**:
   - Após a validação bem-sucedida, o usuário é redirecionado para a tela de resultados (`SphereResult`).
4. **Tela de Resultados (`SphereResult`)**:
   - Exibe o raio, o volume e a área da superfície da esfera.

---

## Componentes Visuais
- **Tela de Entrada de Dados**:
  - Campo de entrada para o raio.
  - Botão "Calcular" com estilo personalizado.
- **Tela de Resultados**:
  - Cartão que exibe os valores calculados:
    - Raio.
    - Volume.
    - Área da superfície.
  - Ícone de sucesso indicando que os cálculos foram realizados.

---

## Dependências
Os arquivos dependem das seguintes bibliotecas e arquivos:
- **`sphere.dart`**: Modelo que representa a esfera.
- **`sphere_controller.dart`**: Controlador responsável pelos cálculos da esfera.
- **`sphere_result.dart`**: Tela de resultados que exibe os cálculos realizados.

# Documentação dos Arquivos Relacionados ao Quadrado

Os arquivos relacionados ao quadrado implementam a funcionalidade de cálculo de propriedades geométricas de um quadrado, como área e perímetro. Eles incluem a modelagem do quadrado, o controlador responsável pelos cálculos, a interface de entrada de dados e a exibição dos resultados.

---

## Estrutura dos Arquivos

### Importações
Os arquivos utilizam os seguintes pacotes e arquivos:
- **`package:flutter/material.dart`**: Biblioteca principal do Flutter para construção de interfaces.
- **`../../controllers/square_controller.dart`**: Controlador responsável por gerenciar os cálculos relacionados ao quadrado.
- **`../results/square_result.dart`**: Tela de resultados que exibe os cálculos realizados para o quadrado.
- **`../models/square.dart`**: Modelo que representa o quadrado e contém os métodos de cálculo.

---

### Arquivo `square.dart`
O arquivo `square.dart` define o modelo do quadrado.

#### Classe `Square`
- **Propriedades**:
  - `sideLength`: Representa o comprimento do lado do quadrado.
- **Métodos**:
  - `calculateArea()`: Calcula a área do quadrado usando a fórmula `lado²`.
  - `calculatePerimeter()`: Calcula o perímetro do quadrado usando a fórmula `4 * lado`.

---

### Arquivo `square_controller.dart`
O arquivo `square_controller.dart` gerencia os cálculos e a lógica relacionada ao quadrado.

#### Classe `SquareController`
- **Propriedades**:
  - `square`: Instância da classe `Square`.
  - `side`: Armazena o valor do lado.
- **Métodos**:
  - `setSide(double side)`: Define o lado do quadrado e cria uma instância da classe `Square`.
  - `getArea()`: Retorna a área do quadrado chamando o método `calculateArea()` do modelo.
  - `getPerimeter()`: Retorna o perímetro do quadrado chamando o método `calculatePerimeter()` do modelo.

---

### Arquivo `square_form.dart`
O arquivo `square_form.dart` implementa a tela de entrada de dados para o quadrado.

#### Classe `SquareInputPage`
- **Propriedades**:
  - `squareController`: Instância de `SquareController` que gerencia os cálculos do quadrado.
  - `sideController`: Controlador para o campo de entrada de texto onde o usuário insere o lado do quadrado.
- **Método `build(BuildContext context)`**:
  - **Componentes**:
    - **AppBar**:
      - Exibe o título "Entrada de dados: Quadrado".
    - **Campo de Entrada**:
      - Controlado por `sideController`.
      - Exibe o placeholder "Lado:".
      - Aceita apenas valores numéricos.
    - **Botão de Calcular**:
      - Ao ser pressionado:
        - Valida o valor inserido no campo de entrada.
        - Define o lado no controlador.
        - Redireciona para a tela de resultados (`SquareResult`).
      - Estilo:
        - Cor de fundo: Roxo claro (`Colors.purple.shade200`).
        - Cor do texto: Preto.
        - Tamanho mínimo: Largura total da tela e altura de 50.
      - Exibe alertas caso o campo esteja vazio ou o valor inserido não seja numérico.

---

### Arquivo `square_result.dart`
O arquivo `square_result.dart` implementa a tela de exibição dos resultados do quadrado.

#### Classe `SquareResult`
- **Propriedades**:
  - `squareController`: Instância de `SquareController` que contém os cálculos do quadrado.
- **Método `build(BuildContext context)`**:
  - **Componentes**:
    - **AppBar**:
      - Exibe o título "Resultado: Quadrado".
      - Cor de fundo: Azul (`Colors.blueAccent`).
    - **Cartão de Resultados**:
      - Exibe os seguintes valores:
        - Lado.
        - Área.
        - Perímetro.
      - Utiliza o método `_buildResultRow` para formatar os resultados.
    - **Ícone de Sucesso**:
      - Exibe um ícone verde indicando que os cálculos foram realizados com sucesso.

---

## Fluxo de Navegação
1. **Tela de Entrada de Dados (`SquareInputPage`)**:
   - O usuário insere o lado do quadrado no campo de entrada.
   - Pressiona o botão "Calcular".
2. **Validação**:
   - O valor inserido é validado e armazenado no controlador.
   - Caso o campo esteja vazio ou o valor não seja numérico, exibe um alerta.
3. **Redirecionamento**:
   - Após a validação bem-sucedida, o usuário é redirecionado para a tela de resultados (`SquareResult`).
4. **Tela de Resultados (`SquareResult`)**:
   - Exibe o lado, a área e o perímetro do quadrado.

---

## Componentes Visuais
- **Tela de Entrada de Dados**:
  - Campo de entrada para o lado.
  - Botão "Calcular" com estilo personalizado.
- **Tela de Resultados**:
  - Cartão que exibe os valores calculados:
    - Lado.
    - Área.
    - Perímetro.
  - Ícone de sucesso indicando que os cálculos foram realizados.

---

## Dependências
Os arquivos dependem das seguintes bibliotecas e arquivos:
- **`square.dart`**: Modelo que representa o quadrado.
- **`square_controller.dart`**: Controlador responsável pelos cálculos do quadrado.
- **`square_result.dart`**: Tela de resultados que exibe os cálculos realizados.

# Documentação dos Arquivos Relacionados ao Trapézio

Os arquivos relacionados ao trapézio implementam a funcionalidade de cálculo de propriedades geométricas de um trapézio, como área e perímetro. Eles incluem a modelagem do trapézio, o controlador responsável pelos cálculos, a interface de entrada de dados e a exibição dos resultados.

---

## Estrutura dos Arquivos

### Importações
Os arquivos utilizam os seguintes pacotes e arquivos:
- **`package:flutter/material.dart`**: Biblioteca principal do Flutter para construção de interfaces.
- **`../../controllers/trapezoid_controller.dart`**: Controlador responsável por gerenciar os cálculos relacionados ao trapézio.
- **`../results/trapezoid_result.dart`**: Tela de resultados que exibe os cálculos realizados para o trapézio.
- **`../models/trapezoid.dart`**: Modelo que representa o trapézio e contém os métodos de cálculo.

---

### Arquivo `trapezoid.dart`
O arquivo `trapezoid.dart` define o modelo do trapézio.

#### Classe `Trapezoid`
- **Propriedades**:
  - `largerBase`: Representa a base maior do trapézio.
  - `smallerBase`: Representa a base menor do trapézio.
  - `height`: Representa a altura do trapézio.
  - `side1`: Representa o lado 1 do trapézio.
  - `side2`: Representa o lado 2 do trapézio.
- **Métodos**:
  - `calculateArea()`: Calcula a área do trapézio usando a fórmula `((base maior + base menor) * altura) / 2`.
  - `calculatePerimeter()`: Calcula o perímetro do trapézio somando todas as suas arestas.

---

### Arquivo `trapezoid_controller.dart`
O arquivo `trapezoid_controller.dart` gerencia os cálculos e a lógica relacionada ao trapézio.

#### Classe `TrapezoidController`
- **Propriedades**:
  - `trapezoid`: Instância da classe `Trapezoid`.
  - `largerBase`, `smallerBase`, `height`, `side1`, `side2`: Armazenam os valores das dimensões do trapézio.
- **Métodos**:
  - `setDimensions(double largerBase, double smallerBase, double height, double side1, double side2)`: Define as dimensões do trapézio e cria uma instância da classe `Trapezoid`.
  - `getArea()`: Retorna a área do trapézio chamando o método `calculateArea()` do modelo.
  - `getPerimeter()`: Retorna o perímetro do trapézio chamando o método `calculatePerimeter()` do modelo.

---

### Arquivo `trapezoid_form.dart`
O arquivo `trapezoid_form.dart` implementa a tela de entrada de dados para o trapézio.

#### Classe `TrapezoidInputPage`
- **Propriedades**:
  - `trapezoidController`: Instância de `TrapezoidController` que gerencia os cálculos do trapézio.
  - Controladores de texto para as dimensões:
    - `largerBaseController`: Controla o valor da base maior.
    - `smallerBaseController`: Controla o valor da base menor.
    - `heightController`: Controla o valor da altura.
    - `side1Controller`: Controla o valor do lado 1.
    - `side2Controller`: Controla o valor do lado 2.
- **Método `build(BuildContext context)`**:
  - **Componentes**:
    - **AppBar**:
      - Exibe o título "Entrada de dados: Trapézio".
    - **Campos de Entrada**:
      - Campos para inserir as dimensões do trapézio (base maior, base menor, altura, lado 1 e lado 2).
      - Cada campo aceita apenas valores numéricos.
    - **Botão de Calcular**:
      - Ao ser pressionado:
        - Valida os valores inseridos nos campos de entrada.
        - Define as dimensões no controlador.
        - Redireciona para a tela de resultados (`TrapezoidResult`).
      - Estilo:
        - Cor de fundo: Roxo claro (`Colors.purple.shade200`).
        - Cor do texto: Preto.
        - Tamanho mínimo: Largura total da tela e altura de 50.
      - Exibe alertas caso algum campo esteja vazio ou o valor inserido não seja numérico.

---

### Arquivo `trapezoid_result.dart`
O arquivo `trapezoid_result.dart` implementa a tela de exibição dos resultados do trapézio.

#### Classe `TrapezoidResult`
- **Propriedades**:
  - `trapezoidController`: Instância de `TrapezoidController` que contém os cálculos do trapézio.
- **Método `build(BuildContext context)`**:
  - **Componentes**:
    - **AppBar**:
      - Exibe o título "Resultado: Trapézio".
      - Cor de fundo: Azul (`Colors.blueAccent`).
    - **Cartão de Resultados**:
      - Exibe os seguintes valores:
        - Base maior.
        - Base menor.
        - Altura.
        - Área.
        - Perímetro.
      - Utiliza o método `_buildResultRow` para formatar os resultados.
    - **Ícone de Sucesso**:
      - Exibe um ícone verde indicando que os cálculos foram realizados com sucesso.

---

## Fluxo de Navegação
1. **Tela de Entrada de Dados (`TrapezoidInputPage`)**:
   - O usuário insere as dimensões do trapézio nos campos de entrada.
   - Pressiona o botão "Calcular".
2. **Validação**:
   - Os valores inseridos são validados e armazenados no controlador.
   - Caso algum campo esteja vazio ou o valor não seja numérico, exibe um alerta.
3. **Redirecionamento**:
   - Após a validação bem-sucedida, o usuário é redirecionado para a tela de resultados (`TrapezoidResult`).
4. **Tela de Resultados (`TrapezoidResult`)**:
   - Exibe as dimensões, a área e o perímetro do trapézio.

---

## Componentes Visuais
- **Tela de Entrada de Dados**:
  - Campos de entrada para as dimensões do trapézio.
  - Botão "Calcular" com estilo personalizado.
- **Tela de Resultados**:
  - Cartão que exibe os valores calculados:
    - Base maior.
    - Base menor.
    - Altura.
    - Área.
    - Perímetro.
  - Ícone de sucesso indicando que os cálculos foram realizados.

---

## Dependências
Os arquivos dependem das seguintes bibliotecas e arquivos:
- **`trapezoid.dart`**: Modelo que representa o trapézio.
- **`trapezoid_controller.dart`**: Controlador responsável pelos cálculos do trapézio.
- **`trapezoid_result.dart`**: Tela de resultados que exibe os cálculos realizados.

# Documentação dos Arquivos Relacionados ao Triângulo

Os arquivos relacionados ao triângulo implementam a funcionalidade de cálculo de propriedades geométricas de um triângulo, como área e perímetro. Eles incluem a modelagem do triângulo, o controlador responsável pelos cálculos, a interface de entrada de dados e a exibição dos resultados.

---

## Estrutura dos Arquivos

### Importações
Os arquivos utilizam os seguintes pacotes e arquivos:
- **`package:flutter/material.dart`**: Biblioteca principal do Flutter para construção de interfaces.
- **`../../controllers/triangle_controller.dart`**: Controlador responsável por gerenciar os cálculos relacionados ao triângulo.
- **`../results/triangle_result.dart`**: Tela de resultados que exibe os cálculos realizados para o triângulo.
- **`../models/triangle.dart`**: Modelo que representa o triângulo e contém os métodos de cálculo.

---

### Arquivo `triangle.dart`
O arquivo `triangle.dart` define o modelo do triângulo.

#### Classe `Triangle`
- **Propriedades**:
  - `baseLength`: Representa o comprimento da base do triângulo.
  - `height`: Representa a altura do triângulo.
- **Métodos**:
  - `calculateArea()`: Calcula a área do triângulo usando a fórmula `(base * altura) / 2`.
  - `calculatePerimeter()`: Calcula o perímetro do triângulo somando a base, a altura e a hipotenusa calculada com o teorema de Pitágoras.

---

### Arquivo `triangle_controller.dart`
O arquivo `triangle_controller.dart` gerencia os cálculos e a lógica relacionada ao triângulo.

#### Classe `TriangleController`
- **Propriedades**:
  - `triangle`: Instância da classe `Triangle`.
  - `baseLength`: Armazena o valor da base.
  - `height`: Armazena o valor da altura.
- **Métodos**:
  - `setDimensions(double baseLength, double height)`: Define a base e a altura do triângulo e cria uma instância da classe `Triangle`.
  - `getArea()`: Retorna a área do triângulo chamando o método `calculateArea()` do modelo.
  - `getPerimeter()`: Retorna o perímetro do triângulo chamando o método `calculatePerimeter()` do modelo.

---

### Arquivo `triangle_form.dart`
O arquivo `triangle_form.dart` implementa a tela de entrada de dados para o triângulo.

#### Classe `TriangleInputPage`
- **Propriedades**:
  - `triangleController`: Instância de `TriangleController` que gerencia os cálculos do triângulo.
  - `baseController`: Controlador para o campo de entrada de texto onde o usuário insere a base do triângulo.
  - `heightController`: Controlador para o campo de entrada de texto onde o usuário insere a altura do triângulo.
- **Método `build(BuildContext context)`**:
  - **Componentes**:
    - **AppBar**:
      - Exibe o título "Entrada de dados: Triângulo".
    - **Campos de Entrada**:
      - **Base**:
        - Controlado por `baseController`.
        - Exibe o placeholder "Base:".
        - Aceita apenas valores numéricos.
      - **Altura**:
        - Controlado por `heightController`.
        - Exibe o placeholder "Altura:".
        - Aceita apenas valores numéricos.
    - **Botão de Calcular**:
      - Ao ser pressionado:
        - Valida os valores inseridos nos campos de entrada.
        - Define a base e a altura no controlador.
        - Redireciona para a tela de resultados (`TriangleResult`).
      - Estilo:
        - Cor de fundo: Roxo claro (`Colors.purple.shade200`).
        - Cor do texto: Preto.
        - Tamanho mínimo: Largura total da tela e altura de 50.
      - Exibe alertas caso algum campo esteja vazio ou o valor inserido não seja numérico.

---

### Arquivo `triangle_result.dart`
O arquivo `triangle_result.dart` implementa a tela de exibição dos resultados do triângulo.

#### Classe `TriangleResult`
- **Propriedades**:
  - `triangleController`: Instância de `TriangleController` que contém os cálculos do triângulo.
- **Método `build(BuildContext context)`**:
  - **Componentes**:
    - **AppBar**:
      - Exibe o título "Resultado do Triângulo".
      - Cor de fundo: Azul (`Colors.blueAccent`).
    - **Cartão de Resultados**:
      - Exibe os seguintes valores:
        - Base.
        - Altura.
        - Área.
        - Perímetro.
      - Utiliza o método `_buildResultRow` para formatar os resultados.
    - **Ícone de Sucesso**:
      - Exibe um ícone verde indicando que os cálculos foram realizados com sucesso.

---

## Fluxo de Navegação
1. **Tela de Entrada de Dados (`TriangleInputPage`)**:
   - O usuário insere a base e a altura do triângulo nos campos de entrada.
   - Pressiona o botão "Calcular".
2. **Validação**:
   - Os valores inseridos são validados e armazenados no controlador.
   - Caso algum campo esteja vazio ou o valor não seja numérico, exibe um alerta.
3. **Redirecionamento**:
   - Após a validação bem-sucedida, o usuário é redirecionado para a tela de resultados (`TriangleResult`).
4. **Tela de Resultados (`TriangleResult`)**:
   - Exibe a base, a altura, a área e o perímetro do triângulo.

---

## Componentes Visuais
- **Tela de Entrada de Dados**:
  - Campos de entrada para a base e a altura.
  - Botão "Calcular" com estilo personalizado.
- **Tela de Resultados**:
  - Cartão que exibe os valores calculados:
    - Base.
    - Altura.
    - Área.
    - Perímetro.
  - Ícone de sucesso indicando que os cálculos foram realizados.

---

## Dependências
Os arquivos dependem das seguintes bibliotecas e arquivos:
- **`triangle.dart`**: Modelo que representa o triângulo.
- **`triangle_controller.dart`**: Controlador responsável pelos cálculos do triângulo.
- **`triangle_result.dart`**: Tela de resultados que exibe os cálculos realizados.
