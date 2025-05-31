Sistema de Gerenciamento de Estacionamento

Sistema Java com interface gráfica (Swing) para gerenciamento de estacionamento, incluindo cadastro de clientes e veículos, registro de entradas/saídas, relatórios de movimentações e exclusão de registros.

Requisitos

Java: JDK 8 ou superior

Banco de Dados: MySQL (testado com XAMPP)

Dependências:

MySQL Connector/J (JDBC driver)

JavaMail API (para notificações por e-mail)

IDE: NetBeans (recomendado) ou outra compatível

Sistema Operacional: Windows, Linux ou macOS
Configurar o Banco de Dados:

Instale o XAMPP e inicie o MySQL.

Acesse o phpMyAdmin (http://localhost/phpmyadmin).

Crie o banco de dados e execute o script SQL No my sql Workbench.
onfigurar o Projeto:

Clone ou copie os arquivos do projeto para o NetBeans.

Adicione as bibliotecas:

MySQL Connector/J: Baixe em https://dev.mysql.com/downloads/connector/j/ e adicione em Properties > Libraries > Add JAR/Folder.

Executar:

Execute MainFrame.java como ponto de entrada.

Uso





Tela Principal:





Acesse as funcionalidades: Cadastro de Clientes, Cadastro de Veículos, Entrada/Saída, Relatórios.



Cadastro de Clientes:





Insira nome, CPF e e-mail.

Selecione um cliente no menu suspenso para excluir (se não tiver veículos associados).

Cadastro de Veículos:

Insira placa, modelo e selecione um cliente.

Selecione um veículo no menu suspenso para excluir (se não tiver movimentações).

Entrada/Saída:

Selecione um veículo e uma vaga para registrar entrada.

Selecione um veículo para registrar saída e calcular o valor.

Relatórios:

Filtre movimentações por data e visualize o total arrecadado.

Estrutura do Projeto

src/controller: Contém os DAOs (ClienteDAO, VeiculoDAO, etc.) para acesso ao banco.
src/model: Modelos de dados (Cliente, Veiculo, etc.).
src/view: Interfaces gráficas (MainFrame, CadastroClienteFrame, etc.).
src/exception: Exceção personalizada (EstacionamentoException).

Notas

Exclusão: Clientes e veículos só podem ser excluídos se não tiverem dependências (veículos para clientes, movimentações para veículos).

Notificações: E-mails são enviados quando o estacionamento atinge 90% da capacidade.

Testes: Insira dados de teste no banco para validar as funcionalidades.

Suporte
Para dúvidas, verifique o Manual do Usuário ou contate o desenvolvedor.
