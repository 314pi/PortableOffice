
======================================================================
ReadMe do OpenOffice 4.1.5
======================================================================


Para as últimas atualizações a este ficheiro Leia-me, consultar http://www.openoffice.org/welcome/readme.html

Este ficheiro contém informações importantes sobre este programa. Leia estas informações com muito cuidado antes de começar a trabalhar.

A Comunidade Apache OpenOffice, responsável pelo desenvolvimento deste produto, gostaria de convidá-lo a participar como membro da comunidade. Como novo utilizador, pode consultar o site do OpenOffice com informações úteis em http://openoffice.apache.org

Leia também as secções abaixo sobre como participar no projeto Apache OpenOffice.

O OpenOffice é realmente gratuito para qualquer utilizador? 
----------------------------------------------------------------------

A utilização do OpenOffice é gratuita para todos. Pode instalar esta cópia do OpenOffice em quantos computadores quiser e utilizá-la para os fins que quiser (incluindo a utilização comercial, estatal, para administração pública e educação). Para obter mais detalhes, consulte a licença incluída com o OpenOffice ou http://www.openoffice.org/license.html

Por que motivo o OpenOffice é gratuito para qualquer utilizador?
----------------------------------------------------------------------

Pode utilizar esta cópia do OpenOffice hoje gratuitamente, graças aos contribuidores individuais e patrocinadores empresariais que criaram, desenvolveram, testaram, traduziram, documentaram, apoiaram, comercializaram e ajudaram de muitas outras formas a fazer do OpenOffice aquilo que este representa hoje em dia - um programa de produtividade de código aberto, líder em todo o mundo.

Se aprecia os seus esforços, e quer garantir a continuidade do projeto Apache OpenOffice, por favor considere contribuir - veja http://openoffice.apache.org/get-involved.html para detalhes sobre como contribuir com o seu tempo e http://www.apache.org/foundation/contributing.html para detalhes sobre donativos. Todos temos uma pequena contribuição a fazer.

----------------------------------------------------------------------
Notas sobre a instalação
----------------------------------------------------------------------

OpenOffice requere uma versão mais recente do JAVA para uma funcionalidade completa; o JAVA pode ser transferido aqui http://java.com.

Requisitos do Sistema
----------------------------------------------------------------------

* Microsoft Windows XP, Vista, Windows 7 ou Windows 8
* Processador Pentium III ou superior
* 256 MB RAM (recomendado 512 MB RAM)
* Até 1,5 GB de espaço disponível no disco rígido
* Resolução de 1024x768 (resolução superior recomendada), com pelo menos 256 cores

Tenha em atenção que necessita possuir direitos de administrador para o processo de instalação.

O registo do OpenOffice como aplicação predefinida para formatos do Microsoft Office pode ser forçado ou suprimido utilizando os seguintes parâmetros da linha de comandos com o programa de instalação:

* /msoreg=1 vai forçar o registo do OpenOffice como aplicação predefinida para o formato Microsoft Office.
* /msoreg=0 vai eliminar o registo do OpenOffice como aplicação predefinida para os formatos Microsoft Office.

Se realizar uma instalação de administrador com a configuração /a, será necessário certificar-se que o ficheiro msvcr100.dll está instalado no sistema. Este ficheiro é necessário para que o OpenOffice inicie após uma instalação de administrador. Pode obter o ficheiro em http://www.microsoft.com/en-us/download/details.aspx?id=5555

Tenha em atenção que necessita possuir direitos de administrador para o processo de instalação.

Certifique-se que dispõe de memória livre suficiente na pasta temporária do sistema e que foram concedidos direitos de acesso de leitura, escrita e de execução. Feche todos os outros programas antes de iniciar a instalação.

----------------------------------------------------------------------
Problemas durante o arranque do programa
----------------------------------------------------------------------

Normalmente, as dificuldades em iniciar o OpenOffice (por exemplo, bloqueio das aplicações) bem como problemas na apresentação dos ecrãs são originados pelo controlador da placa gráfica. Se estes problemas ocorrerem, atualize o controlador da placa gráfica ou tente utilizar o controlador fornecido com o sistema operativo. Dificuldades na apresentação de objetos 3D são normalmente resolvidas através da desativação da opção "Utilizar OpenGL" em 'Ferramentas - Opções - OpenOffice - Ver - Vista 3D'.

----------------------------------------------------------------------
Painéis tácteis de portáteis ALPS/Synaptics no Windows
----------------------------------------------------------------------

Devido a um problema do controlador do Windows, não é possível percorrer documentos do OpenOffice deslizando com o dedo no painel táctil do ALPS/Synaptics.

Para ativar o deslocamento no painel táctil, adicione as seguintes linhas ao ficheiro de configuração "C:\Program Files\Synaptics\SynTP\SynTPEnh.ini" e reinicie o computador:

[OpenOffice]

FC = "SALFRAME"

SF = 0x10000000

SF |= 0x00004000

A localização do ficheiro de configuração pode variar em várias versões diferentes do Windows.

----------------------------------------------------------------------
Teclas de atalho
----------------------------------------------------------------------

Só pode utilizar teclas de atalho (combinações de teclas) não utilizadas pelo sistema operativo no OpenOffice. Se uma combinação de teclas do OpenOffice não funciona como descrito na Ajuda do OpenOffice, verifique se o atalho já a está a ser utilizado pelo sistema operativo. Pode alterar as teclas atribuídas pelo seu sistema operativo para retificar estes conflitos. Em alternativa, pode alterar quase qualquer atribuição de tecla no OpenOffice. Para mais informações sobre este tópico, consulte a Ajuda do OpenOffice ou a documentação de Ajuda do seu sistema operativo.

----------------------------------------------------------------------
Problemas ao enviar documentos como correio eletrónico a partir do OpenOffice
----------------------------------------------------------------------

Quando enviar um documento através de 'Ficheiro - Enviar - Documento como correio eletrónico' ou 'Documento como PDF anexo' podem ocorrer problemas (falha ou bloqueio do programa). Isto deve-se ao sistema de ficheiros do Windows "Mapi" (Messaging Application programming Interface) que causa problemas em algumas versões de ficheiros. Infelizmente, não foi possível restringir o problema a um número de versão específico. Para mais informações, consulte http://www.microsoft.com para pesquisar a Base de conhecimento da Microsoft por "mapi.dll".

----------------------------------------------------------------------
Notas importantes de acessibilidade
----------------------------------------------------------------------

Para mais informações sobre as funcionalidades de acessibilidade do OpenOffice, consulte http://www.openoffice.org/access/

----------------------------------------------------------------------
Assistência técnica
----------------------------------------------------------------------

A página principal de apoio http://support.openoffice.org/ oferece várias possibilidades de ajuda para o OpenOffice. A sua dúvida pode já ter sido esclarecida - verifique o Fórum da Comunidade em http://forum.openoffice.org ou procure nos arquivos da lista 'users@openoffice.apache.org' em http://openoffice.apache.org/mailing-lists.html. Em alternativa, pode enviar as suas dúvidas para users@openoffice.apache.org. Consulte esta página: http://openoffice.apache.org/mailing-lists.html.

Consulte também as FAQ's em http://wiki.openoffice.org/wiki/Documentation/FAQ.

----------------------------------------------------------------------
Reportar erros e problemas
----------------------------------------------------------------------

A página Web do OpenOffice integra o BugZilla, o nosso mecanismo de comunicação, seguimento e resolução de erros e problemas. Encorajamos todos os utilizadores a comunicarem questões eventualmente ocorridas na plataforma em utilização. A comunicação ativa de problemas constitui um dos contributos mais importantes da comunidade de utilizadores para o desenvolvimento e aperfeiçoamento contínuo do conjunto de programas.

----------------------------------------------------------------------
Demonstração de interesse
----------------------------------------------------------------------

A comunidade do OpenOffice beneficiará bastante com a sua participação ativa no desenvolvimento deste importante projeto de código aberto.

Na qualidade de utilizador constitui já¡ uma parte importante do processo de desenvolvimento deste conjunto de programas e gostaríamos de encorajá-lo a ter um papel ainda mais ativo como contribuidor desta comunidade a longo prazo. Participe e consulte a página de utilizadores em: http://openoffice.apache.org/get-involved.html

Iniciar
----------------------------------------------------------------------

A melhor maneira de começar a contribuir é subscrever uma das listas de correio eletrónico, bisbilhotar um pouco e, gradualmente, familiarizar-se com os muitos tópicos existentes desde que o código-fonte do OpenOffice foi publicado em Outubro de 2000. Quando se sentir confortável, envie uma mensagem a apresentar-se e comece a ajudar.

Subscrever
----------------------------------------------------------------------

Eis algumas das listas de correio do OpenOffice que pode subscrever em http://openoffice.apache.org/mailing-lists.html

* Novidades: announce@openoffice.apache.org *recomendado para todos os utilizadores* (tráfego ligeiro)
* Fórum principal dos utilizadores: users@openoffice.apache.org *um modo fácil de participar nas discussões* (tráfego intenso)
* Lista geral de desenvolvimento e discussão do projeto: dev@openoffice.apache.org (tráfego elevado)

Aderir ao projeto
----------------------------------------------------------------------

Poderá contribuir de forma significativa para este importante projeto de código aberto, mesmo se tiver uma conceção de programas limitada ou pouca experiência em programação. Sim, você mesmo!

Em http://openoffice.apache.org/get-involved.html encontrará projetos de localização, QA e até projetos de programação mais complexos. Se não for um programador, pode ajudar com a documentação ou o projeto de marketing. O marketing do OpenOffice aplica técnicas comerciais agressivas e tradicionais para publicitar programas de código aberto, através das barreiras culturais e linguísticas, pelo que o utilizador pode ajudar bastando só passar a palavra e informar um amigo acerca deste programa de produtividade.

Pode ajudar juntando-se à lista de Publicidade marketing@openoffice.apache.org onde poderá fornecer contactos para comunicação com a imprensa, os média, Estado, consultores, escolas, grupos de utilizadores Linux, etc, no seu País e comunidade local.

Esperamos que o novo OpenOffice 4.1.5 corresponda às suas expetativas e que se junte a nós online.

A Comunidade Apache OpenOffice