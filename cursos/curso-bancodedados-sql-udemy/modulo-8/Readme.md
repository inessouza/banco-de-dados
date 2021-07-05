### História da Modelagem (Aula 32)

<p>Decada de 70, eua - crise do software foi a crise que atingiu nao somente a área de tecnologia, mas também todas as empresas que utilizavam de sistemas tecnologicos para controlar seus negocios. Naquela época, programar era um processo artesanal, bastava olhar o código que você saberia quem o escreveu, to poucos eram os programadores e tão arcaico eram os metodos de programação. Em um primeiro momento, os profissionais de TI viram a necessidade de se programar e iniciaram sua caminhada, construindo sistemas que atendiam num primeiro momento, mas depois traziam informações erradas, provocando a falência de diversas empresas. Lembre-se: informações erradas podem levar uma empresa a falência, e foi isso que aconteceu. Isso ocorria pois os profissionais sabiam programar mas entendiam apenas do negócio das empresas das quais faziam parte. Sem ter o know how dos demais negócios, os programadores programavam voltados para os procedimentos, e esse foi um erro mortal.

Peter Chen vendo todo esse cenario afirmou: não podemos criar bancos de dados voltados para procedimentos empresariais, pois os procedimentos sofrem interferências externas e podem ser alterados. A unica coisa que nao sofre alteração são os dados. Por exemplo, armazenamos no banco a venda de janeiro, fevereiro e março, o total das vendas e o imposto pago ao governo, fazemos isso durante muito tempo, de uma hora pra outra o governo muda a alíquota do imposto, como fará sentido os pagamentos armazenados anteriormente? Aqui nota-se que armazenamos dados e armazenamos informações correspondentes aos procedimentos externos. Devemos apenas armazenar os dados, pois eles são suficientes para gerar a informação.

Foram criadas as formas normais, que são diretrizes para aplicar em modelagem de ambientes oltp ou ambientes transacionais de bancos de dados. Hoje temos mais do que três formas normais, mas ao normalizarmos um banco até a sua terceira forma é o suficiente para ter um trabalho limpo e livre de erros. 
Normalização é o processo de modelar o banco de dados projetando a forma como as informações serão armazenadas a fim de eliminar, ou pelo menos minimizar, a redundância no banco. Tal procedimento é feito a partir da identificação de uma anomalia em uma relação, decompondo-as em relações melhor estruturadas.</p>


### Primeira Forma Normal (Aula 35)

**Regras:** <br/>

1ª - Todo campo vetorizado se tornará outra tabela. <br/>
Exemplo: <br/>
[Amarelo, Azul, Laranja, Verde] -> Vetor de Cores <br/>
[KA, Fiesta, Uno, Civic] -> Vetor de carros <br/>

2ª Todo campo multivalorado se tornará outra tabela quando o campo for divisivel. <br/>
Exemplo: <br/>
[Rua Dois, nº 5 - Bairro Sete - São Paulo - SP] -> Campo multivalorado, com mais de um elemento que não são da mesma família. <br/>

3ª Toda tabela necessita de pelo menos um campo que identifique todo o registro como sendo único, isso é o que chamamos de primary key ou chave primária. <br/>
Exemplo: <br/>
[2568] -> ID - chave artificial, criada para identificação dos dados registrados em banco
