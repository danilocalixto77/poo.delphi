# Programação Orientada a Objetos com Delphi
Fonte: Youtube | Canal: [Landerson Gomes](https://www.youtube.com/@LandersonGomes6){:target="_blank"}

## Programação Orientada a Objetos com Delphi - Aula 01
  - Visão Geral e Pilares da POO.
    1. Abtração: Processo de analisar caracteristicas e ações do mundo real trazer para um objeto em determinado contexto o que é relevante e essencial para resulução do problema.
    2. Herança: É a capacidade de dar aos herdeiros os comportamentos e caracteristicas dos seus ancestrais.
    3. Polimorfismo: É a capacidade que os herdeiros tem de modificar os seus comportamentos.
    4. Encapsulamento: É a capacidade de proteger recursos de um determinado objeto.
  - Classe X Objeto
    - Classe é o molde é a definição de como será. E o objeto é a materialização do que foi definido na classe ao ser instanciado.
  - Estrutura base de uma Unit.
    ```
    Interface
      //Declaração de classes, métodos e atributos
      //uses
      //Variáveis e/ou constantes 
    Implementation
      //Onde as declarações são implementadas
    Inicialization
      //Código a ser executado quando a unit for carregada
    Finalization
      //Código a ser executado quando a unit for descarregada

    ```
## Programação Orientada a Objetos com Delphi - Aula 02

## Programação Orientada a Objetos com Delphi - Aula 03

## Programação Orientada a Objetos com Delphi - Aula 04
### Emcapsulamento: Através dos escopos de visibilidade de uma classe:
- Private: visível a toda a classe e classes amigas. Classes amigas são todas declaradas dentro das mesma unit.
- Protected: visível para a classes, classes amigas e para os herdeiros de subclasses.
- Public: acessível a todo que fizerem referência a classe.
- Published: é visível e publicada no object inspector.

## Programação Orientada a Objetos com Delphi - Aula 05
- Field (Campos) das classes

## Programação Orientada a Objetos com Delphi - Aula 06
- Property

## Programação Orientada a Objetos com Delphi - Aula 07
### Métodos
- São responsáveis pelos comportamentos das classes. 
- Podendo ser: Get, Set, constructor, destructor e etc...

## Programação Orientada a Objetos com Delphi - Aula 08
### Polimorfismo
- Como utilizar dentro da mesma classe, usando a diretiva overload, uma sobrecarga dos métodos.

## Programação Orientada a Objetos com Delphi - Aula 09
### Polimorfismo
- Utilizando a sobrescrita de método usando as diretivas override, virtual e abstract. Na qual:
- Virtual: declaração feita na classe mãe.
- Override: faz a re-escrita do método na classe filha podendo ter o seu comportamento modificado pelo que foi definido na classe mãe.
- Abstract: esse método tem a sua definição na classe ancestral, e pode ser implementado somente nas classes descendentes.

## Programação Orientada a Objetos com Delphi - Aula 10
### Strict
- Diretiretiva restritiva strict, está ligada diretamente aos escopos de visibilidade da classe.
- Strict Private : é estritamente privada, acessível somente a propria classe.
- Strict Protected : é estritamente protegida, acessível a propria classe e as classes herdeiras.
- Nessas diretivas, ambas negam acesso a classes amigas(dentro da mesma unit).

## Programação Orientada a Objetos com Delphi - Aula 11
### Herança
- O Delphi não permite múltipas heranças, é sempre de uma para uma classe.
- Diretiva inherited: quando a diretiva inherited é declarada ela executa e busca os valores da classe ancestral e concatena com o valores da classe descedente. E vice-versa conforme ordem de declaração da diretiva.

## Programação Orientada a Objetos com Delphi - Aula 12
### Interfaces   
- Criação da interface. Por converção do Delphi, interfaces começam com a letra I.
- Sintaxe é a seguinte:
---
	type
	  INomeInterface = Interface
	  [GUID]
	  metodos(function)
	  End;
---
- Toda interface necessita gerar um GUID - como identificador único da interface.
- Para gerar o GUID:
- Posicione o cursor logo abaixo da declaração da interface;
- Tecle : Ctrl + Shift + G

- A classe por padrão se não for herdar de uma classe mãe, não necessita ser declarada. Pois o Delphi implicitamente identifica que está herdando TObject.
- E no Delphi não é permitido herdar mais de uma classe, todos os demais são implementações.
- Desta forma para declarar a interface requer que siga alguns padrões. Informar a classe que está herdando e em seguida a interface.
- type TClasse = class(TObject, IInterface)
- Contudo declarando da forma acima, ainda há métodos que não pertencem a classe mãe que caso a declaração seja feita (TObject, IInterface) irá solicitar sua implementação.
- Os métodos são os seguinte:  
  - QueryInterface
  - _AddRef
  - _Release
- Para solucionar este problema o ideal é declar nos parâmetros da classe da seguinte forma:
  - type TClasse = class(TInterfacedObject)
- Desta forma esta classe TInterfacedObject se encarrega de implemntar os métodos que estavam faltando que pertencem a IInterface e faz ao mesmo a declaração de TObject como classe mãe.

## Programação Orientada a Objetos com Delphi - Aula 13
### Método de Classe - Class Method (fuction/procedure)
- Para definir um método de classe basta inserir antes da procedure ou function a palavra reservada 'class'.
- Umas das caracteristicas do método de classe é permitir o uso deste método, sem a necessidade de instanciar a classe para fazer uso do método.
