︠ece0715b-c6cb-445f-b877-4aed04baaee8ai︠
%hide
%auto
DATA="foo.data/"
︠738f41b6-8a5c-4875-a463-d3db23aec85di︠
%html
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<h3 style="font-size: 1.17em; text-align: center;">ESCUELA T&Eacute;CNICA SUPERIOR DE INGENIER&Iacute;A INFORM&Aacute;TICA</h3>
<h3 style="font-size: 1.17em; text-align: center;">UNIVERSIDAD DE SEVILLA</h3>
<h4 style="font-size: 1em; text-align: center;"><strong>&Aacute;LGEBRA LINEAL Y NUM&Eacute;RICA</strong></h4>
<h3 style="font-size: 1.17em;">Introducci&oacute;n a SAGE y su uso en &Aacute;lgebra Lineal y Num&eacute;rica</h3>
<p>En esta primera sesi&oacute;n nos marcamos los siguientes objetivos:</p>
<ul>
<li>Dar una introducci&oacute;n al software SAGE y al <a href="#intro">manejo de esta interfaz</a>.</li>
<li>Familiarizarnos con los <a href="#basicos">procedimientos b&aacute;sicos</a> del &aacute;lgebra lineal trabajando con SAGE.</li>
<li>Estudiar la <a href="#flotante">representaci&oacute;n de n&uacute;meros reales</a> en punto flotante con SAGE y proporcionar herramientas para su an&aacute;lisis.</li>
<li>Trabajar con el m&eacute;todo de <a href="#eliminacion">eliminaci&oacute;n gaussiana</a> y el algoritmo de Gauss-Jordan.</li>
<li>Conocer algunas posibilidades de SAGE para trabajar con diferentes <a href="#anillos">anillos de n&uacute;meros</a>.</li>
<li>Ilustrar algunas <a href="#aplicaciones">aplicaciones pr&aacute;cticas</a> de la resoluci&oacute;n de sistemas de ecuaciones lineales a problemas reales.</li>
</ul>
<p>La pr&aacute;ctica finaliza con la realizaci&oacute;n por parte del alumnado de un <a href="#cuestionario">cuestionario</a> personalizado.</p>
</div>

︡ec25a716-497f-4a0d-a5ed-d8f3cceecac6︡{"html": "<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\n<h3 style=\"font-size: 1.17em; text-align: center;\">ESCUELA T&Eacute;CNICA SUPERIOR DE INGENIER&Iacute;A INFORM&Aacute;TICA</h3>\n<h3 style=\"font-size: 1.17em; text-align: center;\">UNIVERSIDAD DE SEVILLA</h3>\n<h4 style=\"font-size: 1em; text-align: center;\"><strong>&Aacute;LGEBRA LINEAL Y NUM&Eacute;RICA</strong></h4>\n<h3 style=\"font-size: 1.17em;\">Introducci&oacute;n a SAGE y su uso en &Aacute;lgebra Lineal y Num&eacute;rica</h3>\n<p>En esta primera sesi&oacute;n nos marcamos los siguientes objetivos:</p>\n<ul>\n<li>Dar una introducci&oacute;n al software SAGE y al <a href=\"#intro\">manejo de esta interfaz</a>.</li>\n<li>Familiarizarnos con los <a href=\"#basicos\">procedimientos b&aacute;sicos</a> del &aacute;lgebra lineal trabajando con SAGE.</li>\n<li>Estudiar la <a href=\"#flotante\">representaci&oacute;n de n&uacute;meros reales</a> en punto flotante con SAGE y proporcionar herramientas para su an&aacute;lisis.</li>\n<li>Trabajar con el m&eacute;todo de <a href=\"#eliminacion\">eliminaci&oacute;n gaussiana</a> y el algoritmo de Gauss-Jordan.</li>\n<li>Conocer algunas posibilidades de SAGE para trabajar con diferentes <a href=\"#anillos\">anillos de n&uacute;meros</a>.</li>\n<li>Ilustrar algunas <a href=\"#aplicaciones\">aplicaciones pr&aacute;cticas</a> de la resoluci&oacute;n de sistemas de ecuaciones lineales a problemas reales.</li>\n</ul>\n<p>La pr&aacute;ctica finaliza con la realizaci&oacute;n por parte del alumnado de un <a href=\"#cuestionario\">cuestionario</a> personalizado.</p>\n</div>"}︡
︠73bf0d17-913a-44bf-943b-676a351f5ef3i︠
%html
<h2><a name="intro"></a>&nbsp;Introducci&oacute;n a SAGE</h2>
<div style="color: #000000; background-color: #ffffff; margin: 8px;">
<h3 style="font-size: 1.17em;">Breve descripci&oacute;n</h3>
<p>SAGE es un paquete de <strong>software matem&aacute;tico libre y de c&oacute;digo abierto</strong> bajo licencia GNU GPL. En realidad SAGE engloba, bajo una misma interfaz, a cerca de un centenar de paquetes de software matem&aacute;tico libre, poni&eacute;ndolos a disposici&oacute;n del usuario de forma transparente. El lenguaje de programaci&oacute;n empleado para ello es <strong>Python </strong>y en ese sentido, el lenguaje propio de SAGE es compatible en un 99% con Python. &nbsp;Intentaremos dar una peque&ntilde;a introducci&oacute;n al manejo de SAGE desde la asignatura de &Aacute;lgebra Lineal y Num&eacute;rica.</p>
<h3 style="font-size: 1.17em;">Manejo de esta interfaz<span style="font-weight: normal; font-size: small;"> <br /></span></h3>
<p>Este documento es un ejemplo de hoja de trabajo (<strong>worksheet</strong>) en SAGE, similar a las de Maple o Mathematica (notebook). Hay dos tipos de recuadros o espacios (celdas) &nbsp;a lo largo del documento: los que no son ejecutables, que normalmente contienen texto, como este espacio que est&aacute;s leyendo y &nbsp;recuadros ejecutables (contienen instrucciones &oacute; c&oacute;digo de SAGE). Cuando se crea una nueva hoja de trabajo, aparece por defecto con un primer recuadro ejecutable, donde &nbsp;podemos empezar a teclear instrucciones. A continuaci&oacute;n se dan algunas claves del funcionamiento de esta interfaz:</p>
<p>1. En una celda (recuadro ejecutable) puede haber varias &oacute;rdenes separadas por punto y coma o en diferentes l&iacute;neas.&nbsp;Escribe dentro de la celda tus instrucciones y ejec&uacute;talas pulsando&nbsp;<span style="color: #0000ff;">Shift+Enter</span>. Si la celda ya tiene instrucciones, basta con que hagas clic con el rat&oacute;n dentro de ella, modifica lo que quieras y luego pulsas&nbsp;<span style="color: #000000;">Shift+Enter</span>&nbsp;para ejecutarlas. Otra alternativa: cuando haces clic con el rat&oacute;n dentro de la celda, aparece a pie de la misma el enlace&nbsp;<span style="color: #0000ff;"><span style="text-decoration: underline;">evaluate</span></span>&nbsp; &oacute; <span style="color: #0000ff;"><span style="text-decoration: underline;">evaluar</span></span> y si pulsas sobre &eacute;l se ejecuta el contenido de la celda. Si SAGE devuelve un resultado, lo hace en el espacio inferior, justo debajo de la celda.</p>
<p>2. Puedes crear un nuevo recuadro ejecutable al final del documento, colocando el cursor en la parte inferior del &uacute;ltimo recuadro, entonces aparece una l&iacute;nea azul y haces un clic en ella.</p>
<p>3. Puedes insertar un recuadro encima de otro, colocando el cursor en el borde superior del recuadro, entonces aparece una l&iacute;nea azul y cliqueas sobre ella.</p>
<p>4. Puedes insertar un texto explicativo como &eacute;ste haciendo lo mismo que en el caso anterior pero teniendo pulsada la tecla&nbsp;<span style="color: #0000ff;">Shift</span> mientras cliqueas. Aparece un mini-editor de texto y al final del mismo las opciones "Save changes" y "Cancel changes", para salir del mismo.</p>
<p>5. Para borrar un recuadro, primero se selecciona con el rat&oacute;n todo el texto que contiene, luego se borra y cuando el cuadro queda vacio, se vuelve a pulsar la tecla de borrado.</p>
<p>6. Para salir de esta hoja de trabajo, tienes tres opciones que aparecen como botones en la parte superior derecha:</p>
<p><strong>Save</strong>&nbsp;&nbsp;s&oacute;lo guarda los cambios realizados pero no sale.</p>
<p><strong>Save &amp; quit</strong>&nbsp;, pues eso, guarda cambios y sale al espacio de trabajo general, donde est&aacute;n todas tus hojas de trabajo.</p>
<p><strong>Discard &amp; quit</strong>, &nbsp;sale y no guarda ning&uacute;n cambio desde la &uacute;ltima vez que se le di&oacute; a Save o desde que el programa hizo un autosalvado de forma peri&oacute;idica y autom&aacute;tica,. determinado por la configuraci&oacute;n del programa.</p>
</div>

︡d74f86d7-73ad-465f-b504-aa8af5f8a404︡{"html": "<h2><a name=\"intro\"></a>&nbsp;Introducci&oacute;n a SAGE</h2>\n<div style=\"color: #000000; background-color: #ffffff; margin: 8px;\">\n<h3 style=\"font-size: 1.17em;\">Breve descripci&oacute;n</h3>\n<p>SAGE es un paquete de <strong>software matem&aacute;tico libre y de c&oacute;digo abierto</strong> bajo licencia GNU GPL. En realidad SAGE engloba, bajo una misma interfaz, a cerca de un centenar de paquetes de software matem&aacute;tico libre, poni&eacute;ndolos a disposici&oacute;n del usuario de forma transparente. El lenguaje de programaci&oacute;n empleado para ello es <strong>Python </strong>y en ese sentido, el lenguaje propio de SAGE es compatible en un 99% con Python. &nbsp;Intentaremos dar una peque&ntilde;a introducci&oacute;n al manejo de SAGE desde la asignatura de &Aacute;lgebra Lineal y Num&eacute;rica.</p>\n<h3 style=\"font-size: 1.17em;\">Manejo de esta interfaz<span style=\"font-weight: normal; font-size: small;\"> <br /></span></h3>\n<p>Este documento es un ejemplo de hoja de trabajo (<strong>worksheet</strong>) en SAGE, similar a las de Maple o Mathematica (notebook). Hay dos tipos de recuadros o espacios (celdas) &nbsp;a lo largo del documento: los que no son ejecutables, que normalmente contienen texto, como este espacio que est&aacute;s leyendo y &nbsp;recuadros ejecutables (contienen instrucciones &oacute; c&oacute;digo de SAGE). Cuando se crea una nueva hoja de trabajo, aparece por defecto con un primer recuadro ejecutable, donde &nbsp;podemos empezar a teclear instrucciones. A continuaci&oacute;n se dan algunas claves del funcionamiento de esta interfaz:</p>\n<p>1. En una celda (recuadro ejecutable) puede haber varias &oacute;rdenes separadas por punto y coma o en diferentes l&iacute;neas.&nbsp;Escribe dentro de la celda tus instrucciones y ejec&uacute;talas pulsando&nbsp;<span style=\"color: #0000ff;\">Shift+Enter</span>. Si la celda ya tiene instrucciones, basta con que hagas clic con el rat&oacute;n dentro de ella, modifica lo que quieras y luego pulsas&nbsp;<span style=\"color: #000000;\">Shift+Enter</span>&nbsp;para ejecutarlas. Otra alternativa: cuando haces clic con el rat&oacute;n dentro de la celda, aparece a pie de la misma el enlace&nbsp;<span style=\"color: #0000ff;\"><span style=\"text-decoration: underline;\">evaluate</span></span>&nbsp; &oacute; <span style=\"color: #0000ff;\"><span style=\"text-decoration: underline;\">evaluar</span></span> y si pulsas sobre &eacute;l se ejecuta el contenido de la celda. Si SAGE devuelve un resultado, lo hace en el espacio inferior, justo debajo de la celda.</p>\n<p>2. Puedes crear un nuevo recuadro ejecutable al final del documento, colocando el cursor en la parte inferior del &uacute;ltimo recuadro, entonces aparece una l&iacute;nea azul y haces un clic en ella.</p>\n<p>3. Puedes insertar un recuadro encima de otro, colocando el cursor en el borde superior del recuadro, entonces aparece una l&iacute;nea azul y cliqueas sobre ella.</p>\n<p>4. Puedes insertar un texto explicativo como &eacute;ste haciendo lo mismo que en el caso anterior pero teniendo pulsada la tecla&nbsp;<span style=\"color: #0000ff;\">Shift</span> mientras cliqueas. Aparece un mini-editor de texto y al final del mismo las opciones \"Save changes\" y \"Cancel changes\", para salir del mismo.</p>\n<p>5. Para borrar un recuadro, primero se selecciona con el rat&oacute;n todo el texto que contiene, luego se borra y cuando el cuadro queda vacio, se vuelve a pulsar la tecla de borrado.</p>\n<p>6. Para salir de esta hoja de trabajo, tienes tres opciones que aparecen como botones en la parte superior derecha:</p>\n<p><strong>Save</strong>&nbsp;&nbsp;s&oacute;lo guarda los cambios realizados pero no sale.</p>\n<p><strong>Save &amp; quit</strong>&nbsp;, pues eso, guarda cambios y sale al espacio de trabajo general, donde est&aacute;n todas tus hojas de trabajo.</p>\n<p><strong>Discard &amp; quit</strong>, &nbsp;sale y no guarda ning&uacute;n cambio desde la &uacute;ltima vez que se le di&oacute; a Save o desde que el programa hizo un autosalvado de forma peri&oacute;idica y autom&aacute;tica,. determinado por la configuraci&oacute;n del programa.</p>\n</div>"}︡
︠7bbc932f-6626-4a9d-96a7-c138bf4931a5i︠
%html
<h3>Ejemplo 1:</h3>
<p>A continuaci&oacute;n, ejecuta las instrucciones de las siguientes celdas y experimenta con la inserci&oacute;n de nuevas celdas ejecutables y de texto.</p>

︡b6ce1cba-f9b1-4e9f-acc0-b78742c82108︡{"html": "<h3>Ejemplo 1:</h3>\n<p>A continuaci&oacute;n, ejecuta las instrucciones de las siguientes celdas y experimenta con la inserci&oacute;n de nuevas celdas ejecutables y de texto.</p>"}︡
︠77d8d565-a815-4dd1-8c8d-e90cf0882cb2︠
5 + 2*3 -(4 + 3)
︡5735666b-1acb-422c-b683-83b626ab2c0e︡︡
︠fba5c716-cdaa-48f8-8014-2dd3a99f05b3︠
5 - 3*2; 2 + 3^2; 1/3 + 1/2
︡b3683694-940b-4da0-875b-de3a9058925c︡︡
︠ccb0629d-02f7-42ac-9a6b-867d9afb2a42︠
x = 7; y = 3
2 + 3
5 + x + y
︡6b451c00-573a-4e5d-9d9a-085af9c21462︡︡
︠a895e294-24e1-4e89-9a85-c31d152c3ef9i︠
%html
<p style="text-align: center;"><strong>Si haces doble clic sobre este texto</strong></p>
<p>se abrir&aacute; el editor de texto. Modifica lo que quieras y sal del editor pulsando <strong>Save changes</strong>, que aparece a pie del mismo.</p>
<p>&nbsp;</p>

︡c78d1281-d181-45a1-81c0-9de317f414b6︡{"html": "<p style=\"text-align: center;\"><strong>Si haces doble clic sobre este texto</strong></p>\r\n<p>se abrir&aacute; el editor de texto. Modifica lo que quieras y sal del editor pulsando <strong>Save changes</strong>, que aparece a pie del mismo.</p>\r\n<p>&nbsp;</p>"}︡
︠acfedf46-c4a3-4664-b24f-730d1c120ce3i︠
%html
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<p>SAGE utiliza un lenguaje interpretado y orientado a objetos. En SAGE hay <span style="color: #0000ff;">funciones</span> y <span style="color: #0000ff;">m&eacute;todos</span>.&nbsp;Para usar una funci&oacute;n escribimos el nombre de la funci&oacute;n y entre par&aacute;ntesis el objeto al que se le aplica la funci&oacute;n. Si usamos un m&eacute;todo, primero escribimos el objeto sobre el que se va a actuar, a continuaci&oacute;n un punto y finalmente el m&eacute;todo, con par&eacute;ntesis, en cuyo interior se pueden escribir las opciones (en caso necesario). Los m&eacute;todos son tambi&eacute;n conocidos como <span style="color: #0000ff;">atributos </span>asociados al objeto.</p>
<p>En el siguiente ejemplo hemos usado &nbsp;la funci&oacute;n <span style="color: #0000ff;">sqrt( )</span>&nbsp;para hallar la raiz cuadrada del n&uacute;mero 2 y la funci&oacute;n <span style="color: #0000ff;">n( )</span> para hallar una aproximaci&oacute;n num&eacute;rica en coma flotante. &Eacute;sta &uacute;ltima tambi&eacute;n act&uacute;a como un m&eacute;todo o atributo, aplicable al resultado num&eacute;rico; como opci&oacute;n, en el &uacute;ltimo caso, hemos precisado el n&uacute;mero de cifras decimales con&nbsp;<span style="color: #0000ff;">digits</span>.</p>
</div>

︡2f9678bc-21aa-4bbe-966d-770f28cb90ed︡{"html": "<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\r\n<p>SAGE utiliza un lenguaje interpretado y orientado a objetos. En SAGE hay <span style=\"color: #0000ff;\">funciones</span> y <span style=\"color: #0000ff;\">m&eacute;todos</span>.&nbsp;Para usar una funci&oacute;n escribimos el nombre de la funci&oacute;n y entre par&aacute;ntesis el objeto al que se le aplica la funci&oacute;n. Si usamos un m&eacute;todo, primero escribimos el objeto sobre el que se va a actuar, a continuaci&oacute;n un punto y finalmente el m&eacute;todo, con par&eacute;ntesis, en cuyo interior se pueden escribir las opciones (en caso necesario). Los m&eacute;todos son tambi&eacute;n conocidos como <span style=\"color: #0000ff;\">atributos </span>asociados al objeto.</p>\r\n<p>En el siguiente ejemplo hemos usado &nbsp;la funci&oacute;n <span style=\"color: #0000ff;\">sqrt( )</span>&nbsp;para hallar la raiz cuadrada del n&uacute;mero 2 y la funci&oacute;n <span style=\"color: #0000ff;\">n( )</span> para hallar una aproximaci&oacute;n num&eacute;rica en coma flotante. &Eacute;sta &uacute;ltima tambi&eacute;n act&uacute;a como un m&eacute;todo o atributo, aplicable al resultado num&eacute;rico; como opci&oacute;n, en el &uacute;ltimo caso, hemos precisado el n&uacute;mero de cifras decimales con&nbsp;<span style=\"color: #0000ff;\">digits</span>.</p>\r\n</div>"}︡
︠9c3d4967-4b01-4e56-b5f1-c3ffda884c34︠
sqrt(2);  n(sqrt(2)); sqrt(2).n(); n(sqrt(2), digits = 7)
︡6b274ba7-509a-4663-97e1-0e86413de282︡{"stdout": "sqrt(2)\n1.41421356237310\n1.41421356237310\n1.414214"}︡
︠6f70f4a7-9c61-4016-9a87-8ae23fe6b047i︠
%html
<p>Podemos obtener una representaci&oacute;n de los resultados m&aacute;s amigable con la funci&oacute;n (y atributo) <span style="color: #0000ff;">show()</span>:</p>

︡d2ba07b1-5f1d-44ec-aacb-da196e0d55ef︡{"html": "<p>Podemos obtener una representaci&oacute;n de los resultados m&aacute;s amigable con la funci&oacute;n (y atributo) <span style=\"color: #0000ff;\">show()</span>:</p>"}︡
︠9c0a3c55-6f9f-4778-9327-57a711200f91︠
sqrt(2); sqrt(2).show(); show(sqrt(2))
︡f7c06adc-e552-4edb-a4d9-5a553345db0d︡{"stdout": "sqrt(2)"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\sqrt{2}", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\sqrt{2}", "display": true}}︡
︠6f415356-b15f-4040-9fc9-1460fbe4323bi︠
%html
<h2><a name="basicos"></a>Procedimientos b&aacute;sicos del &Aacute;lgebra Lineal</h2>
<p>Vamos a familiarizarnos con los procedimientos y c&aacute;lculos b&aacute;sicos que se emplean en el &aacute;lgebra lineal.</p>
<p>Empezamos con la introducci&oacute;n de matrices y vectores:</p>
<p>A continuaci&oacute;n guardamos en la memoria una variable $A$ que contiene una matriz no singular de orden $3\times 3$.</p>
<p>Similarmente, $b$ se corresponde con un vector de orden $3$.</p>

︡24d9e1ad-b4de-417c-ab6e-257a14fe1201︡{"html": "<h2><a name=\"basicos\"></a>Procedimientos b&aacute;sicos del &Aacute;lgebra Lineal</h2>\n<p>Vamos a familiarizarnos con los procedimientos y c&aacute;lculos b&aacute;sicos que se emplean en el &aacute;lgebra lineal.</p>\n<p>Empezamos con la introducci&oacute;n de matrices y vectores:</p>\n<p>A continuaci&oacute;n guardamos en la memoria una variable $A$ que contiene una matriz no singular de orden $3\\times 3$.</p>\n<p>Similarmente, $b$ se corresponde con un vector de orden $3$.</p>"}︡
︠aa9eff58-42a0-45e8-9611-ccff9e6049fb︠
A = matrix([[2, 1, 1/3],[-1, 6, 2],[1/2, 1, 8]])
A
︡33e0504d-37a0-443c-a08a-32ce1a686e6d︡{"stdout": "[  2   1 1/3]\n[ -1   6   2]\n[1/2   1   8]"}︡
︠34ef2386-3237-419b-8320-54943e8ae49d︠
show(A)
︡614eb735-2936-4e20-ac7a-2f4e81e6bfd2︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n2 & 1 & \\frac{1}{3} \\\\\n-1 & 6 & 2 \\\\\n\\frac{1}{2} & 1 & 8\n\\end{array}\\right)", "display": true}}︡
︠b9aa50cb-ed33-421b-aac1-587eb793f4e3︠
b = vector([14/3, 2, -6])
b
︡8c60f592-d43a-4063-9cb1-243109448b14︡{"stdout": "(14/3, 2, -6)"}︡
︠409237ee-382c-465a-97a9-bf5cf33a00be︠
show(b)
︡26abf8f9-4921-47d3-a37b-c4076cc946e3︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\frac{14}{3},\\,2,\\,-6\\right)", "display": true}}︡
︠7026c8e0-5a7f-4797-a566-c7b1671fe5f3i︠
%html
<p>Para resolver un sistema lineal $Ax=b$ , primero debemos haber guardado los datos de la matriz $A$ en formato matriz y los datos del vector de t&eacute;rminos independientes $b$ en formato vector. Disponemos, al menos, de dos formas:</p>

︡567e1096-8ce3-47eb-a2cd-53641c363a80︡{"html": "<p>Para resolver un sistema lineal $Ax=b$ , primero debemos haber guardado los datos de la matriz $A$ en formato matriz y los datos del vector de t&eacute;rminos independientes $b$ en formato vector. Disponemos, al menos, de dos formas:</p>"}︡
︠e8bd7658-f8c4-4107-bd50-83be9ca55229︠
A.solve_right(b)
︡e4ff9736-db37-45bf-b870-bb37ea969571︡{"stdout": "(2, 1, -1)"}︡
︠a54ad3bc-9efa-41ce-84b1-39b9893afb13︠
A \ b
︡bcab0435-404a-4128-b4b4-3eee7fd3e99b︡{"stdout": "(2, 1, -1)"}︡
︠fb4ca92c-7cb7-4b1f-99fc-6eec34d056c2i︠
%html
<p>Comprobamos que $A$ es no singular hallando su determinante:</p>

︡6f74d85c-6c24-4649-ae97-da1f2c8e5b6b︡{"html": "<p>Comprobamos que $A$ es no singular hallando su determinante:</p>"}︡
︠ffe2cabc-d063-491d-bfa1-dfe1a4184ea6︠
print A.det()
A.det() == 0
︡3b287424-87f6-4df0-ace8-c9e6d500a203︡{"stdout": "299/3\nFalse"}︡
︠876ef074-3c86-4860-9882-8392ce93ecc3i︠
%html
<p>Traspuesta de la matriz:</p>

︡090b79e7-071c-44e4-9e96-b37ecb117de1︡{"html": "<p>Traspuesta de la matriz:</p>"}︡
︠73ed4e34-d2b0-415b-8c23-eb15b727c85f︠
print A
print
print A.transpose()
︡e8c14b87-de76-4f23-816e-42c3e7239b0a︡{"stdout": "[  2   1 1/3]\n[ -1   6   2]\n[1/2   1   8]\n\n[  2  -1 1/2]\n[  1   6   1]\n[1/3   2   8]"}︡
︠f4c2e985-f6df-4f21-b1bc-83aed1ca1e43i︠
%html
<p>Hallamos $A^{-1}$</p>

︡020831cd-3e30-459a-8dd8-7e36a0396a88︡{"html": "<p>Hallamos $A^{-1}$</p>"}︡
︠ad0b86fa-4c18-4b07-b4da-b8e5b0fafd87︠
A.inverse()
︡1c35e688-4ea2-4535-a682-abe5e675bf15︡{"stdout": "[   6/13   -1/13       0]\n[ 27/299  95/598   -1/23]\n[-12/299  -9/598    3/23]"}︡
︠0f76dc65-e9dd-479d-a939-3230ad8f8f6ci︠
%html
<p>Los vectores act&uacute;an indistintamente como filas o columnas, sin necesidad de introducir &oacute;rdenes para trasponerlos:</p>

︡b9999f74-2763-49d2-9c24-466d03a265fd︡{"html": "<p>Los vectores act&uacute;an indistintamente como filas o columnas, sin necesidad de introducir &oacute;rdenes para trasponerlos:</p>"}︡
︠930805c0-359f-485c-aedc-a7452dd98f78︠
b*A
︡b4e3351d-7700-441a-98c9-b63b71233372︡{"stdout": "(13/3, 32/3, -382/9)"}︡
︠a0f59693-b754-4825-b223-99d374941fd2︠
A*b
︡c2154ee8-8102-4dbb-ac9a-26403845dd13︡{"stdout": "(28/3, -14/3, -131/3)"}︡
︠6a34375c-7f99-4f7a-9c1a-8fb92f2875a6i︠
%html
<p>Calculamos $A^{-1}b$</p>

︡98d32a37-0cba-4392-a0d5-a1592568a3dc︡{"html": "<p>Calculamos $A^{-1}b$</p>"}︡
︠bab6883a-e434-44e1-9b0b-eced24c02e23︠
A.inverse()*b
︡1000bfe9-9fe9-4008-8b18-d8de249fc3ae︡{"stdout": "(2, 1, -1)"}︡
︠8a63cb96-7cdb-4d49-a523-f10deecae613i︠
%html
<p>Podemos convertir un vector en una matriz fila:</p>

︡a7907875-40d4-48d3-941f-36f4883d1e58︡{"html": "<p>Podemos convertir un vector en una matriz fila:</p>"}︡
︠82671fd8-4c15-4647-b1f0-aec04836f0ed︠
show(b)
mb = matrix(b)
show(mb)
︡ca3d2aeb-0e16-436d-9069-174d052d4c36︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\frac{14}{3},\\,2,\\,-6\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n\\frac{14}{3} & 2 & -6\n\\end{array}\\right)", "display": true}}︡
︠175e1a5d-0f3c-4387-a4df-5546875a4671i︠
%html
<p>O en una matriz columna:</p>

︡343e5903-627e-4623-81d7-0dfbd521251b︡{"html": "<p>O en una matriz columna:</p>"}︡
︠e3466c34-2be3-4d9b-b34f-b83c6f54ca29︠
show(b)
mbt = matrix(b).transpose()
show(mbt)
︡ad6ce76f-04a1-471e-af59-9c4dbc03dfed︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\frac{14}{3},\\,2,\\,-6\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{r}\n\\frac{14}{3} \\\\\n2 \\\\\n-6\n\\end{array}\\right)", "display": true}}︡
︠fa93d46f-e67e-4fbe-a41e-e23d8fbf4d2ei︠
%html
<p>Algunos datos b&aacute;sicos de una matriz y extracci&oacute;n de vectores filas o columnas.</p>
<p>Obs&eacute;rvese que en SAGE se enumeran los elementos empezando por 0:</p>

︡df2b4c76-58a7-4b1a-baca-0d0e5f2084dd︡{"html": "<p>Algunos datos b&aacute;sicos de una matriz y extracci&oacute;n de vectores filas o columnas.</p>\r\n<p>Obs&eacute;rvese que en SAGE se enumeran los elementos empezando por 0:</p>"}︡
︠30e8afbc-82f0-4f7c-835a-abcc9f8bb3d3︠
print "rango:", A.rank()
print "nº columnas:", A.ncols()
print "nº filas:", A.nrows()
print "3ª fila:", A.row(2)
print "1ª columna:", A.column(0)
︡23bf5db4-c795-49b9-bf03-7a8113086ca1︡{"stdout": "rango: 3\nn\u00ba columnas: 3\nn\u00ba filas: 3\n3\u00aa fila: (1/2, 1, 8)\n1\u00aa columna: (2, -1, 1/2)"}︡
︠c88f937c-2ad1-484b-b984-194bc0998f20i︠
%html
<p>Extracci&oacute;n de una submatriz:</p>

︡4a7338bf-e7f2-4c62-b1cc-28953a115e70︡{"html": "<p>Extracci&oacute;n de una submatriz:</p>"}︡
︠0f2e1a0e-ebad-47a3-a339-462d42341f75︠
B = matrix([[1, -1, 4],[-1, 0, 3],[5, -2, 4]]);
show(B)
︡c995ee53-a1fb-4186-bce2-9af532f89772︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n1 & -1 & 4 \\\\\n-1 & 0 & 3 \\\\\n5 & -2 & 4\n\\end{array}\\right)", "display": true}}︡
︠e1b99138-dc0c-4b95-9fb1-bfacd756763f︠
B2 = B.submatrix(0, 1, 2, 2)
show(B2)
︡d718189a-f985-4bbd-9ea4-0b221f15b942︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rr}\n-1 & 4 \\\\\n0 & 3\n\\end{array}\\right)", "display": true}}︡
︠f84b983f-76b5-4175-abf7-48e8b5339e9ei︠
%html
<p>Agrupar dos matrices por filas:</p>

︡8906ad88-aca2-4ca6-a171-43a96d8a33f8︡{"html": "<p>Agrupar dos matrices por filas:</p>"}︡
︠3497a882-44d6-41c2-ad48-e78d5d00af10︠
A.augment(B)
︡1b4aa1ca-85a3-4b1a-b7e3-ba3a9d04eb69︡{"stdout": "[  2   1 1/3   1  -1   4]\n[ -1   6   2  -1   0   3]\n[1/2   1   8   5  -2   4]"}︡
︠f27b8ce1-fbc2-41cd-aef4-420c9004fb3ci︠
%html
<p>Agrupar dos matrices por columnas:</p>

︡556175c5-061c-4f76-831b-a4a047eec0eb︡{"html": "<p>Agrupar dos matrices por columnas:</p>"}︡
︠c665db7a-cfde-4a58-bde7-5e4b83503962︠
A.stack(B)
︡640f43c7-924c-45f2-9bd7-0410d8d1ffd7︡{"stdout": "[  2   1 1/3]\n[ -1   6   2]\n[1/2   1   8]\n[  1  -1   4]\n[ -1   0   3]\n[  5  -2   4]"}︡
︠c78149ac-f2f0-4f63-9202-4ceb5f752f80i︠
%html
<p>Matriz identidad de orden 3:</p>

︡a532af29-cca5-429d-98a8-2de1cb37802f︡{"html": "<p>Matriz identidad de orden 3:</p>"}︡
︠ceb4b1ae-756b-4d9e-958f-fc1785e92bb9︠
identity_matrix(3)
︡0dd4faf9-17a3-465c-808a-1d80bb4e6350︡{"stdout": "[1 0 0]\n[0 1 0]\n[0 0 1]"}︡
︠0e06a1bc-fcc9-4647-9f22-70acc6f6f8b9i︠
%html
<p>Matriz diagonal:</p>

︡3c944cd7-6150-490c-9fb4-a42102b67499︡{"html": "<p>Matriz diagonal:</p>"}︡
︠4fc28782-178f-4ffe-a6aa-cee0fc26be12︠
diagonal_matrix(3, [2, -3, 4])
︡79f29ced-bb71-41c3-b238-be69b1983dff︡{"stdout": "[ 2  0  0]\n[ 0 -3  0]\n[ 0  0  4]"}︡
︠5e8fc71b-eaa5-4ca5-a2f1-520ac167bbb7i︠
%html
<p>Matriz nula de tama&ntilde;o 3x2:</p>

︡893471d1-7d33-42a6-a010-2d855a9d6af1︡{"html": "<p>Matriz nula de tama&ntilde;o 3x2:</p>"}︡
︠acaf01d0-52a3-4b98-bb12-4c3ff708ee01︠
matrix(3, 2, 0)
︡c52416cf-ec96-4a75-8ba5-8204a001d11f︡{"stdout": "[0 0]\n[0 0]\n[0 0]"}︡
︠84813a6f-c358-457e-9d46-7250af02d2f2i︠
%html
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<h2><a name="flotante"></a>Representaci&oacute;n de n&uacute;meros reales en punto flotante</h2>
<p>&nbsp;La mayor&iacute;a de los ordenadores utilizan para la representaci&oacute;n y almacenamiento de n&uacute;meros reales lo que se conoce como el&nbsp;<strong>estandar de aritm&eacute;tica de punto flotante de la IEEE</strong> <strong>(norma IEEE 754)</strong>. Esto uniformiz&oacute; los procesos de representaci&oacute;n de n&uacute;meros entre distintos ordenadores y sistemas, facilitando as&iacute; las comparaciones y an&aacute;lisis de errores. En este est&aacute;ndar, la&nbsp;<strong>representaci&oacute;n en punto flotante</strong>&nbsp;de un n&uacute;mero $x$ tiene la forma:&nbsp;</p>
<p>$$fl(x)=\sigma\cdot(1+m)\cdot 2^n$$&nbsp;</p>
<p>donde $\sigma\in\{0,1\}$ representa el <strong>signo </strong>de $x$ ($\sigma=0$ para positivo y $\sigma=1$ para negativo), $m$ es la&nbsp;<strong>mantisa&nbsp;</strong>que satisface $0\leq m&lt;1$&nbsp;y se representa con $t$ cifras binarias&nbsp; y $n$, el <strong>exponente</strong>, es un n&uacute;mero entero con valores determinados por los n&uacute;meros naturales $N$ y $M$, seg&uacute;n la relaci&oacute;n $-N\leq n\leq M$. Generalmente se utiliza <strong>t&eacute;cnica de redondeo</strong> para obtener el &uacute;ltimo d&iacute;gito de la mantisa.</p>
<p>Cuando un n&uacute;mero almacenado bajo este est&aacute;ndar es <strong>representado en pantalla</strong>, se utiliza un n&uacute;mero $d$ determinado de <strong>d&iacute;gitos significativos exactos</strong> que viene dado, generalmente, por $d=\lfloor&nbsp;t/\log_2(10)\rfloor$.</p>
<ul>
<li>En <strong>precisi&oacute;n sencilla</strong>, $f(x)$ se almacena en una palabra de 32 bits con 1 bit para $\sigma$, 8 para $n$, de donde resulta $N = 126$, $M = 127$ y &nbsp;con $t = 23$. Se suele mostrar $d=6$ d&iacute;gitos.</li>
<li>En <strong>precisi&oacute;n doble</strong>, $f(x)$ se almacena en una palabra de 64 bits con 1 bit para $\sigma$, 11 para $n$, de donde resulta $N = 1022$, $M = 1023$ y con $t = 52$. Se suele mostrar $d=15$ d&iacute;gitos.</li>
<li><strong>SAGE</strong> utiliza, por defecto, 53 bits para la representaci&oacute;n de la mantisa en punto flotante y no sigue estrictamente la norma IEEE 754. Por contra, permite operar con una precisi&oacute;n arbitraria, elegida por el usuario.</li>
</ul>
</div>
<p>&nbsp;</p>

<h3>Herramientas para el an&aacute;lisis de n&uacute;meros reales en punto flotante</h3>
<p>A continuaci&oacute;n, ejecutando el siguiente c&oacute;digo, se genera un script que  permite analizar detalles sobre la representaci&oacute;n mediante ordenador de  n&uacute;meros en punto flotante. Puedes experimentar con diferentes n&uacute;meros y modificar la precisi&oacute;n empleada;  por defecto, aparece el valor del n&uacute;mero $\pi$ con una precisi&oacute;n de 14 bits para la mantisa.</p>

︡64c93d58-c5b3-4547-87e4-2dada6fd52f1︡{"html": "<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\n<h2><a name=\"flotante\"></a>Representaci&oacute;n de n&uacute;meros reales en punto flotante</h2>\n<p>&nbsp;La mayor&iacute;a de los ordenadores utilizan para la representaci&oacute;n y almacenamiento de n&uacute;meros reales lo que se conoce como el&nbsp;<strong>estandar de aritm&eacute;tica de punto flotante de la IEEE</strong> <strong>(norma IEEE 754)</strong>. Esto uniformiz&oacute; los procesos de representaci&oacute;n de n&uacute;meros entre distintos ordenadores y sistemas, facilitando as&iacute; las comparaciones y an&aacute;lisis de errores. En este est&aacute;ndar, la&nbsp;<strong>representaci&oacute;n en punto flotante</strong>&nbsp;de un n&uacute;mero $x$ tiene la forma:&nbsp;</p>\n<p>$$fl(x)=\\sigma\\cdot(1+m)\\cdot 2^n$$&nbsp;</p>\n<p>donde $\\sigma\\in\\{0,1\\}$ representa el <strong>signo </strong>de $x$ ($\\sigma=0$ para positivo y $\\sigma=1$ para negativo), $m$ es la&nbsp;<strong>mantisa&nbsp;</strong>que satisface $0\\leq m&lt;1$&nbsp;y se representa con $t$ cifras binarias&nbsp; y $n$, el <strong>exponente</strong>, es un n&uacute;mero entero con valores determinados por los n&uacute;meros naturales $N$ y $M$, seg&uacute;n la relaci&oacute;n $-N\\leq n\\leq M$. Generalmente se utiliza <strong>t&eacute;cnica de redondeo</strong> para obtener el &uacute;ltimo d&iacute;gito de la mantisa.</p>\n<p>Cuando un n&uacute;mero almacenado bajo este est&aacute;ndar es <strong>representado en pantalla</strong>, se utiliza un n&uacute;mero $d$ determinado de <strong>d&iacute;gitos significativos exactos</strong> que viene dado, generalmente, por $d=\\lfloor&nbsp;t/\\log_2(10)\\rfloor$.</p>\n<ul>\n<li>En <strong>precisi&oacute;n sencilla</strong>, $f(x)$ se almacena en una palabra de 32 bits con 1 bit para $\\sigma$, 8 para $n$, de donde resulta $N = 126$, $M = 127$ y &nbsp;con $t = 23$. Se suele mostrar $d=6$ d&iacute;gitos.</li>\n<li>En <strong>precisi&oacute;n doble</strong>, $f(x)$ se almacena en una palabra de 64 bits con 1 bit para $\\sigma$, 11 para $n$, de donde resulta $N = 1022$, $M = 1023$ y con $t = 52$. Se suele mostrar $d=15$ d&iacute;gitos.</li>\n<li><strong>SAGE</strong> utiliza, por defecto, 53 bits para la representaci&oacute;n de la mantisa en punto flotante y no sigue estrictamente la norma IEEE 754. Por contra, permite operar con una precisi&oacute;n arbitraria, elegida por el usuario.</li>\n</ul>\n</div>\n<p>&nbsp;</p>\n\n<h3>Herramientas para el an&aacute;lisis de n&uacute;meros reales en punto flotante</h3>\r\n<p>A continuaci&oacute;n, ejecutando el siguiente c&oacute;digo, se genera un script que  permite analizar detalles sobre la representaci&oacute;n mediante ordenador de  n&uacute;meros en punto flotante. Puedes experimentar con diferentes n&uacute;meros y modificar la precisi&oacute;n empleada;  por defecto, aparece el valor del n&uacute;mero $\\pi$ con una precisi&oacute;n de 14 bits para la mantisa.</p>"}︡
︠96eb2ed8-2987-44aa-b477-7543e2b6a06ea︠
%auto
pretty_print(html("<h4>Representación de un número real en el ordenador</h3>"))
@interact
def puntoflotante( x = input_box( default = pi, label = 'Introduzca un número real:'), precision = slider(vmin = 2, vmax = 53, step_size = 1, default = 14, label = 'nº de bits de precisión:')):
    xp = n(x, prec=precision)  # repr. de x a la precision "precision"
    xm = n(x)                          # repr. de x con mantisa de 53 bits
    (s , m , e) = xp.sign_mantissa_exponent()
    xp_rat = s*m*2^e  # Conversión de xp a racional
    xx = n(xp_rat)    # Conversión de xp a float de precision 53 bits
    ## Debajo: signo de e , valor absoluto de e, cadena de caracteres representando el signo
    (sign_e, abs_e, print_sign) = (+1, e, " ") if e >= 0 else (-1, -e, "-")
    print_m = "".join( reversed(map(str, m.digits(base = 2))) )                   # cadena de bits para m, peso fuerte antes.
    print_e = print_sign + "".join( reversed(map(str, abs_e.digits(base = 2))) )  # cadena de bits para e, peso fuerte antes.
    pretty_print(html('Representación binaria para la precisión dada (%s bits)'%precision))
    pretty_print(html('   mantisa (%s bits):  '%(precision) + print_m))
    pretty_print(html('   exponente        : '+ print_e))
    pretty_print(html(''))
    pretty_print(html('Representación racional $\sigma\cdot m\cdot 2^n$'))
    pretty_print(html('signo $\sigma=$ %s   mantisa $m=$ %s   exponente $n=$ %s'%(s, m, e)))
    print
    pretty_print(html('Valor numérico con máxima precisión (53 bits)'))
    print xm
    pretty_print(html('Valor numérico para la precisión dada (%s bits)'%precision))
    print xp
    pretty_print(html('Error absoluto de redondeo'))
    ear=abs(xm-xx); print ear
    pretty_print(html('Error relativo de redondeo '))
    err=ear/abs(xm); print err
    if ear != 0:
        pretty_print(html('Número de cifras decimales exactas'))
        nds=floor(abs(-log(2*ear,10)))
        print nds
        pretty_print(html('Número de cifras significativas exactas'))
        ncs=floor(-log(2*err,10))
        print ncs
        pretty_print(html('Aproximación con %s cifras decimales exactas'%nds))
        print x.n(digits=nds)
        pretty_print(html('Aproximación con %s cifras significativas exactas'%ncs))
        print x.n(digits=ncs)
    pretty_print(html('Representación en pantalla'))
    print xp
︡0de5f416-98ff-4208-b379-bd45a2e5931b︡{"stdout": "<html><font color='black'><h4>Representaci\u00f3n de un n\u00famero real en el ordenador</h3></font></html>"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}", "display": false}}︡{"html": "<!--notruncate-->\n        <div padding=6 id=\"div-interact-626\">\n          <table width=800px height=20px bgcolor=\"#c5c5c5\" cellpadding=15>\n            <tr>\n              <td bgcolor=\"#f9f9f9\" valign=top align=left>\n            <table>\n              <tr><td colspan=3><table><tr><td align=right><font color=\"black\">Introduzca un n\u00famero real:&nbsp;</font></td><td><input type=\"text\" value=\"pi\" size=80 onchange=\"interact(626, {variable: 'x', adapt_number: 1, value: encode64(this.value)}, 1)\"></input></td>\n</tr><tr><td align=right><font color=\"black\">n\u00ba de bits de precisi\u00f3n:&nbsp;</font></td><td>\n        <table>\n          <tr>\n            <td>\n              <div id=\"slider-precision-626\" style=\"margin:0px; margin-left: 1.0em; margin-right: 1.0em; width: 15.0em;\"></div>\n            </td>\n            \n            <td>\n              <font color=\"black\" id=\"slider-precision-626-lbl\"></font>\n            </td>\n          </tr>\n        </table><script>\n    (function() {\n        var values = [\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\"];\n        setTimeout(function() {\n            $('#slider-precision-626').slider({\n                step: 1,\n                min: 0,\n                max: 51,\n                value: 12,\n                change: function (e, ui) {\n                    var position = ui.value;\n                    if (values != null) {\n                        $('#slider-precision-626-lbl').text(values[position]);\n                        interact(626, {variable: 'precision', adapt_number: 2, value: encode64(position)}, 1);\n                    }\n                },\n                slide: function (e, ui) {\n                    if (values != null) {\n                        $('#slider-precision-626-lbl').text(values[ui.value]);\n                    }\n                }\n            });\n            if (values != null) {\n                $('#slider-precision-626-lbl').text(values[$('#slider-precision-626').slider('value')]);\n            }\n        }, 1);\n    })();\n    </script></td>\n</tr></table></td></tr>\n              <tr><td></td><td style='width: 100%;'>\n        <div id=\"cell-interact-626\"><?__SAGE__START>\n          <table border=0 bgcolor=\"white\" width=100%>\n            <tr>\n              <td bgcolor=\"white\" align=left valign=top>\n                <pre><?__SAGE__TEXT></pre>\n              </td>\n            </tr>\n            <tr>\n              <td align=left valign=top><?__SAGE__HTML></td>\n            </tr>\n          </table><?__SAGE__END>\n        </div></td><td></td></tr>\n              <tr><td colspan=3></td></tr>\n            </table></td>\n            </tr>\n          </table>\n        </div>"}︡
︠722d763d-1a17-4147-908c-0981d176d29ei︠
%html
<p>Podemos disponer del script anterior como una funci&oacute;n del tipo <span style="color: #0000ff;">puntoflotante</span><span style="color: #0000ff;">(x,prec)</span>, donde&nbsp;<span style="color: #0000ff;">x</span>&nbsp;es el n&uacute;mero estudiado y&nbsp;<span style="color: #0000ff;">prec</span>&nbsp;indica la cantidad de bits de precisi&oacute;n para la mantisa, aunque con este uso perdemos la capacidad interactiva del script.</p>

︡735fdefe-eecd-46d0-953b-c877cfefae01︡{"html": "<p>Podemos disponer del script anterior como una funci&oacute;n del tipo <span style=\"color: #0000ff;\">puntoflotante</span><span style=\"color: #0000ff;\">(x,prec)</span>, donde&nbsp;<span style=\"color: #0000ff;\">x</span>&nbsp;es el n&uacute;mero estudiado y&nbsp;<span style=\"color: #0000ff;\">prec</span>&nbsp;indica la cantidad de bits de precisi&oacute;n para la mantisa, aunque con este uso perdemos la capacidad interactiva del script.</p>"}︡
︠30d07a2e-4420-477c-b46e-b58035a6c1ba︠
puntoflotante(pi,14)
︡9b3e883c-8db0-46c9-8115-dfa3f5f14d18︡{"html": "Representaci\u00f3n binaria para la precisi\u00f3n dada (14 bits)"}︡{"html": "   mantisa (14 bits):  11001001000100"}︡{"html": "   exponente        : -1100"}︡{"html": ""}︡{"html": "Representaci\u00f3n racional <script type=\"math/tex\">\\sigma\\cdot m\\cdot 2^n</script>"}︡{"html": "signo <script type=\"math/tex\">\\sigma=</script> 1   mantisa <script type=\"math/tex\">m=</script> 12868   exponente <script type=\"math/tex\">n=</script> -12"}︡{"html": "Valor num\u00e9rico con m\u00e1xima precisi\u00f3n (53 bits)"}︡{"stdout": "3.14159265358979"}︡{"html": "Valor num\u00e9rico para la precisi\u00f3n dada (14 bits)"}︡{"stdout": "3.14"}︡{"html": "Error absoluto de redondeo"}︡{"stdout": "8.90891020688400e-6"}︡{"html": "Error relativo de redondeo "}︡{"stdout": "2.83579419397486e-6"}︡{"html": "N\u00famero de cifras decimales exactas"}︡{"stdout": "4"}︡{"html": "N\u00famero de cifras significativas exactas"}︡{"stdout": "5"}︡{"html": "Aproximaci\u00f3n con 4 cifras decimales exactas"}︡{"stdout": "3.142"}︡{"html": "Aproximaci\u00f3n con 5 cifras significativas exactas"}︡{"stdout": "3.1416"}︡{"html": "Representaci\u00f3n en pantalla"}︡{"stdout": "3.14"}︡
︠658b0118-1593-4612-b3c4-83e2cd4a8ac2i︠
%html
<p>Tambi&eacute;n disponemos de la funci&oacute;n <span style="color: #0000ff;">n( )</span>&nbsp; y su equivalente <span style="color: #0000ff;">N( )</span>&nbsp; a la que podemos incluir como par&aacute;metros opcionales el n&uacute;mero de bits de precisi&oacute;n para la mantisa o el n&uacute;mero de d&iacute;gitos o cifras exactas empleadas. Por ejemplo, vamos a obtener diferentes valores aproximados de $\pi$ para 53 bits (valor por defecto), 20 bits, 10 cifras exactas y 30 cifras exactas:</p>

︡df2c354e-9238-4ac3-91cf-18056e5dc187︡{"html": "<p>Tambi&eacute;n disponemos de la funci&oacute;n <span style=\"color: #0000ff;\">n( )</span>&nbsp; y su equivalente <span style=\"color: #0000ff;\">N( )</span>&nbsp; a la que podemos incluir como par&aacute;metros opcionales el n&uacute;mero de bits de precisi&oacute;n para la mantisa o el n&uacute;mero de d&iacute;gitos o cifras exactas empleadas. Por ejemplo, vamos a obtener diferentes valores aproximados de $\\pi$ para 53 bits (valor por defecto), 20 bits, 10 cifras exactas y 30 cifras exactas:</p>"}︡
︠9a037693-3fc8-4929-8757-e53577250409︠
pi.show()
print n(pi)
print n(pi, prec = 20)
print N(pi, digits = 10)
print n(pi, digits = 30)
︡74543d4d-47f4-4b3b-81cf-2ebff6bde4c8︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\pi", "display": true}}︡{"stdout": "3.14159265358979\n3.1416\n3.141592654\n3.14159265358979323846264338328"}︡
︠405434bc-a5d2-47ca-b37c-8adff0af66f0i︠
%html
<h3>Ejemplo 2:</h3>
<p>a) Averiguar cu&aacute;ntos bits hace falta como m&iacute;nimo para almacenar el valor $x=\sqrt{2}$ con cinco cifras decimales exactas de precisi&oacute;n. En SAGE expresamos $\sqrt{2}=$ sqrt(2.).</p>
<p>b) Si un microprocesador matem&aacute;tico s&oacute;lo dispone de 24 bits para almacenar la mantisa de los n&uacute;meros en coma flotante, &iquest;cu&aacute;ntas cifras significativas exactas de precisi&oacute;n proporcionar&aacute; para sus c&aacute;lculos?</p>

<p><strong>Algunas observaciones importantes:</strong></p>
<p><strong>&nbsp;</strong>1.- &nbsp;Es fundamental no confundir la representaci&oacute;n en pantalla de un n&uacute;mero real en coma flotante con su almacenamiento interno. En el siguiente ejemplo, el n&uacute;mero&nbsp;<span style="font-family: serif; font-style: normal; font-weight: normal; line-height: normal; text-indent: 0px; white-space: normal; text-align: left;"><span style="text-align: left; font-size: 18px; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="text-align: left; position: relative; top: 0.344em; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="text-align: left; font-size: 13px; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="text-align: left; font-family: serif; padding: 0px; margin: 0px; border: 0px initial initial;">3</span></span></span><span style="text-align: left; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: -0.326em; position: relative; top: -0.393em; padding: 0px; border: 0px initial initial;"><span style="text-align: left; font-size: 13px; padding: 0px; margin: 0px; border: 0px initial initial;"><span style="text-align: left; font-family: serif; padding: 0px; margin: 0px; border: 0px initial initial;">1</span></span></span></span></span>&nbsp;es almacenado con una precisi&oacute;n de 8 cifras binarias para la mantisa y posteriormente comprobamos como internamente el n&uacute;mero difiere de lo que vemos en pantalla.</p>

︡aebd1f53-3057-4788-90ec-4400bbf129a5︡{"html": "<h3>Ejemplo 2:</h3>\n<p>a) Averiguar cu&aacute;ntos bits hace falta como m&iacute;nimo para almacenar el valor $x=\\sqrt{2}$ con cinco cifras decimales exactas de precisi&oacute;n. En SAGE expresamos $\\sqrt{2}=$ sqrt(2.).</p>\n<p>b) Si un microprocesador matem&aacute;tico s&oacute;lo dispone de 24 bits para almacenar la mantisa de los n&uacute;meros en coma flotante, &iquest;cu&aacute;ntas cifras significativas exactas de precisi&oacute;n proporcionar&aacute; para sus c&aacute;lculos?</p>\n\n<p><strong>Algunas observaciones importantes:</strong></p>\n<p><strong>&nbsp;</strong>1.- &nbsp;Es fundamental no confundir la representaci&oacute;n en pantalla de un n&uacute;mero real en coma flotante con su almacenamiento interno. En el siguiente ejemplo, el n&uacute;mero&nbsp;<span style=\"font-family: serif; font-style: normal; font-weight: normal; line-height: normal; text-indent: 0px; white-space: normal; text-align: left;\"><span style=\"text-align: left; font-size: 18px; padding: 0px; margin: 0px; border: 0px initial initial;\"><span style=\"text-align: left; position: relative; top: 0.344em; padding: 0px; margin: 0px; border: 0px initial initial;\"><span style=\"text-align: left; font-size: 13px; padding: 0px; margin: 0px; border: 0px initial initial;\"><span style=\"text-align: left; font-family: serif; padding: 0px; margin: 0px; border: 0px initial initial;\">3</span></span></span><span style=\"text-align: left; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: -0.326em; position: relative; top: -0.393em; padding: 0px; border: 0px initial initial;\"><span style=\"text-align: left; font-size: 13px; padding: 0px; margin: 0px; border: 0px initial initial;\"><span style=\"text-align: left; font-family: serif; padding: 0px; margin: 0px; border: 0px initial initial;\">1</span></span></span></span></span>&nbsp;es almacenado con una precisi&oacute;n de 8 cifras binarias para la mantisa y posteriormente comprobamos como internamente el n&uacute;mero difiere de lo que vemos en pantalla.</p>"}︡
︠ae83dc2c-9aee-4b02-873a-0817c7d870ef︠
a = 1/3.
b = a.n(prec = 8)
b
︡92edaac8-a7c9-455c-940a-4a46b49d1ce2︡{"stdout": "0.33"}︡
︠80cd7fa7-2019-42ce-8e6f-7b5c1c7f21cb︠
b-0.33
︡1d1e80c4-0353-4dc1-9741-68eecc7792d1︡{"stdout": "0.0039"}︡
︠f46badec-477f-4ad4-93ab-0389070dba05︠
a - 0.33
︡516a4b0f-4a43-49bd-9c18-d44745d8b0b6︡{"stdout": "0.00333333333333330"}︡
︠d2a4ad3b-5085-464b-abcd-32d2d77f2184i︠
%html
<p>2.- Si realizamos una operaci&oacute;n con dos n&uacute;meros en punto flotante, el programa primero ajustar&aacute; ambos n&uacute;meros a la representaci&oacute;n de menor mantisa y posteriormente realizar&aacute; la operaci&oacute;n.</p>

︡f353ce37-f0aa-49c8-89cd-8c9ef57a33fa︡{"html": "<p>2.- Si realizamos una operaci&oacute;n con dos n&uacute;meros en punto flotante, el programa primero ajustar&aacute; ambos n&uacute;meros a la representaci&oacute;n de menor mantisa y posteriormente realizar&aacute; la operaci&oacute;n.</p>"}︡
︠f492eb97-1ac0-4354-9161-420b0f737557︠
b.base_ring()
︡9bbdfbf6-fc2c-41f9-b5bd-a0fb3b4003c1︡{"stdout": "Real Field with 8 bits of precision"}︡
︠a7b5c925-a304-469e-9594-0bcbe2d68efc︠
1.23456789.base_ring()
︡96e9f9bf-4dd1-4ec6-bf23-5f35363a8615︡{"stdout": "Real Field with 53 bits of precision"}︡
︠cf067319-764e-4c6f-a592-7c79a0fc6c69︠
c = b*1.23456789; print c
︡ae317c68-31d3-4e39-9cb9-0025010e9875︡{"stdout": "0.41"}︡
︠f048a3ee-73f7-4ebd-a24b-cdfbd9fda56e︠
c.base_ring()
︡e36db145-6e8f-423f-8dde-ee7217d63a5c︡{"stdout": "Real Field with 8 bits of precision"}︡
︠4c57eb0d-12c1-4e6f-9682-c10a89372411i︠
%html
<h2 style="font-size: 1.5em;"><a name="eliminacion"></a>Eliminaci&oacute;n gaussina y algoritmo de Gauss-Jordan</h2>
<p>Hemos visto en clase los siguientes teoremas:</p>
<p><strong>Teorema 1</strong>.(algoritmo de eliminaci&oacute;n gaussiana) &nbsp;Para cualquier matriz $A$ de orden $m x n$ existe otra matriz cuadrada $F$ de orden $m$ tal que $F\cdot A=U$, siendo $U$ una matriz escalonada.</p>
<p><strong>Teorema 2</strong>. (algoritmo de Gauss-Jordan) En el resultado anterior, podemos conseguir, adem&aacute;s, que $U$ sea una matriz escalonada can&oacute;nica.</p>
<p>&nbsp;</p>
<p>Como bien sabemos, los algoritmos correspondientes que resuelven ambos problemas se basan en la aplicaci&oacute;n de transformaciones elementales fila sobre la matriz ampliada del sistema.</p>
<p>&nbsp;</p>
<p>SAGE incorpora algunas instrucciones relacionadas con las transformaciones elementales entre filas de una matriz y con el proceso de escalonamiento para obtener una matriz escalonada can&oacute;nica.</p>

︡b8874da7-515a-435c-b9b9-1fe565330009︡{"html": "<h2 style=\"font-size: 1.5em;\"><a name=\"eliminacion\"></a>Eliminaci&oacute;n gaussina y algoritmo de Gauss-Jordan</h2>\n<p>Hemos visto en clase los siguientes teoremas:</p>\n<p><strong>Teorema 1</strong>.(algoritmo de eliminaci&oacute;n gaussiana) &nbsp;Para cualquier matriz $A$ de orden $m x n$ existe otra matriz cuadrada $F$ de orden $m$ tal que $F\\cdot A=U$, siendo $U$ una matriz escalonada.</p>\n<p><strong>Teorema 2</strong>. (algoritmo de Gauss-Jordan) En el resultado anterior, podemos conseguir, adem&aacute;s, que $U$ sea una matriz escalonada can&oacute;nica.</p>\n<p>&nbsp;</p>\n<p>Como bien sabemos, los algoritmos correspondientes que resuelven ambos problemas se basan en la aplicaci&oacute;n de transformaciones elementales fila sobre la matriz ampliada del sistema.</p>\n<p>&nbsp;</p>\n<p>SAGE incorpora algunas instrucciones relacionadas con las transformaciones elementales entre filas de una matriz y con el proceso de escalonamiento para obtener una matriz escalonada can&oacute;nica.</p>"}︡
︠d51bda8b-4dd2-4b71-927c-3948fc30ce0c︠
A = matrix([[2, 1, 1/3], [-1, 6, 2], [1/2, 1, 8]])
A
︡49e8dae7-7169-4d6f-8e76-bf773e62fcc7︡{"stdout": "[  2   1 1/3]\n[ -1   6   2]\n[1/2   1   8]"}︡
︠c3023d62-9539-43f6-b76a-f991fd15b8d6i︠
%html
<p>Hacemos una copia de la matriz $A$ y aplicamos un intercambio de filas:</p>

︡3eac6247-2103-4cdc-84bc-781cf1c43def︡{"html": "<p>Hacemos una copia de la matriz $A$ y aplicamos un intercambio de filas:</p>"}︡
︠66c2e21a-6ffc-4ea4-b006-639606a2e443︠
B = copy(A);
B.swap_rows(1, 2);
show(A)
print
show(B)
︡96d8101d-6be8-4e7d-bc6c-1fcb7ba0c76b︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n2 & 1 & \\frac{1}{3} \\\\\n-1 & 6 & 2 \\\\\n\\frac{1}{2} & 1 & 8\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n2 & 1 & \\frac{1}{3} \\\\\n\\frac{1}{2} & 1 & 8 \\\\\n-1 & 6 & 2\n\\end{array}\\right)", "display": true}}︡
︠083ffc0d-234a-4291-81b8-a2d31f3988eci︠
%html
<p>Ahora, multiplicamos una fila por un escalar:</p>

︡64a90854-7a1b-47e0-a71c-6eac65aae9cc︡{"html": "<p>Ahora, multiplicamos una fila por un escalar:</p>"}︡
︠395eab97-98f8-4173-aa34-143684ba2ea7︠
B = copy(A);
B.rescale_row(1, -2)
show(A)
print
show(B)
︡3641dfef-453d-4eaa-adb4-241896cea870︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n2 & 1 & \\frac{1}{3} \\\\\n-1 & 6 & 2 \\\\\n\\frac{1}{2} & 1 & 8\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n2 & 1 & \\frac{1}{3} \\\\\n2 & -12 & -4 \\\\\n\\frac{1}{2} & 1 & 8\n\\end{array}\\right)", "display": true}}︡
︠d79db7a4-2478-49c7-9ba8-923a38164a3bi︠
%html
<p>Finalmente, a una fila le sumamos un m&uacute;ltiplo de otra fila:</p>

︡abd8912a-b978-4464-986c-326c63d84d63︡{"html": "<p>Finalmente, a una fila le sumamos un m&uacute;ltiplo de otra fila:</p>"}︡
︠fb47fd09-6b16-4de3-9829-25ebcb146a44︠
B = copy(A);
B.add_multiple_of_row(2, 1, -1)
show(A)
print
show(B)
︡4969b7e5-1503-4ee7-8687-1c1b24adf13a︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n2 & 1 & \\frac{1}{3} \\\\\n-1 & 6 & 2 \\\\\n\\frac{1}{2} & 1 & 8\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n2 & 1 & \\frac{1}{3} \\\\\n-1 & 6 & 2 \\\\\n\\frac{3}{2} & -5 & 6\n\\end{array}\\right)", "display": true}}︡
︠80092995-4a7b-49b5-a25a-bc44b393c15ci︠
%html
<p>Dado el sistema lineal $Ax=b$, construimos la matriz ampliada $M$ del sistema:</p>

︡5e677a42-1230-4781-a1c8-44ee56ff2168︡{"html": "<p>Dado el sistema lineal $Ax=b$, construimos la matriz ampliada $M$ del sistema:</p>"}︡
︠063deb4e-35c6-4376-aa23-7748b3afdcf3︠
b = vector([14/3, 2, -6])

M = A.augment(matrix(b).transpose())
show(M)
︡27c8e097-7cff-48eb-a725-666efda65876︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n2 & 1 & \\frac{1}{3} & \\frac{14}{3} \\\\\n-1 & 6 & 2 & 2 \\\\\n\\frac{1}{2} & 1 & 8 & -6\n\\end{array}\\right)", "display": true}}︡
︠c9589305-53e6-4f1b-bf10-d95b1689120bi︠
%html
<p>Resoluci&oacute;n del sistema mediante eliminaci&oacute;n gaussiana aplicada a la matriz ampliada, obteniendo la <strong>forma escalonada <strong>can&oacute;nica</strong></strong>:</p>

︡8a1fe2e7-f37f-4dea-959c-cc2a090021f4︡{"html": "<p>Resoluci&oacute;n del sistema mediante eliminaci&oacute;n gaussiana aplicada a la matriz ampliada, obteniendo la <strong>forma escalonada <strong>can&oacute;nica</strong></strong>:</p>"}︡
︠bba2278a-891e-4896-9e8f-0584c9bbdd94︠
M.echelon_form()
︡52bc3c34-4bd5-4733-b6b1-647118fc2852︡{"stdout": "[ 1  0  0  2]\n[ 0  1  0  1]\n[ 0  0  1 -1]"}︡
︠bd3ea33a-2e7f-44d1-8c25-1810761e0994i︠
%html
<h3>Transformaciones elementales <em>(ad hoc)</em></h3>
<p>Para hacer m&aacute;s sencilla la sintaxis de las instrucciones para aplicar transformaciones elementales por filas o culumnas sobre una matriz, hemos creado nuevas funciones. En esta versi&oacute;n, las filas y columnas se enumeran comenzando por 1, lo que resulta m&aacute;s intuitivo para el usuario.</p>
<p>Las siguientes funciones, aplicadas sobre una matriz, producen transformaciones elementales:</p>
<p><span style="color: #0000ff;">Fij(A,i,j)</span> &nbsp; equivale a la transformaci&oacute;n elemental fila $F_{i,j}$ aplicada sobre la matriz $A$</p>
<p><span style="color: #0000ff;">Fia(A,i,a)</span> &nbsp; equivale a la transformaci&oacute;n elemental fila $F_{i}(a)$ aplicada sobre la matriz $A$</p>
<p><span style="color: #0000ff;">Fija(A,i,j,a)</span> &nbsp; equivale a la transformaci&oacute;n elemental fila $F_{i,j}(a)$ aplicada sobre la matriz $A$</p>
<p>Existe la versi&oacute;n equivalente para transformaciones elementales por columnas cambiando la F inicial por C:</p>
<p><span style="color: #0000ff;">Cij(A,i,j)</span>, &nbsp; <span style="color: #0000ff;">Cia(A,i,a)</span>, &nbsp; <span style="color: #0000ff;">Cija(A,i,j,a)</span></p>

︡125dc97b-905c-41a6-b4f8-299afc4959b3︡{"html": "<h3>Transformaciones elementales <em>(ad hoc)</em></h3>\r\n<p>Para hacer m&aacute;s sencilla la sintaxis de las instrucciones para aplicar transformaciones elementales por filas o culumnas sobre una matriz, hemos creado nuevas funciones. En esta versi&oacute;n, las filas y columnas se enumeran comenzando por 1, lo que resulta m&aacute;s intuitivo para el usuario.</p>\r\n<p>Las siguientes funciones, aplicadas sobre una matriz, producen transformaciones elementales:</p>\r\n<p><span style=\"color: #0000ff;\">Fij(A,i,j)</span> &nbsp; equivale a la transformaci&oacute;n elemental fila $F_{i,j}$ aplicada sobre la matriz $A$</p>\r\n<p><span style=\"color: #0000ff;\">Fia(A,i,a)</span> &nbsp; equivale a la transformaci&oacute;n elemental fila $F_{i}(a)$ aplicada sobre la matriz $A$</p>\r\n<p><span style=\"color: #0000ff;\">Fija(A,i,j,a)</span> &nbsp; equivale a la transformaci&oacute;n elemental fila $F_{i,j}(a)$ aplicada sobre la matriz $A$</p>\r\n<p>Existe la versi&oacute;n equivalente para transformaciones elementales por columnas cambiando la F inicial por C:</p>\r\n<p><span style=\"color: #0000ff;\">Cij(A,i,j)</span>, &nbsp; <span style=\"color: #0000ff;\">Cia(A,i,a)</span>, &nbsp; <span style=\"color: #0000ff;\">Cija(A,i,j,a)</span></p>"}︡
︠7b9fe75e-d268-4b9c-ba23-ea6c1404c042a︠
%auto

def Fij(M, i, j):
    M.swap_rows(i - 1, j - 1)
    return M
    
def Fia(M, i, a):
    M.rescale_row(i - 1, a)
    return M
    
def Fija(M, i, j, a):
    M.add_multiple_of_row(i - 1, j -1, a)
    return M
    
def Cij(M, i, j):
    (M.transpose()).swap_rows(i - 1, j - 1)
    return M
    
def Cia(M, i, a):
    M.rescale_col(i - 1, a)
    return M
    
def Cija(M, i, j, a):
    M.add_multiple_of_column(i - 1, j - 1, a)
    return M
︡4a9c58b7-b0e4-425a-b106-bee007d39312︡︡
︠80ee2716-6895-47bb-ad8c-2da41f23560fi︠
%html
<p>A modo de ejemplo, retomamos la matriz ampliada del sistema anterior y la escalonamos paso a paso:</p>

︡36184b42-2d55-4c39-8c97-0c2211d3eedc︡{"html": "<p>A modo de ejemplo, retomamos la matriz ampliada del sistema anterior y la escalonamos paso a paso:</p>"}︡
︠1966abea-a72a-459f-8d4c-856a36fded9f︠
M = A.augment(matrix(b).transpose())
show(M)
︡7cfad5a2-b006-4cdd-9b47-b847c3515a9e︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n2 & 1 & \\frac{1}{3} & \\frac{14}{3} \\\\\n-1 & 6 & 2 & 2 \\\\\n\\frac{1}{2} & 1 & 8 & -6\n\\end{array}\\right)", "display": true}}︡
︠ba312138-86e6-40d4-9478-7926b2fff91b︠
Fija(M, 2, 1, 1/2)
︡9b2f5313-23c1-45c3-b841-6350ce6be755︡{"stdout": "[   2    1  1/3 14/3]\n[   0 13/2 13/6 13/3]\n[ 1/2    1    8   -6]"}︡
︠d486d455-28d3-4c00-8ca8-e94169d96744︠
Fia(M, 2, 1/13)
︡6070957d-d8fe-460a-a37a-41599a0c538b︡{"stdout": "[   2    1  1/3 14/3]\n[   0  1/2  1/6  1/3]\n[ 1/2    1    8   -6]"}︡
︠0ad80c47-0adf-4487-b19c-414bfb3e8bd5︠
Fija(M, 3, 1, -1/4)
︡f12baf0b-fad5-4911-a6ec-67916718b4a1︡{"stdout": "[    2     1   1/3  14/3]\n[    0   1/2   1/6   1/3]\n[    0   3/4 95/12 -43/6]"}︡
︠936a4d14-7bbf-4733-97ff-43f397fa1ab8︠
Fija(M, 3, 2, (-3/4)/(1/2))
︡7a076b17-135f-45ad-a2d3-1fb1793c1523︡{"stdout": "[    2     1   1/3  14/3]\n[    0   1/2   1/6   1/3]\n[    0     0  23/3 -23/3]"}︡
︠249e0bf4-b907-451c-bd4c-bc3ee4557fb3︠
Fia(M, 3, 3/23)
︡99961dbb-debd-4af6-b30f-2dd72107b42b︡{"stdout": "[   2    1  1/3 14/3]\n[   0  1/2  1/6  1/3]\n[   0    0    1   -1]"}︡
︠e74a377b-55d0-4dff-9e3e-9079d84fcc8c︠
Fija(M, 2, 3, -1/6)
︡6443b518-fd4b-4cb6-8e68-70395c51754c︡{"stdout": "[   2    1  1/3 14/3]\n[   0  1/2    0  1/2]\n[   0    0    1   -1]"}︡
︠9bf64a92-a9d2-4a9c-b86d-41f76241dd23︠
Fija(M, 1, 3, -1/3)
︡6e671cfe-eab9-4135-be78-69020ddee05f︡{"stdout": "[  2   1   0   5]\n[  0 1/2   0 1/2]\n[  0   0   1  -1]"}︡
︠56ba5bc6-c5ec-411f-9c48-c74c61a84f76︠
Fia(M, 2, 2)
︡477256be-1112-4528-a8d6-43ee32a0e346︡{"stdout": "[ 2  1  0  5]\n[ 0  1  0  1]\n[ 0  0  1 -1]"}︡
︠b3cf2c9b-10c7-4f4e-9d2c-aedcd1a19f41︠
Fija(M, 1, 2, -1)
︡f5452648-fb15-4263-8434-84091bb5211c︡{"stdout": "[ 2  0  0  4]\n[ 0  1  0  1]\n[ 0  0  1 -1]"}︡
︠8cd3ba3f-673a-4d07-b356-eb39b1122a5a︠
Fia(M, 1, 1/2)
︡e5403e33-f7ab-4a92-a45c-982fbb14c60e︡{"stdout": "[ 1  0  0  2]\n[ 0  1  0  1]\n[ 0  0  1 -1]"}︡
︠fdf3c79e-be91-4ab4-99dc-c5fd541f4daai︠
%html
<p>En el mismo sentido, de simpificar la sintaxis y ampliar las posibilidades de la funci&oacute;n <span style="color: #0000ff;">echelon_form</span>, hemos creado una nueva funci&oacute;n que aplicada sobre una matriz nos proporcione su forma escalonada y, opcionalmente, nos aporte informaci&oacute;n sobre las transformaciones realizadas durante el procedimiento.</p>
<p>La funci&oacute;n&nbsp;<span style="color: #0000ff;">forma_escalonada( A)</span>&nbsp;nos permite obtener tanto las matrices $F$ y $U$&nbsp; de la descomposici&oacute;n $FA=U$ como la secuencia de transformaciones elementales por filas que reproducen el proceso seguido para escalonar la matriz $A$. Admite las siguientes opciones y par&aacute;metros:</p>
<p style="text-align: center;"><span style="color: #0000ff;">F, U =f orma_escalonada(A, canonica?, transformaciones?)</span></p>
<p>donde</p>
<ul>
<li><span style="color: #0000ff;">canonica?</span>&nbsp; es un par&aacute;metro opcional que puede ser <span style="color: #0000ff;">True</span> para obtener la forma escalonada can&oacute;nica&nbsp;y <span style="color: #0000ff;">False</span> para forma escalonada simple</li>
<li><span style="color: #0000ff;">transformaciones?</span> es un par&aacute;metro opcional que puede ser <span style="color: #0000ff;">True </span>para que se proporcione la lista de transformaciones elementales filas que se han realizado y <span style="color: #0000ff;">False </span>para que se omitan.</li>
</ul>
<p>Por defecto, <span style="color: #0000ff;">F, U = forma_escalonada(A)&nbsp; </span>proporciona la forma escalonada simple, sin mostrar las transformaciones elementales.</p>

︡3008d10c-744d-4285-b45b-e05dcced7423︡{"html": "<p>En el mismo sentido, de simpificar la sintaxis y ampliar las posibilidades de la funci&oacute;n <span style=\"color: #0000ff;\">echelon_form</span>, hemos creado una nueva funci&oacute;n que aplicada sobre una matriz nos proporcione su forma escalonada y, opcionalmente, nos aporte informaci&oacute;n sobre las transformaciones realizadas durante el procedimiento.</p>\n<p>La funci&oacute;n&nbsp;<span style=\"color: #0000ff;\">forma_escalonada( A)</span>&nbsp;nos permite obtener tanto las matrices $F$ y $U$&nbsp; de la descomposici&oacute;n $FA=U$ como la secuencia de transformaciones elementales por filas que reproducen el proceso seguido para escalonar la matriz $A$. Admite las siguientes opciones y par&aacute;metros:</p>\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\">F, U =f orma_escalonada(A, canonica?, transformaciones?)</span></p>\n<p>donde</p>\n<ul>\n<li><span style=\"color: #0000ff;\">canonica?</span>&nbsp; es un par&aacute;metro opcional que puede ser <span style=\"color: #0000ff;\">True</span> para obtener la forma escalonada can&oacute;nica&nbsp;y <span style=\"color: #0000ff;\">False</span> para forma escalonada simple</li>\n<li><span style=\"color: #0000ff;\">transformaciones?</span> es un par&aacute;metro opcional que puede ser <span style=\"color: #0000ff;\">True </span>para que se proporcione la lista de transformaciones elementales filas que se han realizado y <span style=\"color: #0000ff;\">False </span>para que se omitan.</li>\n</ul>\n<p>Por defecto, <span style=\"color: #0000ff;\">F, U = forma_escalonada(A)&nbsp; </span>proporciona la forma escalonada simple, sin mostrar las transformaciones elementales.</p>"}︡
︠36aee242-0261-4605-80cf-fcae7c9498e1a︠
%auto

def forma_escalonada(M, canon = False, trans = False):
    if trans:
        print 'Matriz original:'
        print M
        print 'Transformaciones elementales realizadas:'
    A=copy(M)
    m=A.nrows(); n = A.ncols()
    mn = min(m, n)
    F = copy(identity_matrix(base_ring(A), m))
    s = -1
    for k in range(mn):
        r = k; s = s + 1
        while (r < m) and (s < n) and (A[r, s] == 0):
            r = r + 1
            if r == m:
                s = s + 1;r = k
        if (r < m) and (s < n):
            if(k != r):
                A.swap_rows(k, r)
                F.swap_rows(k, r)
                if trans:
                    pretty_print('F_{' + latex(k+1) + ',' + latex(r+1)+'}')
            piv = A[k, s]
            for t in range(k + 1, m):
                multip = A[t, s]*piv^-1
                if multip != 0:
                    A[t, s] = 0
                    F[t] = F[t] - multip*F[k]
                    if trans:
                        pretty_print('F_{' + latex(t+1) + ',' + latex(k+1)+'}(' + latex(-multip) + ')')
                    for v in range(s + 1, n):
                        A[t, v] = A[t, v] - multip*A[k, v]
            if canon:
                for t in range(k):
                    multip = A[t, s]*piv^-1
                    if multip != 0:
                        A[t, s] = 0
                        F[t] = F[t] - multip*F[k]
                        if trans:
                           pretty_print('F_{' + latex(t+1) + ',' + latex(k+1)+'}(' + latex(-multip) + ')')
                        for v in range(s + 1, n):
                            A[t, v] = A[t, v] - multip*A[k, v]
                F[k] = F[k]*piv^-1
                A[k] = A[k]*piv^-1
                if (trans and piv^-1 != 1):
                    pretty_print('F_{' + latex(k+1)+'}(' + latex(piv^-1) + ')')   
    if canon:
        print 'Forma escalonada canónica:'
    else:
        print 'Forma escalonada simple:'
    print A
    return F, A
︡3bf21022-8c2e-478a-96f6-d774a75c3e2b︡︡
︠76e6aff8-8f06-47c8-a104-118dd3c7b118i︠
%html
<p>Retomando el ejemplo anterior, tenemos:</p>

︡d84e6a35-89cf-4e46-9892-a22d2892ad73︡{"html": "<p>Retomando el ejemplo anterior, tenemos:</p>"}︡
︠abec18c7-9252-4d1b-ab4c-e8a7b187b62b︠
M = A.augment(matrix(b).transpose())
show(M)
︡386115f4-4216-4dbb-ae6b-8a346efd893e︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n2 & 1 & \\frac{1}{3} & \\frac{14}{3} \\\\\n-1 & 6 & 2 & 2 \\\\\n\\frac{1}{2} & 1 & 8 & -6\n\\end{array}\\right)", "display": true}}︡
︠0789a96e-166e-4abc-b287-355a9127577b︠
F, E = forma_escalonada(M, True, True)
︡af01c307-1409-4a1f-b88d-dfbf6d8928ee︡{"stdout": "Matriz original:\n[   2    1  1/3 14/3]\n[  -1    6    2    2]\n[ 1/2    1    8   -6]\nTransformaciones elementales realizadas:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 2 , 1 }( \\frac{1}{2} )", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 3 , 1 }( -\\frac{1}{4} )", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 1 }( \\frac{1}{2} )", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 3 , 2 }( -\\frac{3}{26} )", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 1 , 2 }( -\\frac{1}{13} )", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 2 }( \\frac{2}{13} )", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 2 , 3 }( -\\frac{1}{23} )", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 3 }( \\frac{3}{23} )", "display": true}}︡{"stdout": "Forma escalonada can\u00f3nica:\n[ 1  0  0  2]\n[ 0  1  0  1]\n[ 0  0  1 -1]"}︡
︠04372b9c-305d-4227-a3cc-26bc6d8a4e71i︠
%html
<p>Ahora comprobamos los resultados obtenidos:</p>

︡be352de4-71d1-4693-95fa-9f04bf7a07f7︡{"html": "<p>Ahora comprobamos los resultados obtenidos:</p>"}︡
︠14af0aa5-67b0-4b62-8341-fa0e9bf0ea03︠
E
︡1dcbc65c-ed3b-4f06-ab55-6ebbd220782a︡{"stdout": "[ 1  0  0  2]\n[ 0  1  0  1]\n[ 0  0  1 -1]"}︡
︠35b19aaf-0391-4d3c-bdf5-193a1c170fff︠
F*M
︡2351268e-fd09-4827-b916-b13f821c9e1a︡{"stdout": "[ 1  0  0  2]\n[ 0  1  0  1]\n[ 0  0  1 -1]"}︡
︠41ec9a04-30a3-4993-be83-c414243e14b8︠
F*M == E
︡bf66d5ea-1df0-4a0d-be2e-51255f9113f8︡{"stdout": "True"}︡
︠f322bba1-386f-46fc-a5d9-44dda4ed21abi︠
%html
<p>Otras variantes:</p>

︡349c5336-04dd-4db8-903a-e21d2e1b9811︡{"html": "<p>Otras variantes:</p>"}︡
︠2c8fcb5b-6916-460c-829c-620ddb075a1f︠
F, E = forma_escalonada(M)
︡de06dfb4-929f-4fad-b360-d473d0f67946︡{"stdout": "Forma escalonada simple:\n[    2     1   1/3  14/3]\n[    0  13/2  13/6  13/3]\n[    0     0  23/3 -23/3]"}︡
︠17f31c22-64ed-442f-b956-fae6fe7a60ad︠
F, E = forma_escalonada(M, True)
︡d97fec0e-9821-4948-a092-4089cb9a661a︡{"stdout": "Forma escalonada can\u00f3nica:\n[ 1  0  0  2]\n[ 0  1  0  1]\n[ 0  0  1 -1]"}︡
︠110fc7d4-2faf-4c23-ba4b-5809fc2a7024︠
F, E = forma_escalonada(M, False, True)
︡154ae98c-2562-4acd-9473-d592e2bbd5d7︡{"stdout": "Matriz original:\n[   2    1  1/3 14/3]\n[  -1    6    2    2]\n[ 1/2    1    8   -6]\nTransformaciones elementales realizadas:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 2 , 1 }( \\frac{1}{2} )", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 3 , 1 }( -\\frac{1}{4} )", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 3 , 2 }( -\\frac{3}{26} )", "display": true}}︡{"stdout": "Forma escalonada simple:\n[    2     1   1/3  14/3]\n[    0  13/2  13/6  13/3]\n[    0     0  23/3 -23/3]"}︡
︠d2de77fa-10b3-4435-a693-9a290cd7d631i︠
%html
<h3>M&eacute;todo de Gaus-Jordan</h3>
<p>Recrearemos el m&eacute;todo de Gauss-Jordan para hallar la inversa de una matriz $A$:</p>

︡fac4b025-fd38-4767-a4b2-db04e2a92d8c︡{"html": "<h3>M&eacute;todo de Gaus-Jordan</h3>\r\n<p>Recrearemos el m&eacute;todo de Gauss-Jordan para hallar la inversa de una matriz $A$:</p>"}︡
︠bf711614-6350-4f2f-a2cb-cd9cf5b4f6b0︠
A=matrix(QQ, [[0, 1, -2], [4, 1, 0], [2, 1, 1]])
show(A)
︡37e12e57-2d02-4a0e-ac90-2109f4a08a7d︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n0 & 1 & -2 \\\\\n4 & 1 & 0 \\\\\n2 & 1 & 1\n\\end{array}\\right)", "display": true}}︡
︠d29a1fbf-02bd-4d29-aecc-a65633595f35i︠
%html
<p>Construimos la matriz doble $(A|I)$:</p>

︡9cd6049a-c94e-4a00-8d9b-ebf7f57dd6ca︡{"html": "<p>Construimos la matriz doble $(A|I)$:</p>"}︡
︠e4b58274-123c-4fda-8d71-1d7dab1f3640︠
M = A.augment(identity_matrix(base_ring(A),A.nrows()))
show(M)
︡3308c400-0685-44dd-a88e-98c980a462c6︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrrrr}\n0 & 1 & -2 & 1 & 0 & 0 \\\\\n4 & 1 & 0 & 0 & 1 & 0 \\\\\n2 & 1 & 1 & 0 & 0 & 1\n\\end{array}\\right)", "display": true}}︡
︠612c6e4c-2ce3-4a75-bf8d-bf91316ff48ci︠
%html
<p>Aplicamos Gauss-Jordan:</p>

︡2e9151c9-d40b-4690-9f85-1843237925cb︡{"html": "<p>Aplicamos Gauss-Jordan:</p>"}︡
︠ae1da8c6-e77f-4328-b6ef-275034adf31a︠
F, U = forma_escalonada(M, True, True)
︡5acbff3e-c9fe-4de3-a1ec-b668bb9dd718︡{"stdout": "Matriz original:\n[ 0  1 -2  1  0  0]\n[ 4  1  0  0  1  0]\n[ 2  1  1  0  0  1]\nTransformaciones elementales realizadas:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 1 , 2 }", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 3 , 1 }( -\\frac{1}{2} )", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 1 }( \\frac{1}{4} )", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 3 , 2 }( -\\frac{1}{2} )", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 1 , 2 }( -\\frac{1}{4} )", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 1 , 3 }( -\\frac{1}{4} )", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 2 , 3 }( 1 )", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 3 }( \\frac{1}{2} )", "display": true}}︡{"stdout": "Forma escalonada can\u00f3nica:\n[   1    0    0 -1/8  3/8 -1/4]\n[   0    1    0  1/2 -1/2    1]\n[   0    0    1 -1/4 -1/4  1/2]"}︡
︠a99f4d2d-58ad-46c6-8f22-112d02457da3︠
show(F)
︡a6b04bc0-9394-47b9-8226-e1ba26155875︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n-\\frac{1}{8} & \\frac{3}{8} & -\\frac{1}{4} \\\\\n\\frac{1}{2} & -\\frac{1}{2} & 1 \\\\\n-\\frac{1}{4} & -\\frac{1}{4} & \\frac{1}{2}\n\\end{array}\\right)", "display": true}}︡
︠e59ba681-f4f9-4924-81f0-ff997e0aab1a︠
show(F*A)
︡8c507904-9086-481d-9884-62fbe1b1a368︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n1 & 0 & 0 \\\\\n0 & 1 & 0 \\\\\n0 & 0 & 1\n\\end{array}\\right)", "display": true}}︡
︠13a49294-e72a-4a8a-9428-c429fa0889a0i︠
%html
<h2><a name="anillos"></a>Trabajando con diferentes dominios (anillos) de n&uacute;meros</h2>
<p>En SAGE se declaran lo que se conoce como clases de objetos y, en el caso de manipulaciones num&eacute;ricas, est&aacute;n declaradas las clases <span style="color: #0000ff;">ZZ</span>, <span style="color: #0000ff;">QQ</span>, <span style="color: #0000ff;">RR</span> y <span style="color: #0000ff;">CC</span> para referirse a los anillos de los n&uacute;meros enteros, racionales, reales y complejos, respectivamente. Cuando una funci&oacute;n act&uacute;a sobre un objeto, su comportamiento puede depender de la clase a la que pertenezca el objeto. Es decir, SAGE respeta en todos sus procedimientos, por defecto, el tipo de datos declarados en la entrada y acomoda sus c&aacute;lculos y funciones a esos tipos. Particularmente interesante puede resultar trabajar sobre el anillo $Z_n$ de las clases de equivalencias de los n&uacute;meros modulares&nbsp; $m \, mod(n)$ y que podemos declarar con la clase <span style="color: #0000ff;">IntegerModRing(n)</span>.<br /><br /><br /></p>
<h3>Ejemplo 3:</h3>
<p>A continuaci&oacute;n declaramos una matriz de n&uacute;meros racionales y comprobamos que su &nbsp;inversa dentro de ese dominio es tratada diferente que en otros dominios como los reales o $Z_n$.</p>

︡ae5f77c3-58ab-4c45-8e1c-f4602492f26a︡{"html": "<h2><a name=\"anillos\"></a>Trabajando con diferentes dominios (anillos) de n&uacute;meros</h2>\n<p>En SAGE se declaran lo que se conoce como clases de objetos y, en el caso de manipulaciones num&eacute;ricas, est&aacute;n declaradas las clases <span style=\"color: #0000ff;\">ZZ</span>, <span style=\"color: #0000ff;\">QQ</span>, <span style=\"color: #0000ff;\">RR</span> y <span style=\"color: #0000ff;\">CC</span> para referirse a los anillos de los n&uacute;meros enteros, racionales, reales y complejos, respectivamente. Cuando una funci&oacute;n act&uacute;a sobre un objeto, su comportamiento puede depender de la clase a la que pertenezca el objeto. Es decir, SAGE respeta en todos sus procedimientos, por defecto, el tipo de datos declarados en la entrada y acomoda sus c&aacute;lculos y funciones a esos tipos. Particularmente interesante puede resultar trabajar sobre el anillo $Z_n$ de las clases de equivalencias de los n&uacute;meros modulares&nbsp; $m \\, mod(n)$ y que podemos declarar con la clase <span style=\"color: #0000ff;\">IntegerModRing(n)</span>.<br /><br /><br /></p>\n<h3>Ejemplo 3:</h3>\n<p>A continuaci&oacute;n declaramos una matriz de n&uacute;meros racionales y comprobamos que su &nbsp;inversa dentro de ese dominio es tratada diferente que en otros dominios como los reales o $Z_n$.</p>"}︡
︠d40fad0c-f2d9-415b-a4b6-27502491c008︠
A = matrix(QQ, [[2, 1, 4], [1, 6, 3], [1, 1, 8]])
show(A)
Ai = A.inverse();
show(Ai)
︡e4097590-7085-4732-b349-d59d1ad183ab︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n2 & 1 & 4 \\\\\n1 & 6 & 3 \\\\\n1 & 1 & 8\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n\\frac{9}{13} & -\\frac{4}{65} & -\\frac{21}{65} \\\\\n-\\frac{1}{13} & \\frac{12}{65} & -\\frac{2}{65} \\\\\n-\\frac{1}{13} & -\\frac{1}{65} & \\frac{11}{65}\n\\end{array}\\right)", "display": true}}︡
︠41ef60e2-7a8c-4839-a07e-32462f272cdd︠
show(A*Ai)
︡5ab5ec4b-b9f5-4046-a1b9-0dfe999b1c82︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n1 & 0 & 0 \\\\\n0 & 1 & 0 \\\\\n0 & 0 & 1\n\\end{array}\\right)", "display": true}}︡
︠5d478b69-0ac7-43d9-adfb-48aa8b2f00fdi︠
%html
<p>Cambiamos de clase o dominio al de los n&uacute;meros reales (en realidad son n&uacute;meros en punto flotante con 16 d&iacute;gitos de presici&oacute;n, por defecto):</p>

︡213b0be7-8fcb-45b9-a895-54766b726b9d︡{"html": "<p>Cambiamos de clase o dominio al de los n&uacute;meros reales (en realidad son n&uacute;meros en punto flotante con 16 d&iacute;gitos de presici&oacute;n, por defecto):</p>"}︡
︠b11e4c13-b749-4bc4-86fb-ea0b4475c446︠
B = A.change_ring(RR)
show(B)
︡4c107657-4312-4a41-940f-0f8d37cdfb86︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n2.00000000000000 & 1.00000000000000 & 4.00000000000000 \\\\\n1.00000000000000 & 6.00000000000000 & 3.00000000000000 \\\\\n1.00000000000000 & 1.00000000000000 & 8.00000000000000\n\\end{array}\\right)", "display": true}}︡
︠b7ccec11-5f35-48fc-b30d-72c2d09923de︠
Bi = B.inverse();
show(Bi)
︡9672778e-6dce-4d37-9243-b5f67921e8df︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n0.692307692307692 & -0.0615384615384615 & -0.323076923076923 \\\\\n-0.0769230769230769 & 0.184615384615385 & -0.0307692307692308 \\\\\n-0.0769230769230769 & -0.0153846153846154 & 0.169230769230769\n\\end{array}\\right)", "display": true}}︡
︠2eaa783a-3f2f-424e-9828-634ea7deb502︠
show(B*Bi)
︡3f7fc4f2-6dd5-4446-a17e-1fcd197cb2e2︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n1.00000000000000 & 0.000000000000000 & 0.000000000000000 \\\\\n-5.55111512312578 \\times 10^{-17} & 1.00000000000000 & 0.000000000000000 \\\\\n0.000000000000000 & 0.000000000000000 & 1.00000000000000\n\\end{array}\\right)", "display": true}}︡
︠ac7d21ba-6e0b-4326-9bc7-f36ed10fb4bfi︠
%html
<p>Ahora trabajando con n&uacute;meros en coma flotante con una precisi&oacute;n de 12 bits en la mantisa:</p>

︡500dc451-6c23-4461-99b7-8881fcd61017︡{"html": "<p>Ahora trabajando con n&uacute;meros en coma flotante con una precisi&oacute;n de 12 bits en la mantisa:</p>"}︡
︠5e3d3e54-b0dd-47e9-87c5-4568e65f5e08︠
B = A.change_ring(RealField(12))
show(B)
︡cef44dfe-44ce-4f3d-b9d7-ab9e09f76a81︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n2.00 & 1.00 & 4.00 \\\\\n1.00 & 6.00 & 3.00 \\\\\n1.00 & 1.00 & 8.00\n\\end{array}\\right)", "display": true}}︡
︠ba3646e6-d5d2-4236-a48b-62e9a4abbb6e︠
Bi = B.inverse();
show(Bi)
︡e1eba1a5-8f53-40e9-a6ce-5c2bb00e279f︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n0.692 & -0.0615 & -0.323 \\\\\n-0.0769 & 0.185 & -0.0308 \\\\\n-0.0769 & -0.0154 & 0.169\n\\end{array}\\right)", "display": true}}︡
︠893cdef4-f055-42ba-a5f1-648be9f528cf︠
show(B*Bi)
︡db0afb18-e9d0-4f13-94d6-dc0833040af3︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n1.00 & 0.0000305 & 0.000 \\\\\n-0.000122 & 1.00 & 0.000 \\\\\n0.000 & 0.000 & 1.00\n\\end{array}\\right)", "display": true}}︡
︠3d38cb0a-edbb-4812-a58d-19bdbb4b09d9i︠
%html
<p>Ahora pasemos al anillo $Z_6$ de los n&uacute;meros enteros m&oacute;dulo 6:</p>

︡4c0e7540-1d24-4f79-b2ef-b2e53323fdca︡{"html": "<p>Ahora pasemos al anillo $Z_6$ de los n&uacute;meros enteros m&oacute;dulo 6:</p>"}︡
︠8526c44b-a890-4c95-ad20-b2c261bc7c63︠
show(A)
C = A.change_ring(IntegerModRing(6))
show(C)
︡38ecd888-1658-4c31-8ff1-d390ad62faa9︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n2 & 1 & 4 \\\\\n1 & 6 & 3 \\\\\n1 & 1 & 8\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n2 & 1 & 4 \\\\\n1 & 0 & 3 \\\\\n1 & 1 & 2\n\\end{array}\\right)", "display": true}}︡
︠e0acc8d7-6147-4ed2-8729-6f69352c9da4︠
Ci = C.inverse();
show(Ci)
︡ac7c2718-5cb6-4a30-b35d-64c27a6c9afb︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n3 & 4 & 3 \\\\\n5 & 0 & 2 \\\\\n5 & 1 & 1\n\\end{array}\\right)", "display": true}}︡
︠79620e05-dcb8-44fc-8529-d3f89d2af21d︠
show(C*Ci)
︡e2557afa-40ed-4b20-9749-6dd8df58a303︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n1 & 0 & 0 \\\\\n0 & 1 & 0 \\\\\n0 & 0 & 1\n\\end{array}\\right)", "display": true}}︡
︠698b38e7-e79a-4f37-b559-62462693efb3i︠
%html
<h2><a name="aplicaciones"></a>Algunas aplicaciones pr&aacute;cticas</h2>
<p>Estudiamos algunos ejemplos de problemas reales cuyo planteamiento y posterior resoluci&oacute;n puede conseguirse mediante sistemas de ecuaciones lineales.</p>

︡86fc6427-65ad-43bf-bf7d-535e3ab14be4︡{"html": "<h2><a name=\"aplicaciones\"></a>Algunas aplicaciones pr&aacute;cticas</h2>\n<p>Estudiamos algunos ejemplos de problemas reales cuyo planteamiento y posterior resoluci&oacute;n puede conseguirse mediante sistemas de ecuaciones lineales.</p>"}︡
︠528fad9a-c164-44eb-b366-581171b8d380i︠
%html
<h3>Optimizaci&oacute;n del tr&aacute;fico en una red</h3>
<p>Se pretende averiguar cu&aacute;l es la mejor forma de distribuir un flujo o tr&aacute;fico dado de veh&iacute;culos en cierta zona de una ciudad. M&aacute;s concretamente, consid&eacute;rese la red de tr&aacute;fico dada en el siguiente dibujo:</p>
<p><img src="http://aix1.uottawa.ca/~jkhoury/networksf_files/image018.jpg" alt="" /></p>
<p>En esta red, las letras {A, B,...,F} representan cruces o intersecciones de calles, las flechas indican la direcci&oacute;n en la que circulan los veh&iacute;culos y los n&uacute;meros la cantidad media de veh&iacute;culos que surcan las calles en las horas punta, medidos en los puntos de entrada y salida a esa zona. Por otra parte, las variables $\{t, u, v,\dots, z\}$ representan el reparto ideal del flujo de tr&aacute;fico por cada calle. Se pide:</p>
<p>a) Encontrar una relaci&oacute;n entre las variables que permita distribuir de manera &oacute;ptima el tr&aacute;fico en hora punta.</p>
<p>b) En caso de que las calles de $A$ a $B$ y de $B$ a $C$ deban cerrarse al tr&aacute;fico por alg&uacute;n motivo, &iquest;c&oacute;mo deber&iacute;a reorganizarse el tr&aacute;fico?</p>
<h4>Soluci&oacute;n:</h4>
<p>a) El problema se puede modelar mediante un sistema lineal de ecuaciones, asumiendo que en hora punta el flujo que entra en un v&eacute;rtice coincide con el flujo que sale del mismo. As&iacute;, asumiendo la notaci&oacute;n del dibujo anterior, y traduciendo las ecuaciones que corresponden a los v&eacute;rtices $A,B,C,D,E,F$, tenemos:</p>
<p>$\left. \begin{array}{rcl} 800&amp;=&amp; x+v\\ u+x&amp;=&amp;y+400\\ y&amp;=&amp;z+600\\ 1600+z&amp;=&amp;t+400\\ t&amp;=&amp;u+w\\ v+w&amp;=&amp;1000\end{array}\right\} \equiv \left( \begin{array}{rrrrrrr} 0&amp;0&amp;1&amp;0&amp;1&amp;0&amp;0\\ 0&amp;1&amp;0&amp;0&amp;1&amp;-1&amp;0\\ 0&amp;0&amp;0&amp;0&amp;0&amp;1&amp;-1\\ -1&amp;0&amp;0&amp;0&amp;0&amp;0&amp;1\\ -1&amp;1&amp;0&amp;1&amp;0&amp;0&amp;0\\ 0&amp;0&amp;1&amp;1&amp;0&amp;0&amp;0 \end{array} \right)\left( \begin{array}{c}t\\ u\\v\\w\\x\\y\\z \end{array}\right)= \left( \begin{array}{r} 800\\ 400 \\ 600 \\ -1200\\ 0 \\ 1000 \end{array}\right)$</p>

︡54521386-c831-47e5-a71c-6e4b44cc393d︡{"html": "<h3>Optimizaci&oacute;n del tr&aacute;fico en una red</h3>\r\n<p>Se pretende averiguar cu&aacute;l es la mejor forma de distribuir un flujo o tr&aacute;fico dado de veh&iacute;culos en cierta zona de una ciudad. M&aacute;s concretamente, consid&eacute;rese la red de tr&aacute;fico dada en el siguiente dibujo:</p>\r\n<p><img src=\"http://aix1.uottawa.ca/~jkhoury/networksf_files/image018.jpg\" alt=\"\" /></p>\r\n<p>En esta red, las letras {A, B,...,F} representan cruces o intersecciones de calles, las flechas indican la direcci&oacute;n en la que circulan los veh&iacute;culos y los n&uacute;meros la cantidad media de veh&iacute;culos que surcan las calles en las horas punta, medidos en los puntos de entrada y salida a esa zona. Por otra parte, las variables $\\{t, u, v,\\dots, z\\}$ representan el reparto ideal del flujo de tr&aacute;fico por cada calle. Se pide:</p>\r\n<p>a) Encontrar una relaci&oacute;n entre las variables que permita distribuir de manera &oacute;ptima el tr&aacute;fico en hora punta.</p>\r\n<p>b) En caso de que las calles de $A$ a $B$ y de $B$ a $C$ deban cerrarse al tr&aacute;fico por alg&uacute;n motivo, &iquest;c&oacute;mo deber&iacute;a reorganizarse el tr&aacute;fico?</p>\r\n<h4>Soluci&oacute;n:</h4>\r\n<p>a) El problema se puede modelar mediante un sistema lineal de ecuaciones, asumiendo que en hora punta el flujo que entra en un v&eacute;rtice coincide con el flujo que sale del mismo. As&iacute;, asumiendo la notaci&oacute;n del dibujo anterior, y traduciendo las ecuaciones que corresponden a los v&eacute;rtices $A,B,C,D,E,F$, tenemos:</p>\r\n<p>$\\left. \\begin{array}{rcl} 800&amp;=&amp; x+v\\\\ u+x&amp;=&amp;y+400\\\\ y&amp;=&amp;z+600\\\\ 1600+z&amp;=&amp;t+400\\\\ t&amp;=&amp;u+w\\\\ v+w&amp;=&amp;1000\\end{array}\\right\\} \\equiv \\left( \\begin{array}{rrrrrrr} 0&amp;0&amp;1&amp;0&amp;1&amp;0&amp;0\\\\ 0&amp;1&amp;0&amp;0&amp;1&amp;-1&amp;0\\\\ 0&amp;0&amp;0&amp;0&amp;0&amp;1&amp;-1\\\\ -1&amp;0&amp;0&amp;0&amp;0&amp;0&amp;1\\\\ -1&amp;1&amp;0&amp;1&amp;0&amp;0&amp;0\\\\ 0&amp;0&amp;1&amp;1&amp;0&amp;0&amp;0 \\end{array} \\right)\\left( \\begin{array}{c}t\\\\ u\\\\v\\\\w\\\\x\\\\y\\\\z \\end{array}\\right)= \\left( \\begin{array}{r} 800\\\\ 400 \\\\ 600 \\\\ -1200\\\\ 0 \\\\ 1000 \\end{array}\\right)$</p>"}︡
︠1d30f8ad-e13a-4eec-a670-97c3a5befea6︠
A = matrix(QQ,
[
[0, 0, 1, 0, 1, 0, 0, 800],
[0, 1, 0, 0, 1, -1, 0, 400],
[0, 0, 0, 0, 0, 1, -1, 600],
[-1, 0, 0, 0, 0, 0, 1, -1200],
[-1, 1, 0, 1, 0, 0, 0, 0],
[0, 0, 1, 1, 0, 0, 0, 1000]
])
show(A)
︡affb41dc-a5ff-4092-a414-ceeeb3870d71︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrrrrrr}\n0 & 0 & 1 & 0 & 1 & 0 & 0 & 800 \\\\\n0 & 1 & 0 & 0 & 1 & -1 & 0 & 400 \\\\\n0 & 0 & 0 & 0 & 0 & 1 & -1 & 600 \\\\\n-1 & 0 & 0 & 0 & 0 & 0 & 1 & -1200 \\\\\n-1 & 1 & 0 & 1 & 0 & 0 & 0 & 0 \\\\\n0 & 0 & 1 & 1 & 0 & 0 & 0 & 1000\n\\end{array}\\right)", "display": true}}︡
︠d2202cd3-a4be-4db7-b5ec-628d05ed05a4i︠
%html
<p>Resolvemos el sistema llev&aacute;ndolo a su forma escalonada can&oacute;nica:</p>

︡e214491d-abaa-4afa-99cc-31e96bf8b401︡{"html": "<p>Resolvemos el sistema llev&aacute;ndolo a su forma escalonada can&oacute;nica:</p>"}︡
︠220c8b4f-effd-4f76-915f-6f977e9725d7︠
F, U = forma_escalonada(A, True)
︡86c1bad9-f609-4c73-aae0-d09364842979︡{"stdout": "Forma escalonada can\u00f3nica:\n[   1    0    0    0    0    0   -1 1200]\n[   0    1    0    0    1    0   -1 1000]\n[   0    0    1    0    1    0    0  800]\n[   0    0    0    1   -1    0    0  200]\n[   0    0    0    0    0    1   -1  600]\n[   0    0    0    0    0    0    0    0]"}︡
︠78361bb6-484f-4153-8e01-95b4704fc139i︠
%html
<p>Tomando como variables dependientes las asociadas a los pivotes, tenemos variables independientes $x$ y $z$. Expresamos as&iacute; las relaciones entre todas las variables:</p>
<p>$$t=z+1200,\ u=z-x+1000,\ v=800-x,\ w=x+200,\ y=z+600$$</p>
<p>b) La ausencia de tr&aacute;fico entre los cruces A y B y entre B y C se expresan con&nbsp; $x=y=0$. En particular, de $y=0$ se tiene que $z=-600$. Finalmente resulta:</p>
<p>$$t=600, \ u=400, \ v=800, \ w=200$$</p>
<p>El valor negativo $z=-600$ indica que se tendr&iacute;a que cambiar el sentido de la calle entre C y D.</p>

︡548e506f-23ed-410a-94d9-2c937af3baf8︡{"html": "<p>Tomando como variables dependientes las asociadas a los pivotes, tenemos variables independientes $x$ y $z$. Expresamos as&iacute; las relaciones entre todas las variables:</p>\r\n<p>$$t=z+1200,\\ u=z-x+1000,\\ v=800-x,\\ w=x+200,\\ y=z+600$$</p>\r\n<p>b) La ausencia de tr&aacute;fico entre los cruces A y B y entre B y C se expresan con&nbsp; $x=y=0$. En particular, de $y=0$ se tiene que $z=-600$. Finalmente resulta:</p>\r\n<p>$$t=600, \\ u=400, \\ v=800, \\ w=200$$</p>\r\n<p>El valor negativo $z=-600$ indica que se tendr&iacute;a que cambiar el sentido de la calle entre C y D.</p>"}︡
︠61774005-e882-484f-8546-e8a645021032i︠
%html
<h3>Atacando criptosistemas afines</h3>
<p>En la antig&uuml;edad, una forma de encriptar mensajes consist&iacute;a en asignar un n&uacute;mero $x$ a cada elemento de un alfabeto de longitud $n$, tal como se muestra en la siguiente tabla (alfabeto de 29 caracteres, donde el caracter "&Ntilde;" se ha sustituido por "-" para evitar problemas con caracteres especiales) y posteriormente transformar dicho n&uacute;mero en otro diferente $y=ax+b$.</p>
<p>Para que los valores transformados sean tambi&eacute;n n&uacute;meros de la tabla y por tanto se correspondan con letras, basta trabajar con el anillo $Z_{29}$ de los enteros modulares y tomar&nbsp; el par&aacute;metro $a$ y el par&aacute;metro $b$ cualesquiera n&uacute;meros entre 0 y 28, por ser 29 un n&uacute;mero primo; en caso contrario, deber&iacute;a ser el par&aacute;metro $a$ coprimo con $n$. Tales sistemas de encriptaci&oacute;n se conocen como criptosistemas afines y como veremos a continuaci&oacute;n son relativamente sencillos de romper, esto es, desencriptar si se dispone de un poco de informaci&oacute;n. No obstante fueron utilizados hasta finales del siglo XV.</p>
<p>&nbsp;</p>
<table border="0" cellspacing="0"><colgroup span="13" width="59"></colgroup>
<tbody>
<tr>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" bgcolor="#CCCCCC" height="20"><span style="font-family: DejaVu Sans;">A</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" bgcolor="#CCCCCC"><span style="font-family: DejaVu Sans;">B</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" bgcolor="#CCCCCC"><span style="font-family: DejaVu Sans;">C</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" bgcolor="#CCCCCC"><span style="font-family: DejaVu Sans;">D</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" bgcolor="#CCCCCC"><span style="font-family: DejaVu Sans;">E</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" bgcolor="#CCCCCC"><span style="font-family: DejaVu Sans;">F</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" bgcolor="#CCCCCC"><span style="font-family: DejaVu Sans;">G</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" bgcolor="#CCCCCC"><span style="font-family: DejaVu Sans;">H</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" bgcolor="#CCCCCC"><span style="font-family: DejaVu Sans;">I</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" bgcolor="#CCCCCC"><span style="font-family: DejaVu Sans;">J</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" bgcolor="#CCCCCC"><span style="font-family: DejaVu Sans;">K</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" bgcolor="#CCCCCC"><span style="font-family: DejaVu Sans;">L</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" bgcolor="#CCCCCC"><span style="font-family: DejaVu Sans;">M</span></td>
</tr>
<tr>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" height="20"><span style="font-family: DejaVu Sans;">0</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP"><span style="font-family: DejaVu Sans;">1</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP"><span style="font-family: DejaVu Sans;">2</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP"><span style="font-family: DejaVu Sans;">3</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP"><span style="font-family: DejaVu Sans;">4</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP"><span style="font-family: DejaVu Sans;">5</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP"><span style="font-family: DejaVu Sans;">6</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP"><span style="font-family: DejaVu Sans;">7</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP"><span style="font-family: DejaVu Sans;">8</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP"><span style="font-family: DejaVu Sans;">9</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP"><span style="font-family: DejaVu Sans;">10</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP"><span style="font-family: DejaVu Sans;">11</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP"><span style="font-family: DejaVu Sans;">12</span></td>
</tr>
<tr>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" bgcolor="#CCCCCC" height="20"><span style="font-family: DejaVu Sans;">N</span></td>
<td style="border: 1px solid #000000;" align="CENTER" bgcolor="#CCCCCC">-</td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" bgcolor="#CCCCCC"><span style="font-family: DejaVu Sans;">O</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" bgcolor="#CCCCCC"><span style="font-family: DejaVu Sans;">P</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" bgcolor="#CCCCCC"><span style="font-family: DejaVu Sans;">Q</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" bgcolor="#CCCCCC"><span style="font-family: DejaVu Sans;">R</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" bgcolor="#CCCCCC"><span style="font-family: DejaVu Sans;">S</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" bgcolor="#CCCCCC"><span style="font-family: DejaVu Sans;">T</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" bgcolor="#CCCCCC"><span style="font-family: DejaVu Sans;">U</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" bgcolor="#CCCCCC"><span style="font-family: DejaVu Sans;">V</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" bgcolor="#CCCCCC"><span style="font-family: DejaVu Sans;">W</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" bgcolor="#CCCCCC"><span style="font-family: DejaVu Sans;">X</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" bgcolor="#CCCCCC"><span style="font-family: DejaVu Sans;">Y</span></td>
</tr>
<tr>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP" height="20"><span style="font-family: DejaVu Sans;">13</span></td>
<td style="border: 1px solid #000000;" align="CENTER"><span style="font-family: DejaVu Sans;">14</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP"><span style="font-family: DejaVu Sans;">15</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP"><span style="font-family: DejaVu Sans;">16</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP"><span style="font-family: DejaVu Sans;">17</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP"><span style="font-family: DejaVu Sans;">18</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP"><span style="font-family: DejaVu Sans;">19</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP"><span style="font-family: DejaVu Sans;">20</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP"><span style="font-family: DejaVu Sans;">21</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP"><span style="font-family: DejaVu Sans;">22</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP"><span style="font-family: DejaVu Sans;">23</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP"><span style="font-family: DejaVu Sans;">24</span></td>
<td style="border: 1px solid #000000;" align="CENTER" valign="TOP"><span style="font-family: DejaVu Sans;">25</span></td>
</tr>
<tr>
<td style="border: 1px solid #000000;" align="CENTER" bgcolor="#CCCCCC" height="19"><span style="font-family: DejaVu Sans;">Z</span></td>
<td style="border: 1px solid #000000;" align="CENTER" bgcolor="#CCCCCC"><span style="font-family: DejaVu Sans;">.</span></td>
<td style="border: 1px solid #000000;" align="CENTER" bgcolor="#CCCCCC"><span style="font-family: DejaVu Sans;">_<br /></span></td>
<td align="CENTER"><span style="font-family: DejaVu Sans;"><br /></span></td>
<td align="CENTER"><span style="font-family: DejaVu Sans;"><br /></span></td>
<td align="CENTER"><span style="font-family: DejaVu Sans;"><br /></span></td>
<td align="CENTER"><span style="font-family: DejaVu Sans;"><br /></span></td>
<td align="CENTER"><span style="font-family: DejaVu Sans;"><br /></span></td>
<td align="CENTER"><span style="font-family: DejaVu Sans;"><br /></span></td>
<td align="CENTER"><span style="font-family: DejaVu Sans;"><br /></span></td>
<td align="CENTER"><span style="font-family: DejaVu Sans;"><br /></span></td>
<td align="CENTER"><span style="font-family: DejaVu Sans;"><br /></span></td>
<td align="CENTER"><span style="font-family: DejaVu Sans;"><br /></span></td>
</tr>
<tr>
<td style="border: 1px solid #000000;" align="CENTER" height="19"><span style="font-family: DejaVu Sans;">26</span></td>
<td style="border: 1px solid #000000;" align="CENTER"><span style="font-family: DejaVu Sans;">27</span></td>
<td style="border: 1px solid #000000;" align="CENTER"><span style="font-family: DejaVu Sans;">28</span></td>
<td align="CENTER"><span style="font-family: DejaVu Sans;"><br /></span></td>
<td align="CENTER"><span style="font-family: DejaVu Sans;"><br /></span></td>
<td align="CENTER"><span style="font-family: DejaVu Sans;"><br /></span></td>
<td align="CENTER"><span style="font-family: DejaVu Sans;"><br /></span></td>
<td align="CENTER"><span style="font-family: DejaVu Sans;"><br /></span></td>
<td align="CENTER"><span style="font-family: DejaVu Sans;"><br /></span></td>
<td align="CENTER"><span style="font-family: DejaVu Sans;"><br /></span></td>
<td align="CENTER"><span style="font-family: DejaVu Sans;"><br /></span></td>
<td align="CENTER"><span style="font-family: DejaVu Sans;"><br /></span></td>
<td align="CENTER">&nbsp;</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p>Para descifrar cada letra, basta tomar $x=a^{-1} (y-b)$. De ah&iacute; la importancia de que $a$ sea coprimo con $n$, para garantizar que existe su inverso modular.</p>
<p>a) Descifrar el texto "NSM-YT.E", sabiendo que la "E" se codifica como&nbsp; "." y la "N" se codifica como una&nbsp; "E".</p>
<p>b) Una versi&oacute;n m&aacute;s moderna es el cifrado de Hill, que usa la versi&oacute;n matricial de las ecuaciones anteriores: $y=Ax+b$, $x=A^{-1}(y-b)$. Descifrar el texto "P.SPGZOHF", sabiendo que se ha usado una matriz $A$ de orden $3$, y que los cifrados de "SECRET" y "MYCODE" son, respectivamente, "QACNQN" y "OQCTZJ". Deducir que la versi&oacute;n matricial no aporta realmente ninguna seguridad al m&eacute;todo cl&aacute;sico, salvo&nbsp; un incremento del&nbsp; c&aacute;lculo necesario, f&aacute;cilmente computable con un ordenador.</p>
<h4>Soluci&oacute;n:</h4>
<p>a) Planteamos el sistema de ecuaciones a partir de la informaci&oacute;n disponible $y_i=ax_i+b$ en las inc&oacute;gnitas $\{ a, b\}$. Una vez obtenida la soluci&oacute;n al sistema, podemos decodificar el mensaje&nbsp; utilizando $x_i=a^{-1}y_i-a^{-1}b$.&nbsp; Si denotamos $A=a^{-1}$, y $B=a^{-1}b$, resulta $x_i=Ay_i-B$.</p>
<p>Sustituyendo los valores conocidos, tenemos el sistema:</p>
<p>$\left.\begin{array}{rcr} 27&amp;=&amp;4a &amp;+b\\4&amp;=&amp;13a &amp;+b&nbsp; \end{array}\right\}$</p>
<p>La matriz ampliada del sistema es</p>

︡2b780628-c2a2-4a4a-a1e7-9958495bcbef︡{"html": "<h3>Atacando criptosistemas afines</h3>\n<p>En la antig&uuml;edad, una forma de encriptar mensajes consist&iacute;a en asignar un n&uacute;mero $x$ a cada elemento de un alfabeto de longitud $n$, tal como se muestra en la siguiente tabla (alfabeto de 29 caracteres, donde el caracter \"&Ntilde;\" se ha sustituido por \"-\" para evitar problemas con caracteres especiales) y posteriormente transformar dicho n&uacute;mero en otro diferente $y=ax+b$.</p>\n<p>Para que los valores transformados sean tambi&eacute;n n&uacute;meros de la tabla y por tanto se correspondan con letras, basta trabajar con el anillo $Z_{29}$ de los enteros modulares y tomar&nbsp; el par&aacute;metro $a$ y el par&aacute;metro $b$ cualesquiera n&uacute;meros entre 0 y 28, por ser 29 un n&uacute;mero primo; en caso contrario, deber&iacute;a ser el par&aacute;metro $a$ coprimo con $n$. Tales sistemas de encriptaci&oacute;n se conocen como criptosistemas afines y como veremos a continuaci&oacute;n son relativamente sencillos de romper, esto es, desencriptar si se dispone de un poco de informaci&oacute;n. No obstante fueron utilizados hasta finales del siglo XV.</p>\n<p>&nbsp;</p>\n<table border=\"0\" cellspacing=\"0\"><colgroup span=\"13\" width=\"59\"></colgroup>\n<tbody>\n<tr>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\" height=\"20\"><span style=\"font-family: DejaVu Sans;\">A</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">B</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">C</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">D</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">E</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">F</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">G</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">H</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">I</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">J</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">K</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">L</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">M</span></td>\n</tr>\n<tr>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" height=\"20\"><span style=\"font-family: DejaVu Sans;\">0</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">1</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">2</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">3</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">4</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">5</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">6</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">7</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">8</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">9</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">10</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">11</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">12</span></td>\n</tr>\n<tr>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\" height=\"20\"><span style=\"font-family: DejaVu Sans;\">N</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" bgcolor=\"#CCCCCC\">-</td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">O</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">P</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">Q</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">R</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">S</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">T</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">U</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">V</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">W</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">X</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">Y</span></td>\n</tr>\n<tr>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" height=\"20\"><span style=\"font-family: DejaVu Sans;\">13</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\">14</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">15</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">16</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">17</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">18</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">19</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">20</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">21</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">22</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">23</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">24</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">25</span></td>\n</tr>\n<tr>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" bgcolor=\"#CCCCCC\" height=\"19\"><span style=\"font-family: DejaVu Sans;\">Z</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">.</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">_<br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n</tr>\n<tr>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" height=\"19\"><span style=\"font-family: DejaVu Sans;\">26</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\">27</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\">28</span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\">&nbsp;</td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>\n<p>Para descifrar cada letra, basta tomar $x=a^{-1} (y-b)$. De ah&iacute; la importancia de que $a$ sea coprimo con $n$, para garantizar que existe su inverso modular.</p>\n<p>a) Descifrar el texto \"NSM-YT.E\", sabiendo que la \"E\" se codifica como&nbsp; \".\" y la \"N\" se codifica como una&nbsp; \"E\".</p>\n<p>b) Una versi&oacute;n m&aacute;s moderna es el cifrado de Hill, que usa la versi&oacute;n matricial de las ecuaciones anteriores: $y=Ax+b$, $x=A^{-1}(y-b)$. Descifrar el texto \"P.SPGZOHF\", sabiendo que se ha usado una matriz $A$ de orden $3$, y que los cifrados de \"SECRET\" y \"MYCODE\" son, respectivamente, \"QACNQN\" y \"OQCTZJ\". Deducir que la versi&oacute;n matricial no aporta realmente ninguna seguridad al m&eacute;todo cl&aacute;sico, salvo&nbsp; un incremento del&nbsp; c&aacute;lculo necesario, f&aacute;cilmente computable con un ordenador.</p>\n<h4>Soluci&oacute;n:</h4>\n<p>a) Planteamos el sistema de ecuaciones a partir de la informaci&oacute;n disponible $y_i=ax_i+b$ en las inc&oacute;gnitas $\\{ a, b\\}$. Una vez obtenida la soluci&oacute;n al sistema, podemos decodificar el mensaje&nbsp; utilizando $x_i=a^{-1}y_i-a^{-1}b$.&nbsp; Si denotamos $A=a^{-1}$, y $B=a^{-1}b$, resulta $x_i=Ay_i-B$.</p>\n<p>Sustituyendo los valores conocidos, tenemos el sistema:</p>\n<p>$\\left.\\begin{array}{rcr} 27&amp;=&amp;4a &amp;+b\\\\4&amp;=&amp;13a &amp;+b&nbsp; \\end{array}\\right\\}$</p>\n<p>La matriz ampliada del sistema es</p>"}︡
︠879dfc8f-1a3e-441c-bc26-ec08f4f8f890︠
M = matrix(IntegerModRing(29), [[4, 1, 27], [13, 1, 4]])
show(M)
︡89ed3a1f-f65c-44f7-ac41-11f2c70ec73c︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n4 & 1 & 27 \\\\\n13 & 1 & 4\n\\end{array}\\right)", "display": true}}︡
︠aca8d818-b3e1-4a7f-895f-a6cf94a81f24i︠
%html
<p>Ahora resolvemos el sistema mediante escalonamiento:</p>

︡87611360-38ea-41ec-801d-472db67bcc80︡{"html": "<p>Ahora resolvemos el sistema mediante escalonamiento:</p>"}︡
︠187caeed-219a-4381-9f84-957fe010c61f︠
F, U = forma_escalonada(M, True)
︡2d670b25-a9fa-497c-85c5-9cce9cf3d434︡{"stdout": "Forma escalonada can\u00f3nica:\n[ 1  0 20]\n[ 0  1  5]"}︡
︠9ca91680-4e6c-48e8-b40d-dbc9acc1d5d5i︠
%html
<p>Ha resultado la siguiente soluci&oacute;n:</p>
<p>$a=20\mod(29),\ b=5\mod(29)$</p>
<p>A continuaci&oacute;n procedemos a decodificar el mensaje:</p>

︡d898fcf6-9b88-497f-9074-1f2c070f4bf5︡{"html": "<p>Ha resultado la siguiente soluci&oacute;n:</p>\r\n<p>$a=20\\mod(29),\\ b=5\\mod(29)$</p>\r\n<p>A continuaci&oacute;n procedemos a decodificar el mensaje:</p>"}︡
︠4a472480-7cd4-44c4-b637-3fb9b624184a︠
a = mod(20, 29); b = mod(5, 29)
A = a^-1; B = a^-1*b
A;B
︡d5dedad5-db8b-4f68-bacc-aa167b589a7a︡{"stdout": "16\n22"}︡
︠70171952-93df-49d8-b6f1-f8e1dfec8d7aa︠
%auto
alfabeto=["A","B","C","D","E","F","G","H","I","J","K","L","M","N","-","O","P","Q","R","S","T","U","V","W","X","Y","Z",".","_"]
︡e7d0e639-e3d7-4126-8a4e-cfb6fc784cf0︡︡
︠25d135be-3941-4973-97f0-2fe2f4949530︠
mensaje_codificado = "NSM-YT.E"
︡387df400-a43b-4da0-959a-10777a9ca223︡︡
︠241975ab-24e2-4d82-82d0-d5674c06df9b︠
cifrado_mensaje = [alfabeto.index(i) for i in mensaje_codificado]
cifrado_mensaje
︡18bb856f-10f1-4aa4-870d-a356ff564a53︡{"stdout": "[13, 19, 12, 14, 25, 20, 27, 4]"}︡
︠226b12e0-135d-4140-b094-488bd0c852cd︠
descifrado_mensaje = [A*mod(y, 29) - B for y in cifrado_mensaje]
descifrado_mensaje
︡3e3aec0b-b182-46d2-babc-395288baae64︡{"stdout": "[12, 21, 25, 28, 1, 8, 4, 13]"}︡
︠1032d792-9377-4c8a-a4b8-4de133d07efa︠
mensaje_original=""
for i in descifrado_mensaje:
    mensaje_original = mensaje_original + alfabeto[i]

mensaje_original
︡096210ab-6275-4829-9a37-c0d0bf12887e︡{"stdout": "'MUY_BIEN'"}︡
︠921e23f3-9ae1-46c0-b7ad-9927bb295acei︠
%html
<p>b) Llamemos $A=\left( \begin{array}{ccc} a_{11}&amp;a_{12}&amp;a_{13}\\ a_{21}&amp;a_{22}&amp;a_{23}\\ a_{31}&amp;a_{32}&amp;a_{33}\end{array} \right)$ y ${\bf b}= \left( \begin{array}{c}b_1\\b_2\\b_3 \end{array}\right)$</p>
<p>Si sustituimos en la ecuaci&oacute;n ${\bf y}=A{\bf x}+{\bf b}$ la informaci&oacute;n del enunciado relativa a los dos mensajes conocidos, tomando cadenas de longitud tres, se obtiene el sistema:</p>
<p>$\left. \begin{array}{rcrcrcrcrcrcrcrcrcrcrcrcr} 19a_{11}&amp;+&amp;4a_{12}&amp;+&amp;2a_{13}&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;+&amp;b_1&amp;&amp;&amp;&amp;&amp;=&amp;17 \\ &amp;&amp;&amp;&amp;&amp;&amp;19a_{21}&amp;+&amp;4a_{22}&amp;+&amp;2a_{23}&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;+&amp;b_2&amp;&amp;&amp;=&amp;0 \\ &amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;19a_{31}&amp;+&amp;4a_{32}&amp;+&amp;2a_{33}&amp;&amp;&amp;&amp;&amp;+&amp;b_3&amp;=&amp;2 \\&nbsp;18a_{11}&amp;+&amp;4a_{12}&amp;+&amp;20a_{13}&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;+&amp;b_1&amp;&amp;&amp;&amp;&amp;=&amp;13 \\ &amp;&amp;&amp;&amp;&amp;&amp;18a_{21}&amp;+&amp;4a_{22}&amp;+&amp;20a_{23}&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;+&amp;b_2&amp;&amp;&amp;=&amp;17 \\ &amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;18a_{31}&amp;+&amp;4a_{32}&amp;+&amp;20a_{33}&amp;&amp;&amp;&amp;&amp;+&amp;b_3&amp;=&amp;13\\ 12a_{11}&amp;+&amp;25a_{12}&amp;+&amp;2a_{13}&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;+&amp;b_1&amp;&amp;&amp;&amp;&amp;=&amp;15 \\ &amp;&amp;&amp;&amp;&amp;&amp;12a_{21}&amp;+&amp;25a_{22}&amp;+&amp;2a_{23}&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;+&amp;b_2&amp;&amp;&amp;=&amp;17 \\ &amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;12a_{31}&amp;+&amp;25a_{32}&amp;+&amp;2a_{33}&amp;&amp;&amp;&amp;&amp;+&amp;b_3&amp;=&amp;2\\&nbsp;15a_{11}&amp;+&amp;3a_{12}&amp;+&amp;4a_{13}&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;+&amp;b_1&amp;&amp;&amp;&amp;&amp;=&amp;20 \\ &amp;&amp;&amp;&amp;&amp;&amp;15a_{21}&amp;+&amp;3a_{22}&amp;+&amp;4a_{23}&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;+&amp;b_2&amp;&amp;&amp;=&amp;26 \\ &amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;15a_{31}&amp;+&amp;3a_{32}&amp;+&amp;4a_{33}&amp;&amp;&amp;&amp;&amp;+&amp;b_3&amp;=&amp;9&nbsp;&nbsp;&nbsp;&nbsp;\end{array} \right\}$</p>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 32px; width: 1px; height: 1px; overflow: hidden;">&nbsp; &nbsp;1, 1, 1, 1, 1, -1, -1, 1, 1, 1}, {1, -1, 1, 1, 1, -1, 1, -1, 1,&nbsp;</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 32px; width: 1px; height: 1px; overflow: hidden;">&nbsp; 1, -1, -1, -1, 1, -1, -1, 1, -1}, {1, -1, 1, -1, -1, 1, 1, 1,&nbsp;</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 32px; width: 1px; height: 1px; overflow: hidden;">&nbsp; 1, -1, -1, 1, 1, -1, 1, -1, -1, -1}, {1, -1, 1, -1, 1, -1, -1,&nbsp;</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 32px; width: 1px; height: 1px; overflow: hidden;">&nbsp; 1, -1, -1, 1, 1, -1, 1, -1, 1, -1, 1}, {1, 1, -1, 1, -1, -1, -1,\end{array} \right\}$</div>
<p>&nbsp;Creamos la matriz ampliada de dicho sistema:</p>

︡b13c71b2-99c2-4c21-88c5-372649b3d732︡{"html": "<p>b) Llamemos $A=\\left( \\begin{array}{ccc} a_{11}&amp;a_{12}&amp;a_{13}\\\\ a_{21}&amp;a_{22}&amp;a_{23}\\\\ a_{31}&amp;a_{32}&amp;a_{33}\\end{array} \\right)$ y ${\\bf b}= \\left( \\begin{array}{c}b_1\\\\b_2\\\\b_3 \\end{array}\\right)$</p>\r\n<p>Si sustituimos en la ecuaci&oacute;n ${\\bf y}=A{\\bf x}+{\\bf b}$ la informaci&oacute;n del enunciado relativa a los dos mensajes conocidos, tomando cadenas de longitud tres, se obtiene el sistema:</p>\r\n<p>$\\left. \\begin{array}{rcrcrcrcrcrcrcrcrcrcrcrcr} 19a_{11}&amp;+&amp;4a_{12}&amp;+&amp;2a_{13}&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;+&amp;b_1&amp;&amp;&amp;&amp;&amp;=&amp;17 \\\\ &amp;&amp;&amp;&amp;&amp;&amp;19a_{21}&amp;+&amp;4a_{22}&amp;+&amp;2a_{23}&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;+&amp;b_2&amp;&amp;&amp;=&amp;0 \\\\ &amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;19a_{31}&amp;+&amp;4a_{32}&amp;+&amp;2a_{33}&amp;&amp;&amp;&amp;&amp;+&amp;b_3&amp;=&amp;2 \\\\&nbsp;18a_{11}&amp;+&amp;4a_{12}&amp;+&amp;20a_{13}&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;+&amp;b_1&amp;&amp;&amp;&amp;&amp;=&amp;13 \\\\ &amp;&amp;&amp;&amp;&amp;&amp;18a_{21}&amp;+&amp;4a_{22}&amp;+&amp;20a_{23}&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;+&amp;b_2&amp;&amp;&amp;=&amp;17 \\\\ &amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;18a_{31}&amp;+&amp;4a_{32}&amp;+&amp;20a_{33}&amp;&amp;&amp;&amp;&amp;+&amp;b_3&amp;=&amp;13\\\\ 12a_{11}&amp;+&amp;25a_{12}&amp;+&amp;2a_{13}&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;+&amp;b_1&amp;&amp;&amp;&amp;&amp;=&amp;15 \\\\ &amp;&amp;&amp;&amp;&amp;&amp;12a_{21}&amp;+&amp;25a_{22}&amp;+&amp;2a_{23}&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;+&amp;b_2&amp;&amp;&amp;=&amp;17 \\\\ &amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;12a_{31}&amp;+&amp;25a_{32}&amp;+&amp;2a_{33}&amp;&amp;&amp;&amp;&amp;+&amp;b_3&amp;=&amp;2\\\\&nbsp;15a_{11}&amp;+&amp;3a_{12}&amp;+&amp;4a_{13}&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;+&amp;b_1&amp;&amp;&amp;&amp;&amp;=&amp;20 \\\\ &amp;&amp;&amp;&amp;&amp;&amp;15a_{21}&amp;+&amp;3a_{22}&amp;+&amp;4a_{23}&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;+&amp;b_2&amp;&amp;&amp;=&amp;26 \\\\ &amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;15a_{31}&amp;+&amp;3a_{32}&amp;+&amp;4a_{33}&amp;&amp;&amp;&amp;&amp;+&amp;b_3&amp;=&amp;9&nbsp;&nbsp;&nbsp;&nbsp;\\end{array} \\right\\}$</p>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 32px; width: 1px; height: 1px; overflow: hidden;\">&nbsp; &nbsp;1, 1, 1, 1, 1, -1, -1, 1, 1, 1}, {1, -1, 1, 1, 1, -1, 1, -1, 1,&nbsp;</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 32px; width: 1px; height: 1px; overflow: hidden;\">&nbsp; 1, -1, -1, -1, 1, -1, -1, 1, -1}, {1, -1, 1, -1, -1, 1, 1, 1,&nbsp;</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 32px; width: 1px; height: 1px; overflow: hidden;\">&nbsp; 1, -1, -1, 1, 1, -1, 1, -1, -1, -1}, {1, -1, 1, -1, 1, -1, -1,&nbsp;</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 32px; width: 1px; height: 1px; overflow: hidden;\">&nbsp; 1, -1, -1, 1, 1, -1, 1, -1, 1, -1, 1}, {1, 1, -1, 1, -1, -1, -1,\\end{array} \\right\\}$</div>\r\n<p>&nbsp;Creamos la matriz ampliada de dicho sistema:</p>"}︡
︠db7dcf0b-b74e-4b27-82b8-40d24717e0c0︠
M = matrix(IntegerModRing(29),
[
[19, 4, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 17],
[0, 0, 0, 19, 4, 2, 0, 0, 0, 0, 1, 0, 0],
[0, 0, 0, 0, 0, 0, 19, 4, 2, 0, 0, 1, 2],
[18, 4, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 13],
[0, 0, 0, 18, 4, 20, 0, 0, 0, 0, 1, 0, 17],
[0, 0, 0, 0, 0, 0, 18, 4, 20, 0, 0, 1, 13],
[12, 25, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 15],
[0, 0, 0, 12, 25, 2, 0, 0, 0, 0, 1, 0, 17],
[0, 0, 0, 0, 0, 0, 12, 25, 2, 0, 0, 1, 2],
[15, 3, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 20],
[0, 0, 0, 15, 3, 4, 0, 0, 0, 0, 1, 0, 26],
[0, 0, 0, 0, 0, 0, 15, 3, 4, 0, 0, 1, 9]
])
show(M)
︡4387984b-08ec-4f51-9447-aba1202d43a1︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrrrrrrrrrrr}\n19 & 4 & 2 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 17 \\\\\n0 & 0 & 0 & 19 & 4 & 2 & 0 & 0 & 0 & 0 & 1 & 0 & 0 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 19 & 4 & 2 & 0 & 0 & 1 & 2 \\\\\n18 & 4 & 20 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 13 \\\\\n0 & 0 & 0 & 18 & 4 & 20 & 0 & 0 & 0 & 0 & 1 & 0 & 17 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 18 & 4 & 20 & 0 & 0 & 1 & 13 \\\\\n12 & 25 & 2 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 15 \\\\\n0 & 0 & 0 & 12 & 25 & 2 & 0 & 0 & 0 & 0 & 1 & 0 & 17 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 12 & 25 & 2 & 0 & 0 & 1 & 2 \\\\\n15 & 3 & 4 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 20 \\\\\n0 & 0 & 0 & 15 & 3 & 4 & 0 & 0 & 0 & 0 & 1 & 0 & 26 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 15 & 3 & 4 & 0 & 0 & 1 & 9\n\\end{array}\\right)", "display": true}}︡
︠31405450-e95f-4ba8-a979-00e977899fbci︠
%html
<p>Ahora intentamos resolver el sistema mediante escalonamiento:</p>

︡755d7dd1-29df-4d14-bf3a-413fe89871cb︡{"html": "<p>Ahora intentamos resolver el sistema mediante escalonamiento:</p>"}︡
︠2934eef3-7957-460b-bdc5-e2a5fb166550︠
F, U = forma_escalonada(M, True)
︡18df054e-5089-4921-988a-f3311409dfb7︡{"stdout": "Forma escalonada can\u00f3nica:\n[ 1  0  0  0  0  0  0  0  0  0  0  0 10]\n[ 0  1  0  0  0  0  0  0  0  0  0  0  6]\n[ 0  0  1  0  0  0  0  0  0  0  0  0 10]\n[ 0  0  0  1  0  0  0  0  0  0  0  0  5]\n[ 0  0  0  0  1  0  0  0  0  0  0  0  8]\n[ 0  0  0  0  0  1  0  0  0  0  0  0 27]\n[ 0  0  0  0  0  0  1  0  0  0  0  0 20]\n[ 0  0  0  0  0  0  0  1  0  0  0  0 26]\n[ 0  0  0  0  0  0  0  0  1  0  0  0 13]\n[ 0  0  0  0  0  0  0  0  0  1  0  0 15]\n[ 0  0  0  0  0  0  0  0  0  0  1  0 22]\n[ 0  0  0  0  0  0  0  0  0  0  0  1 14]"}︡
︠32d9173b-5c47-497d-9b4b-c8457f436ac8i︠
%html
<p>Construimos la matriz $A$ y el vector $b$ soluciones del sistema anterior:</p>

︡70c9480f-546a-4d32-9bd9-288cec72f2ee︡{"html": "<p>Construimos la matriz $A$ y el vector $b$ soluciones del sistema anterior:</p>"}︡
︠c244508b-f095-4377-bec5-e96e263de627︠
A = matrix(IntegerModRing(29), [[10, 6, 10], [5, 8, 27], [20, 26, 13]])
︡f12cf9a6-0b54-4d52-963e-30ffc58c3c5d︡︡
︠52324264-40cd-4aa1-a6eb-0345b2cf74c4︠
b = vector(IntegerModRing(29), [15, 22, 14])
︡223ade0d-9208-4da8-ae35-0598d4170e62︡︡
︠74b88668-7a8c-4625-9b56-8ba0266b3b61︠
Ai = A.inverse()
show(Ai)
︡b0d930b1-35ba-4aa7-b434-a856ec013257︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n24 & 28 & 26 \\\\\n24 & 16 & 13 \\\\\n11 & 3 & 1\n\\end{array}\\right)", "display": true}}︡
︠aad06759-a524-4492-8b14-8d2a3dece0c5︠
mensaje_codificado = "P.SPGZOHF"
︡018d670d-f716-4f42-a564-ec4077c5ed34︡︡
︠28e7c0e1-b255-46c6-9984-a3fbc27dd160︠
cifrado_mensaje = [alfabeto.index(i) for i in mensaje_codificado]
cifrado_mensaje
︡469fe910-0b6e-4521-95da-4b567d7d9710︡{"stdout": "[16, 27, 19, 16, 6, 26, 15, 7, 5]"}︡
︠fcf4bcb8-7a67-4c1a-a5a6-0b0ddf217c56i︠
%html
<p>Ahora ya podemos descifrar el texto "P.SPGZOHF", que es la suma de las cadenas "P.S" , "PGZ" y "OHF", las cuales se corresponden, seg&uacute;n el alfabeto, con los vectores</p>
<p>$y_1=(16,27,19)$ , $y_2=(16,6,26)$, $y_3=(15,7,5)$</p>

︡c2e9a230-e3d7-4b7f-b241-f6b50f447fd9︡{"html": "<p>Ahora ya podemos descifrar el texto \"P.SPGZOHF\", que es la suma de las cadenas \"P.S\" , \"PGZ\" y \"OHF\", las cuales se corresponden, seg&uacute;n el alfabeto, con los vectores</p>\r\n<p>$y_1=(16,27,19)$ , $y_2=(16,6,26)$, $y_3=(15,7,5)$</p>"}︡
︠6adc8656-068a-47e8-bce4-840a920a78ef︠
x1 = Ai*(vector(IntegerModRing(29),cifrado_mensaje[0:3])-b)
x1 = [i for i in x1]
x1
︡fb626e88-a0c9-4802-8ce0-34be283e8e76︡{"stdout": "[4, 24, 2]"}︡
︠0d1cf3b0-ac76-4881-a174-b1dad46723c3︠
x2 = Ai*(vector(IntegerModRing(29),cifrado_mensaje[3:6])-b)
x2 = [i for i in x2]
x2
︡adec3fb8-1077-47d5-89f6-f7acdecb0537︡{"stdout": "[4, 11, 4]"}︡
︠27c18865-bb20-4ed2-8826-1eb75d21c473︠
x3 = Ai*(vector(IntegerModRing(29),cifrado_mensaje[6:9])-b)
x3 = [i for i in x3]
x3
︡fad6530a-bb58-4548-b131-8978043237da︡{"stdout": "[13, 20, 4]"}︡
︠0cc2e688-91ce-42ad-8a6e-f6f4721f3895︠
descifrado_mensaje = flatten([x1, x2, x3])
descifrado_mensaje
︡28ac5429-3855-4442-b05d-35514cc906a1︡{"stdout": "[4, 24, 2, 4, 11, 4, 13, 20, 4]"}︡
︠b5f7af5e-f975-4858-8f79-536c37cccc95︠
mensaje_original = ""
for i in descifrado_mensaje:
    mensaje_original = mensaje_original+alfabeto[i]

mensaje_original
︡bd9ba336-5727-4dfc-b0b8-0407041cab19︡{"stdout": "'EXCELENTE'"}︡
︠f8e2b7c2-5bcf-4559-b2ca-4fba70d51b77i︠
%html
<h3>Construcci&oacute;n de cuadrados m&aacute;gicos</h3>
<p>Un cuadrado m&aacute;gico de tama&ntilde;o $n$ consiste en una matriz cuadrada de orden $n$ cuyas entradas son todos los enteros desde 1 hasta $n^2$, con la propiedad adicional de que la suma de cada fila, columna o diagonal es la misma constante, a fortiori $\frac{n(n^2+1)}{2}$.</p>
<p>Consid&eacute;rese el caso de $n=2$,</p>
<table border="1" cellpadding="2">
<tbody>
<tr>
<td>a</td>
<td>b</td>
</tr>
<tr>
<td>c</td>
<td>d</td>
</tr>
</tbody>
</table>
<p>Para que los par&aacute;metros den un cuadrado m&aacute;gico, debe existir una aplicaci&oacute;n biyectiva de ellos al conjunto de los primeros $n^2$ naturales, y adicionalmente se debe satisfacer el sistema de ecuaciones siguiente:</p>
<table border="1" cellpadding="2">
<tbody>
<tr>
<td>a</td>
<td>+</td>
<td>b</td>
<td>=</td>
<td>5</td>
</tr>
<tr>
<td>c</td>
<td>+</td>
<td>d</td>
<td>=</td>
<td>5</td>
</tr>
<tr>
<td>a</td>
<td>+</td>
<td>c</td>
<td>=</td>
<td>5</td>
</tr>
<tr>
<td>b</td>
<td>+</td>
<td>d</td>
<td>=</td>
<td>5</td>
</tr>
<tr>
<td>a</td>
<td>+</td>
<td>d</td>
<td>=</td>
<td>5</td>
</tr>
<tr>
<td>b</td>
<td>+</td>
<td>c</td>
<td>=</td>
<td>5</td>
</tr>
</tbody>
</table>
<p>Para el caso $n=3$, un cuadrado m&aacute;gico gen&eacute;rico tendr&iacute;a la forma</p>
<table border="1" cellpadding="2">
<tbody>
<tr>
<td>a</td>
<td>b</td>
<td>c</td>
</tr>
<tr>
<td>d</td>
<td>e</td>
<td>f</td>
</tr>
<tr>
<td>g</td>
<td>h</td>
<td>i</td>
</tr>
</tbody>
</table>
<p>En este caso, se tendr&iacute;a que satisfacer el sistema de ecuaciones siguiente:</p>
<table border="1" cellpadding="2">
<tbody>
<tr>
<td>a</td>
<td>+</td>
<td>b</td>
<td>+</td>
<td>c</td>
<td>=</td>
<td>15</td>
</tr>
<tr>
<td>d</td>
<td>+</td>
<td>e</td>
<td>+</td>
<td>f</td>
<td>=</td>
<td>15</td>
</tr>
<tr>
<td>g</td>
<td>+</td>
<td>h</td>
<td>+</td>
<td>i</td>
<td>=</td>
<td>15</td>
</tr>
<tr>
<td>a</td>
<td>+</td>
<td>d</td>
<td>+</td>
<td>g</td>
<td>=</td>
<td>15</td>
</tr>
<tr>
<td>b</td>
<td>+</td>
<td>e</td>
<td>+</td>
<td>h</td>
<td>=</td>
<td>15</td>
</tr>
<tr>
<td>c</td>
<td>+</td>
<td>f</td>
<td>+</td>
<td>i</td>
<td>=</td>
<td>15</td>
</tr>
<tr>
<td>a</td>
<td>+</td>
<td>e</td>
<td>+</td>
<td>i</td>
<td>=</td>
<td>15</td>
</tr>
<tr>
<td>c</td>
<td>+</td>
<td>e</td>
<td>+</td>
<td>g</td>
<td>=</td>
<td>15</td>
</tr>
</tbody>
</table>
<p>Se pide:</p>
<p>a) Mediante transformaciones elementales por filas, encontrar la soluci&oacute;n del sistema para $n=2$. Deducir que no existen cuadrados m&aacute;gicos para $n=2$.</p>
<p>b) Encontrar la soluci&oacute;n general del sistema para el caso $n=3$. Dar expl&iacute;citamente un cuadrado m&aacute;gico que sea soluci&oacute;n particular del sistema.</p>
<h4>Soluci&oacute;n:</h4>
<p>a) Montamos el sistema correspondiente al cuadrado m&aacute;gico de orden 2:</p>

︡aa0d08d5-2378-485c-a815-5b0dedbe4c97︡{"html": "<h3>Construcci&oacute;n de cuadrados m&aacute;gicos</h3>\n<p>Un cuadrado m&aacute;gico de tama&ntilde;o $n$ consiste en una matriz cuadrada de orden $n$ cuyas entradas son todos los enteros desde 1 hasta $n^2$, con la propiedad adicional de que la suma de cada fila, columna o diagonal es la misma constante, a fortiori $\\frac{n(n^2+1)}{2}$.</p>\n<p>Consid&eacute;rese el caso de $n=2$,</p>\n<table border=\"1\" cellpadding=\"2\">\n<tbody>\n<tr>\n<td>a</td>\n<td>b</td>\n</tr>\n<tr>\n<td>c</td>\n<td>d</td>\n</tr>\n</tbody>\n</table>\n<p>Para que los par&aacute;metros den un cuadrado m&aacute;gico, debe existir una aplicaci&oacute;n biyectiva de ellos al conjunto de los primeros $n^2$ naturales, y adicionalmente se debe satisfacer el sistema de ecuaciones siguiente:</p>\n<table border=\"1\" cellpadding=\"2\">\n<tbody>\n<tr>\n<td>a</td>\n<td>+</td>\n<td>b</td>\n<td>=</td>\n<td>5</td>\n</tr>\n<tr>\n<td>c</td>\n<td>+</td>\n<td>d</td>\n<td>=</td>\n<td>5</td>\n</tr>\n<tr>\n<td>a</td>\n<td>+</td>\n<td>c</td>\n<td>=</td>\n<td>5</td>\n</tr>\n<tr>\n<td>b</td>\n<td>+</td>\n<td>d</td>\n<td>=</td>\n<td>5</td>\n</tr>\n<tr>\n<td>a</td>\n<td>+</td>\n<td>d</td>\n<td>=</td>\n<td>5</td>\n</tr>\n<tr>\n<td>b</td>\n<td>+</td>\n<td>c</td>\n<td>=</td>\n<td>5</td>\n</tr>\n</tbody>\n</table>\n<p>Para el caso $n=3$, un cuadrado m&aacute;gico gen&eacute;rico tendr&iacute;a la forma</p>\n<table border=\"1\" cellpadding=\"2\">\n<tbody>\n<tr>\n<td>a</td>\n<td>b</td>\n<td>c</td>\n</tr>\n<tr>\n<td>d</td>\n<td>e</td>\n<td>f</td>\n</tr>\n<tr>\n<td>g</td>\n<td>h</td>\n<td>i</td>\n</tr>\n</tbody>\n</table>\n<p>En este caso, se tendr&iacute;a que satisfacer el sistema de ecuaciones siguiente:</p>\n<table border=\"1\" cellpadding=\"2\">\n<tbody>\n<tr>\n<td>a</td>\n<td>+</td>\n<td>b</td>\n<td>+</td>\n<td>c</td>\n<td>=</td>\n<td>15</td>\n</tr>\n<tr>\n<td>d</td>\n<td>+</td>\n<td>e</td>\n<td>+</td>\n<td>f</td>\n<td>=</td>\n<td>15</td>\n</tr>\n<tr>\n<td>g</td>\n<td>+</td>\n<td>h</td>\n<td>+</td>\n<td>i</td>\n<td>=</td>\n<td>15</td>\n</tr>\n<tr>\n<td>a</td>\n<td>+</td>\n<td>d</td>\n<td>+</td>\n<td>g</td>\n<td>=</td>\n<td>15</td>\n</tr>\n<tr>\n<td>b</td>\n<td>+</td>\n<td>e</td>\n<td>+</td>\n<td>h</td>\n<td>=</td>\n<td>15</td>\n</tr>\n<tr>\n<td>c</td>\n<td>+</td>\n<td>f</td>\n<td>+</td>\n<td>i</td>\n<td>=</td>\n<td>15</td>\n</tr>\n<tr>\n<td>a</td>\n<td>+</td>\n<td>e</td>\n<td>+</td>\n<td>i</td>\n<td>=</td>\n<td>15</td>\n</tr>\n<tr>\n<td>c</td>\n<td>+</td>\n<td>e</td>\n<td>+</td>\n<td>g</td>\n<td>=</td>\n<td>15</td>\n</tr>\n</tbody>\n</table>\n<p>Se pide:</p>\n<p>a) Mediante transformaciones elementales por filas, encontrar la soluci&oacute;n del sistema para $n=2$. Deducir que no existen cuadrados m&aacute;gicos para $n=2$.</p>\n<p>b) Encontrar la soluci&oacute;n general del sistema para el caso $n=3$. Dar expl&iacute;citamente un cuadrado m&aacute;gico que sea soluci&oacute;n particular del sistema.</p>\n<h4>Soluci&oacute;n:</h4>\n<p>a) Montamos el sistema correspondiente al cuadrado m&aacute;gico de orden 2:</p>"}︡
︠3f24bc1c-0cff-4443-b513-bb138458926f︠
A = matrix(QQ, [[1, 1, 0, 0, 5], [0, 0, 1, 1, 5], [1, 0, 1, 0, 5], [0, 1, 0, 1, 5], [1, 0, 0, 1, 5], [0, 1, 1, 0, 5]])
show(A)
︡c28567b0-8091-419f-8188-6c2ec809ed32︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrrr}\n1 & 1 & 0 & 0 & 5 \\\\\n0 & 0 & 1 & 1 & 5 \\\\\n1 & 0 & 1 & 0 & 5 \\\\\n0 & 1 & 0 & 1 & 5 \\\\\n1 & 0 & 0 & 1 & 5 \\\\\n0 & 1 & 1 & 0 & 5\n\\end{array}\\right)", "display": true}}︡
︠f9ef80bd-2dbe-4f57-9869-36f8d5e56048︠
F, U = forma_escalonada(A, True)
︡d7965f9c-313e-4d4d-8dc6-9b9ef59667a2︡{"stdout": "Forma escalonada can\u00f3nica:\n[  1   0   0   0 5/2]\n[  0   1   0   0 5/2]\n[  0   0   1   0 5/2]\n[  0   0   0   1 5/2]\n[  0   0   0   0   0]\n[  0   0   0   0   0]"}︡
︠83d8599f-25b9-4319-b737-bf5ced680b30i︠
%html
<p>De donde este sistema no tiene soluci&oacute;n en el conjunto de los n&uacute;meros naturales. Por tanto no existen cuadrados m&aacute;gicos de orden 2.</p>
<p>b) El sistema correspondiente a cuadrados m&aacute;gicos de orden 3 es:</p>

︡da062918-ad04-4e87-8b9a-e4237d6cf115︡{"html": "<p>De donde este sistema no tiene soluci&oacute;n en el conjunto de los n&uacute;meros naturales. Por tanto no existen cuadrados m&aacute;gicos de orden 2.</p>\n<p>b) El sistema correspondiente a cuadrados m&aacute;gicos de orden 3 es:</p>"}︡
︠519993cf-e766-4699-b2d6-6acad328042a︠
A = matrix(QQ, 
[
[1, 1, 1, 0, 0, 0, 0, 0, 0, 15],
[0, 0, 0, 1, 1, 1, 0, 0, 0, 15],
[0, 0, 0, 0, 0, 0, 1, 1, 1, 15],
[1, 0, 0, 1, 0, 0, 1, 0, 0, 15],
[0, 1, 0, 0, 1, 0, 0, 1, 0, 15],
[0, 0, 1, 0, 0, 1, 0, 0, 1, 15],
[1, 0, 0, 0, 1, 0, 0, 0, 1, 15],
[0, 0, 1, 0, 1, 0, 1, 0, 0, 15]
])
show(A)
︡2ad6fd67-6757-4df2-837a-f6b62cf7987c︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrrrrrrrr}\n1 & 1 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 15 \\\\\n0 & 0 & 0 & 1 & 1 & 1 & 0 & 0 & 0 & 15 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 1 & 1 & 1 & 15 \\\\\n1 & 0 & 0 & 1 & 0 & 0 & 1 & 0 & 0 & 15 \\\\\n0 & 1 & 0 & 0 & 1 & 0 & 0 & 1 & 0 & 15 \\\\\n0 & 0 & 1 & 0 & 0 & 1 & 0 & 0 & 1 & 15 \\\\\n1 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 1 & 15 \\\\\n0 & 0 & 1 & 0 & 1 & 0 & 1 & 0 & 0 & 15\n\\end{array}\\right)", "display": true}}︡
︠1b6d1ef9-3bff-472c-9052-10887a794480︠
F, U = forma_escalonada(A, True)
︡7627027f-fb41-4cec-8bcb-9a4317b1db0b︡{"stdout": "Forma escalonada can\u00f3nica:\n[  1   0   0   0   0   0   0   0   1  10]\n[  0   1   0   0   0   0   0   1   0  10]\n[  0   0   1   0   0   0   0  -1  -1  -5]\n[  0   0   0   1   0   0   0  -1  -2 -10]\n[  0   0   0   0   1   0   0   0   0   5]\n[  0   0   0   0   0   1   0   1   2  20]\n[  0   0   0   0   0   0   1   1   1  15]\n[  0   0   0   0   0   0   0   0   0   0]"}︡
︠9f6748b9-45b5-469e-8ebc-5a36c1dc08c1i︠
%html
<p>De donde $a=10-i$, $b=10-h$, $c=h+i-5$, $d=h+2i-10$, $e=5$, $f=20-h-2i$, $g=15-h-i$, con $1 \leq h,i \leq 9$, $h \neq i$. Habr&iacute;a que listar las 56 posibilidades (81 parejas $(h,i)$ con $1 \leq h,i \leq 9$, menos las parejas del tipo $(k,k)$ con dos entradas iguales, $1 \leq k \leq 9$, menos 8 entradas del tipo $(5,-)$, menos 8 entradas del tipo $(-,5)$), y descartar de entre ellas aquellas en las que las variables $a,b,c,d,e,f,g,h,i$ no tomen el abanico completo de valores comprendidos entre $1$ y $9$.</p>

︡f4bd9562-3244-4d10-831d-a2d77ac967ef︡{"html": "<p>De donde $a=10-i$, $b=10-h$, $c=h+i-5$, $d=h+2i-10$, $e=5$, $f=20-h-2i$, $g=15-h-i$, con $1 \\leq h,i \\leq 9$, $h \\neq i$. Habr&iacute;a que listar las 56 posibilidades (81 parejas $(h,i)$ con $1 \\leq h,i \\leq 9$, menos las parejas del tipo $(k,k)$ con dos entradas iguales, $1 \\leq k \\leq 9$, menos 8 entradas del tipo $(5,-)$, menos 8 entradas del tipo $(-,5)$), y descartar de entre ellas aquellas en las que las variables $a,b,c,d,e,f,g,h,i$ no tomen el abanico completo de valores comprendidos entre $1$ y $9$.</p>"}︡
︠97df21f9-4821-4557-b4c8-e84550f501c3︠
for h in [1, 2, 3, 4, 6, 7, 8, 9]:
    for i in [1, 2, 3, 4, 6, 7, 8, 9]:
        if h != i:
            k = set([10 - i, 10 - h, h + i - 5, h + 2*i - 10, 5, 20 - h - 2*i, 15 - h - i, h, i])
            if k == set([1, 2, 3, 4, 5, 6, 7, 8, 9]):
                print "Encontrada solución para el par (h, i) = (",h,",",i,")."
︡1046eb30-d46c-41a5-9ae5-3420b9c4dd83︡{"stdout": "Encontrada soluci\u00f3n para el par (h, i) = ( 1 , 6 ).\nEncontrada soluci\u00f3n para el par (h, i) = ( 1 , 8 ).\nEncontrada soluci\u00f3n para el par (h, i) = ( 3 , 4 ).\nEncontrada soluci\u00f3n para el par (h, i) = ( 3 , 8 ).\nEncontrada soluci\u00f3n para el par (h, i) = ( 7 , 2 ).\nEncontrada soluci\u00f3n para el par (h, i) = ( 7 , 6 ).\nEncontrada soluci\u00f3n para el par (h, i) = ( 9 , 2 ).\nEncontrada soluci\u00f3n para el par (h, i) = ( 9 , 4 )."}︡
︠77571681-4300-4357-bcfc-c809065fea95i︠
%html
<p>Por ejemplo, tomemos el par $(h,i)=(1,6)$, y resulta la matriz con valores:</p>

︡e78a68f1-3937-4ba9-a8a0-bc7e931ffe8c︡{"html": "<p>Por ejemplo, tomemos el par $(h,i)=(1,6)$, y resulta la matriz con valores:</p>"}︡
︠d3568193-06ff-4ea3-b473-f8ca907a6aca︠
h = 1; i = 6
valores = [10 - i, 10 - h, h + i - 5, h + 2*i - 10, 5, 20 - h - 2*i, 15 - h - i, h, i]
valores
︡1e4596bc-bb29-48ae-9c2d-36fc51c1e649︡{"stdout": "[4, 9, 2, 3, 5, 7, 8, 1, 6]"}︡
︠39720a43-b42a-4052-9d3c-2a88de04fd29︠
cuadrado_magico_3 = matrix([valores[0:3], valores[3:6], valores[6:9]])
show(cuadrado_magico_3)
︡0fbac17e-6da9-4a67-bcf7-d4a2227defa4︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n4 & 9 & 2 \\\\\n3 & 5 & 7 \\\\\n8 & 1 & 6\n\\end{array}\\right)", "display": true}}︡
︠ab31d8a5-30b3-4f26-8f5e-d355f02cce87i︠
%html
<p><a name="cuestionario"></a></p>
<h3>CUESTIONARIO PARA EL ALUMNADO</h3>
<p><span id="cell_outer_0">Introduzca en la variable NUMERO_ALUMNO, que aparece m&aacute;s abajo, el n&uacute;mero correspondiente a su cuestionario y pulse el enlace&nbsp; <span style="color: #0000ff;"><span style="text-decoration: underline;">evaluate</span></span>&nbsp; o&nbsp;&nbsp;<span id="cell_outer_0"><span style="color: #0000ff;"><span style="text-decoration: underline;">evaluar</span></span></span> que&nbsp; aparecer&aacute; m&aacute;s abajo.</span> Acceder&aacute; a un cuestionario con respuestas tipo test que se entregar&aacute; cumplimentado al finalizar esta sesi&oacute;n pr&aacute;ctica, siguiendo un modelo impreso que entregar&aacute; el profesor.</p>

︡0ed043ce-1dd7-4f1e-90bf-467cbe02f586︡{"html": "<p><a name=\"cuestionario\"></a></p>\n<h3>CUESTIONARIO PARA EL ALUMNADO</h3>\n<p><span id=\"cell_outer_0\">Introduzca en la variable NUMERO_ALUMNO, que aparece m&aacute;s abajo, el n&uacute;mero correspondiente a su cuestionario y pulse el enlace&nbsp; <span style=\"color: #0000ff;\"><span style=\"text-decoration: underline;\">evaluate</span></span>&nbsp; o&nbsp;&nbsp;<span id=\"cell_outer_0\"><span style=\"color: #0000ff;\"><span style=\"text-decoration: underline;\">evaluar</span></span></span> que&nbsp; aparecer&aacute; m&aacute;s abajo.</span> Acceder&aacute; a un cuestionario con respuestas tipo test que se entregar&aacute; cumplimentado al finalizar esta sesi&oacute;n pr&aacute;ctica, siguiendo un modelo impreso que entregar&aacute; el profesor.</p>"}︡
︠72331910-ceea-4aa9-8cd7-ce7e3daa0f8a︠
NUMERO_ALUMNO = 0



NOMBRE_FICHERO_EXAMEN = 'ALN_L1_t.htl'
load(DATA+'codigo_examinar_html.sage')
︡8b4af391-d9f8-44a2-bd8c-22ee39c85a3c︡︡
