def exercicio_16():
    print("--- Exercício 16 ---")
    vetores = []
    
    # Lendo 4 vetores
    for i in range(4):
        tamanho = int(input(f"Digite o tamanho do vetor {i+1}: "))
        vetor = []
        for j in range(tamanho):
            elemento = int(input(f"Digite o elemento {j+1} do vetor {i+1}: "))
            vetor.append(elemento)
        vetores.append(vetor)
    
    # a) Quinto vetor com valores ordenados
    todos_elementos = []
    for v in vetores:
        todos_elementos.extend(v)
    quinto_vetor = sorted(todos_elementos)
    print(f"\na) Quinto vetor (ordenado): {quinto_vetor}")
    
    # b) Vetor com elementos que tenham interseção com os 4 vetores
    # Usando sets para encontrar a interseção
    if vetores:
        intersecao = set(vetores[0])
        for i in range(1, len(vetores)):
            intersecao = intersecao.intersection(set(vetores[i]))
        
        vetor_intersecao = sorted(list(intersecao))
        print(f"b) Vetor de interseção: {vetor_intersecao}")


