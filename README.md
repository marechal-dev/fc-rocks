# Desafio Imagem Docker da Imersão FullStack/FullCycle

## Do que se trata?

O desafio consiste em criar uma imagem Docker que exiba no terminal o texto "Full Cycle Rocks!!". A parte mais interessante é que a imagem deve pesar menos de 2MB!

## Como solucionei?

De forma simples, utilizei a funcionalidade de _multi-stage build_ do Docker para ter 2 etapas na imagem:

1. `build`: Onde utilizando a imagem `golang:1.20-alpine`, o processo de compilação da aplicação é realizado;
2. Etapa onde o binário gerado na etapa 1 é copiado e executado em uma imagem completamente limpa (chamada de `scratch`).

## Informações importantes

- [Link do Docker Hub]()
