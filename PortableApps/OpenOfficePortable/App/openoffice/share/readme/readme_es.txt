
======================================================================
Léame de OpenOffice 4.1.5
======================================================================


Para ver las últimas actualizaciones de este archivo "léame" (en inglés), vea http://www.openoffice.org/welcome/readme.html

Este archivo contiene información importante sobre este programa. Lea esta información con mucho cuidado antes de comenzar a trabajar.

La comunidad de Apache OpenOffice, responsable del desarrollo de este producto, quiere invitarlo a participar como miembro de la comunidad. Los usuarios nuevos pueden visitar el sitio de OpenOffice que contiene información valiosa en http://openoffice.apache.org (en inglés)

Lea además las siguientes secciones acerca de cómo involucrarse en el proyecto Apache OpenOffice. 

¿OpenOffice es de verdad libre para cualquier usuario?
----------------------------------------------------------------------

OpenOffice es libre para que todos puedan usarlo. Puede tomar esta copia de OpenOffice e instalarlo en tantas computadoras como desee, y utilizarlo para cualquier propósito (incluido el uso comercial, gubernamental, de la administración pública y educacional). Para mayores detalles, vea el texto de la licencia entregada junto con OpenOffice o http://www.openoffice.org/license.html (en inglés)

¿Por qué OpenOffice es libre para cualquier usuario?
----------------------------------------------------------------------

Puede usar esta copia de OpenOffice en forma gratuita porque los contribuyentes individuales y patrocinadores corporativos han diseñado, desarrollado, probado, traducido, documentado, asistido, promocionado y ayudado de muchas formas para hacer de OpenOffice lo que es hoy - el líder mundial de software de oficina de código abierto.

Si aprecia sus esfuerzos y desea asegurarse de que Apache OpenOffice continúe en el futuro, por favor considere contribuir al proyecto - vea http://openoffice.apache.org/get-involved.html para detalles sobre cómo contribuir su tiempo y http://www.apache.org/foundation/contributing.html para detalles sobre cómo realizar donaciones. Todos tienen una contribución para hacer.

----------------------------------------------------------------------
Notas sobre la instalación
----------------------------------------------------------------------

OpenOffice necesita de versiones recientes de JAVA para una funcionalidad total; JAVA puede ser descargado de http://java.com.

Requerimientos del sistema
----------------------------------------------------------------------

* Microsoft Windows XP, Vista, Windows 7 o Windows 8
* Procesador Pentium III o posterior
* 256 MB de RAM (se recomiendan 512 MB de RAM)
* Espacio disponible en el disco rígido de hasta 1,5 GB
* Resolución de 1024x768 (se recomienda una resolución más alta), por lo menos con 256 colores

Tenga en cuenta que se necesitan derechos de administrador para el proceso de instalación.

Se puede forzar o evitar que OpenOffice se registre como aplicación predeterminada para los formatos de Microsoft Office usando las opciones siguientes del instalador en la línea de comandos:

* /msoreg=1 forzará que OpenOffice se registre como aplicación predeterminada para los formatos de Microsoft Office.
* /msoreg=0 evitará que OpenOffice se registre como aplicación predeterminada para los formatos de Microsoft Office.

Si realiza una instalación como administrador usando el comando setup /a, debe asegurarse que esté instalado en el sistema el archivo msvcr100.dll. Después de la instalación como administrador, se requiere este archivo para iniciar OpenOffice. Puede obtener el archivo desde http://www.microsoft.com/en-us/download/details.aspx?id=5555

Tenga en cuenta que se necesitan derechos de administrador para el proceso de instalación.

Asegúrese que tiene suficiente memoria libre en el directorio temporal de su sistema y que posee los derechos de acceso para leer, escribir y ejecutar. Cierre todos los otros programas antes de iniciar la instalación.

----------------------------------------------------------------------
Problemas durante el inicio del programa
----------------------------------------------------------------------

Las dificultadas para iniciar OpenOffice (por ejemplo, el cuelgue de la aplicación) y los problemas con la visualización en pantalla son causados, a menudo, por el controlador de la placa de vídeo. Si tiene alguno de estos problemas, actualice el controlador de su placa de vídeo o intente utilizar el que viene con su sistema operativo. Las dificultades relacionadas con la visualización de objetos 3D pueden resolverse, a menudo, desactivando la opción "Usar la aceleración por hardware" en 'Herramientas - Opciones - OpenOffice - Ver - Salida gráfica'.

----------------------------------------------------------------------
Touchpads de notebooks ALPS/Synaptics en Windows
----------------------------------------------------------------------

Debido a un problema con el controlador de Windows, no puede desplazar por los documentos de OpenOffice al deslizar su dedo en un touchpad ALPS/Synaptics.

Para poder desplazarse usando el touchpad, agregue las siguientes líneas al archivo de configuración "C:\Program Files\Synaptics\SynTP\SynTPEnh.ini", y reinicie su computadora:

[OpenOffice]

FC = "SALFRAME"

SF = 0x10000000

SF |= 0x00004000

La ubicación del archivo de configuración puede variar en diferentes versiones de Windows.

----------------------------------------------------------------------
Atajos de teclado
----------------------------------------------------------------------

Sólo pueden usarse en OpenOffice los atajos de teclado (combinaciones de teclas) que no son utilizados por el sistema operativo. Si una combinación de teclas en OpenOffice no funciona como está descrito en la ayuda de OpenOffice, verifique si dicha combinación se encuentra en uso por el sistema operativo. Para corregir estos conflictos puede cambiar las combinaciones definidas por el sistema operativo. Si lo prefiere, puede cambiar la mayoría de las asignaciones en OpenOffice. Consulte la ayuda de OpenOffice o la documentación de su sistema operativo para obtener más información sobre este tema.

----------------------------------------------------------------------
Problemas al enviar documentos por correo electrónico desde OpenOffice
----------------------------------------------------------------------

Al enviar un documento a través de 'Archivo - Enviar - Documento como correo electrónico' o 'Documento adjunto en formato PDF' podrían ocurrir algunos problemas (el programa se bloquea o se cuelga). Esto se debe al archivo de sistema de Windows "Map" (Interfaz de programación para aplicaciones de mensajería) que provoca problemas en algunas de sus versiones. Lamentablemente, el problema no puede simplificarse a un único número de versión. Para obtener más información, visite http://www.microsoft.com y busque "mapi dll" en la base de conocimientos de Microsoft (Microsoft Knowledge Base).

----------------------------------------------------------------------
Notas importantes acerca de la accesibilidad
----------------------------------------------------------------------

Para obtener más información sobre las características de accesibilidad en OpenOffice, vea http://www.openoffice.org/access/ (en inglés)

----------------------------------------------------------------------
Asistencia al usuario
----------------------------------------------------------------------

La página principal de asistencia http://support.openoffice.org/ ofrece varias posibilidades de ayuda para OpenOffice. Su pregunta ya puede tener una respuesta - verifíquelo en el foro de la comunidad en http://forum.openoffice.org o busque en los archivos de la lista de correo 'users@openoffice.apache.org' en http://openoffice.apache.org/mailing-lists.html. Otra alternativa es enviar sus preguntas a users@openoffice.apache.org. Cómo suscribirse a la lista (para obtener una respuesta por correo electrónico) se explica en esta página: http://openoffice.apache.org/mailing-lists.html.

También verifique la sección de preguntas frecuentes (FAQ) en http://wiki.openoffice.org/wiki/Documentation/FAQ

----------------------------------------------------------------------
Reportar errores y problemas
----------------------------------------------------------------------

El sitio web de OpenOffice alberga BugZilla, nuestro mecanismos para la notificación, seguimiento y resolución de errores y problemas. Alentamos a todos los usuarios a sentirse con derecho y bienvenidos a reportar problemas que puedan surgir en su plataforma particular. Reportar rápidamente los problemas es una de las contribuciones más importantes que la comunidad de usuarios puede hacer al desarrollo continuo y al mejoramiento de las aplicaciones.

----------------------------------------------------------------------
Involucrarse
----------------------------------------------------------------------

La comunidad de OpenOffice se beneficiaría mucho con su participación activa en el desarrollo de este importante proyecto de código abierto.

Como usuario, usted ya es una parte valiosa del proceso de desarrollo de estas aplicaciones y nos gustaría alentarlo a que tenga un rol aún más activo con miras a ser un contribuyente a largo plazo de la comunidad. Únase y visite la página de usuario en:http://openoffice.apache.org/get-involved.html

Cómo comenzar
----------------------------------------------------------------------

La mejor forma de comenzar contribuyendo es suscribirse a una o más de las listas de correo, rondar por un tiempo y gradualmente usar los archivos de la lista para familiarizarse con los varios temas cubiertos desde que el código fuente de OpenOffice fue liberado allá por octubre del 2000. Cuando se sienta confortable, todo lo que necesita es enviar un correo electrónico para presentarse y entrar directamente en el tema.

Suscríbirse
----------------------------------------------------------------------

Aquí le presentamos algunas de las listas de correo de OpenOffice a las que puede suscribirse en http://openoffice.apache.org/mailing-lists.html (en inglés)

* Noticias: announce@openoffice.apache.org *recomendada para todos los usuarios* (escaso tráfico)
* Foro principal de usuarios: users@openoffice.apache.org *una forma fácil de observar discusiones* (tráfico abundante) 
* Lista de discusión del desarrollo general del proyecto: dev@openoffice.apache.org (alto tráfico)

Unirse al proyecto
----------------------------------------------------------------------

Puedes hacer importantes contribuciones a este importante proyecto de código abierto, incluso si tienes poca experiencia en diseño o programación de aplicaciones. ¡Sí, tú!

En http://openoffice.apache.org/get-involved.html encontrará una primera aproximación a los temas con los que puede comenzar, los cuales van desde la localización, control de calidad (QA) y soporte a usuarios hasta proyectos de código de base real. Si no es un desarrollador, puede ayudar en actividades de documentación o promoción, por ejemplo. La promoción de OpenOffice está aplicando técnicas comerciales tanto tradicionales como de guerrilla para promocionar el software de código abierto, y lo hacemos atravesando las barreras idiomáticas y culturales, por lo que puede ayudar con sólo difundir información sobre el proyecto y contándole a un amigo acerca de esta suite ofimática.

Puede brindar su ayuda uniéndose a la lista de correo de marketing marketing@openoffice.apache.org donde podrá ofrecer comunicaciones con la prensa, los medios, agencias de gobierno, consultores, escuelas, grupos de usuarios Linux y desarrolladores en su país y comunidad local.

Esperamos que le guste trabajar con el nuevo OpenOffice 4.1.5 y se una a nosotros en linea.

La comunidad de Apache OpenOffice