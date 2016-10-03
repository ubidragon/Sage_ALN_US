︠549799cf-817b-4479-ab3d-901ae8c14bf1ai︠
%hide
%auto
DATA="foo.data/"
︠7353a0d3-49c1-43a1-b08b-e2f401326743i︠
%html
<h3 style="text-align: center;">ESCUELA DE INGENIER&Iacute;A INFORM&Aacute;TICA</h3>
<h3 style="text-align: center;">UNIVERSIDAD DE SEVILLA</h3>
<h4 style="text-align: center;">&Aacute;LGEBRA LINEAL Y NUM&Eacute;RICA</h4>
<h3 style="font-size: 1.17em;">Tercera pr&aacute;ctica: variedades lineales.</h3>
<p>En esta tercera sesi&oacute;n nos marcamos los siguientes objetivos:</p>
<p>- Trabajar la dependencia lineal de vectores, la representaci&oacute;n de <a href="#variedades">variedades lineales</a> en sus diferentes formas y las operaciones con variedades lineales.</p>
<p>- Expresar la soluci&oacute;n general de un sistema lineal de ecuaciones compatible indeterminado como una <a href="#afin">variedad af&iacute;n</a>.</p>
<p>- Mostrar algunas <a href="#ejemplos">aplicaciones pr&aacute;cticas</a>&nbsp; de todo lo anterior.</p>
<p>La pr&aacute;ctica finaliza con la realizaci&oacute;n por parte del alumnado de un <a href="#cuestionario">cuestionario personalizado.</a></p>
<p>La siguiente instrucci&oacute;n carga en memoria todas las funciones y herramientas definidas en las pr&aacute;cticas anteriores de la asignatura:</p>

︡5c28df58-35c5-4930-aba5-c135f0239f7f︡{"html": "<h3 style=\"text-align: center;\">ESCUELA DE INGENIER&Iacute;A INFORM&Aacute;TICA</h3>\n<h3 style=\"text-align: center;\">UNIVERSIDAD DE SEVILLA</h3>\n<h4 style=\"text-align: center;\">&Aacute;LGEBRA LINEAL Y NUM&Eacute;RICA</h4>\n<h3 style=\"font-size: 1.17em;\">Tercera pr&aacute;ctica: variedades lineales.</h3>\n<p>En esta tercera sesi&oacute;n nos marcamos los siguientes objetivos:</p>\n<p>- Trabajar la dependencia lineal de vectores, la representaci&oacute;n de <a href=\"#variedades\">variedades lineales</a> en sus diferentes formas y las operaciones con variedades lineales.</p>\n<p>- Expresar la soluci&oacute;n general de un sistema lineal de ecuaciones compatible indeterminado como una <a href=\"#afin\">variedad af&iacute;n</a>.</p>\n<p>- Mostrar algunas <a href=\"#ejemplos\">aplicaciones pr&aacute;cticas</a>&nbsp; de todo lo anterior.</p>\n<p>La pr&aacute;ctica finaliza con la realizaci&oacute;n por parte del alumnado de un <a href=\"#cuestionario\">cuestionario personalizado.</a></p>\n<p>La siguiente instrucci&oacute;n carga en memoria todas las funciones y herramientas definidas en las pr&aacute;cticas anteriores de la asignatura:</p>"}︡
︠19adff23-f996-488c-9481-53f68e86b43c︠
#auto
load(DATA+'codigoALN.sage')
︡34ff9a8d-201d-4dd5-a487-ed623bf82f98︡︡
︠7373fc82-11e2-406b-9341-4af0c67cb6b0i︠
%html
<div style="color: #000000; background-color: #ffffff; margin: 8px; text-align: left;">
<h3><a name="variedades"></a></h3>
<h2>Variedades lineales y sistemas de ecuaciones relacionados</h2>
<p>A continuaci&oacute;n se proporciona un resumen te&oacute;rico de los principales conceptos relacionados con esta secci&oacute;n.</p>
</div>
<p>Un conjunto de vectores de un espacio vectorial de dimensi&oacute;n $n$, &nbsp; $\{{\bf x_1},\ldots,{\bf x_m}\}$ es<strong> linealmente dependiente</strong> si y s&oacute;lo si el sistema lineal homog&eacute;neo $A {\bf x}={\bf 0}$ es compatible indeterminado, donde $A=(x_{i,j})$ y ${\bf x_j}=(x_{1,j},\ldots,x_{n,j})^T$ representa las coordenadas de dicho vector en una base determinada del espacio que contiene a los vectores. En particular, cualquier soluci&oacute;n no trivial (i.e. diferente del vector nulo) lleva a una relaci&oacute;n de dependencia lineal entre dichos vectores.</p>
<p style="text-align: left;">An&aacute;logamente,&nbsp;un conjunto de vectores $\{{\bf x_1},\ldots,{\bf x_m}\}$ es <strong>linealmente independiente</strong> si y s&oacute;lo si el sistema lineal homog&eacute;neo $A {\bf x}={\bf 0}$ es compatible determinado.</p>
<p style="text-align: left;">Una <strong>variedad lineal</strong> $L$ es un subconjunto de un espacio vectorial $V$, que contiene cualquier combinaci&oacute;n lineal de vectores pertenecientes a dicho subconjunto.</p>
<p style="text-align: left;">Las variedades lineales admiten varias representaciones mediante el c&aacute;lculo de bases, ecuaciones vectoriales, ecuaciones param&eacute;tricas y ecuaciones impl&iacute;citas.</p>
<p style="text-align: left;">Una<strong> base</strong>&nbsp;de $L$ consiste en un conjunto&nbsp;${\cal B}=\{ {\bf x_1},\ldots,{\bf x_r}\}$&nbsp;de vectores linealmente independientes de $L$, y que simult&aacute;neamente es sistema generador. Esto &uacute;ltimo significa que cualquier vector ${\bf b}$ de $L$ es combinaci&oacute;n lineal de vectores de ${\cal B}$. Es decir, que si trabajamos con coordenadas respecto de una misma base del espacio vectorial original, el sistema $A{\bf x}={\bf b}$ es compatible determinado para todo ${\bf b} \in L$, con&nbsp;$A$ la matriz cuyas columnas se corresponden con las coordenadas de los vectores de la base ${\cal B}$.</p>
<p style="text-align: left;">Para <strong>encontrar una base</strong> de $L$, basta pues hacer una reducci&oacute;n por filas de la matriz $A^T$ y tomar las filas no nulas resultantes, o bien, hacer una reducci&oacute;n por filas de la matriz $A$ y elegir los vectores iniciales que se corresponden con las columnas que contienen los pivotes de la forma escalonada.</p>
<p style="text-align: left;">En particular, de aqu&iacute; se deduce que todas las bases constan del mismo n&uacute;mero de elementos, $r$, que coincide con el rango de la matriz del sistema anterior, y se denomina<strong> dimensi&oacute;n de la variedad</strong>. Por otra parte, el sistema&nbsp;$A{\bf x}={\bf b}$ da las <strong>ecuaciones vectoriales</strong> si se expresa de forma equivalente como combinaci&oacute;n de columnas y da las <strong>ecuaciones param&eacute;tricas</strong> de la variedad si se deja tal cual para un vector gen&eacute;rico $b$ y con par&aacute;metros dados por el vector $x$.</p>
<p>Para encontrar un sistema de <strong>ecuaciones impl&iacute;citas</strong> para $L$ se&nbsp; procede de la siguiente forma: imponer que un vector gen&eacute;rico ${\bf x}$ sea combinaci&oacute;n lineal de ${\cal B}$, esto es, que el rango de la matriz ampliada $(A|{\bf x})$ siga siendo $r$. Tras una reducci&oacute;n por filas de la matriz ampliada, la imposici&oacute;n de que el rango sea $r$ lleva a un sistema de ecuaciones impl&iacute;citas para $L$, tomando las expresiones de la &uacute;ltima columna candidatas a pivotes al final del escalonamiento e igual&aacute;ndolas a cero.</p>
<p style="text-align: left;">Dadas dos variedades lineales $L$ y $M$&nbsp; de un mismo espacio vectorial, se define dos nuevas variedades:</p>
<p style="text-align: left;"><strong>Variedad lineal intersecci&oacute;n</strong> de $L$ y $M$, que representamos por $L\cap M$, y que se corresponde con la intersecci&oacute;n de conjuntos, es decir, contiene los vectores que pertenecen simult&aacute;neamente a $L$ y a $M$. El procedimiento m&aacute;s r&aacute;pido para obtener tales vectores es resolviendo el sistema resultante de juntar las ecuaciones impl&iacute;citas de ambas variedades.</p>
<p style="text-align: left;"><strong>Variedad lineal suma</strong> de $L$ y $M$, que representamos por $L+ M$, y que contiene todos los vectores que se pueden generar como combinaci&oacute;n de la uni&oacute;n de los de $L$ y $M$. El procedimiento m&aacute;s r&aacute;pido para obtener tales vectores es tomando como sistema generador la uni&oacute;n de sistemas generadores de $L$ y de $M$.</p>
<p style="text-align: left;"><strong>Teorema de las dimensiones</strong>: Siempre se verifica que $dim(L+M)=dim(L)+dim(M)-dim(L\cap M)$</p>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 45px; width: 1px; height: 1px; overflow: hidden; text-align: left;">Hola, Alfonso.</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 45px; width: 1px; height: 1px; overflow: hidden; text-align: left;">A lo largo de esta ma&ntilde;ana se publicar&aacute; en los tablones de la Escuela la lista con las calificaciones de la primera convocatoria ordinaria de CI-ITIS. En ella apareces con un aprobado, 5.</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 45px; width: 1px; height: 1px; overflow: hidden; text-align: left;">Enhorabuena y saludos,</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 45px; width: 1px; height: 1px; overflow: hidden; text-align: left;">
<p>V&iacute;ctor.</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</div>
<p style="text-align: left;">Una <strong>variedad complementaria</strong> de $L$ es una variedad $\overline{L}$ tal que $L \oplus \overline{L}=V$. Es decir, que $L\cap \overline{L}= \emptyset$, esto es, tan solo tienen en com&uacute;n el vector nulo,&nbsp; y $L+\overline{L}=V$. En general, $\overline{L}$ no est&aacute; un&iacute;vocamente determinado. Para encontrar una variedad de este tipo basta extender o ampliar una base de $L$ a otra de $V$. Los vectores que se a&ntilde;aden conforman una base para $\overline{L}$. Se concluye la relaci&oacute;n&nbsp; $dim(L)+dim(\overline{L})=dim(V)$</p>

︡f53f8b5d-0455-4a52-b495-656efc1b4bd6︡{"html": "<div style=\"color: #000000; background-color: #ffffff; margin: 8px; text-align: left;\">\n<h3><a name=\"variedades\"></a></h3>\n<h2>Variedades lineales y sistemas de ecuaciones relacionados</h2>\n<p>A continuaci&oacute;n se proporciona un resumen te&oacute;rico de los principales conceptos relacionados con esta secci&oacute;n.</p>\n</div>\n<p>Un conjunto de vectores de un espacio vectorial de dimensi&oacute;n $n$, &nbsp; $\\{{\\bf x_1},\\ldots,{\\bf x_m}\\}$ es<strong> linealmente dependiente</strong> si y s&oacute;lo si el sistema lineal homog&eacute;neo $A {\\bf x}={\\bf 0}$ es compatible indeterminado, donde $A=(x_{i,j})$ y ${\\bf x_j}=(x_{1,j},\\ldots,x_{n,j})^T$ representa las coordenadas de dicho vector en una base determinada del espacio que contiene a los vectores. En particular, cualquier soluci&oacute;n no trivial (i.e. diferente del vector nulo) lleva a una relaci&oacute;n de dependencia lineal entre dichos vectores.</p>\n<p style=\"text-align: left;\">An&aacute;logamente,&nbsp;un conjunto de vectores $\\{{\\bf x_1},\\ldots,{\\bf x_m}\\}$ es <strong>linealmente independiente</strong> si y s&oacute;lo si el sistema lineal homog&eacute;neo $A {\\bf x}={\\bf 0}$ es compatible determinado.</p>\n<p style=\"text-align: left;\">Una <strong>variedad lineal</strong> $L$ es un subconjunto de un espacio vectorial $V$, que contiene cualquier combinaci&oacute;n lineal de vectores pertenecientes a dicho subconjunto.</p>\n<p style=\"text-align: left;\">Las variedades lineales admiten varias representaciones mediante el c&aacute;lculo de bases, ecuaciones vectoriales, ecuaciones param&eacute;tricas y ecuaciones impl&iacute;citas.</p>\n<p style=\"text-align: left;\">Una<strong> base</strong>&nbsp;de $L$ consiste en un conjunto&nbsp;${\\cal B}=\\{ {\\bf x_1},\\ldots,{\\bf x_r}\\}$&nbsp;de vectores linealmente independientes de $L$, y que simult&aacute;neamente es sistema generador. Esto &uacute;ltimo significa que cualquier vector ${\\bf b}$ de $L$ es combinaci&oacute;n lineal de vectores de ${\\cal B}$. Es decir, que si trabajamos con coordenadas respecto de una misma base del espacio vectorial original, el sistema $A{\\bf x}={\\bf b}$ es compatible determinado para todo ${\\bf b} \\in L$, con&nbsp;$A$ la matriz cuyas columnas se corresponden con las coordenadas de los vectores de la base ${\\cal B}$.</p>\n<p style=\"text-align: left;\">Para <strong>encontrar una base</strong> de $L$, basta pues hacer una reducci&oacute;n por filas de la matriz $A^T$ y tomar las filas no nulas resultantes, o bien, hacer una reducci&oacute;n por filas de la matriz $A$ y elegir los vectores iniciales que se corresponden con las columnas que contienen los pivotes de la forma escalonada.</p>\n<p style=\"text-align: left;\">En particular, de aqu&iacute; se deduce que todas las bases constan del mismo n&uacute;mero de elementos, $r$, que coincide con el rango de la matriz del sistema anterior, y se denomina<strong> dimensi&oacute;n de la variedad</strong>. Por otra parte, el sistema&nbsp;$A{\\bf x}={\\bf b}$ da las <strong>ecuaciones vectoriales</strong> si se expresa de forma equivalente como combinaci&oacute;n de columnas y da las <strong>ecuaciones param&eacute;tricas</strong> de la variedad si se deja tal cual para un vector gen&eacute;rico $b$ y con par&aacute;metros dados por el vector $x$.</p>\n<p>Para encontrar un sistema de <strong>ecuaciones impl&iacute;citas</strong> para $L$ se&nbsp; procede de la siguiente forma: imponer que un vector gen&eacute;rico ${\\bf x}$ sea combinaci&oacute;n lineal de ${\\cal B}$, esto es, que el rango de la matriz ampliada $(A|{\\bf x})$ siga siendo $r$. Tras una reducci&oacute;n por filas de la matriz ampliada, la imposici&oacute;n de que el rango sea $r$ lleva a un sistema de ecuaciones impl&iacute;citas para $L$, tomando las expresiones de la &uacute;ltima columna candidatas a pivotes al final del escalonamiento e igual&aacute;ndolas a cero.</p>\n<p style=\"text-align: left;\">Dadas dos variedades lineales $L$ y $M$&nbsp; de un mismo espacio vectorial, se define dos nuevas variedades:</p>\n<p style=\"text-align: left;\"><strong>Variedad lineal intersecci&oacute;n</strong> de $L$ y $M$, que representamos por $L\\cap M$, y que se corresponde con la intersecci&oacute;n de conjuntos, es decir, contiene los vectores que pertenecen simult&aacute;neamente a $L$ y a $M$. El procedimiento m&aacute;s r&aacute;pido para obtener tales vectores es resolviendo el sistema resultante de juntar las ecuaciones impl&iacute;citas de ambas variedades.</p>\n<p style=\"text-align: left;\"><strong>Variedad lineal suma</strong> de $L$ y $M$, que representamos por $L+ M$, y que contiene todos los vectores que se pueden generar como combinaci&oacute;n de la uni&oacute;n de los de $L$ y $M$. El procedimiento m&aacute;s r&aacute;pido para obtener tales vectores es tomando como sistema generador la uni&oacute;n de sistemas generadores de $L$ y de $M$.</p>\n<p style=\"text-align: left;\"><strong>Teorema de las dimensiones</strong>: Siempre se verifica que $dim(L+M)=dim(L)+dim(M)-dim(L\\cap M)$</p>\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 45px; width: 1px; height: 1px; overflow: hidden; text-align: left;\">Hola, Alfonso.</div>\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 45px; width: 1px; height: 1px; overflow: hidden; text-align: left;\">A lo largo de esta ma&ntilde;ana se publicar&aacute; en los tablones de la Escuela la lista con las calificaciones de la primera convocatoria ordinaria de CI-ITIS. En ella apareces con un aprobado, 5.</div>\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 45px; width: 1px; height: 1px; overflow: hidden; text-align: left;\">Enhorabuena y saludos,</div>\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 45px; width: 1px; height: 1px; overflow: hidden; text-align: left;\">\n<p>V&iacute;ctor.</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n</div>\n<p style=\"text-align: left;\">Una <strong>variedad complementaria</strong> de $L$ es una variedad $\\overline{L}$ tal que $L \\oplus \\overline{L}=V$. Es decir, que $L\\cap \\overline{L}= \\emptyset$, esto es, tan solo tienen en com&uacute;n el vector nulo,&nbsp; y $L+\\overline{L}=V$. En general, $\\overline{L}$ no est&aacute; un&iacute;vocamente determinado. Para encontrar una variedad de este tipo basta extender o ampliar una base de $L$ a otra de $V$. Los vectores que se a&ntilde;aden conforman una base para $\\overline{L}$. Se concluye la relaci&oacute;n&nbsp; $dim(L)+dim(\\overline{L})=dim(V)$</p>"}︡
︠8b9c038c-e654-4eff-92ab-4e498f7c189fi︠
%html
<h3>Ejemplo 1 (variedades lineales):</h3>
<p>Sea ${\cal B}=\{{\bf u_1},\ldots,{\bf u_4}\}$ una base de ${\bf R}^4$. Consid&eacute;rese la variedad lineal $L$ generada por los vectores</p>
<p>${\bf w_1}=4{\bf u_1}-5{\bf u_2} +2 {\bf u_3}+6{\bf u_4}$,</p>
<p>${\bf w_2}=2{\bf u_1}-2{\bf u_2} + {\bf u_3}+3{\bf u_4}$,</p>
<p>${\bf w_3}=6{\bf u_1}-3{\bf u_2} +3 {\bf u_3}+9{\bf u_4}$,</p>
<p>${\bf w_4}=4{\bf u_1}-{\bf u_2} +5 {\bf u_3}+6{\bf u_4}$. Se pide:</p>
<p>a) Extraer de $\{{\bf w_1},{\bf w_2},{\bf w_3},{\bf w_4}\}$ una base ${\cal C}$ para $L$.</p>
<p>b) Para cada vector ${\bf w_i}$ que no est&eacute; en ${\cal C}$, obtener sus coordenadas respecto de la base ${\cal C}$.</p>
<p>c) Hallar un sistema de ecuaciones impl&iacute;citas para $L$.</p>
<p>d) Extender ${\cal C}$ a una base de ${\bf R}^4$. &iquest;Est&aacute; un&iacute;vocamente determinada una tal extensi&oacute;n? Dar dos variedades $\overline{L}_1$ y $\overline{L}_2$ complementarias a $L$ diferentes.</p>
<p>e) Consid&eacute;rese ahora la variedad lineal $W$ engendrada por los vectores</p>
<p>${\bf v_1}={\bf u_1}-{\bf u_2} + {\bf u_3}-{\bf u_4}$&nbsp; &nbsp;</p>
<p>${\bf v_2}={\bf u_1}+{\bf u_2} + {\bf u_3}+{\bf u_4}$.</p>
<p>Determinar bases y ecuaciones impl&iacute;citas de $W \cap L$ &nbsp; y &nbsp; $W+L$.</p>
<p>&nbsp;</p>
<h3>Resoluci&oacute;n:</h3>
<p>a) Extraer de $\{{\bf w_1},{\bf w_2},{\bf w_3},{\bf w_4}\}$ una base ${\cal C}$ para $L$.</p>
<p>Podemos responder a este apartado de varias formas.</p>
<p>1&ordf;) Si queremos extraer un subconjunto de $\{{\bf w_1},{\bf w_2},{\bf w_3},{\bf w_4}\}$ que sea base de $L$, procedemos de la siguiente forma. Creamos una matriz $A$ cuyas columnas son los vectores que generan la variedad $L$. Una forma escalonada de $A$ permite distinguir una base sin m&aacute;s que tomar aquellos vectores del conjunto inicial que correspondan a columnas con pivote.</p>
<p>2&ordf;) Si queremos una base cualquiera de la variedad $L$, basta construir una matriz con los vectores colocados por filas (ser&iacute;a la matriz traspuesta de la matriz $A$ anterior) y escalonar. La base estar&aacute; formada por las filas no nulas de la forma escalonada.</p>
<p>3&ordf;) Podemos utilizar funciones espec&iacute;ficas aportadas por Sage. Primero creamos un espacio vectorial sobre el cuerpo de n&uacute;meros que corresponda. A continuaci&oacute;n creamos la variedad lineal generada por los vectores proporcionados y, finalmente, pedimos a Sage que obtenga una base de dicha variedad lineal.</p>
<p>Pasamos a calcular la base de las tres formas:</p>
<p><strong>a) 1&ordf; forma</strong></p>

︡3e0d1a7e-3011-400a-9b89-a3391b544565︡{"html": "<h3>Ejemplo 1 (variedades lineales):</h3>\n<p>Sea ${\\cal B}=\\{{\\bf u_1},\\ldots,{\\bf u_4}\\}$ una base de ${\\bf R}^4$. Consid&eacute;rese la variedad lineal $L$ generada por los vectores</p>\n<p>${\\bf w_1}=4{\\bf u_1}-5{\\bf u_2} +2 {\\bf u_3}+6{\\bf u_4}$,</p>\n<p>${\\bf w_2}=2{\\bf u_1}-2{\\bf u_2} + {\\bf u_3}+3{\\bf u_4}$,</p>\n<p>${\\bf w_3}=6{\\bf u_1}-3{\\bf u_2} +3 {\\bf u_3}+9{\\bf u_4}$,</p>\n<p>${\\bf w_4}=4{\\bf u_1}-{\\bf u_2} +5 {\\bf u_3}+6{\\bf u_4}$. Se pide:</p>\n<p>a) Extraer de $\\{{\\bf w_1},{\\bf w_2},{\\bf w_3},{\\bf w_4}\\}$ una base ${\\cal C}$ para $L$.</p>\n<p>b) Para cada vector ${\\bf w_i}$ que no est&eacute; en ${\\cal C}$, obtener sus coordenadas respecto de la base ${\\cal C}$.</p>\n<p>c) Hallar un sistema de ecuaciones impl&iacute;citas para $L$.</p>\n<p>d) Extender ${\\cal C}$ a una base de ${\\bf R}^4$. &iquest;Est&aacute; un&iacute;vocamente determinada una tal extensi&oacute;n? Dar dos variedades $\\overline{L}_1$ y $\\overline{L}_2$ complementarias a $L$ diferentes.</p>\n<p>e) Consid&eacute;rese ahora la variedad lineal $W$ engendrada por los vectores</p>\n<p>${\\bf v_1}={\\bf u_1}-{\\bf u_2} + {\\bf u_3}-{\\bf u_4}$&nbsp; &nbsp;</p>\n<p>${\\bf v_2}={\\bf u_1}+{\\bf u_2} + {\\bf u_3}+{\\bf u_4}$.</p>\n<p>Determinar bases y ecuaciones impl&iacute;citas de $W \\cap L$ &nbsp; y &nbsp; $W+L$.</p>\n<p>&nbsp;</p>\n<h3>Resoluci&oacute;n:</h3>\n<p>a) Extraer de $\\{{\\bf w_1},{\\bf w_2},{\\bf w_3},{\\bf w_4}\\}$ una base ${\\cal C}$ para $L$.</p>\n<p>Podemos responder a este apartado de varias formas.</p>\n<p>1&ordf;) Si queremos extraer un subconjunto de $\\{{\\bf w_1},{\\bf w_2},{\\bf w_3},{\\bf w_4}\\}$ que sea base de $L$, procedemos de la siguiente forma. Creamos una matriz $A$ cuyas columnas son los vectores que generan la variedad $L$. Una forma escalonada de $A$ permite distinguir una base sin m&aacute;s que tomar aquellos vectores del conjunto inicial que correspondan a columnas con pivote.</p>\n<p>2&ordf;) Si queremos una base cualquiera de la variedad $L$, basta construir una matriz con los vectores colocados por filas (ser&iacute;a la matriz traspuesta de la matriz $A$ anterior) y escalonar. La base estar&aacute; formada por las filas no nulas de la forma escalonada.</p>\n<p>3&ordf;) Podemos utilizar funciones espec&iacute;ficas aportadas por Sage. Primero creamos un espacio vectorial sobre el cuerpo de n&uacute;meros que corresponda. A continuaci&oacute;n creamos la variedad lineal generada por los vectores proporcionados y, finalmente, pedimos a Sage que obtenga una base de dicha variedad lineal.</p>\n<p>Pasamos a calcular la base de las tres formas:</p>\n<p><strong>a) 1&ordf; forma</strong></p>"}︡
︠d7a52b90-038a-4ebe-a624-9895ea16d25e︠
A = matrix(QQ,[[4, -5, 2, 6], [2, -2, 1, 3], [6, -3, 3, 9], [4, -1, 5, 6]]).transpose()
show(A)
︡44757a9e-9006-496d-87c3-4967f345306d︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n4 & 2 & 6 & 4 \\\\\n-5 & -2 & -3 & -1 \\\\\n2 & 1 & 3 & 5 \\\\\n6 & 3 & 9 & 6\n\\end{array}\\right)", "display": true}}︡
︠f05b9ddb-c665-4185-a112-1d1aa7b5373e︠
F, U = forma_escalonada(A, False)
︡613d7171-8a5f-4b34-9208-d00bf6dffad2︡{"stdout": "Forma escalonada simple:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n4 & 2 & 6 & 4 \\\\\n0 & \\frac{1}{2} & \\frac{9}{2} & 4 \\\\\n0 & 0 & 0 & 3 \\\\\n0 & 0 & 0 & 0\n\\end{array}\\right)", "display": true}}︡
︠e91555e0-d5ed-4750-bbba-e2e8fce5a999i︠
%html
<p>De manera que los vectores ${\bf w_1,w_2,w_4}$ son linealmente independientes, ya que los pivotes est&aacute;n en las columnas 1, 2 y 4. Luego una base de $L$ viene dada por ${\cal C}=\{{\bf w_1},{\bf w_2},{\bf w_4}\}$, y su dimensi&oacute;n es 3.</p>
<p><strong>a) 2&ordf; forma</strong></p>

︡be096b3f-b0a1-400d-9e6e-a84eff50325a︡{"html": "<p>De manera que los vectores ${\\bf w_1,w_2,w_4}$ son linealmente independientes, ya que los pivotes est&aacute;n en las columnas 1, 2 y 4. Luego una base de $L$ viene dada por ${\\cal C}=\\{{\\bf w_1},{\\bf w_2},{\\bf w_4}\\}$, y su dimensi&oacute;n es 3.</p>\n<p><strong>a) 2&ordf; forma</strong></p>"}︡
︠4e45d164-3dd6-4cb9-82b4-81e7b19db538︠
At = A.transpose()

F, U = forma_escalonada(At, True)
︡6be0c6d7-590c-466a-8ffb-35a44a278cc9︡{"stdout": "Forma escalonada canonica:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n1 & 0 & 0 & \\frac{3}{2} \\\\\n0 & 1 & 0 & 0 \\\\\n0 & 0 & 1 & 0 \\\\\n0 & 0 & 0 & 0\n\\end{array}\\right)", "display": true}}︡
︠81a28cd7-f212-42c4-a113-f2f1a6645b60i︠
%html
<p>De esta forma, una base de $L$ es ${\cal C}=\{(1,0,0,\frac 32)_{\cal B}, (0,1,0,0)_{\cal B}, (0,0,1,0)_{\cal B} &nbsp;&nbsp; \}$.</p>
<p>Hay un par de &oacute;rdenes directas en Sage para obtener estos vectores:</p>

︡41497ece-92a0-46c7-8c54-31f0e04825de︡{"html": "<p>De esta forma, una base de $L$ es ${\\cal C}=\\{(1,0,0,\\frac 32)_{\\cal B}, (0,1,0,0)_{\\cal B}, (0,0,1,0)_{\\cal B} &nbsp;&nbsp; \\}$.</p>\n<p>Hay un par de &oacute;rdenes directas en Sage para obtener estos vectores:</p>"}︡
︠ec6ffe1d-9032-4e4a-83fe-f9d6334ac2e4︠
A.column_space()  # cuando los vectores están colocados por columnas en una matriz
︡ac9d0b13-8b20-467a-b3ad-e060f545c45e︡{"stdout": "Vector space of degree 4 and dimension 3 over Rational Field\nBasis matrix:\n[  1   0   0 3/2]\n[  0   1   0   0]\n[  0   0   1   0]"}︡
︠510aa2c2-8475-4640-81da-1b56be7994d0︠
At.row_space()   # cuando los vectores están colocados por filas en una matriz
︡0dde3d88-ba5b-4586-baeb-1d63cd996392︡{"stdout": "Vector space of degree 4 and dimension 3 over Rational Field\nBasis matrix:\n[  1   0   0 3/2]\n[  0   1   0   0]\n[  0   0   1   0]"}︡
︠cf3640d1-9d1e-4aa2-820d-fd1282699e7ci︠
%html
<p><strong>a) 3&ordf; forma</strong></p>

︡f19dd761-ee56-4dc4-976a-13e74b756b39︡{"html": "<p><strong>a) 3&ordf; forma</strong></p>"}︡
︠59e65021-3e1e-4d1c-9fb9-5e5d2ce932db︠
V = QQ^4   # creamos un espacio vectorial de dimensión 4 sobre el cuerpo de los números racionales
︡46bf5f3e-5ab6-4c1e-99cf-01fdcaab817b︡︡
︠9f72b525-cd66-46a0-8147-ad9864eb6399︠
w1 = V([4, 5, 2, 6])   # definimos los vectores como pertenecientes a dicho espacio vectorial
w2 = V([2, -2, 1, 3])
w3 = V([6, -3, 3, 9])
w4 = V([4, -1, 5, 6])
︡2dbaffef-d175-48d8-96e4-f180d924f267︡︡
︠445da994-b307-40ca-a40f-cc20cb9d5523︠
L = V.subspace([w1, w2, w3, w4])   # definimos la variedad lineal L generada por w1, w2, w3, w4.
︡93ff7c89-0178-438d-a81a-381fdcdf4fc1︡︡
︠25332a8f-93a1-4ddb-b35f-e9c3d73bf999︠
L.basis()  # pedimos una base de L
︡1d1bd613-0b2c-4622-91a7-947b7f30e367︡{"stdout": "[\n(1, 0, 0, 3/2),\n(0, 1, 0, 0),\n(0, 0, 1, 0)\n]"}︡
︠e666def1-233d-4767-b594-4e8d397bb09c︠
L.basis_matrix()  # si lo preferimos, construimos una matriz que contiene los vectores de la base por filas
︡69be2f65-3220-43ef-b32d-370074507d0d︡{"stdout": "[  1   0   0 3/2]\n[  0   1   0   0]\n[  0   0   1   0]"}︡
︠d0ed14f1-6ae8-4239-ab29-9221202a80f2i︠
%html
<p>b) Para cada vector ${\bf w_i}$ que no est&eacute; en ${\cal C}$, obtener sus coordenadas respecto de la base ${\cal C}$.</p>
<p>Observar que se trata tan solo del vector ${\bf w_3}$. Recordemos que las coordenadas no son m&aacute;s que la combinaci&oacute;n lineal de los elementos de la base ${\cal C}$ que proporciona el vector ${\bf w_3}$. Vamos a resolverlo igualmente de 3 formas diferentes:</p>
<p><strong>b) 1&ordf; forma</strong></p>
<p>queremos obtener ${\bf w_3}$ como combinaci&oacute;n lineal de los vectores de la base&nbsp; ${\cal C}=\{{\bf w_1}, {\bf w_2} ,{\bf w_4}\}$. Para ello podemos resolver el sistema lineal de ecuaciones, escrito por columnas:</p>
<p>$$({\bf w_1} {\bf w_2} {\bf w_4}) x = {\bf w_3}$$</p>

︡377c2400-7dc9-4244-b218-7af008aec03e︡{"html": "<p>b) Para cada vector ${\\bf w_i}$ que no est&eacute; en ${\\cal C}$, obtener sus coordenadas respecto de la base ${\\cal C}$.</p>\n<p>Observar que se trata tan solo del vector ${\\bf w_3}$. Recordemos que las coordenadas no son m&aacute;s que la combinaci&oacute;n lineal de los elementos de la base ${\\cal C}$ que proporciona el vector ${\\bf w_3}$. Vamos a resolverlo igualmente de 3 formas diferentes:</p>\n<p><strong>b) 1&ordf; forma</strong></p>\n<p>queremos obtener ${\\bf w_3}$ como combinaci&oacute;n lineal de los vectores de la base&nbsp; ${\\cal C}=\\{{\\bf w_1}, {\\bf w_2} ,{\\bf w_4}\\}$. Para ello podemos resolver el sistema lineal de ecuaciones, escrito por columnas:</p>\n<p>$$({\\bf w_1} {\\bf w_2} {\\bf w_4}) x = {\\bf w_3}$$</p>"}︡
︠5d149765-04ea-4e97-aea0-334bec4cc125︠
A3 = matrix(QQ,[[4, -5, 2, 6], [2, -2, 1, 3], [4, -1, 5, 6]]).transpose()
show(A3)
M = A3.augment(column_matrix([6, -3, 3, 9]))
show(M)
︡141facbb-1d1c-4f09-a463-bcc832bf1422︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n4 & 2 & 4 \\\\\n-5 & -2 & -1 \\\\\n2 & 1 & 5 \\\\\n6 & 3 & 6\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n4 & 2 & 4 & 6 \\\\\n-5 & -2 & -1 & -3 \\\\\n2 & 1 & 5 & 3 \\\\\n6 & 3 & 6 & 9\n\\end{array}\\right)", "display": true}}︡
︠256c3455-5c24-488e-9c3b-f4bea12b3bd4︠
F, U = forma_escalonada(M, True)
︡042b9094-0509-42a0-969d-3ebf7d772b89︡{"stdout": "Forma escalonada canonica:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n1 & 0 & 0 & -3 \\\\\n0 & 1 & 0 & 9 \\\\\n0 & 0 & 1 & 0 \\\\\n0 & 0 & 0 & 0\n\\end{array}\\right)", "display": true}}︡
︠c2e4bb86-690a-4686-8a1a-5d96e104368ei︠
%html
<p>Hemos obtenido&nbsp; la soluci&oacute;n ${\bf w_3}=-3{\bf w_1}+9{\bf w_2}+0{\bf w_4}$. Por tanto las coordenadas son ${\bf w_3}=(-3,9,0)_{\cal C}$.</p>
<p><strong>b) 2&ordf; forma</strong></p>

︡a3f909f9-6c75-4472-ba64-f21e173f3a02︡{"html": "<p>Hemos obtenido&nbsp; la soluci&oacute;n ${\\bf w_3}=-3{\\bf w_1}+9{\\bf w_2}+0{\\bf w_4}$. Por tanto las coordenadas son ${\\bf w_3}=(-3,9,0)_{\\cal C}$.</p>\n<p><strong>b) 2&ordf; forma</strong></p>"}︡
︠80618396-d0d4-4c81-9f05-52f05b0ca722︠
L = A.column_space()  # orden que construye la variedad generada por las columnas de la matriz A

C = L.basis()  # orden que proporciona una base C de L

show(C)
︡edef7137-3a59-4fab-8712-2ad57d3f8d87︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left[\\left(1,\\,0,\\,0,\\,\\frac{3}{2}\\right), \\left(0,\\,1,\\,0,\\,0\\right), \\left(0,\\,0,\\,1,\\,0\\right)\\right]", "display": true}}︡
︠02060d07-2780-4ad1-83a0-f648a03e7164i︠
%html
<p>En esta nueva base, calculamos las coordenadas del vector ${\bf w_3}$.</p>

︡82323bdf-ae62-45c9-b9a1-3d5f950a91c8︡{"html": "<p>En esta nueva base, calculamos las coordenadas del vector ${\\bf w_3}$.</p>"}︡
︠f5c41ade-3112-4543-a3f8-7cd44b8e93f7︠
L.coordinates([6, -3, 3, 9])  # orden que proporciona las coordenadas del vector respecto de la base dada por basis()
︡b9351a6b-294a-48e7-8b8c-2499a781e51b︡{"stdout": "[6, -3, 3]"}︡
︠2b151c9a-9826-4fb1-abc0-0919719e4847i︠
%html
<p>Hemos obtenido ${\bf w_3}=(6,-3,3)_{\cal C}$. Obs&eacute;rvese que la base en esta secci&oacute;n es diferente de la obtenida anteriormente, por lo que las coordenadas han cambiado.</p>
<p><strong>b) 3&ordf; forma</strong></p>
<p>Si queremos forzar a Sage a trabajar con la base que nos interese, podemos hacerlo con las siguientes instrucciones.</p>

︡a0516bf5-fdf6-4c3c-b702-ba4d6636ac23︡{"html": "<p>Hemos obtenido ${\\bf w_3}=(6,-3,3)_{\\cal C}$. Obs&eacute;rvese que la base en esta secci&oacute;n es diferente de la obtenida anteriormente, por lo que las coordenadas han cambiado.</p>\n<p><strong>b) 3&ordf; forma</strong></p>\n<p>Si queremos forzar a Sage a trabajar con la base que nos interese, podemos hacerlo con las siguientes instrucciones.</p>"}︡
︠d9b3b23f-4b57-431b-854f-0d3c9c9f98f4︠
###  construimos el espacio vectorial V de los vectores de 4 componentes racionales

V = QQ^4  

### construimos el subvespacio generado por la base de tres vectores que nos interesa

L = V.subspace_with_basis([V([4, -5, 2, 6]), V([2, -2, 1, 3]), V([4, -1, 5, 6])]) 

### orden que proporciona las coordenadas del vector respecto de la base anterior

L.coordinates(V([6, -3, 3, 9]))
︡50f54f13-7dc5-4b40-965b-d5cfe9bd9d72︡{"stdout": "[-3, 9, 0]"}︡
︠79d7157b-8560-4c71-8440-3f624846fedei︠
%html
<p>De manera que volvemos a obtener&nbsp; ${\bf w_3}=-3{\bf w_1}+9{\bf w_2}$. Esto es, ${\bf w_3}=(-3,9,0)_{\cal C}$.</p>
<p>Una ventaja de trabajar con estas &oacute;rdenes de Sage es que incluso podemos comprobar previamente si un vector pertenece o no a la variedad lineal. Caso de que no pertenezca, al pedir coordenadas nos dar&aacute; un mensaje de error. Vemos un par de ejemplos:</p>

︡623cb4cb-41f9-414f-8ad6-f36547e45ed3︡{"html": "<p>De manera que volvemos a obtener&nbsp; ${\\bf w_3}=-3{\\bf w_1}+9{\\bf w_2}$. Esto es, ${\\bf w_3}=(-3,9,0)_{\\cal C}$.</p>\n<p>Una ventaja de trabajar con estas &oacute;rdenes de Sage es que incluso podemos comprobar previamente si un vector pertenece o no a la variedad lineal. Caso de que no pertenezca, al pedir coordenadas nos dar&aacute; un mensaje de error. Vemos un par de ejemplos:</p>"}︡
︠d71eb8ad-9947-4196-98a6-66218201e33b︠
V([6, -3, 3, 9]) in L
︡24a2b530-f83e-450e-84aa-48df6013793d︡{"stdout": "True"}︡
︠790b968e-7a42-4d1f-afd7-bd49e847c7b9︠
L.coordinates(V([6, -3, 3, 9]))
︡43bd4741-d4f4-4b27-b3a0-0f3606a64a35︡{"stdout": "[-3, 9, 0]"}︡
︠4b4418bf-475b-4bb2-9269-bfda989b756f︠
V([1, 1, 1, 1]) in L  # hemos elegido el vector (1,1,1,1) que no pertenece a L
︡d99134b6-cf8a-450c-9f78-3d8e8a11c15a︡{"stdout": "False"}︡
︠2db3c548-6717-43e1-a465-e86264c5d985︠
L.coordinates(V([1, 1, 1, 1]))  # nos devolverá un error
︡98f45dad-2876-4736-8f3b-9523dff5673a︡{"stderr": "Traceback (most recent call last):\n  File \"<stdin>\", line 1, in <module>\n  File \"_sage_input_56.py\", line 10, in <module>\n    exec compile(u'open(\"___code___.py\",\"w\").write(\"# -*- coding: utf-8 -*-\\\\n\" + _support_.preparse_worksheet_cell(base64.b64decode(\"TC5jb29yZGluYXRlcyhWKFsxLDEsMSwxXSkpICAjIG5vcyBkZXZvbHZlcsOhIHVuIGVycm9y\"),globals())+\"\\\\n\"); execfile(os.path.abspath(\"___code___.py\"))' + '\\n', '', 'single')\n  File \"\", line 1, in <module>\n    \n  File \"/tmp/tmp_tIyfx/___code___.py\", line 3, in <module>\n    exec compile(u'L.coordinates(V([_sage_const_1 ,_sage_const_1 ,_sage_const_1 ,_sage_const_1 ]))  # nos devolver\\xe1 un error' + '\\n', '', 'single')\n  File \"\", line 1, in <module>\n    \n  File \"/usr/lib/sagemath/local/lib/python2.7/site-packages/sage/modules/free_module.py\", line 1354, in coordinates\n    return self.coordinate_vector(v, check=check).list()\n  File \"/usr/lib/sagemath/local/lib/python2.7/site-packages/sage/modules/free_module.py\", line 5959, in coordinate_vector\n    w = self.echelon_coordinate_vector(v, check=check)\n  File \"/usr/lib/sagemath/local/lib/python2.7/site-packages/sage/modules/free_module.py\", line 6021, in echelon_coordinate_vector\n    return FreeModule(self.base_ring().fraction_field(), self.rank())(self.echelon_coordinates(v, check=check))\n  File \"/usr/lib/sagemath/local/lib/python2.7/site-packages/sage/modules/free_module.py\", line 5556, in echelon_coordinates\n    raise ArithmeticError(\"vector is not in free module\")\nArithmeticError: vector is not in free module"}︡
︠fbdbc940-f045-4f51-b462-3d9b6822d7cfi︠
%html
<p>c) Hallar un sistema de ecuaciones impl&iacute;citas para $L$.</p>
<p>Para encontrar un sistema de ecuaciones impl&iacute;citas procedemos de la siguiente forma:&nbsp; construimos una matriz $A$ que tenga por columnas un sistema generador de L, o una base si previamente ha sido calculada, y forzamos a que la matriz ampliada $(A|{\bf x})$ siga teniendo el mismo rango que $A$, donde $x$ representa un vector gen&eacute;rico, expresado con variables.</p>
<p>T&eacute;ngase en cuenta que hemos de cambiar el dominio sobre el que venimos trabajando (cuerpo de los n&uacute;meros racionales, QQ), a "SR"&nbsp; (Symbolic Ring), para poder trabajar con las variables del vector $x$.</p>

︡cb2efdaa-6443-4150-a124-554e6434c6e2︡{"html": "<p>c) Hallar un sistema de ecuaciones impl&iacute;citas para $L$.</p>\n<p>Para encontrar un sistema de ecuaciones impl&iacute;citas procedemos de la siguiente forma:&nbsp; construimos una matriz $A$ que tenga por columnas un sistema generador de L, o una base si previamente ha sido calculada, y forzamos a que la matriz ampliada $(A|{\\bf x})$ siga teniendo el mismo rango que $A$, donde $x$ representa un vector gen&eacute;rico, expresado con variables.</p>\n<p>T&eacute;ngase en cuenta que hemos de cambiar el dominio sobre el que venimos trabajando (cuerpo de los n&uacute;meros racionales, QQ), a \"SR\"&nbsp; (Symbolic Ring), para poder trabajar con las variables del vector $x$.</p>"}︡
︠49b816ac-47bf-4012-9aac-373a78087937︠
A = matrix(QQ,[[4, -5, 2, 6],[2, -2, 1, 3],[6, -3, 3, 9],[4, -1, 5, 6]]).transpose()
show(A)
︡dc10d26e-bd40-44dc-8de3-3f60b4bd0c0e︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n4 & 2 & 6 & 4 \\\\\n-5 & -2 & -3 & -1 \\\\\n2 & 1 & 3 & 5 \\\\\n6 & 3 & 9 & 6\n\\end{array}\\right)", "display": true}}︡
︠dce244d0-85a1-4d17-9c91-e5d36c387b54︠
### columna de variables del vector genérico
x = column_matrix(SR,[['x1', 'x2', 'x3', 'x4']]) 

### cambiamos la matriz A al dominio SR (para cálculo simbólico)
Asr = A.change_ring(SR)

### construimos la matriz ampliada del sistema
M = Asr.augment(x)
show(M)
︡2b10806d-207e-4cd0-ae3f-1b2c7d4e6a08︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrrr}\n4 & 2 & 6 & 4 & x_{1} \\\\\n-5 & -2 & -3 & -1 & x_{2} \\\\\n2 & 1 & 3 & 5 & x_{3} \\\\\n6 & 3 & 9 & 6 & x_{4}\n\\end{array}\\right)", "display": true}}︡
︠ca8d93b5-5341-41f1-9f0d-b421084cbc74︠
F, U = forma_escalonada(M, False)
︡a3c4c305-d104-4366-9d62-c0fbabecc6bc︡{"stdout": "Forma escalonada simple:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrrr}\n4 & 2 & 6 & 4 & x_{1} \\\\\n0 & \\frac{1}{2} & \\frac{9}{2} & 4 & \\frac{5}{4} \\, x_{1} + x_{2} \\\\\n0 & 0 & 0 & 3 & -\\frac{1}{2} \\, x_{1} + x_{3} \\\\\n0 & 0 & 0 & 0 & -\\frac{3}{2} \\, x_{1} + x_{4}\n\\end{array}\\right)", "display": true}}︡
︠db3711c2-737c-4ed2-8128-fda0481aeec5i︠
%html
<p>De donde un sistema de ecuaciones impl&iacute;citas para $L$ viene dado por el &uacute;nico candidato a pivote en la &uacute;ltima columna, lo que proporciona la ecuaci&oacute;n (multiplicando por -2) &nbsp;&nbsp; $3x_1-2x_4=0$.</p>
<p>La siguiente funci&oacute;n tiene por objeto automatizar el c&aacute;lculo de las ecuaciones impl&iacute;citas, proporcionando como salida una matriz que representa la matriz de coeficientes del sistema homog&eacute;neo asociado a&nbsp; las ecuaciones impl&iacute;citas. Dicho sistema es, adem&aacute;s, escalonado previamente para as&iacute; disponer de unas ecuaciones impl&iacute;citas sencillas. La sintaxis es simple</p>
<p><span style="font-family: courier new,courier; color: #0000ff;">ecuaciones_implicitas(A)</span></p>
<p>donde A&nbsp; es una matriz cuyas columnas forman un sistema generador de la variedad lineal.</p>

︡99dfbbae-e5f5-42d1-a300-81ab64080bd5︡{"html": "<p>De donde un sistema de ecuaciones impl&iacute;citas para $L$ viene dado por el &uacute;nico candidato a pivote en la &uacute;ltima columna, lo que proporciona la ecuaci&oacute;n (multiplicando por -2) &nbsp;&nbsp; $3x_1-2x_4=0$.</p>\n<p>La siguiente funci&oacute;n tiene por objeto automatizar el c&aacute;lculo de las ecuaciones impl&iacute;citas, proporcionando como salida una matriz que representa la matriz de coeficientes del sistema homog&eacute;neo asociado a&nbsp; las ecuaciones impl&iacute;citas. Dicho sistema es, adem&aacute;s, escalonado previamente para as&iacute; disponer de unas ecuaciones impl&iacute;citas sencillas. La sintaxis es simple</p>\n<p><span style=\"font-family: courier new,courier; color: #0000ff;\">ecuaciones_implicitas(A)</span></p>\n<p>donde A&nbsp; es una matriz cuyas columnas forman un sistema generador de la variedad lineal.</p>"}︡
︠bceae8fc-5096-43ed-bf6f-b954ac3bfd7fa︠
%auto
def ecuaciones_implicitas(A):
    return A.transpose().right_kernel().basis_matrix()
︡4fafb430-2695-4d1d-8121-8cc7fb28dfb9︡︡
︠b5aacfff-6b55-46bc-81b7-1580b58357c7i︠
%html
<p>Lo aplicamos a nuestro ejemplo:</p>

︡b911afeb-cc6e-43a0-b3e2-4421a8bf4958︡{"html": "<p>Lo aplicamos a nuestro ejemplo:</p>"}︡
︠42183069-1fd2-47d9-ab05-246bc435c054︠
imp_L = ecuaciones_implicitas(A)
imp_L
︡cdcd232d-0f75-401b-b83c-0d16dc9b73b4︡{"stdout": "[   1    0    0 -2/3]"}︡
︠122ac4ee-b5d4-4599-b584-ce7437597ff9i︠
%html
<p>de donde obtenemos la ecuaci&oacute;n impl&iacute;cita &nbsp; $x_1-\frac23 x_4=0$ &nbsp; que es proporcional a &nbsp;&nbsp; $3x_1-2x_4=0$.</p>
<p>A veces, el problema que queremos resolver es inverso a este, es decir, conocidas las ecuaciones impl&iacute;citas de una variedad, queremos obtener una base de dicha variedad. Para ello se resuelve el sistema de ecuaciones impl&iacute;citas. En Sage disponemos de la orden right_kernel&nbsp; que nos proporciona la variedad dada por tales ecuaciones impl&iacute;citas, de la que podemos pedir una base. Lo aplicamos al ejemplo anterior:</p>

︡08c430ed-4729-4b5d-9e3f-1d264ddeb2a2︡{"html": "<p>de donde obtenemos la ecuaci&oacute;n impl&iacute;cita &nbsp; $x_1-\\frac23 x_4=0$ &nbsp; que es proporcional a &nbsp;&nbsp; $3x_1-2x_4=0$.</p>\n<p>A veces, el problema que queremos resolver es inverso a este, es decir, conocidas las ecuaciones impl&iacute;citas de una variedad, queremos obtener una base de dicha variedad. Para ello se resuelve el sistema de ecuaciones impl&iacute;citas. En Sage disponemos de la orden right_kernel&nbsp; que nos proporciona la variedad dada por tales ecuaciones impl&iacute;citas, de la que podemos pedir una base. Lo aplicamos al ejemplo anterior:</p>"}︡
︠00d7e2ad-f6c1-4edc-b639-f2bc72847a28︠
L = imp_L.right_kernel()  ## construimos la variedad asociada a las ecuaciones implícitas
base_L = L.basis()        ## pedimos una base de la variedad
base_L
︡1a4f949f-7a34-4c0a-9252-606ab624bede︡{"stdout": "[\n(1, 0, 0, 3/2),\n(0, 1, 0, 0),\n(0, 0, 1, 0)\n]"}︡
︠37a01a6c-1fb2-4b7a-beeb-277601e76b91i︠
%html
<p>d) Extender ${\cal C}$ a una base de ${\bf R}^4$. &iquest;Est&aacute; un&iacute;vocamente determinada una tal extensi&oacute;n? Dar dos variedades $\overline{L}_1$ y $\overline{L}_2$ complementarias a $L$ diferentes.</p>
<p>Respecto de la extensi&oacute;n de ${\cal C}=\{{\bf w_1},{\bf w_2},{\bf w_4}\}$ a una base de ${\bf R}^4$, basta observar que tanto ${\bf u_1}$ como ${\bf u_4}$ son linealmente independientes de los vectores que conforman ${\cal C}$, luego cualquiera de ellos sirve para extender ese conjunto a una base del espacio vectorial total. De paso, hemos contestado as&iacute; a que la extensi&oacute;n no es &uacute;nica de ning&uacute;n modo.</p>

︡82df06f6-fb0f-43f0-9220-617e109d673a︡{"html": "<p>d) Extender ${\\cal C}$ a una base de ${\\bf R}^4$. &iquest;Est&aacute; un&iacute;vocamente determinada una tal extensi&oacute;n? Dar dos variedades $\\overline{L}_1$ y $\\overline{L}_2$ complementarias a $L$ diferentes.</p>\n<p>Respecto de la extensi&oacute;n de ${\\cal C}=\\{{\\bf w_1},{\\bf w_2},{\\bf w_4}\\}$ a una base de ${\\bf R}^4$, basta observar que tanto ${\\bf u_1}$ como ${\\bf u_4}$ son linealmente independientes de los vectores que conforman ${\\cal C}$, luego cualquiera de ellos sirve para extender ese conjunto a una base del espacio vectorial total. De paso, hemos contestado as&iacute; a que la extensi&oacute;n no es &uacute;nica de ning&uacute;n modo.</p>"}︡
︠7aa38f83-be1d-4974-bc0b-b9e38f61f4a3︠
V([1, 0, 0, 0]) in L
︡645a5d0b-b9ba-44b8-a17e-7468fb5635d3︡{"stdout": "False"}︡
︠d8556131-33a7-43c0-903b-0f7642a67f9e︠
V([0, 0, 0, 1]) in L
︡159d7957-7b3d-4a3c-a76c-4f341fbf09e7︡{"stdout": "False"}︡
︠4d9e06da-205b-4c79-a131-75132cfc16efi︠
%html
<p>Luego ni ${\bf u_1}$ ni ${\bf u_4}$ pertenecen a $L$.</p>
<p>Lo comprobamos, de forma alternativa, estudiando el rango de la matriz ampliada con una columna correspondiente a ${\bf u_1}$ o a&nbsp; ${\bf u_4}$.</p>

︡02488005-be11-4d38-bf4e-735cc22d6aa7︡{"html": "<p>Luego ni ${\\bf u_1}$ ni ${\\bf u_4}$ pertenecen a $L$.</p>\n<p>Lo comprobamos, de forma alternativa, estudiando el rango de la matriz ampliada con una columna correspondiente a ${\\bf u_1}$ o a&nbsp; ${\\bf u_4}$.</p>"}︡
︠f6849254-5ca9-4afa-adfb-ab55f0d003d5︠
print rank(A)  ## la función rank  devuelve el rango de la matriz
print
print rank(A.augment(column_matrix([1, 0, 0, 0])))
print rank(A.augment(column_matrix([0, 0, 0, 1])))
︡42c4a848-4f8b-402e-b20a-ca1058a2460f︡{"stdout": "3\n\n4\n4"}︡
︠3660434d-1d99-4a30-8b1b-c3630503ec7di︠
%html
<p>Y ambos sirven para complementar $L$ hasta $V$. De donde se puede tomar $\overline{L}_1=\langle {\bf u_1}\rangle$ y $\overline{L}_2=\langle {\bf u_4}\rangle$</p>
<p>e) Consid&eacute;rese ahora la variedad lineal $W$ engendrada por los vectores</p>
<p>${\bf v_1}={\bf u_1}-{\bf u_2} + {\bf u_3}-{\bf u_4}$&nbsp; &nbsp;</p>
<p>${\bf v_2}={\bf u_1}+{\bf u_2} + {\bf u_3}+{\bf u_4}$.</p>
<p>Determinar bases y ecuaciones impl&iacute;citas de $W \cap L$ &nbsp; y &nbsp; $W+L$.</p>
<p>&nbsp;</p>
<p>Primero vamos a averiguar una base de $W \cap L$, as&iacute; como un sistema de ecuaciones impl&iacute;citas de esta variedad.</p>
<p>Un sistema de ecuaciones impl&iacute;citas surge de la concatenaci&oacute;n de los sistemas de ecuaciones impl&iacute;citas de $L$ (que conocemos) y $W$ (que hay que calcular). Hallamos ecuaciones impl&iacute;citas de $W$:</p>

︡32c845e2-0bdc-476f-ad90-2da84ce21da4︡{"html": "<p>Y ambos sirven para complementar $L$ hasta $V$. De donde se puede tomar $\\overline{L}_1=\\langle {\\bf u_1}\\rangle$ y $\\overline{L}_2=\\langle {\\bf u_4}\\rangle$</p>\n<p>e) Consid&eacute;rese ahora la variedad lineal $W$ engendrada por los vectores</p>\n<p>${\\bf v_1}={\\bf u_1}-{\\bf u_2} + {\\bf u_3}-{\\bf u_4}$&nbsp; &nbsp;</p>\n<p>${\\bf v_2}={\\bf u_1}+{\\bf u_2} + {\\bf u_3}+{\\bf u_4}$.</p>\n<p>Determinar bases y ecuaciones impl&iacute;citas de $W \\cap L$ &nbsp; y &nbsp; $W+L$.</p>\n<p>&nbsp;</p>\n<p>Primero vamos a averiguar una base de $W \\cap L$, as&iacute; como un sistema de ecuaciones impl&iacute;citas de esta variedad.</p>\n<p>Un sistema de ecuaciones impl&iacute;citas surge de la concatenaci&oacute;n de los sistemas de ecuaciones impl&iacute;citas de $L$ (que conocemos) y $W$ (que hay que calcular). Hallamos ecuaciones impl&iacute;citas de $W$:</p>"}︡
︠89fc739d-dfa6-4ec1-8914-92700ccce987︠
MW = matrix(QQ,[[1, -1, 1, -1],[1, 1, 1, 1]]).transpose();
show(MW)
︡2b1e2d55-bf65-49d8-97e3-04b43f6a6022︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rr}\n1 & 1 \\\\\n-1 & 1 \\\\\n1 & 1 \\\\\n-1 & 1\n\\end{array}\\right)", "display": true}}︡
︠78c86d25-6f92-471d-ac8d-601e6a840c72︠
imp_W = ecuaciones_implicitas(MW)
imp_W
︡47fabfa6-8c59-43ba-82d6-8fcf509400d1︡{"stdout": "[ 1  0 -1  0]\n[ 0  1  0 -1]"}︡
︠82a41667-8869-4a23-8422-287b8d98a238i︠
%html
<p>As&iacute;, un sistema de ecuaciones impl&iacute;citas para $W$ viene dado por $\left\{ \begin{array}{r}x_1-x_3=0\\x_2-x_4=0\end{array}\right.$</p>
<p>Basta simplificar el sistema de ecuaciones impl&iacute;citas que genera $W \cap L$, que consiste en la concatenaci&oacute;n de las ecuaciones de los sistemas de $W$ y $L$.</p>

︡bdd9bf83-82d5-409e-8be8-c282c7f6bed5︡{"html": "<p>As&iacute;, un sistema de ecuaciones impl&iacute;citas para $W$ viene dado por $\\left\\{ \\begin{array}{r}x_1-x_3=0\\\\x_2-x_4=0\\end{array}\\right.$</p>\n<p>Basta simplificar el sistema de ecuaciones impl&iacute;citas que genera $W \\cap L$, que consiste en la concatenaci&oacute;n de las ecuaciones de los sistemas de $W$ y $L$.</p>"}︡
︠bfd9a007-0796-45a0-bb44-fdea31c045b3︠
imp_L_int_W = imp_L.stack(imp_W)
imp_L_int_W
︡72569c25-cf80-4d91-af77-73b41b3d11c4︡{"stdout": "[   1    0    0 -2/3]\n[   1    0   -1    0]\n[   0    1    0   -1]"}︡
︠bf215e8b-fa59-46f1-8463-a88c66d6714fi︠
%html
<p>Luego unas ecuaciones impl&iacute;citas para $W \cap L$ vienen dadas por $\left\{ \begin{array}{lclclclc} x_1&amp;&amp;&amp;&amp;&amp;-&amp;\frac23x_4&amp;=0\\ &amp;&amp;x_2&amp;&amp;&amp;-&amp;x_4&amp;=0\\ &amp;&amp;&amp;&amp;x_3&amp;-&amp;\frac23x_4&amp;=0\\&nbsp;\end{array}\right.$</p>
<p>Una soluci&oacute;n del sistema se obtiene, por ejemplo, para $x_4=3$, resultando que $W \cap L=\langle (2,3,2,3) \rangle$. Otra posibilidad, es pedirlo directamente a Sage:</p>

︡913a6df4-bd72-4871-8454-925569276062︡{"html": "<p>Luego unas ecuaciones impl&iacute;citas para $W \\cap L$ vienen dadas por $\\left\\{ \\begin{array}{lclclclc} x_1&amp;&amp;&amp;&amp;&amp;-&amp;\\frac23x_4&amp;=0\\\\ &amp;&amp;x_2&amp;&amp;&amp;-&amp;x_4&amp;=0\\\\ &amp;&amp;&amp;&amp;x_3&amp;-&amp;\\frac23x_4&amp;=0\\\\&nbsp;\\end{array}\\right.$</p>\n<p>Una soluci&oacute;n del sistema se obtiene, por ejemplo, para $x_4=3$, resultando que $W \\cap L=\\langle (2,3,2,3) \\rangle$. Otra posibilidad, es pedirlo directamente a Sage:</p>"}︡
︠23671e73-71df-4195-8a5b-4f7349bc5706︠
L_int_W = imp_L_int_W.right_kernel()   # construimos la variedad intersección
L_int_W.basis()                        # pedimos una base
︡9ac1c299-f900-4c3a-a0cc-47d219de44c3︡{"stdout": "[\n(1, 3/2, 1, 3/2)\n]"}︡
︠4b75c41f-2407-4042-9b9a-2ff624bbe2e5i︠
%html
<p>Obs&eacute;rvese que el vector de la base obtenido es proporcional a $(2,3,2,3)$.</p>
<p>Finalmente, otra posibilidad m&aacute;s es utilizar la orden&nbsp; "intersection" para hallar la intersecci&oacute;n. Lo vemos:</p>

︡9ec46f1b-ab48-4d16-a6f0-f3ea0dcc2c00︡{"html": "<p>Obs&eacute;rvese que el vector de la base obtenido es proporcional a $(2,3,2,3)$.</p>\n<p>Finalmente, otra posibilidad m&aacute;s es utilizar la orden&nbsp; \"intersection\" para hallar la intersecci&oacute;n. Lo vemos:</p>"}︡
︠d8bce84d-2f0d-4444-a379-f32a8266bbb0︠
L = A.column_space()  # orden que construye la variedad generada por las columnas de la matriz A

W = MW.column_space() # orden que construye la variedad generada por las columnas de la matriz MW
︡bf926b48-8d17-47f0-a401-0df6eae338b0︡︡
︠6162d727-b9d4-4f35-9b17-5b4d83d54ba5︠
L_int_W = L.intersection(W)
︡6322528a-15d3-4f7a-af07-29fdd20793ca︡︡
︠5135b448-0686-4da8-bde0-dc14ac8d0e87︠
L_int_W.basis()
︡4e5e4670-0eb6-4816-bf2e-4629cf656438︡{"stdout": "[\n(1, 3/2, 1, 3/2)\n]"}︡
︠8c4a7a47-63d7-4037-a0f5-c3aa22104891i︠
%html
<p>Por &uacute;ltimo, calculamos $L+W$.&nbsp; Como ya sabemos que $W=\langle v_1,v_2\rangle$ y $L=\langle w_1,w_2,w_4\rangle$, se tiene que $W+L=\langle v_1,v_2, w_1,w_2,w_4\rangle$. Vamos a escalonar la matriz que contiene todos estos vectores por columnas.</p>

︡9c249c44-edfc-480d-8862-01970f4558fc︡{"html": "<p>Por &uacute;ltimo, calculamos $L+W$.&nbsp; Como ya sabemos que $W=\\langle v_1,v_2\\rangle$ y $L=\\langle w_1,w_2,w_4\\rangle$, se tiene que $W+L=\\langle v_1,v_2, w_1,w_2,w_4\\rangle$. Vamos a escalonar la matriz que contiene todos estos vectores por columnas.</p>"}︡
︠a8bfdef7-19ab-448a-a624-01b13e9c89b3︠
MLW = A3.augment(MW);
show(MLW)
︡301f4fb1-d5b6-43ce-865b-11bc2a2daa4c︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrrr}\n4 & 2 & 4 & 1 & 1 \\\\\n-5 & -2 & -1 & -1 & 1 \\\\\n2 & 1 & 5 & 1 & 1 \\\\\n6 & 3 & 6 & -1 & 1\n\\end{array}\\right)", "display": true}}︡
︠27fdedca-fe3e-48d9-848a-4bc72f93266e︠
F, U = forma_escalonada(MLW, False)
︡104e04da-9dc3-4346-9e43-245c8d36cf0a︡{"stdout": "Forma escalonada simple:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrrr}\n4 & 2 & 4 & 1 & 1 \\\\\n0 & \\frac{1}{2} & 4 & \\frac{1}{4} & \\frac{9}{4} \\\\\n0 & 0 & 3 & \\frac{1}{2} & \\frac{1}{2} \\\\\n0 & 0 & 0 & -\\frac{5}{2} & -\\frac{1}{2}\n\\end{array}\\right)", "display": true}}︡
︠7d8121d4-2aee-4fc4-9dc4-f1a44ba96a3ai︠
%html
<p>Luego tan solo los 4 primeros vectores forman base (los vectores son linealmente dependientes pues M tiene rango 4 y hay 5 columnas). En conclusi&oacute;n, en este ejemplo, $W+L=V$ el espacio completo, pues tiene la misma dimensi&oacute;n. Al tratarse del espacio completo, carece de ecuaciones impl&iacute;citas.</p>

︡e28360a7-6466-4de5-99a5-431207f11ad1︡{"html": "<p>Luego tan solo los 4 primeros vectores forman base (los vectores son linealmente dependientes pues M tiene rango 4 y hay 5 columnas). En conclusi&oacute;n, en este ejemplo, $W+L=V$ el espacio completo, pues tiene la misma dimensi&oacute;n. Al tratarse del espacio completo, carece de ecuaciones impl&iacute;citas.</p>"}︡
︠b808a44b-e52a-4a01-a47c-0d83882a4b7a︠
ecuaciones_implicitas(MLW)
︡9fc19522-8dfd-4060-a0c2-88a4d4862b9e︡{"stdout": "[]"}︡
︠4807f0e5-dad6-4f76-9d6a-b7e62eb542fai︠
%html
<p>Tambi&eacute;n Sage permite la suma de variedades lineales de forma directa:</p>

︡91c62539-6c04-4946-bbf4-6ae2f595ab95︡{"html": "<p>Tambi&eacute;n Sage permite la suma de variedades lineales de forma directa:</p>"}︡
︠14ef597b-8155-4e0c-92f0-5656cc19a488︠
L_mas_W = L + W
L_mas_W.basis()
︡8d68218e-44f8-4f23-8720-5103036ac09a︡{"stdout": "[\n(1, 0, 0, 0),\n(0, 1, 0, 0),\n(0, 0, 1, 0),\n(0, 0, 0, 1)\n]"}︡
︠f20bf1b9-837b-4967-a5e0-25cce95b323fi︠
%html
<p>Observamos que nos devuelve una variedad de dimensi&oacute;n 4 que es, en este caso, el espacio vectorial $V$ completo.</p>

︡a9564e10-9100-456c-86f8-ea5501927d41︡{"html": "<p>Observamos que nos devuelve una variedad de dimensi&oacute;n 4 que es, en este caso, el espacio vectorial $V$ completo.</p>"}︡
︠6c74190a-3741-4516-bdb2-a5df03680b47︠
ecuaciones_implicitas(L_mas_W.basis_matrix().transpose())
︡1631743a-3e8f-4451-9d02-257d23fad8fe︡{"stdout": "[]"}︡
︠35180d8c-53ef-4885-872c-75c8a0328554i︠
%html
<p><a name="afin"></a></p>
<h3>Ejemplo 2 (variedad af&iacute;n):</h3>
<p>Dado el sistema de ecuaciones lineales $Ax=b$ de orden 4 no homog&eacute;neo:</p>
<p>&nbsp; $$\left\{ \begin{array}{rrrrrrrr} x_1&amp;-&amp;x_2&amp;+&amp;x_3&amp;+&amp;x_4 &amp;=&amp; 2\\ -2x_1&amp;+&amp;x_2&amp; &amp; &amp;+&amp;x_4 &amp;=&amp; 0\\ -x_1&amp; &amp; &amp;+&amp;x_3&amp;+&amp;2x_4 &amp;=&amp; 2\\&amp; &amp;-x_2&amp;+&amp;2x_3&amp;+&amp;3x_4 &amp;=&amp; 4 \end{array}\right.$$</p>
<p>a) Comprobar que es compatible indeterminado (tiene infinitas soluciones) y obtener una expresi&oacute;n de la soluci&oacute;n general del mismo.</p>
<p>b) Expresar la soluci&oacute;n general en la forma $x=c+L$ donde $c$ es una soluci&oacute;n particular del sistema y $L$ es cierta variedad lineal de $R^4$.</p>
<p>El conjunto de soluciones $x=c+L$&nbsp; es lo que se denomina en &Aacute;lgebra una <strong>variedad&nbsp; af&iacute;n</strong>. Nos permite controlar y expresar de forma eficiente las infinitas soluciones del sistema.</p>
<p>&nbsp;</p>
<p>Resolvemos a):</p>

︡742e61c2-bf76-4aec-97e5-22e8405e2254︡{"html": "<p><a name=\"afin\"></a></p>\n<h3>Ejemplo 2 (variedad af&iacute;n):</h3>\n<p>Dado el sistema de ecuaciones lineales $Ax=b$ de orden 4 no homog&eacute;neo:</p>\n<p>&nbsp; $$\\left\\{ \\begin{array}{rrrrrrrr} x_1&amp;-&amp;x_2&amp;+&amp;x_3&amp;+&amp;x_4 &amp;=&amp; 2\\\\ -2x_1&amp;+&amp;x_2&amp; &amp; &amp;+&amp;x_4 &amp;=&amp; 0\\\\ -x_1&amp; &amp; &amp;+&amp;x_3&amp;+&amp;2x_4 &amp;=&amp; 2\\\\&amp; &amp;-x_2&amp;+&amp;2x_3&amp;+&amp;3x_4 &amp;=&amp; 4 \\end{array}\\right.$$</p>\n<p>a) Comprobar que es compatible indeterminado (tiene infinitas soluciones) y obtener una expresi&oacute;n de la soluci&oacute;n general del mismo.</p>\n<p>b) Expresar la soluci&oacute;n general en la forma $x=c+L$ donde $c$ es una soluci&oacute;n particular del sistema y $L$ es cierta variedad lineal de $R^4$.</p>\n<p>El conjunto de soluciones $x=c+L$&nbsp; es lo que se denomina en &Aacute;lgebra una <strong>variedad&nbsp; af&iacute;n</strong>. Nos permite controlar y expresar de forma eficiente las infinitas soluciones del sistema.</p>\n<p>&nbsp;</p>\n<p>Resolvemos a):</p>"}︡
︠81385236-d366-4e58-922b-7eb32dd8b2a3︠
A = matrix(QQ, [[1, -1, 1, 1], [-2, 1, 0, 1], [-1, 0, 1, 2], [0, -1, 2, 3]])  ## matriz de coeficientes
show(A)
b = column_matrix(QQ, [2, 0, 2, 4])
show(b)
︡a6de0cbe-f263-4286-a6b4-663e1770ec6e︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n1 & -1 & 1 & 1 \\\\\n-2 & 1 & 0 & 1 \\\\\n-1 & 0 & 1 & 2 \\\\\n0 & -1 & 2 & 3\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{r}\n2 \\\\\n0 \\\\\n2 \\\\\n4\n\\end{array}\\right)", "display": true}}︡
︠078c53a8-f550-4385-852a-bb9ad03cd537︠
M = A.augment(b)  ## matriz ampliada del sistema
show(M)
︡5cbee7a5-9610-4325-b249-6f487fecfc6f︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrrr}\n1 & -1 & 1 & 1 & 2 \\\\\n-2 & 1 & 0 & 1 & 0 \\\\\n-1 & 0 & 1 & 2 & 2 \\\\\n0 & -1 & 2 & 3 & 4\n\\end{array}\\right)", "display": true}}︡
︠4988d767-bdc4-4329-95e8-e87048f877b1︠
F, U = forma_escalonada(M, True)
︡f7d1802e-bc9b-4754-bf6f-8c8cbfc1b0b3︡{"stdout": "Forma escalonada canonica:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrrr}\n1 & 0 & -1 & -2 & -2 \\\\\n0 & 1 & -2 & -3 & -4 \\\\\n0 & 0 & 0 & 0 & 0 \\\\\n0 & 0 & 0 & 0 & 0\n\\end{array}\\right)", "display": true}}︡
︠33568b4a-ad6b-40f5-a409-dc8ca76eb415i︠
%html
<p>El sistema es compatible puesto que no hay pivotes en la &uacute;ltima columna de su forma escalonada can&oacute;nica de la matriz ampliada del sistema. Por otra parte, el rango(A)=rango(M)=2 &lt; n&ordm; inc&oacute;gnitas, por lo que existen infinitas soluciones de acuerdo al Teorema de Rouch&eacute;-Frobenius (sistema compatible indeterminado). La soluci&oacute;n general se puede expresar tomando como variables dependientes $x_1, x_2$, que corresponden a las columnas con pivote, y variables independientes las dem&aacute;s $x_3, x_4$:</p>
<p>$$\left\{ \begin{array}{rrrrrrrr} x_1&amp;=&amp; -2 &amp;+&amp;\lambda &amp;+&amp;2\mu \\ &nbsp;x_2&amp;=&amp; -4 &amp;+&amp;2\lambda &amp;+&amp;3\mu \\ &nbsp;x_3&amp;=&amp;&nbsp; &amp; &amp;\lambda &amp; &amp;&nbsp; \\ &nbsp;x_4&amp;=&amp;&nbsp; &amp; &amp; &amp; &amp;\mu \end{array}\right.$$</p>
<p>Resolvemos b)</p>
<p>Obs&eacute;rvese que de forma vectorial, la soluci&oacute;n general puede expresarse como</p>
<p>$(x_1,x_2,x_3,x_4)=(-2,-4,0,0)+\lambda (1,2,1,0)+\mu(2,3,0,1)$</p>
<p>si denominamos $c=(-2,-4,0,0)$ a la soluci&oacute;n particular para $\lambda=\mu=0$ y denotamos $L$ a la variedad lineal de $R^4$ generada por los vectores $\{(1,2,1,0),(2,3,0,1)\}$, podemos expresar de forma general la soluci&oacute;n $x=c+L$ indicando as&iacute;&nbsp; que podemos sumar a $c$ cualquier vector de la variedad $L$ para obtener otra soluci&oacute;n del sistema no homog&eacute;neo.</p>
<p>Podemos obtener el vector $c$ mediante la orden A.solve_right(b). Por otra parte, una base de $L$ se obtiene resolviendo el sistema homog&eacute;neo $Ax=0$ asociado. En Sage construimos directamente la variedad $L$ con la funci&oacute;n right_kernel() y luego pedimos una base:</p>

︡51012d28-72b7-4a54-b744-14f449fade97︡{"html": "<p>El sistema es compatible puesto que no hay pivotes en la &uacute;ltima columna de su forma escalonada can&oacute;nica de la matriz ampliada del sistema. Por otra parte, el rango(A)=rango(M)=2 &lt; n&ordm; inc&oacute;gnitas, por lo que existen infinitas soluciones de acuerdo al Teorema de Rouch&eacute;-Frobenius (sistema compatible indeterminado). La soluci&oacute;n general se puede expresar tomando como variables dependientes $x_1, x_2$, que corresponden a las columnas con pivote, y variables independientes las dem&aacute;s $x_3, x_4$:</p>\n<p>$$\\left\\{ \\begin{array}{rrrrrrrr} x_1&amp;=&amp; -2 &amp;+&amp;\\lambda &amp;+&amp;2\\mu \\\\ &nbsp;x_2&amp;=&amp; -4 &amp;+&amp;2\\lambda &amp;+&amp;3\\mu \\\\ &nbsp;x_3&amp;=&amp;&nbsp; &amp; &amp;\\lambda &amp; &amp;&nbsp; \\\\ &nbsp;x_4&amp;=&amp;&nbsp; &amp; &amp; &amp; &amp;\\mu \\end{array}\\right.$$</p>\n<p>Resolvemos b)</p>\n<p>Obs&eacute;rvese que de forma vectorial, la soluci&oacute;n general puede expresarse como</p>\n<p>$(x_1,x_2,x_3,x_4)=(-2,-4,0,0)+\\lambda (1,2,1,0)+\\mu(2,3,0,1)$</p>\n<p>si denominamos $c=(-2,-4,0,0)$ a la soluci&oacute;n particular para $\\lambda=\\mu=0$ y denotamos $L$ a la variedad lineal de $R^4$ generada por los vectores $\\{(1,2,1,0),(2,3,0,1)\\}$, podemos expresar de forma general la soluci&oacute;n $x=c+L$ indicando as&iacute;&nbsp; que podemos sumar a $c$ cualquier vector de la variedad $L$ para obtener otra soluci&oacute;n del sistema no homog&eacute;neo.</p>\n<p>Podemos obtener el vector $c$ mediante la orden A.solve_right(b). Por otra parte, una base de $L$ se obtiene resolviendo el sistema homog&eacute;neo $Ax=0$ asociado. En Sage construimos directamente la variedad $L$ con la funci&oacute;n right_kernel() y luego pedimos una base:</p>"}︡
︠3ef0a5f5-7141-435e-9788-d67b1b5c041c︠
c = A.solve_right(b)   ## solución particular del sistema
show(c)
︡2d8d9d89-bfc3-4340-8486-8b2d15563a8d︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{r}\n-2 \\\\\n-4 \\\\\n0 \\\\\n0\n\\end{array}\\right)", "display": true}}︡
︠16797f34-ded7-4359-9392-673f70b241ed︠
L = A.right_kernel()  ## construimos la variedad lineal L
L.basis()             ## pedimos una base de L
︡59e25b2c-2312-430c-af1d-422f79a7390e︡{"stdout": "[\n(1, 0, -3, 2),\n(0, 1, 2, -1)\n]"}︡
︠8bf36095-402b-4f27-859a-6db588bbb772︠
L.dimension()      ## preguntamos por la dimensión de L
︡3280ce5b-a11e-44ad-acbc-1fcca096536b︡{"stdout": "2"}︡
︠ceba21e8-9d07-47ed-bf2f-e0c4cdac9774i︠
%html
<p><a name="ejemplos"></a></p>
<h3>Aplicaciones pr&aacute;cticas</h3>
<h3>&nbsp;</h3>
<h3>Ejemplo 3 (academia Jedi):</h3>
<p>En la academia de formaci&oacute;n de los Caballeros Jedi, sus j&oacute;venes <a href="http://www.starwars.com/wp-content/uploads/sites/6/2012/08/Padawans-1088x816-570401936629.jpg" target="_blank">padawans</a> pueden elegir sables luz de tres colores diferentes (pongamos azules, verdes, rojos). En uno de los ejercicios que deben practicar, se establece que hagan duelos entre dos padawans que obligatoriamente lleven sables luz de diferente color, que al finalizar el combate se vuelven del color no usado en ese combate (i.e. tras un enfrentamiento, dos sables azul y verde se convierten ambos en rojo, y as&iacute; sucesivamente). El entrenamiento acaba cuando todos los sables luz tienen el mismo color, y por tanto no puede hacerse ning&uacute;n emparejamiento de padawans con sables luz de colores distintos.</p>
<p>El ejercicio para los padawans consiste no s&oacute;lo en desarrollar sus habilidades de lucha, sino en saber cu&aacute;ntos sables luz escoger de cada tipo ($a$ azules, $v$ verdes y $r$ rojos) y c&oacute;mo deben elegir los colores a enfrentarse en los duelos para que la sesi&oacute;n de entrenamiento pueda terminar y dure lo menos posible.</p>
<p>a) Razonar que el problema tiene soluci&oacute;n racional y todos los sables acabar&iacute;an siendo de color verde si y s&oacute;lo si el vector $(-r,-a,r+a)^T$ pertenece a la variedad lineal $L= \langle (2,-1,-1)^T,(-1,2,-1)^T,(-1,-1,2)^T\rangle$.</p>
<p>b) Estudiar si el problema tiene soluci&oacute;n entera para los valores $r=48$, $a=80$ y $v=36$.</p>
<p>c) Comprobar que el problema s&iacute; tiene soluci&oacute;n para valores $r=28$, $a=43$ y $v=29$, indicando el n&uacute;mero m&iacute;nimo de enfrentamientos que tendr&aacute;n lugar para finalizar el torneo.</p>
<h3>Resoluci&oacute;n:</h3>
<p>a) Cada vez que se juntan en duelo dos padawans con sables luz de diferente color, se reduce en una unidad el n&uacute;mero de sables de esos colores y aumenta en dos unidades el n&uacute;mero de sables del tercer color.</p>
<p>Si llamamos $xr$ al n&uacute;mero de duelos que dan lugar a sables rojos (i.e., el n&uacute;mero de veces que coinciden un sable azul con otro verde), $xa$ al n&uacute;mero de duelos&nbsp; que dan lugar a sables azules (porque coincidan sables verdes y rojos) y $xv$ al n&uacute;mero de duelos que dan lugar a sables verdes (porque coincide uno rojo con otro azul), entonces para que al finalizar todos los duelos s&oacute;lo haya sables verdes debe ocurrir que</p>
<p>1) el n&uacute;mero de padawans que inicialmente cogieron rojo m&aacute;s los que al luchar pasaron a rojo sea igual a los padawans que lucharon con sable rojo</p>
<p>2) el n&uacute;mero de padawans que inicialmente cogieron azul m&aacute;s los que al luchar pasaron a azul sea igual a los padawans que lucharon con sable azul</p>
<p>3) el n&uacute;mero de padawans que inicialmente cogieron verde m&aacute;s los que al luchar pasaron a verde sea igual al total de padawans del torneo</p>
<p>Lo podemos expresar con el siguiente sistema de ecuaciones:</p>
<p>$\left\{ \begin{array}{rcccrcrcc} r &amp;+&amp;2xr&amp;-&amp;xa&amp;-&amp;xv&amp;=&amp;0 \\a &amp;+&amp;2xa&amp;-&amp;xr&amp;-&amp;xv&amp;=&amp;0 \\ v&amp;+&amp;2xv&amp;-&amp;xr&amp;-&amp;xa&amp;=&amp;v+r+a&nbsp; \end{array}\right.$ equivalente a&nbsp; $\left\{ \begin{array}{rcrcrcc}2xr&amp;-&amp;xa&amp;-&amp;xv&amp;=&amp;-r \\-xr&amp;+&amp;2xa&amp;-&amp;xv&amp;=&amp;-a \\ -xr&amp;-&amp;xa&amp;+&amp;2xv&amp;=&amp;r+a&nbsp; \end{array}\right.$</p>
<p>Obs&eacute;rvese que el sistema es compatible si y s&oacute;lo si el vector $(-r,-a,r+a)^T$ pertenece a la variedad lineal $L= \langle (2,-1,-1)^T,(-1,2,-1)^T,(-1,-1,2)^T\rangle$</p>
<p>Por otra parte, obs&eacute;rvese tambi&eacute;n que en n&uacute;mero $v$ de padawans que inicialmente tuviesen el sable verde no influye en la soluci&oacute;n. La &uacute;nica relaci&oacute;n que liga a $v$ con las dem&aacute;s es que $r+a+v=$n&ordm; participantes.</p>
<p>Escalonamos el sistema para obtener una soluci&oacute;n general en funci&oacute;n de los par&aacute;metros $a$ y $r$:</p>

︡abbcdb3e-2acb-4d00-9f5f-fe772f456745︡{"html": "<p><a name=\"ejemplos\"></a></p>\n<h3>Aplicaciones pr&aacute;cticas</h3>\n<h3>&nbsp;</h3>\n<h3>Ejemplo 3 (academia Jedi):</h3>\n<p>En la academia de formaci&oacute;n de los Caballeros Jedi, sus j&oacute;venes <a href=\"http://www.starwars.com/wp-content/uploads/sites/6/2012/08/Padawans-1088x816-570401936629.jpg\" target=\"_blank\">padawans</a> pueden elegir sables luz de tres colores diferentes (pongamos azules, verdes, rojos). En uno de los ejercicios que deben practicar, se establece que hagan duelos entre dos padawans que obligatoriamente lleven sables luz de diferente color, que al finalizar el combate se vuelven del color no usado en ese combate (i.e. tras un enfrentamiento, dos sables azul y verde se convierten ambos en rojo, y as&iacute; sucesivamente). El entrenamiento acaba cuando todos los sables luz tienen el mismo color, y por tanto no puede hacerse ning&uacute;n emparejamiento de padawans con sables luz de colores distintos.</p>\n<p>El ejercicio para los padawans consiste no s&oacute;lo en desarrollar sus habilidades de lucha, sino en saber cu&aacute;ntos sables luz escoger de cada tipo ($a$ azules, $v$ verdes y $r$ rojos) y c&oacute;mo deben elegir los colores a enfrentarse en los duelos para que la sesi&oacute;n de entrenamiento pueda terminar y dure lo menos posible.</p>\n<p>a) Razonar que el problema tiene soluci&oacute;n racional y todos los sables acabar&iacute;an siendo de color verde si y s&oacute;lo si el vector $(-r,-a,r+a)^T$ pertenece a la variedad lineal $L= \\langle (2,-1,-1)^T,(-1,2,-1)^T,(-1,-1,2)^T\\rangle$.</p>\n<p>b) Estudiar si el problema tiene soluci&oacute;n entera para los valores $r=48$, $a=80$ y $v=36$.</p>\n<p>c) Comprobar que el problema s&iacute; tiene soluci&oacute;n para valores $r=28$, $a=43$ y $v=29$, indicando el n&uacute;mero m&iacute;nimo de enfrentamientos que tendr&aacute;n lugar para finalizar el torneo.</p>\n<h3>Resoluci&oacute;n:</h3>\n<p>a) Cada vez que se juntan en duelo dos padawans con sables luz de diferente color, se reduce en una unidad el n&uacute;mero de sables de esos colores y aumenta en dos unidades el n&uacute;mero de sables del tercer color.</p>\n<p>Si llamamos $xr$ al n&uacute;mero de duelos que dan lugar a sables rojos (i.e., el n&uacute;mero de veces que coinciden un sable azul con otro verde), $xa$ al n&uacute;mero de duelos&nbsp; que dan lugar a sables azules (porque coincidan sables verdes y rojos) y $xv$ al n&uacute;mero de duelos que dan lugar a sables verdes (porque coincide uno rojo con otro azul), entonces para que al finalizar todos los duelos s&oacute;lo haya sables verdes debe ocurrir que</p>\n<p>1) el n&uacute;mero de padawans que inicialmente cogieron rojo m&aacute;s los que al luchar pasaron a rojo sea igual a los padawans que lucharon con sable rojo</p>\n<p>2) el n&uacute;mero de padawans que inicialmente cogieron azul m&aacute;s los que al luchar pasaron a azul sea igual a los padawans que lucharon con sable azul</p>\n<p>3) el n&uacute;mero de padawans que inicialmente cogieron verde m&aacute;s los que al luchar pasaron a verde sea igual al total de padawans del torneo</p>\n<p>Lo podemos expresar con el siguiente sistema de ecuaciones:</p>\n<p>$\\left\\{ \\begin{array}{rcccrcrcc} r &amp;+&amp;2xr&amp;-&amp;xa&amp;-&amp;xv&amp;=&amp;0 \\\\a &amp;+&amp;2xa&amp;-&amp;xr&amp;-&amp;xv&amp;=&amp;0 \\\\ v&amp;+&amp;2xv&amp;-&amp;xr&amp;-&amp;xa&amp;=&amp;v+r+a&nbsp; \\end{array}\\right.$ equivalente a&nbsp; $\\left\\{ \\begin{array}{rcrcrcc}2xr&amp;-&amp;xa&amp;-&amp;xv&amp;=&amp;-r \\\\-xr&amp;+&amp;2xa&amp;-&amp;xv&amp;=&amp;-a \\\\ -xr&amp;-&amp;xa&amp;+&amp;2xv&amp;=&amp;r+a&nbsp; \\end{array}\\right.$</p>\n<p>Obs&eacute;rvese que el sistema es compatible si y s&oacute;lo si el vector $(-r,-a,r+a)^T$ pertenece a la variedad lineal $L= \\langle (2,-1,-1)^T,(-1,2,-1)^T,(-1,-1,2)^T\\rangle$</p>\n<p>Por otra parte, obs&eacute;rvese tambi&eacute;n que en n&uacute;mero $v$ de padawans que inicialmente tuviesen el sable verde no influye en la soluci&oacute;n. La &uacute;nica relaci&oacute;n que liga a $v$ con las dem&aacute;s es que $r+a+v=$n&ordm; participantes.</p>\n<p>Escalonamos el sistema para obtener una soluci&oacute;n general en funci&oacute;n de los par&aacute;metros $a$ y $r$:</p>"}︡
︠3e3bda3a-5bd0-4567-92f7-fa03c23dea07︠
A = matrix(ZZ, [[2, -1, -1], [-1, 2, -1], [-1, -1, 2]])
b = column_matrix(SR,['-r', '-a', 'r+a'])
Asr = A.change_ring(SR)
M = Asr.augment(b)
show(M)
︡93f585ff-46d8-44de-8d6a-93cc1b82a463︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n2 & -1 & -1 & -r \\\\\n-1 & 2 & -1 & -a \\\\\n-1 & -1 & 2 & a + r\n\\end{array}\\right)", "display": true}}︡
︠553cc80b-88b3-411f-8420-1c4863949b64︠
F, U = forma_escalonada(M, True)
︡b893e63e-e0f8-4267-b958-bc77246cc3d5︡{"stdout": "Forma escalonada canonica:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n1 & 0 & -1 & -\\frac{1}{3} \\, a - \\frac{2}{3} \\, r \\\\\n0 & 1 & -1 & -\\frac{2}{3} \\, a - \\frac{1}{3} \\, r \\\\\n0 & 0 & 0 & 0\n\\end{array}\\right)", "display": true}}︡
︠7b774197-0d49-446b-8dd5-894c78209b7di︠
%html
<p>La soluci&oacute;n general viene dada por&nbsp; $$\left\{ \begin{array}{rcrccc} xr &amp;=&amp; -\frac{a+2r}{3} &amp; + &amp; t\\&nbsp;&nbsp; xa &amp;=&amp; -\frac{2a+r}{3} &amp; +&amp; t\\ xv &amp;=&amp;&nbsp; &amp; &amp; t&nbsp; \end{array}\right.$$</p>
<p>que ha de ser un vector de componentes enteros no negativos, al igual que $a$ y $r$. Esto sucede si $r \; mod\; 3 \equiv a \; mod\; 3$ y si $t\ge \max(\frac{a+2r}{3},\frac{2a+r}{3})$.</p>
<p>Las posibles soluciones se pueden expresar de la forma $c+L$ donde $c$ es un vector en funci&oacute;n de los valores iniciales $r, a, v$ y $L$ representa un vector cualquiera de cierta variedad lineal aportada por el par&aacute;metro t. Concretamente</p>
<p>$(xr,xa,xv)=(t-\frac{a+2r}{3},t-\frac{2a+r}{3},t)= (-\frac{a+2r}{3},-\frac{2a+r}{3},0)+t\cdot (1,1,1)$</p>
<p>aqui $c= (-\frac{a+2r}{3},-\frac{2a+r}{3},0)$ y $L=\langle (1,1,1)\rangle $.</p>
<p>Calculamos $c$ y una base de la variedad $L$:</p>

︡43d19b53-2852-429f-8ca0-2ce8b0084ab8︡{"html": "<p>La soluci&oacute;n general viene dada por&nbsp; $$\\left\\{ \\begin{array}{rcrccc} xr &amp;=&amp; -\\frac{a+2r}{3} &amp; + &amp; t\\\\&nbsp;&nbsp; xa &amp;=&amp; -\\frac{2a+r}{3} &amp; +&amp; t\\\\ xv &amp;=&amp;&nbsp; &amp; &amp; t&nbsp; \\end{array}\\right.$$</p>\n<p>que ha de ser un vector de componentes enteros no negativos, al igual que $a$ y $r$. Esto sucede si $r \\; mod\\; 3 \\equiv a \\; mod\\; 3$ y si $t\\ge \\max(\\frac{a+2r}{3},\\frac{2a+r}{3})$.</p>\n<p>Las posibles soluciones se pueden expresar de la forma $c+L$ donde $c$ es un vector en funci&oacute;n de los valores iniciales $r, a, v$ y $L$ representa un vector cualquiera de cierta variedad lineal aportada por el par&aacute;metro t. Concretamente</p>\n<p>$(xr,xa,xv)=(t-\\frac{a+2r}{3},t-\\frac{2a+r}{3},t)= (-\\frac{a+2r}{3},-\\frac{2a+r}{3},0)+t\\cdot (1,1,1)$</p>\n<p>aqui $c= (-\\frac{a+2r}{3},-\\frac{2a+r}{3},0)$ y $L=\\langle (1,1,1)\\rangle $.</p>\n<p>Calculamos $c$ y una base de la variedad $L$:</p>"}︡
︠c5ac6bd6-977a-43fc-994a-80b67c21a7e2︠
c = Asr.solve_right(b)  ## solución particular
show(c)
︡58972df3-5309-4df1-bfac-891ed4394625︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{r}\n-\\frac{1}{3} \\, a - \\frac{2}{3} \\, r \\\\\n-\\frac{2}{3} \\, a - \\frac{1}{3} \\, r \\\\\n0\n\\end{array}\\right)", "display": true}}︡
︠4ddc5695-8ac4-4d8e-a665-e24fa21f0b5f︠
L = Asr.right_kernel()  ## variedad lineal L
base_L = L.basis()      ## base de L
show(base_L)
︡41cb5c30-ed64-4626-a364-a7737621f0dd︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left[\\left(1,\\,1,\\,1\\right)\\right]", "display": true}}︡
︠a66d49b8-a3e9-42f5-acf7-3a33ab1f79ca︠
var('t')
sol_general = c + t* matrix(base_L[0]).transpose()  ## expresamos la solución general del sistema
sol_general
︡c59cf873-8569-4666-9c3a-89a2193497b5︡{"stdout": "[-1/3*a - 2/3*r + t]\n[-2/3*a - 1/3*r + t]\n[                 t]"}︡
︠1f8076b4-379b-488e-966a-e02f9c8d0765i︠
%html
<p>b) Vamos a comprobar si el problema tiene soluci&oacute;n entera para los valores $r=48$, $a=80$ y $v=36$.</p>

︡cd3092d3-7f6f-4e3f-b942-5e04e69ee286︡{"html": "<p>b) Vamos a comprobar si el problema tiene soluci&oacute;n entera para los valores $r=48$, $a=80$ y $v=36$.</p>"}︡
︠a5fa156f-48da-42df-a54c-72733c28fb46︠
sol_general(r = 48, a = 80)
︡d64513ca-31fb-4c40-b7e3-93147777ea6b︡{"stdout": "[t - 176/3]\n[t - 208/3]\n[        t]"}︡
︠9f0d0d62-3c25-4672-a44c-4e07af795455i︠
%html
<p>Como $t$ ha de tomar tambi&eacute;n un valor entero no negativo, en este caso no se obtienen valores enteros, luego con esas proporciones, &iexcl;el torneo nunca acabar&iacute;a!</p>
<p>&nbsp;</p>
<p>c) Probamos ahora con valores&nbsp; $(r,a,v)=(28,43,29)$. La soluci&oacute;n general es:</p>

︡5c23270a-2548-4271-a07b-fbc38b3dc07c︡{"html": "<p>Como $t$ ha de tomar tambi&eacute;n un valor entero no negativo, en este caso no se obtienen valores enteros, luego con esas proporciones, &iexcl;el torneo nunca acabar&iacute;a!</p>\n<p>&nbsp;</p>\n<p>c) Probamos ahora con valores&nbsp; $(r,a,v)=(28,43,29)$. La soluci&oacute;n general es:</p>"}︡
︠816f2533-eaad-4afe-8be6-9958aec615a5︠
sol_general(r = 28, a = 43)
︡14865f6f-f477-4fe1-ac2c-89278126e85f︡{"stdout": "[t - 33]\n[t - 38]\n[     t]"}︡
︠ec98e309-170b-4fa6-8071-47b759b43250i︠
%html
<p>Si tomamos por ejemplo $t=80$, queda la soluci&oacute;n:</p>

︡b86e7d3a-81b8-4361-8312-68fbff180ba4︡{"html": "<p>Si tomamos por ejemplo $t=80$, queda la soluci&oacute;n:</p>"}︡
︠6a7969a1-b45f-4f11-bfd5-ed242c210d47︠
sol_general(r = 28, a= 43, t = 80)
︡f5bbc2b5-0e62-4082-87a6-f54229cb3078︡{"stdout": "[47]\n[42]\n[80]"}︡
︠f3e73fd8-3bd0-421c-9924-6906b1ce0dd4i︠
%html
<p>Pero si lo que queremos es minimizar el n&uacute;mero de enfrentamientos, entonces ha de ser $t=38$:</p>

︡583dc52c-8678-4f48-92a4-9bd74f1d3d4a︡{"html": "<p>Pero si lo que queremos es minimizar el n&uacute;mero de enfrentamientos, entonces ha de ser $t=38$:</p>"}︡
︠f4d3c72c-ded8-4b0d-bbff-5acbe70e7e22︠
sol_general(r = 28, a = 43, t = 38)
︡f78664ea-8dc5-4085-975e-9e466438a8e2︡{"stdout": "[ 5]\n[ 0]\n[38]"}︡
︠ce8f7d70-aa1d-4794-8805-8cf0861e84a8︠
sum(sol_general(r = 28, a = 43, t = 38))  ## sumamos el número de enfrentamientos
︡0838c374-f4b6-4bf5-8583-55d37e297d67︡{"stdout": "(43)"}︡
︠aafba2cd-be88-4e39-92c0-b642237fbc17i︠
%html
<p>El m&iacute;nimo n&uacute;mero de enfrentamientos es 43:</p>
<p>5 enfrentamientos entre padawans con espadas azules y verdes m&aacute;s 38 enfrentamientos entre padawans con espadas rojas y azules. Al final resultar&aacute;n 100 padawans con espadas verdes.</p>

︡ee3e4542-7653-43db-9a81-6ffab0e09dca︡{"html": "<p>El m&iacute;nimo n&uacute;mero de enfrentamientos es 43:</p>\n<p>5 enfrentamientos entre padawans con espadas azules y verdes m&aacute;s 38 enfrentamientos entre padawans con espadas rojas y azules. Al final resultar&aacute;n 100 padawans con espadas verdes.</p>"}︡
︠248aceb9-b9c2-490b-a2b1-47cf806b3274i︠
%html
<h3>Ejemplo 4 (juego Lights Out):</h3>
<p>Consideremos el juego Lights Out, que consiste en conseguir apagar todas las luces de un tablero cuadrado $n \times n$, con la peculiaridad de que cuando se cambia el estado de una luz, tambi&eacute;n se modifica el estado de las luces contiguas horizontal y verticalmente. Se puede ensayar con el tablero $5 \times 5$ que se facilita m&aacute;s abajo, entendiendo que la luz est&aacute; encendida/apagada en funci&oacute;n de si la casilla correspondiente est&aacute; o no marcada. El juego consiste en partir de una configuraci&oacute;n inicial de luces encendidas y realizar una serie de pulsaciones&nbsp; (encendidos-apagados) hasta apagar todas las luces. Se puede elegir la configuraci&oacute;n inicial libremente pero &iquest;tendr&aacute; soluci&oacute;n el juego?.</p>
<h3>Lights Out</h3>
<form name="lightsform">
<p align="left"><span style="font-size: large;">El siguiente tablero doble sirve para practicar el juego Lights Out.</span></p>
<p align="left"><span style="font-size: medium;">1&ordm;) Marque en el tablero superior las luces activadas inicialmente.</span></p>
<p align="left"><span style="font-size: medium;">2&ordm;) Pulse en la barra intermedia para comenzar.</span></p>
<p align="left"><span style="font-size: medium;">3&ordm;) Puede jugar en el tablero interactivo inferior.</span></p>
<p align="left">&nbsp;</p>
<center>
<table border="1" cellpadding="5">
<tbody>
<tr>
<td><input type="checkbox" name="aa" value="0" /></td>
<td><input type="checkbox" name="bb" value="0" /></td>
<td><input type="checkbox" name="cc" value="0" /></td>
<td><input type="checkbox" name="dd" value="0" /></td>
<td><input type="checkbox" name="ee" value="0" /></td>
</tr>
<tr>
<td><input type="checkbox" name="ff" value="0" /></td>
<td><input type="checkbox" name="gg" value="0" /></td>
<td><input type="checkbox" name="hh" value="0" /></td>
<td><input type="checkbox" name="ii" value="0" /></td>
<td><input type="checkbox" name="jj" value="0" /></td>
</tr>
<tr>
<td><input type="checkbox" name="kk" value="0" /></td>
<td><input type="checkbox" name="ll" value="0" /></td>
<td><input type="checkbox" name="mm" value="0" /></td>
<td><input type="checkbox" name="nn" value="0" /></td>
<td><input type="checkbox" name="oo" value="0" /></td>
</tr>
<tr>
<td><input type="checkbox" name="pp" value="0" /></td>
<td><input type="checkbox" name="qq" value="0" /></td>
<td><input type="checkbox" name="rr" value="0" /></td>
<td><input type="checkbox" name="ss" value="0" /></td>
<td><input type="checkbox" name="tt" value="0" /></td>
</tr>
<tr>
<td><input type="checkbox" name="uu" value="0" /></td>
<td><input type="checkbox" name="vv" value="0" /></td>
<td><input type="checkbox" name="ww" value="0" /></td>
<td><input type="checkbox" name="xx" value="0" /></td>
<td><input type="checkbox" name="yy" value="0" /></td>
</tr>
</tbody>
</table>
<input onclick="form.a.checked=form.aa.checked;
	form.b.checked=form.bb.checked;
	form.c.checked=form.cc.checked;
	form.d.checked=form.dd.checked;
	form.e.checked=form.ee.checked;
	form.f.checked=form.ff.checked;
	form.g.checked=form.gg.checked;
	form.h.checked=form.hh.checked;
	form.i.checked=form.ii.checked;
	form.j.checked=form.jj.checked;
	form.k.checked=form.kk.checked;
	form.l.checked=form.ll.checked;
	form.m.checked=form.mm.checked;
	form.n.checked=form.nn.checked;
	form.o.checked=form.oo.checked;
	form.p.checked=form.pp.checked;
	form.q.checked=form.qq.checked;
	form.r.checked=form.rr.checked;
	form.s.checked=form.ss.checked;
	form.t.checked=form.tt.checked;
	form.u.checked=form.uu.checked;
	form.v.checked=form.vv.checked;
	form.w.checked=form.ww.checked;
	form.x.checked=form.xx.checked;
	form.y.checked=form.yy.checked;
	" type="button" value="Pulsa para iniciar abajo con las luces arriba marcadas" />
<table border="1" cellpadding="5">
<tbody>
<tr>
<td><input onclick="form.b.checked=1-form.b.checked
form.f.checked=1-form.f.checked;" type="checkbox" name="a" value="form.aa.checked" /></td>
<td><input onclick="
form.g.checked=1-form.g.checked
form.a.checked=1-form.a.checked
form.c.checked=1-form.c.checked" type="checkbox" name="b" value="0" /></td>
<td><input onclick="
form.h.checked=1-form.h.checked
form.b.checked=1-form.b.checked
form.d.checked=1-form.d.checked" type="checkbox" name="c" value="0" /></td>
<td><input onclick="
form.i.checked=1-form.i.checked
form.c.checked=1-form.c.checked
form.e.checked=1-form.e.checked" type="checkbox" name="d" value="0" /></td>
<td><input onclick="
form.d.checked=1-form.d.checked
form.j.checked=1-form.j.checked" type="checkbox" name="e" value="0" /></td>
</tr>
<tr>
<td><input onclick="
form.a.checked=1-form.a.checked
form.g.checked=1-form.g.checked
form.k.checked=1-form.k.checked" type="checkbox" name="f" value="0" /></td>
<td><input onclick="
form.l.checked=1-form.l.checked
form.b.checked=1-form.b.checked
form.f.checked=1-form.f.checked
form.h.checked=1-form.h.checked" type="checkbox" name="g" value="0" /></td>
<td><input onclick="
form.c.checked=1-form.c.checked
form.g.checked=1-form.g.checked
form.i.checked=1-form.i.checked
form.m.checked=1-form.m.checked" type="checkbox" name="h" value="0" /></td>
<td><input onclick="form.d.checked=1-form.d.checked
form.h.checked=1-form.h.checked
form.j.checked=1-form.j.checked
form.n.checked=1-form.n.checked" type="checkbox" name="i" value="0" /></td>
<td><input onclick="
form.e.checked=1-form.e.checked
form.i.checked=1-form.i.checked
form.o.checked=1-form.o.checked" type="checkbox" name="j" value="0" /></td>
</tr>
<tr>
<td><input onclick="
form.f.checked=1-form.f.checked
form.l.checked=1-form.l.checked
form.p.checked=1-form.p.checked" type="checkbox" name="k" value="0" /></td>
<td><input onclick="
form.k.checked=1-form.k.checked
form.m.checked=1-form.m.checked
form.g.checked=1-form.g.checked
form.q.checked=1-form.q.checked" type="checkbox" name="l" value="0" /></td>
<td><input onclick="
form.l.checked=1-form.l.checked
form.r.checked=1-form.r.checked
form.h.checked=1-form.h.checked
form.n.checked=1-form.n.checked" type="checkbox" name="m" value="0" /></td>
<td><input onclick="
form.s.checked=1-form.s.checked
form.o.checked=1-form.o.checked
form.i.checked=1-form.i.checked
form.m.checked=1-form.m.checked" type="checkbox" name="n" value="0" /></td>
<td><input onclick="
form.t.checked=1-form.t.checked
form.n.checked=1-form.n.checked
form.j.checked=1-form.j.checked" type="checkbox" name="o" value="0" /></td>
</tr>
<tr>
<td><input onclick="
form.u.checked=1-form.u.checked
form.q.checked=1-form.q.checked
form.k.checked=1-form.k.checked" type="checkbox" name="p" value="0" /></td>
<td><input onclick="
form.v.checked=1-form.v.checked
form.r.checked=1-form.r.checked
form.l.checked=1-form.l.checked
form.p.checked=1-form.p.checked" type="checkbox" name="q" value="0" /></td>
<td><input onclick="
form.w.checked=1-form.w.checked
form.s.checked=1-form.s.checked
form.m.checked=1-form.m.checked
form.q.checked=1-form.q.checked" type="checkbox" name="r" value="0" /></td>
<td><input onclick="
form.x.checked=1-form.x.checked
form.t.checked=1-form.t.checked
form.n.checked=1-form.n.checked
form.r.checked=1-form.r.checked" type="checkbox" name="s" value="0" /></td>
<td><input onclick="
form.y.checked=1-form.y.checked
form.s.checked=1-form.s.checked
form.o.checked=1-form.o.checked" type="checkbox" name="t" value="0" /></td>
</tr>
<tr>
<td><input onclick="
form.p.checked=1-form.p.checked
form.v.checked=1-form.v.checked" type="checkbox" name="u" value="0" /></td>
<td><input onclick="
form.u.checked=1-form.u.checked
form.w.checked=1-form.w.checked
form.q.checked=1-form.q.checked" type="checkbox" name="v" value="0" /></td>
<td><input onclick="
form.x.checked=1-form.x.checked
form.r.checked=1-form.r.checked
form.v.checked=1-form.v.checked" type="checkbox" name="w" value="0" /></td>
<td><input onclick="
form.y.checked=1-form.y.checked
form.s.checked=1-form.s.checked
form.w.checked=1-form.w.checked" type="checkbox" name="x" value="0" /></td>
<td><input onclick="
form.x.checked=1-form.x.checked
form.t.checked=1-form.t.checked" type="checkbox" name="y" value="0" /></td>
</tr>
</tbody>
</table>
</center></form>
<p><br /><br /></p>
<p>Se hace la siguiente modelizaci&oacute;n del problema. Num&eacute;rense las casillas (bombillas) de uno hasta el n&uacute;mero total de casillas, recorridas por filas, de arriba a abajo y de izquierda a derecha.&nbsp;Se va a asociar a cada casilla $i$ un vector ${\bf v_i}$ binario de longitud $n^2$, de manera que la entrada $j$ de ${\bf v_i}$ es 1 si y s&oacute;lo si la pulsaci&oacute;n de la casilla $i$ modifica el estado de la casilla $j$ (por tanto, s&oacute;lo hay 1s en las posiciones correspondientes a la propia casilla $i$, y a aquellas correspondientes a las casillas a ella adyacentes en vertical y horizontal).</p>
<p>As&iacute;, si&nbsp;${\bf b}$ es un vector binario de longitud $n^2$ representando el estado inicial de las bombillas, el problema planteado tiene soluci&oacute;n si y s&oacute;lo si el sistema $x_1{\bf v_1}+\ldots +x_{n^2}{\bf v_{n^2}}={\bf b}$ tiene soluci&oacute;n, donde las variables han de tomar valores&nbsp; binarios.</p>
<p>Consideremos la matriz del sistema, $A$, cuyas columnas son los vectores ${\bf v_i}$. Como quiera que la casilla $i$ es adyacente horizontalmente a las casillas $i-1$ (si $i\; mod( n)&gt;0$) e $i+1$ (si $i \; mod (n)&lt;n-1$), y verticalmente a las casillas $i-n$ (si $i \geq n+1$) e $i+n$ (si $i \leq n^2-n$), se tiene que (caso tablero $5 \times 5$ ) $$A= \left( \begin{array}{ccccc} M&amp;I&amp;{\bf 0}&amp;\cdots &amp;{\bf 0}\\ I&amp;M&amp;I&amp;\ddots&amp;\vdots\\ {\bf 0}&amp;\ddots&amp;\ddots&amp;\ddots &amp; {\bf 0} \\ \vdots&amp; \ddots&amp; I&amp;M&amp;I\\ {\bf 0}&amp; \cdots&amp;{\bf 0}&amp;I&amp;M \end{array} \right), \qquad \mbox{para } \qquad M=\left(\begin{array}{ccccc} 1&amp;1&amp;0&amp;0&amp;0\\ 1&amp;1&amp;1&amp;0&amp;0\\ 0&amp;1&amp;1&amp;1&amp;0\\ 0&amp;0&amp;1&amp;1&amp;1\\ 0&amp;0&amp;0&amp;1&amp;1 \end{array}\right)$$</p>
<p>T&oacute;mese el caso $n=4$, y la matriz $A$ asociada, que se construye de forma automatizada a continuaci&oacute;n.</p>

︡4c0868cd-cde2-4066-b231-7b491e02bbd6︡{"html": "<h3>Ejemplo 4 (juego Lights Out):</h3>\n<p>Consideremos el juego Lights Out, que consiste en conseguir apagar todas las luces de un tablero cuadrado $n \\times n$, con la peculiaridad de que cuando se cambia el estado de una luz, tambi&eacute;n se modifica el estado de las luces contiguas horizontal y verticalmente. Se puede ensayar con el tablero $5 \\times 5$ que se facilita m&aacute;s abajo, entendiendo que la luz est&aacute; encendida/apagada en funci&oacute;n de si la casilla correspondiente est&aacute; o no marcada. El juego consiste en partir de una configuraci&oacute;n inicial de luces encendidas y realizar una serie de pulsaciones&nbsp; (encendidos-apagados) hasta apagar todas las luces. Se puede elegir la configuraci&oacute;n inicial libremente pero &iquest;tendr&aacute; soluci&oacute;n el juego?.</p>\n<h3>Lights Out</h3>\n<form name=\"lightsform\">\n<p align=\"left\"><span style=\"font-size: large;\">El siguiente tablero doble sirve para practicar el juego Lights Out.</span></p>\n<p align=\"left\"><span style=\"font-size: medium;\">1&ordm;) Marque en el tablero superior las luces activadas inicialmente.</span></p>\n<p align=\"left\"><span style=\"font-size: medium;\">2&ordm;) Pulse en la barra intermedia para comenzar.</span></p>\n<p align=\"left\"><span style=\"font-size: medium;\">3&ordm;) Puede jugar en el tablero interactivo inferior.</span></p>\n<p align=\"left\">&nbsp;</p>\n<center>\n<table border=\"1\" cellpadding=\"5\">\n<tbody>\n<tr>\n<td><input type=\"checkbox\" name=\"aa\" value=\"0\" /></td>\n<td><input type=\"checkbox\" name=\"bb\" value=\"0\" /></td>\n<td><input type=\"checkbox\" name=\"cc\" value=\"0\" /></td>\n<td><input type=\"checkbox\" name=\"dd\" value=\"0\" /></td>\n<td><input type=\"checkbox\" name=\"ee\" value=\"0\" /></td>\n</tr>\n<tr>\n<td><input type=\"checkbox\" name=\"ff\" value=\"0\" /></td>\n<td><input type=\"checkbox\" name=\"gg\" value=\"0\" /></td>\n<td><input type=\"checkbox\" name=\"hh\" value=\"0\" /></td>\n<td><input type=\"checkbox\" name=\"ii\" value=\"0\" /></td>\n<td><input type=\"checkbox\" name=\"jj\" value=\"0\" /></td>\n</tr>\n<tr>\n<td><input type=\"checkbox\" name=\"kk\" value=\"0\" /></td>\n<td><input type=\"checkbox\" name=\"ll\" value=\"0\" /></td>\n<td><input type=\"checkbox\" name=\"mm\" value=\"0\" /></td>\n<td><input type=\"checkbox\" name=\"nn\" value=\"0\" /></td>\n<td><input type=\"checkbox\" name=\"oo\" value=\"0\" /></td>\n</tr>\n<tr>\n<td><input type=\"checkbox\" name=\"pp\" value=\"0\" /></td>\n<td><input type=\"checkbox\" name=\"qq\" value=\"0\" /></td>\n<td><input type=\"checkbox\" name=\"rr\" value=\"0\" /></td>\n<td><input type=\"checkbox\" name=\"ss\" value=\"0\" /></td>\n<td><input type=\"checkbox\" name=\"tt\" value=\"0\" /></td>\n</tr>\n<tr>\n<td><input type=\"checkbox\" name=\"uu\" value=\"0\" /></td>\n<td><input type=\"checkbox\" name=\"vv\" value=\"0\" /></td>\n<td><input type=\"checkbox\" name=\"ww\" value=\"0\" /></td>\n<td><input type=\"checkbox\" name=\"xx\" value=\"0\" /></td>\n<td><input type=\"checkbox\" name=\"yy\" value=\"0\" /></td>\n</tr>\n</tbody>\n</table>\n<input onclick=\"form.a.checked=form.aa.checked;\n\tform.b.checked=form.bb.checked;\n\tform.c.checked=form.cc.checked;\n\tform.d.checked=form.dd.checked;\n\tform.e.checked=form.ee.checked;\n\tform.f.checked=form.ff.checked;\n\tform.g.checked=form.gg.checked;\n\tform.h.checked=form.hh.checked;\n\tform.i.checked=form.ii.checked;\n\tform.j.checked=form.jj.checked;\n\tform.k.checked=form.kk.checked;\n\tform.l.checked=form.ll.checked;\n\tform.m.checked=form.mm.checked;\n\tform.n.checked=form.nn.checked;\n\tform.o.checked=form.oo.checked;\n\tform.p.checked=form.pp.checked;\n\tform.q.checked=form.qq.checked;\n\tform.r.checked=form.rr.checked;\n\tform.s.checked=form.ss.checked;\n\tform.t.checked=form.tt.checked;\n\tform.u.checked=form.uu.checked;\n\tform.v.checked=form.vv.checked;\n\tform.w.checked=form.ww.checked;\n\tform.x.checked=form.xx.checked;\n\tform.y.checked=form.yy.checked;\n\t\" type=\"button\" value=\"Pulsa para iniciar abajo con las luces arriba marcadas\" />\n<table border=\"1\" cellpadding=\"5\">\n<tbody>\n<tr>\n<td><input onclick=\"form.b.checked=1-form.b.checked\nform.f.checked=1-form.f.checked;\" type=\"checkbox\" name=\"a\" value=\"form.aa.checked\" /></td>\n<td><input onclick=\"\nform.g.checked=1-form.g.checked\nform.a.checked=1-form.a.checked\nform.c.checked=1-form.c.checked\" type=\"checkbox\" name=\"b\" value=\"0\" /></td>\n<td><input onclick=\"\nform.h.checked=1-form.h.checked\nform.b.checked=1-form.b.checked\nform.d.checked=1-form.d.checked\" type=\"checkbox\" name=\"c\" value=\"0\" /></td>\n<td><input onclick=\"\nform.i.checked=1-form.i.checked\nform.c.checked=1-form.c.checked\nform.e.checked=1-form.e.checked\" type=\"checkbox\" name=\"d\" value=\"0\" /></td>\n<td><input onclick=\"\nform.d.checked=1-form.d.checked\nform.j.checked=1-form.j.checked\" type=\"checkbox\" name=\"e\" value=\"0\" /></td>\n</tr>\n<tr>\n<td><input onclick=\"\nform.a.checked=1-form.a.checked\nform.g.checked=1-form.g.checked\nform.k.checked=1-form.k.checked\" type=\"checkbox\" name=\"f\" value=\"0\" /></td>\n<td><input onclick=\"\nform.l.checked=1-form.l.checked\nform.b.checked=1-form.b.checked\nform.f.checked=1-form.f.checked\nform.h.checked=1-form.h.checked\" type=\"checkbox\" name=\"g\" value=\"0\" /></td>\n<td><input onclick=\"\nform.c.checked=1-form.c.checked\nform.g.checked=1-form.g.checked\nform.i.checked=1-form.i.checked\nform.m.checked=1-form.m.checked\" type=\"checkbox\" name=\"h\" value=\"0\" /></td>\n<td><input onclick=\"form.d.checked=1-form.d.checked\nform.h.checked=1-form.h.checked\nform.j.checked=1-form.j.checked\nform.n.checked=1-form.n.checked\" type=\"checkbox\" name=\"i\" value=\"0\" /></td>\n<td><input onclick=\"\nform.e.checked=1-form.e.checked\nform.i.checked=1-form.i.checked\nform.o.checked=1-form.o.checked\" type=\"checkbox\" name=\"j\" value=\"0\" /></td>\n</tr>\n<tr>\n<td><input onclick=\"\nform.f.checked=1-form.f.checked\nform.l.checked=1-form.l.checked\nform.p.checked=1-form.p.checked\" type=\"checkbox\" name=\"k\" value=\"0\" /></td>\n<td><input onclick=\"\nform.k.checked=1-form.k.checked\nform.m.checked=1-form.m.checked\nform.g.checked=1-form.g.checked\nform.q.checked=1-form.q.checked\" type=\"checkbox\" name=\"l\" value=\"0\" /></td>\n<td><input onclick=\"\nform.l.checked=1-form.l.checked\nform.r.checked=1-form.r.checked\nform.h.checked=1-form.h.checked\nform.n.checked=1-form.n.checked\" type=\"checkbox\" name=\"m\" value=\"0\" /></td>\n<td><input onclick=\"\nform.s.checked=1-form.s.checked\nform.o.checked=1-form.o.checked\nform.i.checked=1-form.i.checked\nform.m.checked=1-form.m.checked\" type=\"checkbox\" name=\"n\" value=\"0\" /></td>\n<td><input onclick=\"\nform.t.checked=1-form.t.checked\nform.n.checked=1-form.n.checked\nform.j.checked=1-form.j.checked\" type=\"checkbox\" name=\"o\" value=\"0\" /></td>\n</tr>\n<tr>\n<td><input onclick=\"\nform.u.checked=1-form.u.checked\nform.q.checked=1-form.q.checked\nform.k.checked=1-form.k.checked\" type=\"checkbox\" name=\"p\" value=\"0\" /></td>\n<td><input onclick=\"\nform.v.checked=1-form.v.checked\nform.r.checked=1-form.r.checked\nform.l.checked=1-form.l.checked\nform.p.checked=1-form.p.checked\" type=\"checkbox\" name=\"q\" value=\"0\" /></td>\n<td><input onclick=\"\nform.w.checked=1-form.w.checked\nform.s.checked=1-form.s.checked\nform.m.checked=1-form.m.checked\nform.q.checked=1-form.q.checked\" type=\"checkbox\" name=\"r\" value=\"0\" /></td>\n<td><input onclick=\"\nform.x.checked=1-form.x.checked\nform.t.checked=1-form.t.checked\nform.n.checked=1-form.n.checked\nform.r.checked=1-form.r.checked\" type=\"checkbox\" name=\"s\" value=\"0\" /></td>\n<td><input onclick=\"\nform.y.checked=1-form.y.checked\nform.s.checked=1-form.s.checked\nform.o.checked=1-form.o.checked\" type=\"checkbox\" name=\"t\" value=\"0\" /></td>\n</tr>\n<tr>\n<td><input onclick=\"\nform.p.checked=1-form.p.checked\nform.v.checked=1-form.v.checked\" type=\"checkbox\" name=\"u\" value=\"0\" /></td>\n<td><input onclick=\"\nform.u.checked=1-form.u.checked\nform.w.checked=1-form.w.checked\nform.q.checked=1-form.q.checked\" type=\"checkbox\" name=\"v\" value=\"0\" /></td>\n<td><input onclick=\"\nform.x.checked=1-form.x.checked\nform.r.checked=1-form.r.checked\nform.v.checked=1-form.v.checked\" type=\"checkbox\" name=\"w\" value=\"0\" /></td>\n<td><input onclick=\"\nform.y.checked=1-form.y.checked\nform.s.checked=1-form.s.checked\nform.w.checked=1-form.w.checked\" type=\"checkbox\" name=\"x\" value=\"0\" /></td>\n<td><input onclick=\"\nform.x.checked=1-form.x.checked\nform.t.checked=1-form.t.checked\" type=\"checkbox\" name=\"y\" value=\"0\" /></td>\n</tr>\n</tbody>\n</table>\n</center></form>\n<p><br /><br /></p>\n<p>Se hace la siguiente modelizaci&oacute;n del problema. Num&eacute;rense las casillas (bombillas) de uno hasta el n&uacute;mero total de casillas, recorridas por filas, de arriba a abajo y de izquierda a derecha.&nbsp;Se va a asociar a cada casilla $i$ un vector ${\\bf v_i}$ binario de longitud $n^2$, de manera que la entrada $j$ de ${\\bf v_i}$ es 1 si y s&oacute;lo si la pulsaci&oacute;n de la casilla $i$ modifica el estado de la casilla $j$ (por tanto, s&oacute;lo hay 1s en las posiciones correspondientes a la propia casilla $i$, y a aquellas correspondientes a las casillas a ella adyacentes en vertical y horizontal).</p>\n<p>As&iacute;, si&nbsp;${\\bf b}$ es un vector binario de longitud $n^2$ representando el estado inicial de las bombillas, el problema planteado tiene soluci&oacute;n si y s&oacute;lo si el sistema $x_1{\\bf v_1}+\\ldots +x_{n^2}{\\bf v_{n^2}}={\\bf b}$ tiene soluci&oacute;n, donde las variables han de tomar valores&nbsp; binarios.</p>\n<p>Consideremos la matriz del sistema, $A$, cuyas columnas son los vectores ${\\bf v_i}$. Como quiera que la casilla $i$ es adyacente horizontalmente a las casillas $i-1$ (si $i\\; mod( n)&gt;0$) e $i+1$ (si $i \\; mod (n)&lt;n-1$), y verticalmente a las casillas $i-n$ (si $i \\geq n+1$) e $i+n$ (si $i \\leq n^2-n$), se tiene que (caso tablero $5 \\times 5$ ) $$A= \\left( \\begin{array}{ccccc} M&amp;I&amp;{\\bf 0}&amp;\\cdots &amp;{\\bf 0}\\\\ I&amp;M&amp;I&amp;\\ddots&amp;\\vdots\\\\ {\\bf 0}&amp;\\ddots&amp;\\ddots&amp;\\ddots &amp; {\\bf 0} \\\\ \\vdots&amp; \\ddots&amp; I&amp;M&amp;I\\\\ {\\bf 0}&amp; \\cdots&amp;{\\bf 0}&amp;I&amp;M \\end{array} \\right), \\qquad \\mbox{para } \\qquad M=\\left(\\begin{array}{ccccc} 1&amp;1&amp;0&amp;0&amp;0\\\\ 1&amp;1&amp;1&amp;0&amp;0\\\\ 0&amp;1&amp;1&amp;1&amp;0\\\\ 0&amp;0&amp;1&amp;1&amp;1\\\\ 0&amp;0&amp;0&amp;1&amp;1 \\end{array}\\right)$$</p>\n<p>T&oacute;mese el caso $n=4$, y la matriz $A$ asociada, que se construye de forma automatizada a continuaci&oacute;n.</p>"}︡
︠28a23e38-63da-45e2-9c7b-14fda1d13a52︠
# en este bloque de instrucciones basta modificar el valor tam=4 para adaptarlo a cualquier otro tamaño.

tam = 4   ## tamaño del tablero

iden = identity_matrix(tam);
bloque = iden + block_matrix([[0, identity_matrix(tam - 1)], [zero_matrix(1, 1), 0]]) + block_matrix([[0, zero_matrix(1, 1)], [identity_matrix(tam - 1), 0]]);
A = block_matrix([[bloque, iden, zero_matrix(tam, tam^2 - 2*tam)]])
for i in range(tam - 2):
    A = A.stack(block_matrix([[zero_matrix(tam, tam*i), iden, bloque, iden, zero_matrix(tam, tam^2 - tam*i - 3*tam)]]))
A = A.stack(block_matrix([[zero_matrix(tam, tam^2 - 2*tam), iden, bloque]]))
A = A.change_ring(IntegerModRing(2))
show(A)
︡fb5c0642-835c-4b4f-b439-48231ef5e2cb︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrrrrrrrrrrrrrr}\n1 & 1 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 \\\\\n1 & 1 & 1 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 \\\\\n0 & 1 & 1 & 1 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 \\\\\n0 & 0 & 1 & 1 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 \\\\\n1 & 0 & 0 & 0 & 1 & 1 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 \\\\\n0 & 1 & 0 & 0 & 1 & 1 & 1 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 \\\\\n0 & 0 & 1 & 0 & 0 & 1 & 1 & 1 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 \\\\\n0 & 0 & 0 & 1 & 0 & 0 & 1 & 1 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 0 \\\\\n0 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 1 & 1 & 0 & 0 & 1 & 0 & 0 & 0 \\\\\n0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 1 & 1 & 1 & 0 & 0 & 1 & 0 & 0 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 1 & 1 & 1 & 0 & 0 & 1 & 0 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 1 & 1 & 0 & 0 & 0 & 1 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 1 & 1 & 0 & 0 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 1 & 1 & 1 & 0 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 1 & 1 & 1 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 1 & 1\n\\end{array}\\right)", "display": true}}︡
︠385981ee-20c6-4c3c-873d-ee805b3a14eei︠
%html
<p>a) Razonar que el conjunto de estados iniciales ${\bf b}$ para los que el problema admite ser resuelto conforma una variedad lineal $W$. Encontrar la dimensi&oacute;n, una base y unas ecuaciones impl&iacute;citas de $W$.</p>
<p>El espacio de vectores ${\bf b}$ para los que existe soluci&oacute;n es el espacio generado por las columnas de $A$. Calculamos dimensi&oacute;n, base y ecuaciones impl&iacute;citas de esta variedad.</p>
<p>Para calcular un sistema de ecuaciones impl&iacute;citas a&ntilde;adimos un vector de inc&oacute;gnitas y escalonamos.</p>

︡4a1cc35a-3cc1-490a-a939-20dc60c52677︡{"html": "<p>a) Razonar que el conjunto de estados iniciales ${\\bf b}$ para los que el problema admite ser resuelto conforma una variedad lineal $W$. Encontrar la dimensi&oacute;n, una base y unas ecuaciones impl&iacute;citas de $W$.</p>\n<p>El espacio de vectores ${\\bf b}$ para los que existe soluci&oacute;n es el espacio generado por las columnas de $A$. Calculamos dimensi&oacute;n, base y ecuaciones impl&iacute;citas de esta variedad.</p>\n<p>Para calcular un sistema de ecuaciones impl&iacute;citas a&ntilde;adimos un vector de inc&oacute;gnitas y escalonamos.</p>"}︡
︠8b3ba1fc-a062-45de-9fe0-af4fcdcca8e5︠
tam = 4   ## tamaño del tablero; el resto es automatico.

b = column_matrix(SR, ['x' + str(i) for i in range(tam^2)])
Asr = A.change_ring(SR)
M = Asr.augment(b)
show(M)
︡b51149cb-16ac-49eb-b572-d7138e5a1f71︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrrrrrrrrrrrrrrr}\n1 & 1 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x_{0} \\\\\n1 & 1 & 1 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x_{1} \\\\\n0 & 1 & 1 & 1 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x_{2} \\\\\n0 & 0 & 1 & 1 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x_{3} \\\\\n1 & 0 & 0 & 0 & 1 & 1 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x_{4} \\\\\n0 & 1 & 0 & 0 & 1 & 1 & 1 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & x_{5} \\\\\n0 & 0 & 1 & 0 & 0 & 1 & 1 & 1 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & x_{6} \\\\\n0 & 0 & 0 & 1 & 0 & 0 & 1 & 1 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & x_{7} \\\\\n0 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 1 & 1 & 0 & 0 & 1 & 0 & 0 & 0 & x_{8} \\\\\n0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 1 & 1 & 1 & 0 & 0 & 1 & 0 & 0 & x_{9} \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 1 & 1 & 1 & 0 & 0 & 1 & 0 & x_{10} \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 1 & 1 & 0 & 0 & 0 & 1 & x_{11} \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 1 & 1 & 0 & 0 & x_{12} \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 1 & 1 & 1 & 0 & x_{13} \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 1 & 1 & 1 & x_{14} \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 1 & 1 & x_{15}\n\\end{array}\\right)", "display": true}}︡
︠48975076-7c1d-4446-8244-a2161a197669︠
F, U = forma_escalonada(M, False)
︡42b034f3-5e56-4d92-a498-5be667f7afb6︡{"stdout": "Forma escalonada simple:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrrrrrrrrrrrrrrr}\n1 & 1 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x_{0} \\\\\n0 & 1 & 1 & 1 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x_{2} \\\\\n0 & 0 & 1 & 0 & 1 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x_{0} + x_{1} \\\\\n0 & 0 & 0 & 1 & 1 & 1 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x_{0} + x_{1} + x_{3} \\\\\n0 & 0 & 0 & 0 & 1 & 1 & 0 & 1 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & x_{2} + x_{3} + x_{5} \\\\\n0 & 0 & 0 & 0 & 0 & 1 & 1 & 1 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x_{0} + x_{2} + x_{3} + x_{4} \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 1 & 1 & 0 & 1 & 0 & 1 & 0 & 0 & 0 & 0 & x_{0} + x_{1} + x_{2} + x_{5} + x_{7} \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 1 & 1 & 1 & 0 & 0 & 0 & 0 & 0 & x_{1} + x_{4} + x_{5} + x_{6} \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 1 & 1 & 1 & 0 & 0 & 0 & x_{2} + x_{5} + x_{6} + x_{7} + x_{8} \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 1 & 1 & 1 & 0 & 1 & 0 & x_{0} + x_{10} + x_{4} + x_{5} + x_{8} \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 1 & 0 & 1 & 0 & 0 & x_{1} + x_{3} + x_{4} + x_{5} + x_{7} + x_{9} \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 1 & 1 & x_{0} + x_{1} + x_{10} + x_{11} + x_{2} + x_{5} + x_{7} \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x_{1} + x_{12} + x_{2} + x_{3} + x_{4} + x_{6} + x_{8} + x_{9} \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x_{0} + x_{1} + x_{10} + x_{13} + x_{3} + x_{7} + x_{8} + x_{9} \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x_{0} + x_{10} + x_{11} + x_{14} + x_{2} + x_{3} + x_{4} + x_{9} \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x_{0} + x_{1} + x_{10} + x_{11} + x_{15} + x_{2} + x_{5} + x_{7}\n\\end{array}\\right)", "display": true}}︡
︠f83391d0-5961-48e8-a04d-49b098f69182i︠
%html
<p>Se trata&nbsp; de una variedad lineal $W$ de dimensi&oacute;n 12, pues solo hay pivote en las doce primera columnas. Una base viene dada por las doce primeras columnas de la matriz, y un sistema de ecuaciones impl&iacute;citas viene dado por los 4 &uacute;ltimos elementos de la &uacute;ltima columna:</p>
<p>$$\left\{ \begin{array}{r} x_1+x_2+x_3+x_4+x_6+x_8+x_9+x_{12}=0\\ x_0+x_1+x_3+x_7+x_8+x_9+x_{10}+x_{13}=0\\ x_0+x_2+x_3+x_4+x_9+x_{10}+x_{11}+x_{14}=0\\x_0+x_1+x_2+x_5+x_7+x_{10}+x_{11}+x_{15}=0\end{array}\right.$$</p>
<p>Este sistema de ecuaciones es equivalente al obtenido por la funci&oacute;n ecuaciones_implicitas, cuya matriz de coeficientes ya est&aacute; escalonada:</p>

︡40fc7318-a932-43ec-af0e-3e4ea1537c2a︡{"html": "<p>Se trata&nbsp; de una variedad lineal $W$ de dimensi&oacute;n 12, pues solo hay pivote en las doce primera columnas. Una base viene dada por las doce primeras columnas de la matriz, y un sistema de ecuaciones impl&iacute;citas viene dado por los 4 &uacute;ltimos elementos de la &uacute;ltima columna:</p>\n<p>$$\\left\\{ \\begin{array}{r} x_1+x_2+x_3+x_4+x_6+x_8+x_9+x_{12}=0\\\\ x_0+x_1+x_3+x_7+x_8+x_9+x_{10}+x_{13}=0\\\\ x_0+x_2+x_3+x_4+x_9+x_{10}+x_{11}+x_{14}=0\\\\x_0+x_1+x_2+x_5+x_7+x_{10}+x_{11}+x_{15}=0\\end{array}\\right.$$</p>\n<p>Este sistema de ecuaciones es equivalente al obtenido por la funci&oacute;n ecuaciones_implicitas, cuya matriz de coeficientes ya est&aacute; escalonada:</p>"}︡
︠215448b9-8f29-4124-995e-99957a3eae39︠
imp_W = ecuaciones_implicitas(A)
show(imp_W)
︡3333474a-50a0-4c7f-a40e-2c55ef159264︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrrrrrrrrrrrrrr}\n1 & 0 & 0 & 0 & 1 & 1 & 0 & 0 & 1 & 0 & 1 & 0 & 0 & 1 & 1 & 1 \\\\\n0 & 1 & 0 & 0 & 1 & 1 & 1 & 0 & 0 & 0 & 0 & 1 & 1 & 1 & 0 & 1 \\\\\n0 & 0 & 1 & 0 & 0 & 1 & 1 & 1 & 1 & 0 & 0 & 0 & 1 & 0 & 1 & 1 \\\\\n0 & 0 & 0 & 1 & 0 & 0 & 1 & 1 & 0 & 1 & 0 & 1 & 1 & 1 & 1 & 0\n\\end{array}\\right)", "display": true}}︡
︠e600b045-a383-47a7-a990-925333698478i︠
%html
<p>b) Resolver el problema concreto para el vector ${\bf b1}\in W$ dado m&aacute;s abajo, encontrando todas las soluciones diferentes que admite ese problema. Aqu&iacute; entendemos por soluci&oacute;n a una secuencia&nbsp; de casillas de entre $\{{\bf x_0},\ldots ,{\bf x_{15}}\}$ distintas entre s&iacute; y que indican las posiciones donde hay que pulsar para resolver el puzle. El orden de pulsaci&oacute;n es indistinto.</p>

︡f64f58e6-312f-4f26-9caa-e92d0b2d8d93︡{"html": "<p>b) Resolver el problema concreto para el vector ${\\bf b1}\\in W$ dado m&aacute;s abajo, encontrando todas las soluciones diferentes que admite ese problema. Aqu&iacute; entendemos por soluci&oacute;n a una secuencia&nbsp; de casillas de entre $\\{{\\bf x_0},\\ldots ,{\\bf x_{15}}\\}$ distintas entre s&iacute; y que indican las posiciones donde hay que pulsar para resolver el puzle. El orden de pulsaci&oacute;n es indistinto.</p>"}︡
︠3efb7348-6ac7-40f9-b822-64cead4e39a0︠
b1 = vector(IntegerModRing(2), [1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0])
b1
︡3a07663e-8429-4723-8a0e-c82c40ed68da︡{"stdout": "(1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0)"}︡
︠a09e5844-1f99-43f8-b9dc-9b9b14507cbc︠
show(matrix(SR, 4, list(b1)))  # configuración inicial de luces encendidas
︡e17387e9-7953-43e9-b3fe-8f6de4b4a047︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n1 & 1 & 0 & 1 \\\\\n0 & 0 & 1 & 1 \\\\\n0 & 0 & 0 & 1 \\\\\n1 & 0 & 1 & 0\n\\end{array}\\right)", "display": true}}︡
︠8b54195c-1cc1-4658-8560-7fd340548c17i︠
%html
<p>Primero comprobamos si efectivamente existe soluci&oacute;n para esa configuraci&oacute;n inicial de luces encendidas. Podemos hacerlo de dos formas:</p>
<p>1&ordf; forma</p>
<p>El vector ${\bf b1}$ ha de verificar las ecuaciones impl&iacute;citas de $W$</p>

︡1dd15e5d-5144-4cdf-a5d3-31c30c5dd5da︡{"html": "<p>Primero comprobamos si efectivamente existe soluci&oacute;n para esa configuraci&oacute;n inicial de luces encendidas. Podemos hacerlo de dos formas:</p>\n<p>1&ordf; forma</p>\n<p>El vector ${\\bf b1}$ ha de verificar las ecuaciones impl&iacute;citas de $W$</p>"}︡
︠6d82ed7e-6951-46e1-9fda-77bcd1f60b35︠
imp_W*b1
︡a8094874-a59a-43ce-b00f-3e14ec2cf9f1︡{"stdout": "(0, 0, 0, 0)"}︡
︠18d00d1d-d2f5-46de-a635-6dff4dc616a0i︠
%html
<p>luego se cumplen las 4 ecuaciones impl&iacute;citas.</p>
<p>2&ordf; forma</p>
<p>El vector&nbsp;&nbsp;${\bf b1}$ &nbsp; ha de pertenecer a la variedad $W$ de las columnas de la matriz $A$</p>

︡abfc4772-c77b-4d4a-af97-41aa83ccb9dd︡{"html": "<p>luego se cumplen las 4 ecuaciones impl&iacute;citas.</p>\n<p>2&ordf; forma</p>\n<p>El vector&nbsp;&nbsp;${\\bf b1}$ &nbsp; ha de pertenecer a la variedad $W$ de las columnas de la matriz $A$</p>"}︡
︠19f59e34-988b-4e4a-a807-feff66630042︠
W = A.column_space()
︡0b86b3db-a0fb-4a29-aa62-c82bb14d4e10︡︡
︠df39c9fd-0f25-4751-94ce-1fa6f2ce9c34︠
b1 in W
︡7723129f-9854-4ba1-832e-e8c1f2267d9a︡{"stdout": "True"}︡
︠86ffd9cb-666b-416d-98ae-2f86b1978e91i︠
%html
<p>Encontramos la soluci&oacute;n del puzle, resolviendo el sistema $Ax=b_1$:</p>

︡17f745ff-a491-42cc-86a7-b02dfd0dc520︡{"html": "<p>Encontramos la soluci&oacute;n del puzle, resolviendo el sistema $Ax=b_1$:</p>"}︡
︠33c6dfff-1f6f-4e0e-992a-b914626d37b1︠
F, U = forma_escalonada(A.augment(column_matrix(b1)), True)
︡c1e18d2d-f8a4-4eca-8fad-5fd84f23ace3︡{"stdout": "Forma escalonada canonica:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrrrrrrrrrrrrrrr}\n1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 1 & 1 & 0 \\\\\n0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 1 & 0 & 1 & 0 \\\\\n0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 1 & 1 & 1 \\\\\n0 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 1 & 1 & 0 & 0 \\\\\n0 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 1 & 0 & 1 \\\\\n0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 1 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 1 & 0 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 1 & 1 & 0 & 0 & 1 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 1 & 1 & 1 & 0 & 0 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 1 & 1 & 1 & 1 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 1 & 1 & 0 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0\n\\end{array}\\right)", "display": true}}︡
︠4eb7a2df-ba27-4172-8f8e-8b00e53f3580i︠
%html
<p>La soluci&oacute;n general del sistema, una vez m&aacute;s, puede expresarse como $x=c+L$, variedad af&iacute;n. Calculamos $c$ y una base de $L$:</p>

︡8615cc29-97b4-4478-8be3-ecb01209c346︡{"html": "<p>La soluci&oacute;n general del sistema, una vez m&aacute;s, puede expresarse como $x=c+L$, variedad af&iacute;n. Calculamos $c$ y una base de $L$:</p>"}︡
︠498498a5-1782-4a56-9950-03a303200779︠
c = A.solve_right(b1)  ## la solución particular es la última columna de la matriz escalonada U
show(c)
︡df08b733-9016-49a6-9964-4d0f0b5ed0ce︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(0,\\,0,\\,1,\\,0,\\,1,\\,0,\\,1,\\,0,\\,1,\\,0,\\,1,\\,0,\\,0,\\,0,\\,0,\\,0\\right)", "display": true}}︡
︠02d454fa-63ff-4902-bb02-f617f242ce22︠
show(matrix(4, list(c)))  # mostramos la solución particular de pulsaciones sobre el tablero
︡08ec5ab0-b419-4c13-8a6e-a23230b62f5b︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n0 & 0 & 1 & 0 \\\\\n1 & 0 & 1 & 0 \\\\\n1 & 0 & 1 & 0 \\\\\n0 & 0 & 0 & 0\n\\end{array}\\right)", "display": true}}︡
︠ae9d27d2-8768-4d50-8976-8074b3828f6f︠
L = A.right_kernel()
base_L = L.basis()
base_L
︡22fd0c8f-c71c-4993-bbd5-bd61696d2c7f︡{"stdout": "[\n(1, 0, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1),\n(0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1),\n(0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1),\n(0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0)\n]"}︡
︠3415481b-23c3-4d1e-9c7d-16e2f10d4ee1i︠
%html
<p>Como $dim(L)=4$, la soluci&oacute;n general del problema puede expresarse como $x=c+t_1v_1+t_2v_2+t_3v_3+t_4v_4$ y puesto que los par&aacute;metros $t_i$ tan solo toman valores binarios, resulta que hay un total de $2^4=16$ soluciones posibles para el juego. De entre ellas, las que menos pulsaciones (encendidos/apagados) utilizan ser&aacute;n aquellas que tengan menos cantidad de 1s en el vector correspondiente.</p>

︡cd1f635f-0b20-4100-bd77-190254161633︡{"html": "<p>Como $dim(L)=4$, la soluci&oacute;n general del problema puede expresarse como $x=c+t_1v_1+t_2v_2+t_3v_3+t_4v_4$ y puesto que los par&aacute;metros $t_i$ tan solo toman valores binarios, resulta que hay un total de $2^4=16$ soluciones posibles para el juego. De entre ellas, las que menos pulsaciones (encendidos/apagados) utilizan ser&aacute;n aquellas que tengan menos cantidad de 1s en el vector correspondiente.</p>"}︡
︠9e060616-5950-406a-86b5-698213e612b9︠
len(c.nonzero_positions())  # número de pulsaciones de la solución particular
︡5ad225ae-bc86-48a4-8bf3-04033e0d4784︡{"stdout": "5"}︡
︠0538d9b8-5116-4535-8246-d71319d61b50i︠
%html
<p>El siguiente c&oacute;digo genera todas las soluciones posibles y contabiliza el n&uacute;mero de pulsaciones en cada soluci&oacute;n:</p>

︡eff4f7bb-f2df-427c-84db-6667209771de︡{"html": "<p>El siguiente c&oacute;digo genera todas las soluciones posibles y contabiliza el n&uacute;mero de pulsaciones en cada soluci&oacute;n:</p>"}︡
︠956daab5-1f01-4cda-bcd2-4a0a4971a378︠
## no es necesario modificar este código, tan solo actualizar c y L

r = L.dimension()
for i in range(2^r):
    comb = bin(2^r+i)[3:]  ## combinación de valores binarios de la solución general
    sol = c
    for j in range(r):
        if comb[j] == '1':
            sol += base_L[j]
    print sol, ', nº pulsaciones:', len(sol.nonzero_positions())
︡7c32e4ea-b815-45fd-89eb-189595fffd9b︡{"stdout": "(0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0) , n\u00ba pulsaciones: 5\n(0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0) , n\u00ba pulsaciones: 11\n(0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 1) , n\u00ba pulsaciones: 7\n(0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 1) , n\u00ba pulsaciones: 9\n(0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 0, 1) , n\u00ba pulsaciones: 9\n(0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1) , n\u00ba pulsaciones: 11\n(0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0) , n\u00ba pulsaciones: 7\n(0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0) , n\u00ba pulsaciones: 5\n(1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1) , n\u00ba pulsaciones: 7\n(1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 0, 1) , n\u00ba pulsaciones: 9\n(1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0) , n\u00ba pulsaciones: 5\n(1, 0, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0) , n\u00ba pulsaciones: 7\n(1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0) , n\u00ba pulsaciones: 7\n(1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 0) , n\u00ba pulsaciones: 9\n(1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1) , n\u00ba pulsaciones: 9\n(1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1) , n\u00ba pulsaciones: 11"}︡
︠837aa66f-9166-4bdf-a954-1b33ab1c056ci︠
%html
<p>Luego hay tres&nbsp; formas &oacute;ptimas de resolver el puzle, con tan s&oacute;lo 5 pulsaciones. Mostramos la &uacute;ltima de las tres:</p>

︡e953ee1b-ef9d-4172-99d2-a1d016327764︡{"html": "<p>Luego hay tres&nbsp; formas &oacute;ptimas de resolver el puzle, con tan s&oacute;lo 5 pulsaciones. Mostramos la &uacute;ltima de las tres:</p>"}︡
︠6ecd5b72-926c-44be-82a5-9a0c4f6f6c8a︠
show(matrix(4, list((1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0)))) # pulsaciones a realizar
︡f67fdca0-9407-4729-85a7-e133458b9ca9︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n1 & 0 & 0 & 0 \\\\\n0 & 0 & 0 & 1 \\\\\n1 & 0 & 0 & 0 \\\\\n1 & 1 & 0 & 0\n\\end{array}\\right)", "display": true}}︡
︠87f98a28-33af-4787-b48c-648b6c31ddbdi︠
%html
<p>c) Comprobar que el juego no tiene soluci&oacute;n para la posici&oacute;n inicial&nbsp; ${\bf b2}$ dada m&aacute;s abajo.</p>

︡9b3d8736-ff99-4f49-a556-ff704bf037eb︡{"html": "<p>c) Comprobar que el juego no tiene soluci&oacute;n para la posici&oacute;n inicial&nbsp; ${\\bf b2}$ dada m&aacute;s abajo.</p>"}︡
︠9fa3fdac-dff6-4649-829b-899f9ccbeaf7︠
b2 = vector(IntegerModRing(2), [0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0])
b2
︡4d0d2469-eb5e-4e99-9082-86f620c736e6︡{"stdout": "(0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0)"}︡
︠e9de6774-bb70-4f1f-99c4-8d2228412f5e︠
show(matrix(4,list(b2)))  # configuración inicial de luces encendidas
︡d9e541d3-e238-4737-ab01-fde23817fe56︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n0 & 1 & 0 & 1 \\\\\n0 & 0 & 1 & 1 \\\\\n0 & 0 & 0 & 1 \\\\\n1 & 0 & 1 & 0\n\\end{array}\\right)", "display": true}}︡
︠aa400c6c-a53e-4b49-912c-f72fe50dbd6b︠
b2 in W
︡b4d4cdd1-fe08-4301-9ffe-9c5f398f25e7︡{"stdout": "False"}︡
︠503f971d-bfd2-4f80-907a-9ecfb53655d0i︠
%html
<p>Como ${\bf b2}\notin W$ la variedad generada por las columnas de $A$, el sistema carece de soluci&oacute;n. Lo comprobamos de otra forma, estudiando el rango de la matriz $A$ y de su ampliada $M$ del sistema $Ax=b_2$:</p>

︡4900bdda-5191-4371-9ba1-966c999f22f8︡{"html": "<p>Como ${\\bf b2}\\notin W$ la variedad generada por las columnas de $A$, el sistema carece de soluci&oacute;n. Lo comprobamos de otra forma, estudiando el rango de la matriz $A$ y de su ampliada $M$ del sistema $Ax=b_2$:</p>"}︡
︠8f1e85c2-4a7d-45f1-bf2c-f28c01dbd9e6︠
F, U = forma_escalonada(A.augment(b2), True)
︡e298cc54-c239-4fe1-89d0-9b3794f7d86d︡{"stdout": "Forma escalonada canonica:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrrrrrrrrrrrrrrr}\n1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 1 & 1 & 0 \\\\\n0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 1 & 0 & 1 & 0 \\\\\n0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 1 & 1 & 0 \\\\\n0 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 1 & 1 & 0 & 0 \\\\\n0 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 1 & 0 & 0 \\\\\n0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 0 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 1 & 0 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 1 & 1 & 0 & 0 & 0 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 1 & 1 & 1 & 0 & 0 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 1 & 1 & 1 & 0 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 1 & 1 & 0 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 \\\\\n0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0\n\\end{array}\\right)", "display": true}}︡
︠8e523389-59ff-4eac-b5d8-d05dd91ac4ae︠
rank(A), rank(U)
︡0655879a-feeb-446b-a274-7472e680eddc︡{"stdout": "(12, 13)"}︡
︠1f12784a-46ff-4e88-8903-30485813f74ei︠
%html
<p>El rango pas&oacute; de 12 a 13 y por tanto el sistema no tiene soluci&oacute;n pues hay&nbsp; un pivote en la &uacute;ltima columna de t&eacute;rminos independientes del sistema.</p>
<p>En conclusi&oacute;n, hay configuraciones iniciales como ${\bf b2}$ para las que no existe soluci&oacute;n al puzle Lights Out.</p>

︡8ec54e6e-4829-432f-b9a1-293b7b313ff7︡{"html": "<p>El rango pas&oacute; de 12 a 13 y por tanto el sistema no tiene soluci&oacute;n pues hay&nbsp; un pivote en la &uacute;ltima columna de t&eacute;rminos independientes del sistema.</p>\n<p>En conclusi&oacute;n, hay configuraciones iniciales como ${\\bf b2}$ para las que no existe soluci&oacute;n al puzle Lights Out.</p>"}︡
︠e7962a89-95fa-42af-afa8-f548dee92471i︠
%html
<h3><a name="cuestionario"></a></h3>
<h3>CUESTIONARIO PARA EL ALUMNADO</h3>
<p><span id="cell_outer_0">Introduzca en la variable NUMERO_ALUMNO, que aparece m&aacute;s abajo, el n&uacute;mero correspondiente a su cuestionario y pulse el enlace&nbsp; <span style="color: #0000ff;"><span style="text-decoration: underline;">evaluate</span></span> que&nbsp; aparecer&aacute; m&aacute;s abajo.</span> Acceder&aacute; a un cuestionario con respuestas tipo test que se entregar&aacute; cumplimentado al finalizar esta sesi&oacute;n pr&aacute;ctica, siguiendo un modelo impreso que entregar&aacute; el profesor.</p>

︡a95b7486-dfa2-48ed-9d60-99323fd52c3d︡{"html": "<h3><a name=\"cuestionario\"></a></h3>\n<h3>CUESTIONARIO PARA EL ALUMNADO</h3>\n<p><span id=\"cell_outer_0\">Introduzca en la variable NUMERO_ALUMNO, que aparece m&aacute;s abajo, el n&uacute;mero correspondiente a su cuestionario y pulse el enlace&nbsp; <span style=\"color: #0000ff;\"><span style=\"text-decoration: underline;\">evaluate</span></span> que&nbsp; aparecer&aacute; m&aacute;s abajo.</span> Acceder&aacute; a un cuestionario con respuestas tipo test que se entregar&aacute; cumplimentado al finalizar esta sesi&oacute;n pr&aacute;ctica, siguiendo un modelo impreso que entregar&aacute; el profesor.</p>"}︡
︠43eeb7f0-5ca6-4d31-8175-e7825c95a98e︠
NUMERO_ALUMNO = 0



NOMBRE_FICHERO_EXAMEN='ALN_L3_t.htl'
load(DATA+'codigo_examinar_html.sage')
︡efb93095-7ba8-414b-afae-babae3fb80f9︡︡
︠1e9691d7-9436-40db-b760-5d726825e75fi︠
%html
<h3>Ayuda para cargar datos del cuestionario</h3>
<p>Podemos seleccionar los datos matriciales de los enunciados del cuestionario y pegarlos en una nueva celda con objeto de cargar en memoria dichos datos. La forma de proceder es la siguiente:</p>
<p>Seleccionar con el rat&oacute;n todos los n&uacute;meros del interior de la matriz&nbsp; (observar que est&aacute;n separados por comas) y copiarlos&nbsp; pulsando Control + C.</p>
<p>En una celda ejecutable, pegarlos pulsando&nbsp; Control + V&nbsp; dentro de la siguiente instrucci&oacute;n:</p>
<p><span style="color: #3366ff; font-family: courier new,courier;">matrix(QQ, 4,&nbsp; [pegar aqu&iacute; la lista de n&uacute;meros]).transpose()</span></p>
<p>En este caso, habremos definido una matriz con n&uacute;meros en el anillo QQ, con 4 filas de n&uacute;meros, a partir de la lista pegada. Obviamente, podemos cambiar el anillo QQ&nbsp; por cualquier otro o elegir otra cantidad de filas, seg&uacute;n nos convenga,</p>

︡bf46a615-e37a-478c-af9a-02a94fc74d81︡{"html": "<h3>Ayuda para cargar datos del cuestionario</h3>\n<p>Podemos seleccionar los datos matriciales de los enunciados del cuestionario y pegarlos en una nueva celda con objeto de cargar en memoria dichos datos. La forma de proceder es la siguiente:</p>\n<p>Seleccionar con el rat&oacute;n todos los n&uacute;meros del interior de la matriz&nbsp; (observar que est&aacute;n separados por comas) y copiarlos&nbsp; pulsando Control + C.</p>\n<p>En una celda ejecutable, pegarlos pulsando&nbsp; Control + V&nbsp; dentro de la siguiente instrucci&oacute;n:</p>\n<p><span style=\"color: #3366ff; font-family: courier new,courier;\">matrix(QQ, 4,&nbsp; [pegar aqu&iacute; la lista de n&uacute;meros]).transpose()</span></p>\n<p>En este caso, habremos definido una matriz con n&uacute;meros en el anillo QQ, con 4 filas de n&uacute;meros, a partir de la lista pegada. Obviamente, podemos cambiar el anillo QQ&nbsp; por cualquier otro o elegir otra cantidad de filas, seg&uacute;n nos convenga,</p>"}︡
︠0e6996d4-99bf-4fd3-bd9f-31ac63f99d74︠
AA = matrix(QQ, 5, [      ]).transpose()
show(AA)
︡623c0314-b447-445c-b4d7-a5d5b96d1a16︡︡
