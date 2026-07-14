import re

# Função para validar senha de acordo com as regras estabelecidas

def teste_senha(senha):

    # Verificação de tamanho da senha.
    if len(senha) < 10:
        print("A senha deve conter pelo menos 10 caracteres.")
        return False
    
    if len(senha) > 40:
        print("A senha deve conter no máximo 40 caracteres.")
        return False
    
    #Verificação de caracteres maiusculos ou minusculos.
    if not re.search(r'[a-z]', senha):
        print("A senha deve conter pelo menos uma letra minúscula.")
        return False
        
    if not re.search(r'[A-Z]', senha):
        print("A senha deve conter pelo menos uma letra maiúscula.")
        return False
   
    #Verificação dos números.
    if not re.search(r'[0-9]', senha):
        print("A senha deve conter pelo menos um dígito.")
        return False
    
    #Verificação dos caracteres especiais.
    if not re.search(r'[!@#$%^&*()-+]', senha):  
        print("A senha deve conter pelo menos um caractere especial.")
        return False
    
    if re.search(r'["\']', senha):
        print("A senha não deve conter aspas simples ou duplas.")
        return False
    
    return True

# Testes e programa principal

senha = input("Digite sua senha: ")

resultado = teste_senha(senha)

if resultado:
    print("Senha válida.")
else:
    print("Senha inválida. ")



