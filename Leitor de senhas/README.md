# 🔐 Validador de Senhas em Python

Projeto desenvolvido em Python para validar senhas de acordo com critérios de segurança previamente definidos.

## 📋 Funcionalidades

O programa verifica se uma senha atende aos seguintes requisitos:

- Possui entre **10 e 40 caracteres**;
- Contém pelo menos **uma letra minúscula**;
- Contém pelo menos **uma letra maiúscula**;
- Contém pelo menos **um número**;
- Contém pelo menos **um caractere especial** dentre:
  ```
  ! @ # $ % ^ & * ( ) - +
  ```
- **Não contém** aspas simples (`'`) ou aspas duplas (`"`).

Caso algum requisito não seja atendido, o programa informa ao usuário qual regra foi violada.

## 🚀 Tecnologias utilizadas

- Python 3
- Biblioteca padrão `re` (Expressões Regulares)

## ▶️ Como executar

1. Certifique-se de possuir o Python 3 instalado.
2. Clone o repositório:

```bash
git clone https://github.com/seu-usuario/seu-repositorio.git
```

3. Entre na pasta do projeto:

```bash
cd seu-repositorio
```

4. Execute o programa:

```bash
python TesteSenhas.py
```

## 💻 Exemplo de uso

Entrada:

```text
Digite sua senha: MinhaSenha@123
```

Saída:

```text
Senha válida.
```

Exemplo de senha inválida:

```text
Digite sua senha: senha123
```

Saída:

```text
A senha deve conter pelo menos 10 caracteres.
Senha inválida.
```

## 📂 Estrutura do projeto

```
.
└── TesteSenhas.py
```

## 📖 Conceitos aplicados

- Funções em Python
- Estruturas condicionais (`if`)
- Expressões regulares (`re.search`)
- Validação de entrada
- Boas práticas na criação de senhas

## 👨‍💻 Samuel Luiz Lidio

Desenvolvido como projeto de estudo em Python para praticar lógica de programação, funções e validação de dados utilizando expressões regulares.