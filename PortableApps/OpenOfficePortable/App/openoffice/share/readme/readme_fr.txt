
======================================================================
Lisez-moi OpenOffice 4.1.5
======================================================================


Pour les dernières mises à jour de ce fichier lisez-moi, voir http://www.openoffice.org/welcome/readme.html

Ce fichier contient des informations importantes à propos de ce programme. Lisez ces informations avec attention avant de commencer à travailler.

La Communauté Apache OpenOffice, responsable du développement de ce logiciel, souhaiterait vous inviter à participer en qualité de membre de celle-ci. En tant que nouvel utilisateur, vous pouvez consulter le site de OpenOffice qui contient des informations utiles pour l'utilisateur sur http://www.openoffice.org/about_us/introduction.html

Lisez également les sections ci-dessous si vous souhaitez vous impliquer dans le projet Apache OpenOffice. 

Est-ce que OpenOffice est vraiment libre pour tous les utilisateurs ? 
----------------------------------------------------------------------

OpenOffice est libre d'utilisation pour tous. Vous pouvez prendre cette copie de OpenOffice, l'installer sur autant d'ordinateurs que vous le souhaitez et l'utiliser comme bon vous semble (incluant l'utilisation commerciale, dans les administrations et les organisations, ainsi que dans l'éducation). Pour de plus amples détails, voir le texte de la licence fourni avec OpenOffice ou http://www.openoffice.org/license.html

Pourquoi OpenOffice est gratuit pour tout utilisateur ?
----------------------------------------------------------------------

Vous pouvez utiliser cette copie de OpenOffice aujourd'hui gratuitement parce que des contributeurs individuels et des entreprises sponsors ont conçu, développé, testé, traduit, documenté, supporté, promu et aidé de bien d'autres façons encore à faire ce que OpenOffice est aujourd'hui - le logiciel de bureautique Open Source leader mondial.

Si vous appréciez leurs efforts et si vous souhaiteriez garantir qu'Apache OpenOffice continue à l'avenir, vous pouvez participer au projet : voir http://openoffice.apache.org/get-involved.html afin de contribuer en temps et http://www.apache.org/foundation/contributing.html pour les détails sur les donations. Chacun peut le faire à sa manière.

----------------------------------------------------------------------
Remarques sur l'installation
----------------------------------------------------------------------

OpenOffice réclame une version récente de JAVA pour fonctionner pleinement. JAVA peut être téléchargé depuis http://java.com/fr.

Besoins système
----------------------------------------------------------------------

* Microsoft Windows XP, Vista, Windows 7 ou Windows 8
* Pentium III ou processeur supérieur
* 256 Mo de RAM (512 Mo de RAM recommandés)
* Jusqu'à 1,5 Go d'espace disque dur disponible
* Résolution de 1024x768 (résolution supérieure recommandée), avec au moins 256 couleurs

Remarquez que les droits administrateur sont nécessaires lors du processus d'installation.

L'enregistrement de OpenOffice comme application par défaut pour les formats Microsoft Office peut être forcée ou supprimée en utilisant les commuteurs de ligne de commande suivants avec l'installeur :

* /msoreg=1 forcera l'enregistrement de OpenOffice comme application par défaut pour les formats Microsoft Office.
*  supprimera l'enregistrement de OpenOffice comme application par défaut pour les formats Microsoft Office.

Si vous réalisez une installation administrative en utilisant setup /a, vous devez vous assurer que le fichier msvcr100.dll est installé sur le système. Ce fichier est nécessaire à OpenOffice pour démarrer après une installation administrative. Vous pouvez obtenir ce fichier à partir de http://www.microsoft.com/en-us/download/details.aspx?id=5555

Remarquez que les droits administrateur sont nécessaires lors du processus d'installation.

Assurez-vous qu'il y a assez de mémoire libre dans le répertoire temporaire du système et que les droits de lecture, d'écriture et d'exécution on été accordés. Fermez tous les autres programmes avant de commencer l'installation.

----------------------------------------------------------------------
Problèmes au démarrage du programme
----------------------------------------------------------------------

Les difficultés au démarrage de OpenOffice (par exemple l'application attend) ainsi que les problèmes d'affichage à l'écran sont souvent dus au pilote de la carte graphique. Si vous rencontrez ces problèmes, mettez à jour le pilote de la carte graphique ou essayez d'utiliser le pilote graphique livré avec votre système d'exploitation. Les difficultés liées à l'affichage des objets 3D peuvent bien souvent être résolues en désactivant l'option "Utiliser l'OpenGL" sous 'Outils - Options - OpenOffice - Affichage - Affichage 3D'.

----------------------------------------------------------------------
Pavé tactile notebook ALPS/Synaptics sous Windows
----------------------------------------------------------------------

En raison d'un problème avec le pilote Windows, vous ne pouvez pas faire défiler un document OpenOffice lorsque vous faites glisser votre doigt sur un pavé tactile ALPS/Synaptics.

Pour activer le défilement avec le pavé tactile, ajoutez les lignes suivantes dans le fichier de configuration "C:\Program Files\Synaptics\SynTP\SynTPEnh.ini" et redémarrez votre ordinateur :

[OpenOffice]

FC = "SALFRAME"

SF = 0x10000000

SF |= 0x00004000

L'emplacement du fichier de configuration peut varier en fonction des différentes versions de Windows.

----------------------------------------------------------------------
Raccourcis claviers
----------------------------------------------------------------------

Seuls les raccourcis clavier (combinaison de touches) non utilisés par le système d'exploitation peuvent être utilisés dans OpenOffice. Si une combinaison de touches dans OpenOffice ne fonctionne pas comme décrit dans l'aide OpenOffice, vérifiez que ce raccourci clavier n'est pas déjà utilisé par le système d'exploitation. Pour corriger de tels conflits, vous pouvez modifier l'assignation des raccourcis clavier du système d'exploitation. Alternativement, vous pouvez modifier pratiquement toutes les assignations de touches dans OpenOffice. Pour plus d'informations sur ce sujet, référez-vous à l'aide OpenOffice ou à la documentation d'aide de votre système d'exploitation.

----------------------------------------------------------------------
Problèmes lors de l'envoi de documents par e-mail à partir de OpenOffice
----------------------------------------------------------------------

Lors de l'envoi de document via 'Fichier - Envoyer - Document par e-mail' ou 'Document comme fichier PDF joint' des problèmes peuvent se produire (le programme s'arrête brutalement ou se bloque). Ceci est dû au fichier système Windows "Mapi" (Messaging Application Programming Interface) qui pose des problèmes avec certaines versions de fichier. Malheureusement le problème ne peut être circonscrit à un certain numéro de version. Pour plus d'informations, visitez le site http://www.microsoft.com et recherchez "mapi dll" dans la base de connaissances Microsoft.

----------------------------------------------------------------------
Remarques importantes sur l'accessibilité
----------------------------------------------------------------------

Pour plus d'informations sur les fonctions d'accessibilité dans OpenOffice, voir http://www.openoffice.org/access/

----------------------------------------------------------------------
Aide aux utilisateurs
----------------------------------------------------------------------

La page de support principale http://www.openoffice.org/fr/Support/ offre diverses possibilités d'aide sur OpenOffice. Mais votre question a peut-être déjà obtenu une réponse sur le forum francophone OpenOffice. 

Vérifiez également la FAQ sur http://wiki.services.openoffice.org/wiki/FR/Documentation/FAQ.

----------------------------------------------------------------------
Rapporter des dysfonctionnements et des problèmes
----------------------------------------------------------------------

Le site web OpenOffice héberge IssueZilla, notre outil pour rapporter, suivre et résoudre les bogues et dysfonctionnements. Nous encourageons tous les utilisateurs à se sentir libre de rapporter les problèmes qui pourraient survenir sur leur système. C'est l'une des contributions les plus importantes que la communauté des utilisateurs peut offrir au développement et à l'amélioration perpétuels de la suite. 

----------------------------------------------------------------------
Contribuer
----------------------------------------------------------------------

La Communauté OpenOffice tirera un grand bénéfice de votre participation active dans le développement de cet important projet Open Source.

En tant qu'utilisateur, vous constituez déjà une partie importante du processus de développement de la suite et nous voudrions vous encourager à prendre un rôle encore plus actif dans le but de devenir un contributeur à long terme de la communauté. Rejoignez-nous et rendez-vous sur le site http://www.openoffice.org/fr/Participer/

Pour commencer
----------------------------------------------------------------------

Le meilleur moyen de commencer à contribuer est de s'inscrire à une ou plusieurs de nos listes de discussion, rester spectateur un certain temps  et utiliser progressivement les archives afin de vous familiariser avec la plupart des thèmes abordés du code source OpenOffice sorti en octobre 2000. Lorsque vous serez à l'aise, tout ce que vous avez à faire est d'envoyer un courriel de présentation afin de nous rejoindre.

S'inscrire
----------------------------------------------------------------------

Voici quelques listes de discussion du projet auxquelles vous pouvez vous inscrire http://www.openoffice.org/fr/contact-forums.html

* Dernières nouvelles : announce@openoffice.apache.org recommandé à tous les utilisateurs (peu de trafic, liste en anglais)
* Liste utilisateurs principale : users@openoffice.apache.org un moyen aisé de suivre les discussions (trafic élevé, liste en anglais) 
* Liste dédiée au développement : dev@openoffice.apache.org (trafic élevé, liste en anglais)

Rejoignez le Projet
----------------------------------------------------------------------

Vous pouvez faire des contributions majeures à cet important projet Open Source, même si vous avez une expérience limitée dans le codage ou la conception de programme. Oui, vous !

Sur http://www.openoffice.org/fr/Participer/, vous trouverez des projets allant de la traduction, au portage et aux outils de collaboration jusqu'à des développement au cœur du produit. Si vous n'êtes pas développeur, rejoignez le projet Documentation ou Marketing. Ce dernier applique à la fois une guérilla et des techniques commerciales traditionnelles pour la mercatique du logiciel à code ouvert et ce à travers les barrières linguistiques ou culturelles, vous pouvez donc aider juste en parlant de cette suite bureautique autour de vous et à vos amis.

Vous pouvez aider en rejoignant la liste de discussion marketing@openoffice.apache.org où vous pouvez trouver un contact de communication point à point avec la presse, les médias, les agences gouvernementales, des consultants, des écoles, des groupes d'utilisateurs Linux et les développeurs de votre pays et de la communauté locale.

Nous espérons que vous appréciez de travailler avec le nouveau OpenOffice 4.1.5 et que vous nous rejoindrez bientôt en ligne.

La Communauté Apache OpenOffice