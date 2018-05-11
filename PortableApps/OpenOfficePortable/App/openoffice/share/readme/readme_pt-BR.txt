
======================================================================
Arquivo LeiaMe do OpenOffice 4.1.5
======================================================================


Para as últimas atualizações deste arquivo LEIAME, veja http://www.openoffice.org/welcome/readme.html

Este arquivo contém informações importantes sobre este programa. Leia com atenção as informações antes de começar a trabalhar.

A Comunidade Apache OpenOffice, responsável pelo desenvolvimento deste produto, deseja convidá-lo para participar como um membro da comunidade. Como novo usuário, você pode navegar no site do OpenOffice com informações úteis para o usuário em http://openoffice.apache.org

Leia também as seções abaixo sobre como participar no projeto Apache OpenOffice.

O OpenOffice é realmente livre para qualquer usuário? 
----------------------------------------------------------------------

O OpenOffice é livre para ser utilizado por qualquer pessoa. Você pode instalar esta cópia do OpenOffice em todos os computadores que desejar, e utilizá-la para qualquer propósito (incluindo a utilização por empresas, governos, administração pública e utilização educacional). Para maiores detalhes,  veja o texto da licença que acompanha o OpenOffice ou em http://www.openoffice.org/license.html

Por que o OpenOffice é livre para ser utilizado por qualquer usuário?
----------------------------------------------------------------------

Você pode utilizar hoje esta cópia do OpenOffice sem qualquer ônus graças aos colaboradores individuais e patrocinadores empresariais que projetaram, desenvolveram, testaram, traduziram, documentaram, proveram suporte a usuários, fizeram trabalhos de marketing e ajudaram de muitas maneiras a fazer o OpenOffice o que ele é hoje - o líder mundial de software de escritório em código aberto.

Se você aprecia nossos esforços, e gostaria de garantir que o Apache OpenOffice continue no futuro, por favor, considere fazer uma contribuição para o projeto - veja em http://openoffice.apache.org/get-involved.html para detalhes sobre tempo de contribuição e http://www.apache.org/foundation/contributing.html para detalhes sobre as doações. Todo mundo tem uma contribuição a dar.

----------------------------------------------------------------------
Notas sobre a instalação
----------------------------------------------------------------------

OpenOffice requer uma versão recente de JAVA para funcionalidades completas; JAVA pode ser baixado de http://java.com.

Requisitos do sistema
----------------------------------------------------------------------

* Microsoft Windows XP, Vista, Windows 7 ou Windows 8
* Processador Pentium III ou posterior
* 256 MB RAM (512 MB RAM recomendado)
* Até 1,5 GB de espaço em disco disponível
* Resolução de 1024 x 768 (resoluções maiores recomendadas), com pelo menos 256 cores

Observe que o processo de instalação requer direitos de Administrador.

O registro do OpenOffice como aplicação padrão para os formatos Microsoft Office pode ser forçado ou eliminado ao utilizar as seguintes chaves na linha de comando do instalador:

* /msoreg=1 forçará o registro do OpenOffice como aplicação padrão para os formatos Microsoft Office.
* /msoreg=0 eliminará o registro do OpenOffice como aplicação padrão para os formatos Microsoft Office.

Se executar uma instalação administrativa com setup /a, você precisa garantir que o arquivo msvc100.dll esteja instalado em seu sistema. Este arquivo é necessário para que o OpenOffice inicie após uma instalação administrativa. Você pode obter este arquivo em http://www.microsoft.com/en-us/download/details.aspx?id=5555

Observe que o processo de instalação requer direitos de Administrador.

Certifique que você possui memória livre suficiente no seu diretório temporário de seu sistema e que as permissões de leitura, gravação e execução lhe foram outorgadas. Feche todos os outros programas antes de iniciar a instalação.

----------------------------------------------------------------------
Problemas durante a inicialização do programa
----------------------------------------------------------------------

Dificuldades de iniciar o OpenOffice (i.e. travamento da aplicação) bem como problemas com o monitor são causados pelo driver da placa de vídeo. Se estes problemas ocorrerem, por favor, atualize o driver da sua placa de vídeo ou tente usar o driver gráfico disponível no seu sistema operacional. Dificuldades de exibir objetos 3D podem ser resolvido pela desativação da opção "Usar OpenGL" em "Ferramentas - Opções - OpenOffice - Exibir - exibir 3D'.

----------------------------------------------------------------------
Touchpads de notebooks ALPS/Synaptics no Windows
----------------------------------------------------------------------

Por conta de um problema de driver no Windows, você não pode rolar documentos no OpenOffice ao deslizar seu dedo em um touchpad ALPS/Synaptics.

Para ativar a rolagem pelo touchpad, adicione as seguintes linhas ao arquivo de configuração do touchpad em "C:\Program Files\Synaptics\SynTP\SynTPEnh.ini" e reinicie seu computador:

[OpenOffice]

FC = "SALFRAME"

SF = 0x10000000

SF |= 0x00004000

O local do arquivo de configuração pode variar dependendo da versão do Windows.

----------------------------------------------------------------------
Teclas de atalho
----------------------------------------------------------------------

Somente os atalhos (combinações de teclas) que não são utilizados pelo sistema operacional podem ser utilizados no OpenOffice. Se uma combinação de teclas no OpenOffice não funcionar como descrito na Ajuda do OpenOffice, verifique se o atalho já é utilizado pelo sistema operacional. Para retificar esses conflitos, você pode trocar quase todas as atribuições de teclas do OpenOffice. Para maiores informações sobre este tópico, consulte a Ajuda do OpenOffice ou a documentação de ajuda de seu sistema operacional.

----------------------------------------------------------------------
Problemas ao enviar documentos como e-mails a partir do OpenOffice
----------------------------------------------------------------------

Ao enviar um documento via 'Arquivo - Enviar - Documento como e-mail' ou 'Documento como PDF anexado' poderão ocorrer problemas (o programa falha ou congela). Isto é devido ao arquivo do sistema Windows "Mapi" (Messaging Application Programming Interface) que causa problemas em algumas versões do arquivo. Infelizmente o problema não pode ser cercado em uma versão determinada. Para maiores informações visite http://www.microsoft.com para pesquisar o Microsoft Knowledge Base sobre "mapi dll".

----------------------------------------------------------------------
Notas importantes sobre acessibilidade
----------------------------------------------------------------------

Para mais informações sobre características de acessibilidade no OpenOffice, veja http://www.openoffice.org/access/

----------------------------------------------------------------------
Suporte ao usuário
----------------------------------------------------------------------

A página principal de suporte http://support.openoffice.org/ oferece várias possibilidades para obter ajuda para o OpenOffice. Sua pergunta pode já estar respondida - verifique o fórum da comunidade em http://forum.openoffice.org ou pesquise os arquivos da lista de discussão 'users@openoffice.org' em http://openoffice.apache.org/mailing-lists.html. Alternativamente, você pode enviar suas perguntas para users@openoffice.apache.org. Para assinar a lista (para receber um email de resposta) está explicado nesta página: http://openoffice.apache.org/mailing-lists.html.

Verifique também a seção de FAQ em http://wiki.openoffice.org/wiki/Documentation/FAQ.

----------------------------------------------------------------------
Reportar bugs & problemas
----------------------------------------------------------------------

O portal do OpenOffice hospeda o BugZilla, nosso mecanismo de reporte, rastreamento e resolução de bugs e problemas. Incentivamos todos os usuários a reportar problemas que possam ocorrer em sua plataforma particular. Reportes de erros frequentes são uma das mais importantes contribuições que a comunidade de usuários pode fazer para o desenvolvimento e melhorias contínuas da suíte.

----------------------------------------------------------------------
Para se envolver 
----------------------------------------------------------------------

A comunidade OpenOffice irá beneficiar-se da sua participação ativa no desenvolvimento deste importante projeto de código aberto.

Como usuário, você é parte valiosa do processo de desenvolvimento da suíte e gostaríamos de incentivá-lo a participar mais ativamente com o propósito de que se torne um colaborador de longo prazo para a comunidade. Faça parte da comunidade e consulte a página dos usuários em http://openoffice.apache.org/get-involved.html

Como começar
----------------------------------------------------------------------

A melhor maneira de começar a contribuir é se inscrever em uma ou mais listas de discussão, acompanhar por um tempo, e utilizar gradualmente os arquivos da lista para se familiarizar com os muitos dos tópicos abordados, desde que o código-fonte do OpenOffice lançado em outubro de 2000. Quando você estiver confortável, tudo o que você precisa fazer é enviar um e-mail de auto-apresentação e saltar para direto para dentro.

Assinar
----------------------------------------------------------------------

Aqui estão algumas das listas de discussão do OpenOffice que você pode se inscrever em http://openoffice.apache.org/mailing-lists.html

* Notícias: a lista announce@openoffice.org é *recomendada a todos os usuários* (tráfego leve)
* Fórum principal dos usuários: user@openoffice.org *um jeito fácil de acompanhar as discussões* (tráfego intenso)
* Lista geral de discussão e desenvolvimento do projeto: dev@openoffice.apache.org (tráfego intenso)

Participar de um ou mais projetos
----------------------------------------------------------------------

Você pode dar importantes contribuições a esse projeto de código aberto mesmo se você tiver pouca experiência em projetos e programação de software. Isso mesmo, você!

Em http://openoffice.apache.org/get-involved.html você vai encontrar uma visão inicial, onde pode começar, desde localização, controle de qualidade, suporte ao usuário a alguns projetos reais de codificação do núcleo. Se você não for um desenvolvedor, tente a Documentação ou o Marketing. O Marketing do OpenOffice é a aplicação de técnicas tanto da guerrilha quanto comerciais tradicionais de comercialização de software de fonte aberta, e estamos fazendo através de barreiras linguísticas e culturais, assim, você pode ajudar apenas por comentar dele e contando a um amigo sobre esta suíte de escritório.

Você pode ajudar se juntando à lista de marketing em marketing@openoffice.apache.org onde você pode fornecer ponto de contato de comunicação com a imprensa, a mídia, as agências governamentais, consultores, escolas, grupos de usuários linux e desenvolvedores de seu país e da comunidade local.

Esperamos que você aprecie em trabalhar com o novo OpenOffice 4.1.5 e que participará de nossa comunidade on-line.

A Comunidade Apache OpenOffice