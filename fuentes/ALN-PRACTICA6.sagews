︠25fe4d5a-24f6-4835-9abd-ef27cc1448cbai︠
%hide
%auto
DATA="foo.data/"
︠c2cd8a47-4838-47b2-8959-f9606a1937a6i︠
%html
<h3 style="font-size: 1.17em; text-align: center;">ESCUELA DE INGENIER&Iacute;A INFORM&Aacute;TICA</h3>
<h3 style="font-size: 1.17em; text-align: center;">UNIVERSIDAD DE SEVILLA</h3>
<h4 style="font-size: 1em; text-align: center;"><strong>&Aacute;LGEBRA LINEAL Y NUM&Eacute;RICA</strong></h4>
<h3 style="font-size: 1.17em;">Sexta pr&aacute;ctica: factorizaci&oacute;n $QR$ y problemas de m&iacute;nimos cuadrados</h3>
<p>En esta sexta sesi&oacute;n nos marcamos los siguientes objetivos:</p>
<p>- Factorizaci&oacute;n QR de una matriz mediante <a href="#givens">rotaciones de Givens</a>.</p>
<p>- Factorizaci&oacute;n&nbsp;QR de una matriz mediante <a href="#householder">transformaciones de Householder</a>.</p>
<p>- Aplicaci&oacute;n de la factorizaci&oacute;n <a href="#QR">QR</a> y descomposici&oacute;n <a href="#SVD">SVD</a> a la resoluci&oacute;n de ecuaciones normales de sistemas superdeterminados.</p>
<p>- Resoluci&oacute;n de problemas de m&iacute;nimos cuadrados asociados al <a href="#cuadrados">ajuste de nubes de puntos</a>.</p>
<p>- Resoluci&oacute;n de problemas de proyecciones ortogonales y <a href="#mensajes">codificaci&oacute;n de mensajes</a>.</p>
<p>La pr&aacute;ctica finaliza con la realizaci&oacute;n por parte del alumnado de un <a href="#cuestionario">cuestionario personalizado.</a></p>

︡29d8158e-30af-4d4a-a7ab-7c3ecd93d8c3︡{"html": "<h3 style=\"font-size: 1.17em; text-align: center;\">ESCUELA DE INGENIER&Iacute;A INFORM&Aacute;TICA</h3>\n<h3 style=\"font-size: 1.17em; text-align: center;\">UNIVERSIDAD DE SEVILLA</h3>\n<h4 style=\"font-size: 1em; text-align: center;\"><strong>&Aacute;LGEBRA LINEAL Y NUM&Eacute;RICA</strong></h4>\n<h3 style=\"font-size: 1.17em;\">Sexta pr&aacute;ctica: factorizaci&oacute;n $QR$ y problemas de m&iacute;nimos cuadrados</h3>\n<p>En esta sexta sesi&oacute;n nos marcamos los siguientes objetivos:</p>\n<p>- Factorizaci&oacute;n QR de una matriz mediante <a href=\"#givens\">rotaciones de Givens</a>.</p>\n<p>- Factorizaci&oacute;n&nbsp;QR de una matriz mediante <a href=\"#householder\">transformaciones de Householder</a>.</p>\n<p>- Aplicaci&oacute;n de la factorizaci&oacute;n <a href=\"#QR\">QR</a> y descomposici&oacute;n <a href=\"#SVD\">SVD</a> a la resoluci&oacute;n de ecuaciones normales de sistemas superdeterminados.</p>\n<p>- Resoluci&oacute;n de problemas de m&iacute;nimos cuadrados asociados al <a href=\"#cuadrados\">ajuste de nubes de puntos</a>.</p>\n<p>- Resoluci&oacute;n de problemas de proyecciones ortogonales y <a href=\"#mensajes\">codificaci&oacute;n de mensajes</a>.</p>\n<p>La pr&aacute;ctica finaliza con la realizaci&oacute;n por parte del alumnado de un <a href=\"#cuestionario\">cuestionario personalizado.</a></p>"}︡
︠55959fe3-f380-47dd-9990-79434d1dd789i︠
%html
<p>La siguiente instrucci&oacute;n carga en memoria todas las funciones y herramientas definidas en las pr&aacute;cticas anteriores de la asignatura:</p>

︡02288348-d064-429b-833f-8b5647c4eda8︡{"html": "<p>La siguiente instrucci&oacute;n carga en memoria todas las funciones y herramientas definidas en las pr&aacute;cticas anteriores de la asignatura:</p>"}︡
︠e6480cfc-b422-4e12-b4bd-5fe891ca08d4a︠
%auto
load(DATA + 'codigoALN.sage')
︡74cc509f-d0e4-46cc-8c8b-a8322bc0c5f8︡︡
︠2967d850-fa9e-45f9-99d5-5f51eb3eaa54i︠
%html
<h3><strong><a name="givens"></a></strong></h3>
<h3>Factorizaci&oacute;n $QR$ mediante rotaciones de Givens</h3>
<p>Se basa en la <strong>matriz de rotaci&oacute;n de Givens</strong> $\ Q_{ji}$, similar a la matriz unidad pero modificando los elementos de las filas y columnas $i,j$ de la siguiente forma:</p>
<p>$$Q_{ji}=\left(\begin{array}{ccccccc} 1 &amp; \cdots &amp; 0 &amp;\cdots &amp; 0 &amp; \cdots &amp; 0 \\ \vdots &amp; \ddots &amp; \vdots &amp; &amp; \vdots &amp; &amp; \vdots\\&nbsp;0 &amp; \cdots &amp; cos\ \alpha &amp; \cdots &amp; sen\ \alpha &amp; \cdots &amp; 0 \\ \vdots &amp; &amp; \vdots &amp; \ddots &amp;\vdots &amp; &amp; \vdots\\ 0 &amp; \cdots &amp; -sen\ \alpha &amp; \cdots &amp; cos\ \alpha &amp; \cdots &amp; 0 \\&nbsp;\vdots &amp; &amp; \vdots &amp; &amp; \vdots &amp; \ddots &amp; \vdots\\ 0 &amp; \cdots &amp; 0 &amp;\cdots &amp; 0 &amp; \cdots &amp; 1\end{array}\right)$$</p>
<p>Es f&aacute;cil comprobar que &nbsp;la matriz &nbsp;&nbsp;$Q_{ji}$ es ortogonal:&nbsp;$\ Q^t_{ji}Q_{ji}=I$.</p>
<p>Dada una matriz $A$, el efecto de multiplicar $Q_{ji}A$ es que la matriz resultante s&oacute;lo ha modificado sus filas $i,j$, en particular el elemento de la posici&oacute;n $(j,i)$ es&nbsp;$$a'_{ji}=-a_{ii}\ sen\ \alpha+a_{ji}\ cos\ \alpha$$</p>
<p>Podemos elegir convenientemente el &aacute;ngulo $\alpha$ <strong>para que se anule el elemento</strong>&nbsp;$a'_{ji}$.</p>
<p>Se pueden dar los siguientes casos:</p>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 236px; width: 1px; height: 1px; overflow: hidden;">por lo que</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 236px; width: 1px; height: 1px; overflow: hidden;">\begin{itemize}</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 236px; width: 1px; height: 1px; overflow: hidden;">\item Si $a_{ii}=0\Lr a'_{ji}=a_{ji}\cos\alpha$ y si queremos anularlo</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 236px; width: 1px; height: 1px; overflow: hidden;">$a_{ji}\cos\alpha=0$. Dado que suponemos que $a_{ji}\neq 0$, basta con hacer $\cos\alpha=0$, es decir:</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 236px; width: 1px; height: 1px; overflow: hidden;">$\alpha=\pi/2$.</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 236px; width: 1px; height: 1px; overflow: hidden;">\item Si $a_{ii}\neq 0$ tendremos que hacer $-a_{ii}\sen\alpha+a_{ji}\cos\alpha=0$, por lo que</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 236px; width: 1px; height: 1px; overflow: hidden;">$t=\tg\alpha=\D\frac{a_{ji}}{a_{ii}}$ y, por tanto,</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 236px; width: 1px; height: 1px; overflow: hidden;">$\sen\alpha=\frac{t}{\sqrt{1+t^2}}\tab\cos\alpha=\frac{1}{\sqrt{1+t^2}}$</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 236px; width: 1px; height: 1px; overflow: hidden;">\end{itemize}Si queremos anular dicho elemento, tenemos dos posibilidades:&nbsp;Si $a_{ii}=0\Rightarrow a'_{ji}=a_{ji}\ cos\ \alpha$ y si queremos anularlo</div>
<ul>
<li>Si $\ a_{ii}=0 \Longrightarrow a'_{ji}=a_{ji} cos \alpha=0 \Longrightarrow cos \alpha=0&nbsp;\Longrightarrow sen\alpha=1$, es decir&nbsp;$\alpha=\frac{\pi}2$</li>
<li>Si $\ a_{ii}\neq 0\ $, tendremos que hacer $-a_{ii}\ sen\ \alpha+a_{ji}\ cos\ \alpha=0$, por lo que&nbsp;$$t=tg\ \alpha=\frac{a_{ji}}{a_{ii}}$$&nbsp;y, por tanto,&nbsp;$$\ sen\ \alpha=\frac{t}{\sqrt{1+t^2}}\ ,\ \ \ cos\ \alpha=\frac{1}{\sqrt{1+t^2}}$$</li>
</ul>
<p>&nbsp;</p>
<p>Podemos, por tanto, mediante rotaciones de Givens, anular todos los elementos por debajo de la diagonal y llegar a una&nbsp;matriz $R$ triangular superior:</p>
<p>$$Q_k\cdots Q_2Q_1A=R\ \iff\ Q^tA=R\ \ \ \mbox{con}\ \ \ &nbsp;Q^t=Q_k\cdots Q_2Q_1$$</p>
<p>Dado que las matrices $Q_i$ de las rotaciones son ortogonales, su producto tambi&eacute;n lo es, por lo que</p>
<p>$Q^t$ es una matriz ortogonal y, despejando, $A=QR$.</p>
<p>Observaci&oacute;n: el proceso de b&uacute;squeda de los ceros en la matriz $A$ es <strong>f&aacute;cilmente paralelizable</strong> siempre que se elijan pares de filas $(j,i)$ diferentes en cada proceso paralelo ya que en cada transformaci&oacute;n mediante rotaciones de Givens tan solo se precisan las filas $i,j$ de la matriz. Esto hace que hoy en d&iacute;a sea especialmente interesante para <strong>computaci&oacute;n en paralelo</strong>, reduciendo con ello de manera muy significativa los tiempos de computaci&oacute;n en el caso de matrices&nbsp; muy grandes.</p>
<p>&nbsp;</p>

︡816b9abb-95ee-4e86-8f2d-89003541a062︡{"html": "<h3><strong><a name=\"givens\"></a></strong></h3>\n<h3>Factorizaci&oacute;n $QR$ mediante rotaciones de Givens</h3>\n<p>Se basa en la <strong>matriz de rotaci&oacute;n de Givens</strong> $\\ Q_{ji}$, similar a la matriz unidad pero modificando los elementos de las filas y columnas $i,j$ de la siguiente forma:</p>\n<p>$$Q_{ji}=\\left(\\begin{array}{ccccccc} 1 &amp; \\cdots &amp; 0 &amp;\\cdots &amp; 0 &amp; \\cdots &amp; 0 \\\\ \\vdots &amp; \\ddots &amp; \\vdots &amp; &amp; \\vdots &amp; &amp; \\vdots\\\\&nbsp;0 &amp; \\cdots &amp; cos\\ \\alpha &amp; \\cdots &amp; sen\\ \\alpha &amp; \\cdots &amp; 0 \\\\ \\vdots &amp; &amp; \\vdots &amp; \\ddots &amp;\\vdots &amp; &amp; \\vdots\\\\ 0 &amp; \\cdots &amp; -sen\\ \\alpha &amp; \\cdots &amp; cos\\ \\alpha &amp; \\cdots &amp; 0 \\\\&nbsp;\\vdots &amp; &amp; \\vdots &amp; &amp; \\vdots &amp; \\ddots &amp; \\vdots\\\\ 0 &amp; \\cdots &amp; 0 &amp;\\cdots &amp; 0 &amp; \\cdots &amp; 1\\end{array}\\right)$$</p>\n<p>Es f&aacute;cil comprobar que &nbsp;la matriz &nbsp;&nbsp;$Q_{ji}$ es ortogonal:&nbsp;$\\ Q^t_{ji}Q_{ji}=I$.</p>\n<p>Dada una matriz $A$, el efecto de multiplicar $Q_{ji}A$ es que la matriz resultante s&oacute;lo ha modificado sus filas $i,j$, en particular el elemento de la posici&oacute;n $(j,i)$ es&nbsp;$$a'_{ji}=-a_{ii}\\ sen\\ \\alpha+a_{ji}\\ cos\\ \\alpha$$</p>\n<p>Podemos elegir convenientemente el &aacute;ngulo $\\alpha$ <strong>para que se anule el elemento</strong>&nbsp;$a'_{ji}$.</p>\n<p>Se pueden dar los siguientes casos:</p>\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 236px; width: 1px; height: 1px; overflow: hidden;\">por lo que</div>\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 236px; width: 1px; height: 1px; overflow: hidden;\">\\begin{itemize}</div>\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 236px; width: 1px; height: 1px; overflow: hidden;\">\\item Si $a_{ii}=0\\Lr a'_{ji}=a_{ji}\\cos\\alpha$ y si queremos anularlo</div>\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 236px; width: 1px; height: 1px; overflow: hidden;\">$a_{ji}\\cos\\alpha=0$. Dado que suponemos que $a_{ji}\\neq 0$, basta con hacer $\\cos\\alpha=0$, es decir:</div>\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 236px; width: 1px; height: 1px; overflow: hidden;\">$\\alpha=\\pi/2$.</div>\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 236px; width: 1px; height: 1px; overflow: hidden;\">\\item Si $a_{ii}\\neq 0$ tendremos que hacer $-a_{ii}\\sen\\alpha+a_{ji}\\cos\\alpha=0$, por lo que</div>\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 236px; width: 1px; height: 1px; overflow: hidden;\">$t=\\tg\\alpha=\\D\\frac{a_{ji}}{a_{ii}}$ y, por tanto,</div>\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 236px; width: 1px; height: 1px; overflow: hidden;\">$\\sen\\alpha=\\frac{t}{\\sqrt{1+t^2}}\\tab\\cos\\alpha=\\frac{1}{\\sqrt{1+t^2}}$</div>\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 236px; width: 1px; height: 1px; overflow: hidden;\">\\end{itemize}Si queremos anular dicho elemento, tenemos dos posibilidades:&nbsp;Si $a_{ii}=0\\Rightarrow a'_{ji}=a_{ji}\\ cos\\ \\alpha$ y si queremos anularlo</div>\n<ul>\n<li>Si $\\ a_{ii}=0 \\Longrightarrow a'_{ji}=a_{ji} cos \\alpha=0 \\Longrightarrow cos \\alpha=0&nbsp;\\Longrightarrow sen\\alpha=1$, es decir&nbsp;$\\alpha=\\frac{\\pi}2$</li>\n<li>Si $\\ a_{ii}\\neq 0\\ $, tendremos que hacer $-a_{ii}\\ sen\\ \\alpha+a_{ji}\\ cos\\ \\alpha=0$, por lo que&nbsp;$$t=tg\\ \\alpha=\\frac{a_{ji}}{a_{ii}}$$&nbsp;y, por tanto,&nbsp;$$\\ sen\\ \\alpha=\\frac{t}{\\sqrt{1+t^2}}\\ ,\\ \\ \\ cos\\ \\alpha=\\frac{1}{\\sqrt{1+t^2}}$$</li>\n</ul>\n<p>&nbsp;</p>\n<p>Podemos, por tanto, mediante rotaciones de Givens, anular todos los elementos por debajo de la diagonal y llegar a una&nbsp;matriz $R$ triangular superior:</p>\n<p>$$Q_k\\cdots Q_2Q_1A=R\\ \\iff\\ Q^tA=R\\ \\ \\ \\mbox{con}\\ \\ \\ &nbsp;Q^t=Q_k\\cdots Q_2Q_1$$</p>\n<p>Dado que las matrices $Q_i$ de las rotaciones son ortogonales, su producto tambi&eacute;n lo es, por lo que</p>\n<p>$Q^t$ es una matriz ortogonal y, despejando, $A=QR$.</p>\n<p>Observaci&oacute;n: el proceso de b&uacute;squeda de los ceros en la matriz $A$ es <strong>f&aacute;cilmente paralelizable</strong> siempre que se elijan pares de filas $(j,i)$ diferentes en cada proceso paralelo ya que en cada transformaci&oacute;n mediante rotaciones de Givens tan solo se precisan las filas $i,j$ de la matriz. Esto hace que hoy en d&iacute;a sea especialmente interesante para <strong>computaci&oacute;n en paralelo</strong>, reduciendo con ello de manera muy significativa los tiempos de computaci&oacute;n en el caso de matrices&nbsp; muy grandes.</p>\n<p>&nbsp;</p>"}︡
︠f2765a1b-c8ef-468b-b1ba-fdf5c6f87e7bi︠
%html
<p>La siguiente funci&oacute;n proporciona la factorizaci&oacute;n $QR$ de una matriz $A$ mediante rotaciones de Givens:</p>
<p style="text-align: center;"><span style="color: #0000ff;">Q, R = factorizacion_QR_Givens(A,&nbsp; ver?)</span></p>
<p>El par&aacute;metro&nbsp;<span style="color: #0000ff;">ver?</span>&nbsp;es opcional y para valor True proporciona en pantalla el resultado de cada iteraci&oacute;n o rotaci&oacute;n.</p>
<p>&nbsp;</p>

︡aa855a41-88c2-4a69-99a2-f63ba6a3f0df︡{"html": "<p>La siguiente funci&oacute;n proporciona la factorizaci&oacute;n $QR$ de una matriz $A$ mediante rotaciones de Givens:</p>\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\">Q, R = factorizacion_QR_Givens(A,&nbsp; ver?)</span></p>\n<p>El par&aacute;metro&nbsp;<span style=\"color: #0000ff;\">ver?</span>&nbsp;es opcional y para valor True proporciona en pantalla el resultado de cada iteraci&oacute;n o rotaci&oacute;n.</p>\n<p>&nbsp;</p>"}︡
︠24fe4a15-5b01-4c35-920e-ece514e29deca︠
%auto    
def factorizacion_QR_Givens(A, ver = False):
    m = A.nrows()
    n = A.ncols()
    k = 0
    B = copy(A)
    Q = copy(identity_matrix(base_ring(A), m))
    G = copy(identity_matrix(base_ring(B), m))
    for i in range(n):
        for j in range (i + 1, m):
            if B[j, i] != 0:
                k += 1
                if B[i, i] == 0:
                    cos = 0
                    sen = 1
                else:
                    t = B[j, i]/B[i, i]
                    cos = 1/sqrt(1 + t^2)
                    sen = t*cos
                G[i, i] = cos
                G[i, j] = sen
                G[j, i] = -sen
                G[j, j] = cos
                B = G*B
                if ver == True:
                    print 'anulado elemento (',j+1,',',i+1,')'
                    print 'cos =', cos, ' , sen =' ,sen
                    print 'matriz resultante:'
                    show(B)
                Q = G*Q
                G = copy(identity_matrix(base_ring(A), m))
    print 'Nº de rotaciones: ', k
    return Q.transpose(), triu(B)
︡44e9d1e1-13cf-4e33-bacd-b584e9fc7a0b︡︡
︠db2238f6-0dbb-44db-8411-aa66588ce6bdi︠
%html
<h3><span style="color: #0000ff;">Ejemplo 1</span></h3>
<p><span style="color: #0000ff;"><span style="color: #000000;">Dada la matriz $A$, hallar su factorizaci&oacute;n $QR$ mediante la t&eacute;cnica de rotaciones de Givens.</span></span></p>
<p><span style="color: #0000ff;"><span style="color: #000000;">$$A=\left(\begin{array}{rrrr}1 &amp; 2 &amp; -1 &amp; 4\\ 3 &amp; 4 &amp; 0 &amp; 2\\ -1 &amp; 0 &amp; 1 &amp; -1\\ 0 &amp; 1 &amp; -1 &amp; 2\end{array}\right)$$</span></span></p>

︡2a4c6d8b-d7fe-4ae9-8303-eedde77feb91︡{"html": "<h3><span style=\"color: #0000ff;\">Ejemplo 1</span></h3>\n<p><span style=\"color: #0000ff;\"><span style=\"color: #000000;\">Dada la matriz $A$, hallar su factorizaci&oacute;n $QR$ mediante la t&eacute;cnica de rotaciones de Givens.</span></span></p>\n<p><span style=\"color: #0000ff;\"><span style=\"color: #000000;\">$$A=\\left(\\begin{array}{rrrr}1 &amp; 2 &amp; -1 &amp; 4\\\\ 3 &amp; 4 &amp; 0 &amp; 2\\\\ -1 &amp; 0 &amp; 1 &amp; -1\\\\ 0 &amp; 1 &amp; -1 &amp; 2\\end{array}\\right)$$</span></span></p>"}︡
︠76557949-f315-427b-8851-b61796967471︠
A = matrix(RDF, [[1 ,2, -1, 4], [3, 4, 0, 2], [-1, 0, 1, -1], [0, 1, -1, 2]]);show(A)
︡6a9f3af3-3742-46d2-ba11-89fdd51e8264︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n1.0 & 2.0 & -1.0 & 4.0 \\\\\n3.0 & 4.0 & 0.0 & 2.0 \\\\\n-1.0 & 0.0 & 1.0 & -1.0 \\\\\n0.0 & 1.0 & -1.0 & 2.0\n\\end{array}\\right)", "display": true}}︡
︠272a30d5-af8b-42af-add6-78eebf1cc12ai︠
%html
<p>Mostramos todo el proceso seguido en la factorizaci&oacute;n $QR$ de Givens:</p>

︡e42d0671-35ac-40e3-b4e8-5e4b3bb34a48︡{"html": "<p>Mostramos todo el proceso seguido en la factorizaci&oacute;n $QR$ de Givens:</p>"}︡
︠40ea5007-db61-4f78-afd6-5aa7b31ea19b︠
Q, R = factorizacion_QR_Givens(A, True)
︡8adff592-7ed6-4770-9806-f0120d3ee469︡{"stdout": "anulado elemento ( 2 , 1 )\ncos = 0.316227766017  , sen = 0.948683298051\nmatriz resultante:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n3.16227766017 & 4.42718872424 & -0.316227766017 & 3.16227766017 \\\\\n0.0 & -0.632455532034 & 0.948683298051 & -3.16227766017 \\\\\n-1.0 & 0.0 & 1.0 & -1.0 \\\\\n0.0 & 1.0 & -1.0 & 2.0\n\\end{array}\\right)", "display": true}}︡{"stdout": "anulado elemento ( 3 , 1 )\ncos = 0.953462589246  , sen = -0.301511344578\nmatriz resultante:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n3.31662479036 & 4.22115882409 & -0.603022689156 & 3.31662479036 \\\\\n0.0 & -0.632455532034 & 0.948683298051 & -3.16227766017 \\\\\n0.0 & 1.33484762494 & 0.858116330321 & 0.0 \\\\\n0.0 & 1.0 & -1.0 & 2.0\n\\end{array}\\right)", "display": true}}︡{"stdout": "anulado elemento ( 3 , 2 )\ncos = 0.428174419289  , sen = -0.903696114115\nmatriz resultante:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n3.31662479036 & 4.22115882409 & -0.603022689156 & 3.31662479036 \\\\\n0.0 & -1.47709789175 & -0.369274472938 & -1.35400640077 \\\\\n0.0 & 0.0 & 1.22474487139 & -2.85773803325 \\\\\n0.0 & 1.0 & -1.0 & 2.0\n\\end{array}\\right)", "display": true}}︡{"stdout": "anulado elemento ( 4 , 2 )\ncos = 0.828078671211  , sen = -0.560611910581\nmatriz resultante:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n3.31662479036 & 4.22115882409 & -0.603022689156 & 3.31662479036 \\\\\n0.0 & -1.78376517003 & 0.254823595719 & -2.24244764233 \\\\\n0.0 & 0.0 & 1.22474487139 & -2.85773803325 \\\\\n0.0 & 0.0 & -1.03509833901 & 0.897085227145\n\\end{array}\\right)", "display": true}}︡{"stdout": "anulado elemento ( 4 , 3 )\ncos = 0.763762615826  , sen = -0.645497224368\nmatriz resultante:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n3.31662479036 & 4.22115882409 & -0.603022689156 & 3.31662479036 \\\\\n0.0 & -1.78376517003 & 0.254823595719 & -2.24244764233 \\\\\n0.0 & 0.0 & 1.60356745147 & -2.76169949976 \\\\\n0.0 & 0.0 & 0.0 & -1.15950180873\n\\end{array}\\right)", "display": true}}︡{"stdout": "N\u00ba de rotaciones:  5"}︡
︠06f712de-ea7b-46fa-a5ea-fb9eaa225943i︠
%html
<p>Supriimiendo el par&aacute;metro True, tan solo se nos proporciona el resultado:</p>

︡314f73d8-4e16-4d43-a81b-55bbbef111f9︡{"html": "<p>Supriimiendo el par&aacute;metro True, tan solo se nos proporciona el resultado:</p>"}︡
︠8c890d7e-de49-4f67-98c3-abacc5c0ff26︠
Q, R = factorizacion_QR_Givens(A)
︡b2d9682d-aad0-4139-b8fb-fe3ed90eefbb︡{"stdout": "N\u00ba de rotaciones:  5"}︡
︠fda34406-6e1d-4a7b-9e54-5b6781133002︠
show(Q*R - A)
︡7b2ae7f2-d294-4cd1-836b-09c124e1e246︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n-1.11022302463 \\times 10^{-16} & -4.4408920985 \\times 10^{-16} & 3.33066907388 \\times 10^{-16} & -1.33226762955 \\times 10^{-15} \\\\\n-8.881784197 \\times 10^{-16} & -4.4408920985 \\times 10^{-16} & -1.11022302463 \\times 10^{-16} & -4.4408920985 \\times 10^{-16} \\\\\n1.11022302463 \\times 10^{-16} & -6.66133814775 \\times 10^{-16} & -3.33066907388 \\times 10^{-16} & 0.0 \\\\\n0.0 & -1.11022302463 \\times 10^{-16} & 0.0 & 0.0\n\\end{array}\\right)", "display": true}}︡
︠45e6cee8-2001-4e6a-b1ac-519ddd9018fbi︠
%html
<p>Se ha obtenido pr&aacute;cticamente la matriz nula, salvo peque&ntilde;os errores de redondeo. Lo comprobamos con la ayuda del m&eacute;todo zero_at:</p>

︡4b810010-0b01-4106-9164-8eff3b1bbd63︡{"html": "<p>Se ha obtenido pr&aacute;cticamente la matriz nula, salvo peque&ntilde;os errores de redondeo. Lo comprobamos con la ayuda del m&eacute;todo zero_at:</p>"}︡
︠d872fd0a-d4fb-4ce2-8a5f-50a52a15cfe3︠
show((Q*R - A).zero_at(10^-14))    ### redondeamos a cero los valores inferiores a 10^-14
︡9e68a90f-ce45-43f4-9ff5-c0bf1dec90d5︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n0.0 & 0.0 & 0.0 & 0.0 \\\\\n0.0 & 0.0 & 0.0 & 0.0 \\\\\n0.0 & 0.0 & 0.0 & 0.0 \\\\\n0.0 & 0.0 & 0.0 & 0.0\n\\end{array}\\right)", "display": true}}︡
︠6b084b27-686b-41dd-9ea8-07e68cfe3260i︠
%html
<p>Tambi&eacute;n podemos comprobar que la norma de la diferencia entre la matriz $A$ y su descomposici&oacute;n $QR$ es muy peque&ntilde;a:</p>

︡2a267613-5fff-43dd-a3df-7fc1052e6cb6︡{"html": "<p>Tambi&eacute;n podemos comprobar que la norma de la diferencia entre la matriz $A$ y su descomposici&oacute;n $QR$ es muy peque&ntilde;a:</p>"}︡
︠643fdc23-1ef3-4484-8c9e-15791c65ab5a︠
(Q*R - A).norm('frob')
︡e0239869-061d-469f-900a-9bc3607cb615︡{"stdout": "1.967320211922957e-15"}︡
︠570de6a8-509a-4693-85e1-a7bd642c1ad1i︠
%html
<p>Veamos que $Q$ es una matriz ortogonal, esto es, que $Q^tQ = I$:</p>

︡596f6302-1441-4f00-bf65-c9c95749bba0︡{"html": "<p>Veamos que $Q$ es una matriz ortogonal, esto es, que $Q^tQ = I$:</p>"}︡
︠df0fe671-43c7-447d-9b16-b9d0e5cd440e︠
(Q.transpose()*Q - 1).norm('frob')
︡8150acbf-682c-4d19-a083-f597e97f1763︡{"stdout": "6.055551679337975e-16"}︡
︠be4c254b-9bdc-479b-91fd-8ee8a46af734i︠
%html
<p>Las matrices ortogonales tienen n&uacute;mero de condici&oacute;n $\kappa(Q) = 1$.</p>

︡c44d73cb-95b5-4bd1-a69d-ff0daaa78efe︡{"html": "<p>Las matrices ortogonales tienen n&uacute;mero de condici&oacute;n $\\kappa(Q) = 1$.</p>"}︡
︠fe5b0593-a49a-495a-b8f9-b0a54a34c5ef︠
numero_condicion(Q)
︡a79dca8a-d69a-49f7-bd24-e72ccafb2be8︡{"stdout": "1.0000000000000004"}︡
︠7c458503-2a30-4360-9d48-24eb327bcca6i︠
%html
<p>Y en consecuencia, que verifique que $\kappa(A) = \kappa(R)$.</p>

︡d20fb396-035d-4e60-953d-4f1affb7b173︡{"html": "<p>Y en consecuencia, que verifique que $\\kappa(A) = \\kappa(R)$.</p>"}︡
︠b99b2351-65cc-4ae4-9b1c-b2a560fada56︠
numero_condicion(A),numero_condicion(R)
︡ab4a75d2-05c3-4076-92b4-b761500a00fa︡{"stdout": "(14.834773726039915, 14.834773726039916)"}︡
︠2afdd473-7f3c-456d-b5c5-e5702ae0b2b7︠
show(R)
︡7cf61fef-bb02-4407-8d44-0109255dda25︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n3.31662479036 & 4.22115882409 & -0.603022689156 & 3.31662479036 \\\\\n0.0 & -1.78376517003 & 0.254823595719 & -2.24244764233 \\\\\n0.0 & 0.0 & 1.60356745147 & -2.76169949976 \\\\\n0.0 & 0.0 & 0.0 & -1.15950180873\n\\end{array}\\right)", "display": true}}︡
︠82aa19de-d400-4374-8365-6c5330fa3708︠
show(Q)
︡7f923ac6-fc9a-4ead-981b-eabb27c9f5e7︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n0.301511344578 & -0.40771775315 & -0.445435403187 & -0.737864787373 \\\\\n0.904534033733 & -0.101929438288 & 0.35634832255 & 0.210818510678 \\\\\n-0.301511344578 & -0.713506068013 & 0.623609564462 & -0.105409255339 \\\\\n0.0 & -0.560611910581 & -0.534522483825 & 0.632455532034\n\\end{array}\\right)", "display": true}}︡
︠fdc78b48-6742-47c4-85a1-4e0e5c1aaf81i︠
%html
<h3><strong><a name="householder"></a></strong></h3>
<h3>Factorizaci&oacute;n $QR$ mediante transformaciones de Householder</h3>
<p>Dado un vector $v\in\ R^n$, no nulo, se define la <strong>transformaci&oacute;n de&nbsp;Householder</strong> asociada al vector $v$ a la que viene definida por la matriz:&nbsp;$$H= I-\frac{2}{v^tv}vv^t $$</p>
<p>Es f&aacute;cil comprobar que la matriz $H$ es <strong>sim&eacute;trica y ortogonal</strong>, esto es, $H^t=H$ y $H^tH=I$. Por tanto $H^{-1}=H$.</p>
<p>Obs&eacute;rvese que $\| v\|^2=v^tv$, por tanto si $v$ es <strong>un vector unitario</strong> ($\| v\|^2=1$) entonces&nbsp;la transformaci&oacute;n $H$ se reduce a $$H= I-2vv^t $$</p>
<p>Veamos ahora el efecto que produce la matriz $H$ al multiplicar a un vector cualquiera&nbsp;$x\in R^n$</p>
<p>$$\begin{array}{c@{\ =\ }l}y=Hx= &amp; \left(I-2vv^t\right)x=x-2vv^tx=x-2v&lt;x,v&gt;=\\&amp; x-2v(\|x\|\,\|v\|\ cos\ \alpha)=x-2v(\|x\|\ cos\ \alpha)=\\&nbsp;&amp; x-2\lambda v\ \ \ \mbox{con}\ \ \ \lambda=\|x\|\ cos\ \alpha\end{array}$$</p>
<p>donde $\alpha$ representa el &aacute;ngulo que forman los vectores $x$ y $v$.</p>
<p style="text-align: center;"><img style="border: 0px initial initial;" src="householder1.png" alt="" width="400" height="240" /></p>
<p>Geom&eacute;tricamente, los vectores $x$ e $y$ son <strong>sim&eacute;tricos respecto del hiperplano</strong> (recta, en el caso de $R^2$) cuyo vector ortogonal es $v$.</p>
<p>Rec&iacute;procamente, dados dos vectores $x$ e $y$&nbsp;con la misma norma, $\|x\|=\|y\|$, el vector $v=x-y$ es ortogonal al hiperplano respecto del cual los vectores $x$ e $y$ son sim&eacute;tricos.</p>
<p style="text-align: center;"><img style="border: 0px initial initial;" src="householder2.png" alt="" width="400" height="300" /></p>
<p>A partir de esta interpretaci&oacute;n geom&eacute;trica, dada una matriz $A$, si tomamos como vector $x$ la primera columna de $A$ y como vector $y=(\|x\|,0,\dots,0)$, la transformaci&oacute;n de Householder de vector $v=x-y$ transformar&aacute; la columna $x$ en la columna $y$. De esta forma, dicha transformaci&oacute;n ha conseguido una columna con un pivote al principio de la misma y ceros en el resto de la columna. Esta es la idea principal del proceso de escalonamiento pero sin emplear transformaciones elementales sino transformaciones de Householder. Podemos continuar de manera similar con la submatriz $A_1$ resultante de suprimir la primera fila y la primera columna de $A$ y aplicar una nueva transformaci&oacute;n de Householder para hacer ceros en la primera columna de la submatriz. Y as&iacute;, sucesivamente, conseguimos escalonar la matriz $A$. Ve&aacute;moslo en detalle:&nbsp;</p>
<p>Sea $A=(a_1\ a_2\ \cdots\ a_n)$, donde $a_i$ representa&nbsp;la columna $i$-esima de la matriz.</p>
<p>Sean $x_1=a_1=\left(\begin{array}{c}a_{11}\\ a_{21}\\ \vdots\\ a_{n1}\end{array}\right)$ e $y_1=\left(\begin{array}{c}\|x_1\|\\ 0\\&nbsp;\vdots\\ 0\end{array}\right)=\left(\begin{array}{c} r_{11}\\ 0\\ \vdots\\&nbsp;0\end{array}\right)$.</p>
<p>La transformaci&oacute;n de Householder $H_1$, asociada al vector&nbsp;$v_1=x_1-y_1$, transforma $x_1$ en $y_1$, es decir, anula a todos los elementos de la primera columna&nbsp;situados debajo de $a_{11}$.</p>
<p>$$H_1A=\left(\begin{array}{cccc}r_{11} &amp; a_{12}^{(1)} &amp; \cdots &amp;&nbsp;a_{1n}^{(1)}\\ 0 &amp; a_{22}^{(1)} &amp; \cdots &amp; a_{2n}^{(1)}\\&nbsp;\vdots &amp; \vdots &amp; \ddots &amp; \vdots\\ 0 &amp; a_{n2}^{(1)} &amp; \cdots &amp; a_{nn}^{(1)}&nbsp;\end{array}\right)=(a_1^{(1)}\ a_2^{(1)}\ \cdots\ a_n^{(1)})$$</p>
<p>en la que $a_i^{(1)}$ representa la columna $i$-&eacute;sima de la matriz $H_1A$.</p>
<p>Ahora repetimos la t&eacute;cnica para la submatriz resultante de eliminar la primera fila y la primera columna.</p>
<p>Sean $x_2=a_2^{(1)}=\left(\begin{array}{c}a_{22}^{(1)}\\ a_{32}^{(1)}\\ \vdots\\ a_{n2}^{(1)}\end{array}\right)$ e $y_2=\left(\begin{array}{c}\|x_2\|\\ 0\\&nbsp;\vdots\\ 0\end{array}\right)=\left(\begin{array}{c} r_{22}\\ 0\\ \vdots\\&nbsp;0\end{array}\right)$.</p>
<p>La transformaci&oacute;n de Householder $H_2^{(1)}$, asociada al vector&nbsp;$v_2=x_2-y_2$, transforma $x_2$ en $y_2$, es decir, anula a todos los elementos de la segunda columna&nbsp;situados debajo de $a_{22}^{(1)}$.</p>
<p>$$H_2H_1A=\left(\begin{array}{cccc}r_{11} &amp; a_{12}^{(1)} &amp; \cdots &amp;&nbsp;a_{1n}^{(1)}\\ 0 &amp; r_{22} &amp; \cdots &amp; a_{2n}^{(2)}\\&nbsp;\vdots &amp; \vdots &amp; \ddots &amp; \vdots\\ 0 &amp; 0 &amp; \cdots &amp; a_{nn}^{(2)}&nbsp;\end{array}\right)=(a_1^{(2)}\ a_2^{(2)}\ \cdots\ a_n^{(2)})$$</p>
<p>donde&nbsp;</p>
<p>$$H_2=\left(\begin{array}{cc} 1 &amp; \begin{array}{ccc} 0 &amp; \dots &amp; 0 \end{array} \\ \begin{array}{c} 0 \\ \vdots \\ 0 \end{array} &amp; H_2^{(1)} \end{array}\right)$$</p>
<p>Reiterando al procedimiento se puede transformar la matriz $A$ en una&nbsp;triangular superior $R$ en, a lo m&aacute;s, $n-1$ transformaciones de Householder. Matricialmente, tenemos</p>
<p>$$H_kH_{k-1}\cdots H_1A=R\iff Q^tA=R\ \ \mbox{con}\ \ Q^t=H_kH_{k-1}\cdots H_1$$&nbsp;de donde</p>
<p>$$A=QR\ \ \mbox{con}\ \ Q=H_1\,H_2\,\cdots\, H_k$$</p>

︡20202656-4490-4014-882f-45624d1d4973︡{"html": "<h3><strong><a name=\"householder\"></a></strong></h3>\n<h3>Factorizaci&oacute;n $QR$ mediante transformaciones de Householder</h3>\n<p>Dado un vector $v\\in\\ R^n$, no nulo, se define la <strong>transformaci&oacute;n de&nbsp;Householder</strong> asociada al vector $v$ a la que viene definida por la matriz:&nbsp;$$H= I-\\frac{2}{v^tv}vv^t $$</p>\n<p>Es f&aacute;cil comprobar que la matriz $H$ es <strong>sim&eacute;trica y ortogonal</strong>, esto es, $H^t=H$ y $H^tH=I$. Por tanto $H^{-1}=H$.</p>\n<p>Obs&eacute;rvese que $\\| v\\|^2=v^tv$, por tanto si $v$ es <strong>un vector unitario</strong> ($\\| v\\|^2=1$) entonces&nbsp;la transformaci&oacute;n $H$ se reduce a $$H= I-2vv^t $$</p>\n<p>Veamos ahora el efecto que produce la matriz $H$ al multiplicar a un vector cualquiera&nbsp;$x\\in R^n$</p>\n<p>$$\\begin{array}{c@{\\ =\\ }l}y=Hx= &amp; \\left(I-2vv^t\\right)x=x-2vv^tx=x-2v&lt;x,v&gt;=\\\\&amp; x-2v(\\|x\\|\\,\\|v\\|\\ cos\\ \\alpha)=x-2v(\\|x\\|\\ cos\\ \\alpha)=\\\\&nbsp;&amp; x-2\\lambda v\\ \\ \\ \\mbox{con}\\ \\ \\ \\lambda=\\|x\\|\\ cos\\ \\alpha\\end{array}$$</p>\n<p>donde $\\alpha$ representa el &aacute;ngulo que forman los vectores $x$ y $v$.</p>\n<p style=\"text-align: center;\"><img style=\"border: 0px initial initial;\" src=\"householder1.png\" alt=\"\" width=\"400\" height=\"240\" /></p>\n<p>Geom&eacute;tricamente, los vectores $x$ e $y$ son <strong>sim&eacute;tricos respecto del hiperplano</strong> (recta, en el caso de $R^2$) cuyo vector ortogonal es $v$.</p>\n<p>Rec&iacute;procamente, dados dos vectores $x$ e $y$&nbsp;con la misma norma, $\\|x\\|=\\|y\\|$, el vector $v=x-y$ es ortogonal al hiperplano respecto del cual los vectores $x$ e $y$ son sim&eacute;tricos.</p>\n<p style=\"text-align: center;\"><img style=\"border: 0px initial initial;\" src=\"householder2.png\" alt=\"\" width=\"400\" height=\"300\" /></p>\n<p>A partir de esta interpretaci&oacute;n geom&eacute;trica, dada una matriz $A$, si tomamos como vector $x$ la primera columna de $A$ y como vector $y=(\\|x\\|,0,\\dots,0)$, la transformaci&oacute;n de Householder de vector $v=x-y$ transformar&aacute; la columna $x$ en la columna $y$. De esta forma, dicha transformaci&oacute;n ha conseguido una columna con un pivote al principio de la misma y ceros en el resto de la columna. Esta es la idea principal del proceso de escalonamiento pero sin emplear transformaciones elementales sino transformaciones de Householder. Podemos continuar de manera similar con la submatriz $A_1$ resultante de suprimir la primera fila y la primera columna de $A$ y aplicar una nueva transformaci&oacute;n de Householder para hacer ceros en la primera columna de la submatriz. Y as&iacute;, sucesivamente, conseguimos escalonar la matriz $A$. Ve&aacute;moslo en detalle:&nbsp;</p>\n<p>Sea $A=(a_1\\ a_2\\ \\cdots\\ a_n)$, donde $a_i$ representa&nbsp;la columna $i$-esima de la matriz.</p>\n<p>Sean $x_1=a_1=\\left(\\begin{array}{c}a_{11}\\\\ a_{21}\\\\ \\vdots\\\\ a_{n1}\\end{array}\\right)$ e $y_1=\\left(\\begin{array}{c}\\|x_1\\|\\\\ 0\\\\&nbsp;\\vdots\\\\ 0\\end{array}\\right)=\\left(\\begin{array}{c} r_{11}\\\\ 0\\\\ \\vdots\\\\&nbsp;0\\end{array}\\right)$.</p>\n<p>La transformaci&oacute;n de Householder $H_1$, asociada al vector&nbsp;$v_1=x_1-y_1$, transforma $x_1$ en $y_1$, es decir, anula a todos los elementos de la primera columna&nbsp;situados debajo de $a_{11}$.</p>\n<p>$$H_1A=\\left(\\begin{array}{cccc}r_{11} &amp; a_{12}^{(1)} &amp; \\cdots &amp;&nbsp;a_{1n}^{(1)}\\\\ 0 &amp; a_{22}^{(1)} &amp; \\cdots &amp; a_{2n}^{(1)}\\\\&nbsp;\\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots\\\\ 0 &amp; a_{n2}^{(1)} &amp; \\cdots &amp; a_{nn}^{(1)}&nbsp;\\end{array}\\right)=(a_1^{(1)}\\ a_2^{(1)}\\ \\cdots\\ a_n^{(1)})$$</p>\n<p>en la que $a_i^{(1)}$ representa la columna $i$-&eacute;sima de la matriz $H_1A$.</p>\n<p>Ahora repetimos la t&eacute;cnica para la submatriz resultante de eliminar la primera fila y la primera columna.</p>\n<p>Sean $x_2=a_2^{(1)}=\\left(\\begin{array}{c}a_{22}^{(1)}\\\\ a_{32}^{(1)}\\\\ \\vdots\\\\ a_{n2}^{(1)}\\end{array}\\right)$ e $y_2=\\left(\\begin{array}{c}\\|x_2\\|\\\\ 0\\\\&nbsp;\\vdots\\\\ 0\\end{array}\\right)=\\left(\\begin{array}{c} r_{22}\\\\ 0\\\\ \\vdots\\\\&nbsp;0\\end{array}\\right)$.</p>\n<p>La transformaci&oacute;n de Householder $H_2^{(1)}$, asociada al vector&nbsp;$v_2=x_2-y_2$, transforma $x_2$ en $y_2$, es decir, anula a todos los elementos de la segunda columna&nbsp;situados debajo de $a_{22}^{(1)}$.</p>\n<p>$$H_2H_1A=\\left(\\begin{array}{cccc}r_{11} &amp; a_{12}^{(1)} &amp; \\cdots &amp;&nbsp;a_{1n}^{(1)}\\\\ 0 &amp; r_{22} &amp; \\cdots &amp; a_{2n}^{(2)}\\\\&nbsp;\\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots\\\\ 0 &amp; 0 &amp; \\cdots &amp; a_{nn}^{(2)}&nbsp;\\end{array}\\right)=(a_1^{(2)}\\ a_2^{(2)}\\ \\cdots\\ a_n^{(2)})$$</p>\n<p>donde&nbsp;</p>\n<p>$$H_2=\\left(\\begin{array}{cc} 1 &amp; \\begin{array}{ccc} 0 &amp; \\dots &amp; 0 \\end{array} \\\\ \\begin{array}{c} 0 \\\\ \\vdots \\\\ 0 \\end{array} &amp; H_2^{(1)} \\end{array}\\right)$$</p>\n<p>Reiterando al procedimiento se puede transformar la matriz $A$ en una&nbsp;triangular superior $R$ en, a lo m&aacute;s, $n-1$ transformaciones de Householder. Matricialmente, tenemos</p>\n<p>$$H_kH_{k-1}\\cdots H_1A=R\\iff Q^tA=R\\ \\ \\mbox{con}\\ \\ Q^t=H_kH_{k-1}\\cdots H_1$$&nbsp;de donde</p>\n<p>$$A=QR\\ \\ \\mbox{con}\\ \\ Q=H_1\\,H_2\\,\\cdots\\, H_k$$</p>"}︡
︠31c7fa73-1510-47ec-aeac-5c0ec530ab19i︠
%html
<p>La siguiente funci&oacute;n devuelve la matriz de Householder asociada al vector $v$.</p>
<p style="text-align: center;"><span style="color: #0000ff;">H = Householder ($v$)</span></p>
<p style="text-align: left;"><span style="color: #000000;">Podemos especificar un tama&ntilde;o $m$ para la matriz H &nbsp;mayor que el del vector $v$, con</span></p>
<p style="text-align: center;"><span style="color: #0000ff;">H = Householder2 ($v$, $m$)</span></p>

︡68684154-2c6d-4efd-a881-370c52bfbade︡{"html": "<p>La siguiente funci&oacute;n devuelve la matriz de Householder asociada al vector $v$.</p>\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\">H = Householder ($v$)</span></p>\n<p style=\"text-align: left;\"><span style=\"color: #000000;\">Podemos especificar un tama&ntilde;o $m$ para la matriz H &nbsp;mayor que el del vector $v$, con</span></p>\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\">H = Householder2 ($v$, $m$)</span></p>"}︡
︠475c9204-58ea-41c5-b329-4b81165e378ba︠
%auto
def Householder(v):
    u = matrix(v).transpose()*(1/(v.norm()))
    H = copy(identity_matrix(base_ring(u),v.degree()))
    H = H - 2*(u*u.transpose())
    return H
        
def Householder2(v, m):
    if m < v.degree():
        print 'el orden de la matriz debe ser al menos ',v.degree()
    else:
        u = matrix(v).transpose()*(1/(v.norm()))
        H = copy(identity_matrix(base_ring(u),m))
        i = m - v.degree()
        H[i:m, i:m] = H[i:m,i:m] - 2*(u*u.transpose())
        return H
︡a9cd0c42-f8cb-4907-aaf4-8cc606564e0a︡︡
︠9458d636-1aa7-4346-98c9-fb4e2cdbb73fi︠
%html
<h3><span style="color: #0000ff;">Ejemplo 2</span></h3>
<p>Dado el vector $v=(1,1,1)$, hallar la matriz de Householder asociada para orden 3 y para orden 5.</p>

︡037d1d24-b653-488e-b49b-78071e343f1a︡{"html": "<h3><span style=\"color: #0000ff;\">Ejemplo 2</span></h3>\n<p>Dado el vector $v=(1,1,1)$, hallar la matriz de Householder asociada para orden 3 y para orden 5.</p>"}︡
︠2342e3e7-e216-459d-b54a-b5f824b4dca9︠
v = vector([1, 1, 1])
︡7bbaa058-92c9-4429-97e1-26579eccf359︡︡
︠bb817ae8-180c-44b3-a31e-f6561a3f6aa2︠
H = Householder(v)
show(H)
︡3a1e33b4-ff7d-45c6-a101-70a852153bef︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n\\frac{1}{3} & -\\frac{2}{3} & -\\frac{2}{3} \\\\\n-\\frac{2}{3} & \\frac{1}{3} & -\\frac{2}{3} \\\\\n-\\frac{2}{3} & -\\frac{2}{3} & \\frac{1}{3}\n\\end{array}\\right)", "display": true}}︡
︠82d9b407-2b6a-42fc-ba77-0bf3edad5cf4︠
H*H   ### comprobamos que es ortogonal y simétrica
︡a50a12a3-91ee-40a5-9138-0ee22090db12︡{"stdout": "[1 0 0]\n[0 1 0]\n[0 0 1]"}︡
︠db2e558a-970f-478d-902f-20c18ca87893︠
numero_condicion(H)   ### las matrices ortogonales tienen número de condición 1 para la norma euclídea.
︡08c80e56-2db6-45d9-bf2d-86fe99ecd783︡{"stdout": "1.0"}︡
︠57ace8ca-3cb1-4f4a-b4b1-1cfb6c2b66a6︠
H5 = Householder2(v, 5)   ### ampliamos desde orden 3 hasta orden 5
show(H5)
︡16ae85ca-7a35-446d-b145-f67a301181b4︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrrr}\n1 & 0 & 0 & 0 & 0 \\\\\n0 & 1 & 0 & 0 & 0 \\\\\n0 & 0 & \\frac{1}{3} & -\\frac{2}{3} & -\\frac{2}{3} \\\\\n0 & 0 & -\\frac{2}{3} & \\frac{1}{3} & -\\frac{2}{3} \\\\\n0 & 0 & -\\frac{2}{3} & -\\frac{2}{3} & \\frac{1}{3}\n\\end{array}\\right)", "display": true}}︡
︠3d6a4fbc-0fa1-4a70-90b2-5c9238f6d24c︠
H5*H5
︡d70b5d49-ed53-4711-b065-465760e38470︡{"stdout": "[1 0 0 0 0]\n[0 1 0 0 0]\n[0 0 1 0 0]\n[0 0 0 1 0]\n[0 0 0 0 1]"}︡
︠3c09fd91-f238-4575-ba69-14d8f6da17d4︠
numero_condicion(H5)
︡b171070d-ce61-4948-bcc1-234bfbd4c9d9︡{"stdout": "1.0"}︡
︠f1a89d89-d9e9-4a2b-a486-50d2efe1c81fi︠
%html
<p>La siguiente funci&oacute;n calcula la factorizaci&oacute;n $QR$ de una matriz $A$ mediante transformaciones de Householder:</p>
<p style="text-align: center;"><span style="color: #0000ff;">Q, R = factorizacion_QR_Householder(A, ver?)</span></p>
<p style="text-align: left;"><span style="color: #000000;">El par&aacute;metro <span style="color: #0000ff;">ver?</span> es opcional y para valor True proporciona el resultado de cada iteraci&oacute;n o transformaci&oacute;n.</span></p>

︡ea8656f4-eaaf-44b9-ad58-24330714cda7︡{"html": "<p>La siguiente funci&oacute;n calcula la factorizaci&oacute;n $QR$ de una matriz $A$ mediante transformaciones de Householder:</p>\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\">Q, R = factorizacion_QR_Householder(A, ver?)</span></p>\n<p style=\"text-align: left;\"><span style=\"color: #000000;\">El par&aacute;metro <span style=\"color: #0000ff;\">ver?</span> es opcional y para valor True proporciona el resultado de cada iteraci&oacute;n o transformaci&oacute;n.</span></p>"}︡
︠dec23dd6-c27b-4f9d-a4c9-5582999dc3c3a︠
%auto
def factorizacion_QR_Householder(A, ver = False):
    k = 0
    m = A.nrows()
    n = A.ncols()
    R = copy(A)
    Q = copy(identity_matrix(base_ring(A), m))
    for i in range(n):
        x = R[i:m, i]
        if x[0:m - i - 1].nrows()>0 and norm(x[0:m - i - 1]) > 0:
            k += 1
            u = x
            u[0] = sgn(x[0, 0])*x.norm('frob') + u[0, 0]
            u = u*(1/(u.norm('frob')))
            P = copy(identity_matrix(base_ring(A), m))
            P[i:m, i:m] = P[i:m, i:m] - 2*(u*u.transpose())
            R = P*R
            Q = P*Q
            if ver == True:
                for j in range(i + 1, m):
                    R[j, i] = 0
                print 'transformacion de columna ', i + 1
                print 'vector aplicado:'
                show(u.transpose())
                print 'matriz resultante:'
                show(R)
    print 'Nº de iteraciones: ', k
    return Q.transpose(), triu(R)
︡0903cfe9-6927-4766-a79d-dc4b9a8f38a0︡︡
︠50854792-840e-4be8-9024-229933324e55i︠
%html
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<h3 style="font-size: 1.17em;"><span style="color: #0000ff;">Ejemplo 3</span></h3>
<p><span style="color: #0000ff;"><span style="color: #000000;">Dada la matriz $A$, hallar su factorizaci&oacute;n $QR$ mediante transformaciones de Householder.</span></span></p>
<p><span style="color: #0000ff;"><span style="color: #000000;">$$A=\left(\begin{array}{rrrr}1 &amp; 2 &amp; -1 &amp; 4\\ 3 &amp; 4 &amp; 0 &amp; 2\\ -1 &amp; 0 &amp; 1 &amp; -1\\ 0 &amp; 1 &amp; -1 &amp; 2\end{array}\right)$$</span></span></p>
</div>

︡6831edbb-a9e1-42ef-8813-99e7daac8161︡{"html": "<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\n<h3 style=\"font-size: 1.17em;\"><span style=\"color: #0000ff;\">Ejemplo 3</span></h3>\n<p><span style=\"color: #0000ff;\"><span style=\"color: #000000;\">Dada la matriz $A$, hallar su factorizaci&oacute;n $QR$ mediante transformaciones de Householder.</span></span></p>\n<p><span style=\"color: #0000ff;\"><span style=\"color: #000000;\">$$A=\\left(\\begin{array}{rrrr}1 &amp; 2 &amp; -1 &amp; 4\\\\ 3 &amp; 4 &amp; 0 &amp; 2\\\\ -1 &amp; 0 &amp; 1 &amp; -1\\\\ 0 &amp; 1 &amp; -1 &amp; 2\\end{array}\\right)$$</span></span></p>\n</div>"}︡
︠f0f01983-e643-4a23-9b1d-497a8563a749︠
A = matrix(RDF, [[1, 2, -1, 4], [3, 4, 0, 2], [-1, 0, 1, -1], [0, 1, -1, 2]]);show(A)
︡3101f363-46a0-4523-89de-fc129a72cd80︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n1.0 & 2.0 & -1.0 & 4.0 \\\\\n3.0 & 4.0 & 0.0 & 2.0 \\\\\n-1.0 & 0.0 & 1.0 & -1.0 \\\\\n0.0 & 1.0 & -1.0 & 2.0\n\\end{array}\\right)", "display": true}}︡
︠0a566151-eefe-467f-8558-8406db31373e︠
Q, R = factorizacion_QR_Householder(A, True)
︡5d9e9ecf-8a6c-4d30-bc20-4eb2078fff4e︡{"stdout": "transformacion de columna  1\nvector aplicado:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n0.806694286759 & 0.560642394883 & -0.186880798294 & 0.0\n\\end{array}\\right)", "display": true}}︡{"stdout": "matriz resultante:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n-3.31662479036 & -4.22115882409 & 0.603022689156 & -3.31662479036 \\\\\n0.0 & -0.323627226987 & 1.11408063036 & -3.08496231132 \\\\\n0.0 & 1.44120907566 & 0.62863978988 & 0.694987437107 \\\\\n0.0 & 1.0 & -1.0 & 2.0\n\\end{array}\\right)", "display": true}}︡{"stdout": "transformacion de columna  2\nvector aplicado:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n-0.768579624384 & 0.525618262455 & 0.364706461631\n\\end{array}\\right)", "display": true}}︡{"stdout": "matriz resultante:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n-3.31662479036 & -4.22115882409 & 0.603022689156 & -3.31662479036 \\\\\n0.0 & 1.78376517003 & -0.254823595719 & 2.24244764233 \\\\\n0.0 & 0.0 & 1.56480962571 & -2.94833574553 \\\\\n0.0 & 0.0 & -0.350427462861 & -0.527962975089\n\\end{array}\\right)", "display": true}}︡{"stdout": "transformacion de columna  3\nvector aplicado:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rr}\n0.993939195613 & -0.109931230429\n\\end{array}\\right)", "display": true}}︡{"stdout": "matriz resultante:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n-3.31662479036 & -4.22115882409 & 0.603022689156 & -3.31662479036 \\\\\n0.0 & 1.78376517003 & -0.254823595719 & 2.24244764233 \\\\\n0.0 & 0.0 & -1.60356745147 & 2.76169949976 \\\\\n0.0 & 0.0 & 0.0 & -1.15950180873\n\\end{array}\\right)", "display": true}}︡{"stdout": "N\u00ba de iteraciones:  3"}︡
︠b66382a2-f2e4-4f1d-a48c-fabdfb586620︠
Q, R = factorizacion_QR_Householder(A)
︡7ae615b4-f9c9-4aee-b378-2e501d3326ab︡{"stdout": "N\u00ba de iteraciones:  3"}︡
︠3fea31b4-42e9-4250-818f-12262b7f62cai︠
%html
<p>Comprobamos las principales caracter&iacute;sticas de dicha descomposici&oacute;n:</p>

︡5aaf49e9-fe5c-422d-acb8-b3eec310f491︡{"html": "<p>Comprobamos las principales caracter&iacute;sticas de dicha descomposici&oacute;n:</p>"}︡
︠8998f7c1-699e-48e0-8094-03c216b86f1d︠
(Q.transpose()*Q - 1).norm('frob')
︡a8deb860-c73d-4a0e-925e-cfa484addfe0︡{"stdout": "1.0285023198586813e-15"}︡
︠e9866415-463c-4b65-a2b7-f7d2dc2c8690︠
numero_condicion(Q)
︡719b24ce-6e03-4eaa-9bcf-e65e5401d391︡{"stdout": "1.0000000000000002"}︡
︠2cdc6741-4ce6-408a-adcb-5389167b1037︠
(Q*R - A).norm('frob')
︡7a627681-9dd9-4405-9ec5-f720e92b2a28︡{"stdout": "3.967397163063965e-15"}︡
︠b65b0581-b357-4779-808b-dd6798b3cbb6︠
numero_condicion(A),numero_condicion(R)
︡333ad657-e7ea-46ee-9fbc-151f0b6fbada︡{"stdout": "(14.834773726039915, 14.83477372603991)"}︡
︠95896c38-ce4b-4502-8cda-6596cd4028ab︠
show(R)
︡4f17661d-0bef-4492-a56a-102ae6de59fd︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n-3.31662479036 & -4.22115882409 & 0.603022689156 & -3.31662479036 \\\\\n0.0 & 1.78376517003 & -0.254823595719 & 2.24244764233 \\\\\n0.0 & 0.0 & -1.60356745147 & 2.76169949976 \\\\\n0.0 & 0.0 & 0.0 & -1.15950180873\n\\end{array}\\right)", "display": true}}︡
︠3fa78c88-2be5-424e-8546-ef40dbda19bc︠
show(Q)
︡4703ad7c-3755-4026-a642-d30897ee6ce0︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n-0.301511344578 & 0.40771775315 & 0.445435403187 & -0.737864787373 \\\\\n-0.904534033733 & 0.101929438288 & -0.35634832255 & 0.210818510678 \\\\\n0.301511344578 & 0.713506068013 & -0.623609564462 & -0.105409255339 \\\\\n0.0 & 0.560611910581 & 0.534522483825 & 0.632455532034\n\\end{array}\\right)", "display": true}}︡
︠6d71aaa4-51fd-4bc7-b291-f7f58415453fi︠
%html
<h3><span style="background-color: #0000ff;"><span style="color: #0000ff;"><span style="background-color: #ffffff;">Ejemplo 4</span></span></span></h3>
<p>Hacer una peque&ntilde;a comparativa entre ambos m&eacute;todos de factorizaci&oacute;n $QR$, tomando una matriz aleatoria de orden 50 y viendo los tiempos de ejecuci&oacute;n. Repetir para una matriz de orden 100.</p>

︡1cd16a39-945c-49ed-bc84-43cd757eebda︡{"html": "<h3><span style=\"background-color: #0000ff;\"><span style=\"color: #0000ff;\"><span style=\"background-color: #ffffff;\">Ejemplo 4</span></span></span></h3>\n<p>Hacer una peque&ntilde;a comparativa entre ambos m&eacute;todos de factorizaci&oacute;n $QR$, tomando una matriz aleatoria de orden 50 y viendo los tiempos de ejecuci&oacute;n. Repetir para una matriz de orden 100.</p>"}︡
︠d3626fc7-7282-4108-ad67-6e6dc4ff2c7f︠
A = random_matrix(RDF, 30, 30)
︡76e2b90f-1d4e-48ab-a407-34a44a7f717f︡︡
︠5084440c-7c3e-498d-a7da-c703b1a6ce82︠
timeit('factorizacion_QR_Householder(A)')
︡402c97d7-6869-4cdd-9471-bf89e06fa7fb︡{"stdout": "5 loops, best of 3: 220 ms per loop"}︡
︠5b2f77ab-fcae-4024-9b9c-306237498958︠
timeit('factorizacion_QR_Givens(A)')
︡87514417-ce04-4e79-8431-aff1468dcb7a︡{"stdout": "5 loops, best of 3: 122 ms per loop"}︡
︠4f71e7be-a131-4def-9b7e-9e4ca403ec95︠
A = random_matrix(RDF, 100, 100)
︡155e999c-120a-4fa4-89c0-bc438d6c81cc︡︡
︠e0d0075d-0b7b-4cce-b002-29653deda8ee︠
timeit('factorizacion_QR_Householder(A)')  ### tardará unos 30 segundos aprox. ...
︡93910fe6-d3a1-4138-8323-44c4aea1c96e︡{"stdout": "5 loops, best of 3: 1.74 s per loop"}︡
︠af0f33a3-5f82-4f0e-a9b0-82c1d6cf1bf4︠
timeit('factorizacion_QR_Givens(A)')   ### tardará unos 2 minutos aprox. ...
︡79839356-07cc-462b-b064-6b5821efecd3︡{"stdout": "5 loops, best of 3: 8.14 s per loop"}︡
︠f8831012-b959-43af-affe-d1c728f36873i︠
%html
<p>Como ya comentamos, el inter&eacute;s adicional del m&eacute;todo de Givens est&aacute; en que este &uacute;ltimo es f&aacute;cilmente paralelizable. Realizando&nbsp; computaci&oacute;n paralela se pueden reducir considerablemente los tiempos de computaci&oacute;n. En resumen, se utiliza Householder si no se dispone de computaci&oacute;n paralela y se utiliza Givens para computaci&oacute;n paralela o cuando la matriz original tiene muchos elementos nulos (matriz dispersa).</p>

︡b3965899-e0df-4947-abfe-167c72a47c97︡{"html": "<p>Como ya comentamos, el inter&eacute;s adicional del m&eacute;todo de Givens est&aacute; en que este &uacute;ltimo es f&aacute;cilmente paralelizable. Realizando&nbsp; computaci&oacute;n paralela se pueden reducir considerablemente los tiempos de computaci&oacute;n. En resumen, se utiliza Householder si no se dispone de computaci&oacute;n paralela y se utiliza Givens para computaci&oacute;n paralela o cuando la matriz original tiene muchos elementos nulos (matriz dispersa).</p>"}︡
︠9b02e82c-6c26-4df2-9d3f-2293f1657ab2i︠
%html
<h3><strong><a name="QR"></a></strong></h3>
<h3>Aplicaci&oacute;n de la factorizaci&oacute;n $QR$ a la resoluci&oacute;n de ecuaciones normales</h3>
<p>Consideremos un <strong>sistema superdeterminado</strong> $Ax=b$ donde $A$ es una matriz de orden $m\times n$ y con rango $n$&nbsp; (para $m &gt; n$). Las <strong>ecuaciones normales</strong> asociadas al sistema se definen como:</p>
<p>$$A^tAx=A^tb$$</p>
<p>Si conocemos una descomposici&oacute;n $A=QR$ donde la matriz $Q$ verifica que &nbsp;$Q^tQ=I$ y la matriz $R$ es triangular superior, podemos hacer la siguiente simplificaci&oacute;n, obteniendo <strong>un sistema equivalente</strong> y escalonado:</p>
<p>$$(QR)^t(QR)x=(QR)^tb \Longrightarrow R^tQ^tQRx=R^tQ^tb \Longrightarrow R^tRx=R^tQ^tb \Longrightarrow$$</p>
<p>$$Rx=Q^tb$$</p>
<p>De forma expl&iacute;cita, el sistema equivalente es de la forma:</p>
<p>$$\left(\begin{array}{cccc}r_{11} &amp; r_{12} &amp; \dots &amp; r_{1n}\\0 &amp; r_{22} &amp; \dots &amp; r_{2n}\\\vdots &amp; \vdots &amp; \ddots &amp; \vdots \\0 &amp; 0 &amp; \dots &amp; r_{nn}\\0 &amp; 0 &amp; \dots &amp;0 \\\vdots &amp; \vdots &amp; \ddots &amp; \vdots \\0 &amp; 0 &amp; \dots &amp;0 \end{array}\right)\left(\begin{array}{c}x_1\\ x_2\\ \vdots \\ x_n \end{array}\right)=\left(\begin{array}{c}b'_1\\ b'_2\\ \vdots \\ b'_n \\b'_{n+1}\\ \vdots \\b'_m\end{array}\right)$$</p>
<p>donde las $n$ primeras ecuaciones nos proporcionan <strong>la seudosoluci&oacute;n del sistema</strong> superdeterminado y, finalmente, el <strong>error de la aproximaci&oacute;n</strong> viene dado por</p>
<p>$$\epsilon=\sqrt{(b'_{n+1})^2+\dots+(b'_{m})^2}$$</p>

︡f0bc7dae-7a88-40a9-960b-8a1405123608︡{"html": "<h3><strong><a name=\"QR\"></a></strong></h3>\n<h3>Aplicaci&oacute;n de la factorizaci&oacute;n $QR$ a la resoluci&oacute;n de ecuaciones normales</h3>\n<p>Consideremos un <strong>sistema superdeterminado</strong> $Ax=b$ donde $A$ es una matriz de orden $m\\times n$ y con rango $n$&nbsp; (para $m &gt; n$). Las <strong>ecuaciones normales</strong> asociadas al sistema se definen como:</p>\n<p>$$A^tAx=A^tb$$</p>\n<p>Si conocemos una descomposici&oacute;n $A=QR$ donde la matriz $Q$ verifica que &nbsp;$Q^tQ=I$ y la matriz $R$ es triangular superior, podemos hacer la siguiente simplificaci&oacute;n, obteniendo <strong>un sistema equivalente</strong> y escalonado:</p>\n<p>$$(QR)^t(QR)x=(QR)^tb \\Longrightarrow R^tQ^tQRx=R^tQ^tb \\Longrightarrow R^tRx=R^tQ^tb \\Longrightarrow$$</p>\n<p>$$Rx=Q^tb$$</p>\n<p>De forma expl&iacute;cita, el sistema equivalente es de la forma:</p>\n<p>$$\\left(\\begin{array}{cccc}r_{11} &amp; r_{12} &amp; \\dots &amp; r_{1n}\\\\0 &amp; r_{22} &amp; \\dots &amp; r_{2n}\\\\\\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots \\\\0 &amp; 0 &amp; \\dots &amp; r_{nn}\\\\0 &amp; 0 &amp; \\dots &amp;0 \\\\\\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots \\\\0 &amp; 0 &amp; \\dots &amp;0 \\end{array}\\right)\\left(\\begin{array}{c}x_1\\\\ x_2\\\\ \\vdots \\\\ x_n \\end{array}\\right)=\\left(\\begin{array}{c}b'_1\\\\ b'_2\\\\ \\vdots \\\\ b'_n \\\\b'_{n+1}\\\\ \\vdots \\\\b'_m\\end{array}\\right)$$</p>\n<p>donde las $n$ primeras ecuaciones nos proporcionan <strong>la seudosoluci&oacute;n del sistema</strong> superdeterminado y, finalmente, el <strong>error de la aproximaci&oacute;n</strong> viene dado por</p>\n<p>$$\\epsilon=\\sqrt{(b'_{n+1})^2+\\dots+(b'_{m})^2}$$</p>"}︡
︠78656348-fb9d-465c-92d7-ad5e1e257700i︠
%html
<h3><span style="color: #0000ff;">Ejemplo 5</span></h3>
<p>Hallar la seudosoluci&oacute;n del sistema superdeterminado $Ax=b$ y el error de aproximaci&oacute;n, para</p>
<p>$$A=\left(\begin{array}{rrr}1 &amp; 8 &amp; 0\\ 1 &amp; 0 &amp; 4\\ 1 &amp; 8 &amp; 4\\ 1 &amp; 16 &amp; 4\end{array}\right),\ \ &nbsp;b=\left(\begin{array}{r} -64 \\ -160\\ 192\\ 160\end{array}\right)$$</p>
<p>a) mediante transformaciones de Householder</p>
<p>b) mediante rotaciones de Givens</p>
<p>c) directamente, a partir de las ecuaciones normales.</p>

︡dac191ac-db2a-4a5a-996b-6a53305b994c︡{"html": "<h3><span style=\"color: #0000ff;\">Ejemplo 5</span></h3>\n<p>Hallar la seudosoluci&oacute;n del sistema superdeterminado $Ax=b$ y el error de aproximaci&oacute;n, para</p>\n<p>$$A=\\left(\\begin{array}{rrr}1 &amp; 8 &amp; 0\\\\ 1 &amp; 0 &amp; 4\\\\ 1 &amp; 8 &amp; 4\\\\ 1 &amp; 16 &amp; 4\\end{array}\\right),\\ \\ &nbsp;b=\\left(\\begin{array}{r} -64 \\\\ -160\\\\ 192\\\\ 160\\end{array}\\right)$$</p>\n<p>a) mediante transformaciones de Householder</p>\n<p>b) mediante rotaciones de Givens</p>\n<p>c) directamente, a partir de las ecuaciones normales.</p>"}︡
︠9c444546-ecd0-4726-b8a0-a1e248769432i︠
%html
<p>a) mediante transformaciones de Householder</p>

︡e43cce36-9a5f-4730-9285-e3c8f4ad2fbd︡{"html": "<p>a) mediante transformaciones de Householder</p>"}︡
︠281e7cde-3d6b-44f9-ba52-fa04b4e2ea7a︠
A = matrix(RDF, [[1, 8, 0], [1, 0, 4], [1, 8, 4], [1, 16, 4]]);show(A)
b = vector(RDF, [-64, -160, 192, 160]);show(b)
︡a3d6b59e-f332-484c-843f-da9dcfd831f0︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n1.0 & 8.0 & 0.0 \\\\\n1.0 & 0.0 & 4.0 \\\\\n1.0 & 8.0 & 4.0 \\\\\n1.0 & 16.0 & 4.0\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(-64.0,\\,-160.0,\\,192.0,\\,160.0\\right)", "display": true}}︡
︠d72133b6-1dbf-435a-8525-5a4d5881a36f︠
Q, R = factorizacion_QR_Householder(A)
︡3b1b2097-4bd9-45a0-99d9-a368a6fc2163︡{"stdout": "N\u00ba de iteraciones:  3"}︡
︠8cb85ab7-536f-474e-9883-0635f03de7c5︠
show(R)
︡98648859-7605-4a06-930f-fc3ac93f1b3c︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n-2.0 & -16.0 & -6.0 \\\\\n0.0 & 11.313708499 & -1.11022302463 \\times 10^{-15} \\\\\n0.0 & 0.0 & -3.46410161514 \\\\\n0.0 & 0.0 & 0.0\n\\end{array}\\right)", "display": true}}︡
︠dc2aec25-3242-4068-bcfd-25cca361969e︠
bq = Q.transpose()*b; show(bq)          # 1ª fase: calculamos bq = Q^t * b
︡24fc9264-a1b4-4d9c-92cd-b15be63c2ff3︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(-64.0,\\,226.27416998,\\,-110.851251684,\\,-156.767343538\\right)", "display": true}}︡
︠87bda320-98b8-4833-b8bd-8a8c147fe02a︠
r = rank(R); print 'R tiene rango ', r   # calculamos el rango de R para comprobar 
                                         # que coincide con el número de columnas
                                         
Rr = R[0:r, :]; bqr = vector(bq[0:r])    # 2ª fase: recortamos la matriz R y el 
print 'matriz R recortada:'              # vector bq al número de filas 
show(Rr)                                 # marcadas por el rango de R
print 'vector b recortado:'              
show(bqr)

print 'solución:'                        # 3ª fase: resolvemos por sustitución 
sustre2(Rr,bqr)                          # regresiva el sistema recortado  Rr*x = bqr
︡1fe69709-4c71-4d16-8eb5-f1f53bd90b72︡{"stdout": "R tiene rango  3\nmatriz R recortada:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n-2.0 & -16.0 & -6.0 \\\\\n0.0 & 11.313708499 & -1.11022302463 \\times 10^{-15} \\\\\n0.0 & 0.0 & -3.46410161514\n\\end{array}\\right)", "display": true}}︡{"stdout": "vector b recortado:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(-64.0,\\,226.27416998,\\,-110.851251684\\right)", "display": true}}︡{"stdout": "soluci\u00f3n:\n(-224.00000000000006, 20.0, 32.00000000000002)"}︡
︠54a9b5d5-9f6e-4975-8003-d29f53b09f08︠
error = bq[r:].norm()                   # Para hallar el error, buscamos la norma 
print 'error de aproximación:'          # euclídea del resto del vector bq
error
︡597fa230-bbaf-4aa6-88d7-9604228f3b0c︡{"stdout": "error de aproximaci\u00f3n:\n156.76734353812338"}︡
︠55a7394a-ca3d-44ce-89fc-0f144bcbe01di︠
%html
<p>b) mediante rotaciones de Givens</p>

︡583173b3-2cf8-4842-94b0-6d446d9238b8︡{"html": "<p>b) mediante rotaciones de Givens</p>"}︡
︠9c930e9d-2c66-42c3-b77e-eef289806c47︠
Q, R = factorizacion_QR_Givens(A)
︡a0c5fe17-9e4e-4afd-bacf-4969481a72a4︡{"stdout": "N\u00ba de rotaciones:  6"}︡
︠7339fe79-eaf4-4a81-ba70-ec502d9681ec︠
show(R)
︡de2d2f68-e1ae-43a7-9569-3a62344543b9︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n2.0 & 16.0 & 6.0 \\\\\n0.0 & -11.313708499 & -9.99200722163 \\times 10^{-16} \\\\\n0.0 & 0.0 & 3.46410161514 \\\\\n0.0 & 0.0 & 0.0\n\\end{array}\\right)", "display": true}}︡
︠67140604-6f1c-42b2-b836-82ed0a2cb03d︠
r = rank(R); print 'R tiene rango ', r   # calculamos el rango de R para comprobar 
                                         # que coincide con el número de columnas
                                         
Rr = R[0:r, :]; bqr = vector(bq[0:r])    # 2ª fase: recortamos la matriz R y el 
print 'matriz R recortada:'              # vector bq al número de filas 
show(Rr)                                 # marcadas por el rango de R
print 'vector b recortado:'              
show(bqr)

print 'solución:'                        # 3ª fase: resolvemos por sustitución 
sustre2(Rr,bqr)                          # regresiva el sistema recortado  Rr*x = bqr
︡f8106a22-54e2-4836-88a5-726c16b8acd8︡{"stdout": "R tiene rango  3\nmatriz R recortada:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n2.0 & 16.0 & 6.0 \\\\\n0.0 & -11.313708499 & -9.99200722163 \\times 10^{-16} \\\\\n0.0 & 0.0 & 3.46410161514\n\\end{array}\\right)", "display": true}}︡{"stdout": "vector b recortado:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(-64.0,\\,226.27416998,\\,-110.851251684\\right)", "display": true}}︡{"stdout": "soluci\u00f3n:\n(223.99999999999994, -19.999999999999996, -32.000000000000014)"}︡
︠546a7edd-6046-40eb-aded-5bbe8e4c7c0c︠
error = bq[r:].norm()                   # Para hallar el error, buscamos la norma 
print 'error de aproximación:'          # euclídea del resto del vector bq
error
︡bae29bcb-b570-4de5-bf0a-d58e093418c3︡{"stdout": "error de aproximaci\u00f3n:\n156.76734353812338"}︡
︠12c879cd-2067-4f25-a40e-bb1231ffd0f2i︠
%html
<p>c) directamente, a partir de las ecuaciones normales</p>

︡34e7e314-5a85-4268-9754-baf94947969d︡{"html": "<p>c) directamente, a partir de las ecuaciones normales</p>"}︡
︠a907eaf7-8868-4b25-8cd6-9afc586c7e86︠
x = (A.transpose()*A).solve_right(A.transpose()*b)
show(x)
︡0ec3a2a0-982a-4858-a74b-0b0da59ef386︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(-224.0,\\,20.0,\\,32.0\\right)", "display": true}}︡
︠ed845876-c42a-4551-bb3f-7013ed73d507︠
error = (A*x - b).norm()
error
︡d2a86266-3ea5-4ecc-a0f1-b30ccdbc3d42︡{"stdout": "156.76734353812338"}︡
︠337a6014-3477-456b-9845-663626aca36di︠
%html
<p>Observaci&oacute;n: la resoluci&oacute;n de un sistema superdeterminado mediante sus ecuaciones normales de forma directa suele ser un problema muy mal condicionado y no debe aplicarse. La resolucion mediante transformaciones ortogonales es mucho m&aacute;s fiable y apropiada. Vamos a comprobarlo con un ejemplo de sistema superdeterminado muy mal condicionado.</p>

<h3><span style="color: #0000ff;">Ejemplo 6</span></h3>
<p>Consideremos el sistema superdeterminado $Ax=b$ donde $A$ es la matriz obtenida a partir de las 5 primeras columnas de la matriz de Hilbert de orden 10 y $b$ es un vector lleno de n&uacute;meros 1, de orden 10. Comparar la soluci&oacute;n obtenida directamente de las ecuaciones normales con la obtenida mediante transformaciones de Householder, simulando que almacenamos los datos con una precisi&oacute;n de&nbsp; 30 bits en la mantisa para n&uacute;meros reales en coma flotante.</p>

︡9d6419aa-dce3-46af-b7f4-9d025f39effc︡{"html": "<p>Observaci&oacute;n: la resoluci&oacute;n de un sistema superdeterminado mediante sus ecuaciones normales de forma directa suele ser un problema muy mal condicionado y no debe aplicarse. La resolucion mediante transformaciones ortogonales es mucho m&aacute;s fiable y apropiada. Vamos a comprobarlo con un ejemplo de sistema superdeterminado muy mal condicionado.</p>\n\n<h3><span style=\"color: #0000ff;\">Ejemplo 6</span></h3>\n<p>Consideremos el sistema superdeterminado $Ax=b$ donde $A$ es la matriz obtenida a partir de las 5 primeras columnas de la matriz de Hilbert de orden 10 y $b$ es un vector lleno de n&uacute;meros 1, de orden 10. Comparar la soluci&oacute;n obtenida directamente de las ecuaciones normales con la obtenida mediante transformaciones de Householder, simulando que almacenamos los datos con una precisi&oacute;n de&nbsp; 30 bits en la mantisa para n&uacute;meros reales en coma flotante.</p>"}︡
︠212231d3-1bea-4957-bb65-188c3beb19a4︠
m = 10; n = 5         ### dimensiones de la matriz de Hilbert   m x n
precision = 30        ### especificamos los bits de precisión para la mantisa


#### no es preciso modificar este código

A = (matrizHilbert(m)[:, 0:n]).change_ring(RealField(precision))     
show(A)
b = vector(RealField(precision), [1 for i in range(m)])
show(b)
︡69400ddd-d277-4694-ae3c-b6786a7f7bb8︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrrr}\n1.0000000 & 0.50000000 & 0.33333333 & 0.25000000 & 0.20000000 \\\\\n0.50000000 & 0.33333333 & 0.25000000 & 0.20000000 & 0.16666667 \\\\\n0.33333333 & 0.25000000 & 0.20000000 & 0.16666667 & 0.14285714 \\\\\n0.25000000 & 0.20000000 & 0.16666667 & 0.14285714 & 0.12500000 \\\\\n0.20000000 & 0.16666667 & 0.14285714 & 0.12500000 & 0.11111111 \\\\\n0.16666667 & 0.14285714 & 0.12500000 & 0.11111111 & 0.10000000 \\\\\n0.14285714 & 0.12500000 & 0.11111111 & 0.10000000 & 0.090909091 \\\\\n0.12500000 & 0.11111111 & 0.10000000 & 0.090909091 & 0.083333333 \\\\\n0.11111111 & 0.10000000 & 0.090909091 & 0.083333333 & 0.076923077 \\\\\n0.10000000 & 0.090909091 & 0.083333333 & 0.076923077 & 0.071428571\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(1.0000000,\\,1.0000000,\\,1.0000000,\\,1.0000000,\\,1.0000000,\\,1.0000000,\\,1.0000000,\\,1.0000000,\\,1.0000000,\\,1.0000000\\right)", "display": true}}︡
︠caacd667-c047-42f1-9c8a-e716e7734a0c︠
numero_condicion(A.transpose()*A)
︡67a2106e-6520-42e9-b1c2-75f2d11a21b0︡{"stdout": "3154411703.3964853"}︡
︠14015df5-54bc-4309-83cf-34822f03cec7i︠
%html
<p>Luego, las ecuaciones normales del sistema pueden estar muy mal condicionadas. Calculemos directamente la soluci&oacute;n aportada por dichas ecuaciones:</p>

︡3d4a56cf-8b49-43b4-8938-4e79e983951f︡{"html": "<p>Luego, las ecuaciones normales del sistema pueden estar muy mal condicionadas. Calculemos directamente la soluci&oacute;n aportada por dichas ecuaciones:</p>"}︡
︠e1d91aaf-0813-48dd-8a0d-2c2e8c5ff191︠
x1 = (A.transpose()*A).solve_right(A.transpose()*b)
show(x1)
︡0b7b9c0b-10be-4dba-9a93-754f99f33b4b︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(1.6792575,\\,-83.959037,\\,543.03975,\\,-1058.6941,\\,624.79961\\right)", "display": true}}︡
︠8a43dd83-b24b-46e5-8b44-9d47cdbcba4b︠
error1 = (A*x1 - b).norm()
error1
︡0f10f6f4-e63c-450b-9ed3-cd88b3795e8c︡{"stdout": "0.034503627"}︡
︠f5966d87-b58c-472e-adcf-7231eacfe5cci︠
%html
<p>Ahora, resolveremos mediante Householder:</p>

︡57976eff-8ec9-4d75-8ff3-e6d59ff0dc59︡{"html": "<p>Ahora, resolveremos mediante Householder:</p>"}︡
︠d418372b-f750-48ad-b65a-c89d72967e9a︠
Q, R = factorizacion_QR_Householder(A)
︡d75b6498-e633-4fb0-996c-ec317ac92521︡{"stdout": "N\u00ba de iteraciones:  5"}︡
︠3da18e7a-a703-412a-ae95-c4b77f884b4d︠
bq = Q.transpose()*b;show(bq)
︡2d6cb7b5-6cdb-447e-bd81-389b5c0b7da4︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(-2.3527802,\\,-1.9176172,\\,0.84311929,\\,0.26789173,\\,0.066174587,\\,-0.0041895541,\\,-0.0078286894,\\,-0.0075546349,\\,-0.0029877899,\\,0.0054199933\\right)", "display": true}}︡
︠c4d06128-b369-4ced-901a-caf1e6bb55d6︠
Rr = R[0:n, :]; bqr = vector(bq[0:n])
︡c2634573-49fe-4882-aae5-7bd6f37509ce︡︡
︠82e898e3-f292-495c-829e-9ddc607ab9a6i︠
%html
<p>Resolvemos por sustituci&oacute;n regresiva el sistema triangular:</p>

︡260a4e04-b7ea-4186-a953-92ad5c0cb6b9︡{"html": "<p>Resolvemos por sustituci&oacute;n regresiva el sistema triangular:</p>"}︡
︠e9d4291b-1fe3-4021-a567-2a4470aacb52︠
x2 = sustre2(Rr, bqr);
show(x2)
︡22a0a9ed-fb01-4328-95d8-aebe33afac27︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(15.376042,\\,-308.93550,\\,1428.9871,\\,-2308.8256,\\,1204.8456\\right)", "display": true}}︡
︠2dd25d6d-8cac-49d0-acb7-a6f1d55ad703︠
error2 = vector(bq[n:m]).norm();
error2
︡775e04e8-5fd8-4818-a3b6-386d8d7bb273︡{"stdout": "0.013199109"}︡
︠71e0563a-d296-49bf-8e6b-1219be4ed105︠
error = (A*x2 - b).norm()
error
︡6c04eb15-f1ed-41f6-ac2e-4c856c8fadfb︡{"stdout": "0.013199156"}︡
︠cc7eae8f-dae4-42b9-809c-1ef46ec9d897i︠
%html
<p>Comparamos ambas soluciones:</p>

︡2478c38e-81b0-43a9-8c9c-176abfe38dfd︡{"html": "<p>Comparamos ambas soluciones:</p>"}︡
︠9a1f308b-4f85-4715-9588-e01b7f6ac2d1︠
show(x1)   # solucion directa a partir de las ecuaciones normales
show(x2)   # solucion a partir de descomposición QR
︡db575760-21e5-433f-9b21-ee06317122a2︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(1.6792575,\\,-83.959037,\\,543.03975,\\,-1058.6941,\\,624.79961\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(15.376042,\\,-308.93550,\\,1428.9871,\\,-2308.8256,\\,1204.8456\\right)", "display": true}}︡
︠e9dda65d-780c-4dcb-9e67-e6eebccb170d︠
numero_condicion(A.transpose()*A)
︡6a696ea0-c9da-41a2-baea-28ff1e075fec︡{"stdout": "3154411703.3964853"}︡
︠880a6eb5-8705-4160-bfc8-45ec70c3bb1b︠
numero_condicion(Rr)
︡d7196f3d-77f0-4da5-b342-0652658031d2︡{"stdout": "85489.23431329275"}︡
︠b050c45c-5921-4f8f-9ebc-9bd242e3fed4i︠
%html
<p>Veamos la proporci&oacute;n o relaci&oacute;n entre los n&uacute;meros de condici&oacute;n de las matrices de ambos sistemas de ecuaciones equivalentes:</p>

︡6c273d1a-c125-4b79-a88b-f04a009ba401︡{"html": "<p>Veamos la proporci&oacute;n o relaci&oacute;n entre los n&uacute;meros de condici&oacute;n de las matrices de ambos sistemas de ecuaciones equivalentes:</p>"}︡
︠58ba885c-2d95-4414-85ba-f1bd10b46cb7︠
numero_condicion(A.transpose()*A)/numero_condicion(Rr)
︡74f87586-a5d2-4a06-9450-ab050a5897dc︡{"stdout": "36898.35016929149"}︡
︠f86c3fe3-4c6e-4dd5-ad14-ddcf4ac27a22i︠
%html
<p>Hemos obtenido que la resoluci&oacute;n mediante $QR$ es casi 40.000 veces m&aacute;s fiable que que la resoluci&oacute;n directa de las ecuaciones normales.</p>
<p>En conclusi&oacute;n, eligiremos&nbsp; la soluci&oacute;n x2.</p>

︡faaa76c3-784c-458c-8096-9ebac1d10910︡{"html": "<p>Hemos obtenido que la resoluci&oacute;n mediante $QR$ es casi 40.000 veces m&aacute;s fiable que que la resoluci&oacute;n directa de las ecuaciones normales.</p>\n<p>En conclusi&oacute;n, eligiremos&nbsp; la soluci&oacute;n x2.</p>"}︡
︠8c8f0213-c8b9-4d9d-a402-4b22aefa88fdi︠
%html
<h3><strong><a name="SVD"></a></strong></h3>
<h3>Aplicaci&oacute;n de la descomposici&oacute;n SVD reducida a la resoluci&oacute;n de &nbsp;ecuaciones normales</h3>
<p>Dada una matriz $A\in R^{m\times n}$, de rango $n$, su <strong>descomposici&oacute;n en valores singulares&nbsp; </strong>es de la forma $A=UDV^t$, donde $U\in R^{m\times n}$ verifica que $U^tU=I$, $V\in R^{n\times n}$ verifica que es una matriz ortogonal, $V^tV=I$, y $D\in R^{n\times n}$ es una matriz diagonal con los valores singulares no nulos ordenados de mayor a menor a lo largo de la diagonal principal.</p>
<p>Dado el sistema de ecuaciones normales $A^tAx=A^tb$, podemos sustituir $A=UDV^t$&nbsp;en las ecuaciones normales, resultando:</p>
<p>$$(UDV^t)^t(UDV^t)x=(UDV^t)^tb\ \Longrightarrow VD^tU^tUDV^tx=VD^tU^tb\ \Longrightarrow$$</p>
<p>$$VDDV^tx=VDU^tb\ \Longrightarrow DV^tx=U^tb=c\ \Longrightarrow V^tx=D^{-1}c\ \Longrightarrow$$</p>
<p>$$VV^tx=VD^{-1}c\ \Longrightarrow x=VD^{-1}c,\ \ \mbox{con}\ \ c=U^tb$$</p>
<p>$$\Longrightarrow x=VD^{-1}U^tb$$</p>
<p>La matriz $A^{+}=VD^{-1}U^t$ se denomina <strong>seudoinversa de Penrose</strong> de la matriz $A$. La seudosoluci&oacute;n del sistema es</p>
<p>$$\Longrightarrow x=A^{+}b$$</p>
<p>Por otra parte, si el rango num&eacute;rico estimado a partir de los valores singulares de la matriz $A$ es $r&lt;n$, podemos obtener la <strong>desomposici&oacute;n en valores singulares reducida&nbsp;</strong> sin m&aacute;s que suprimir las $n-r$ &uacute;ltimas columnas de las matrices $U, D, V$, resultando nuevas matrices reducidas $U_r, D_r, V_r$. La descomposici&oacute;n queda $A=U_rD_rV_r^t$ y la seudoinversa de Penrose queda $A^{+}=V_rD_r^{-1}U_r^t$</p>
<p>&nbsp;</p>
<p><strong>Teorema:</strong></p>
<p>Toda matriz $A\in R^{m\times n}$, de rango $n$,&nbsp;tiene una &uacute;nica matriz asociada $A^+$ verificando:</p>
<ul>
<li>$AA^+A=A$</li>
<li>$A^+AA^+=A^+$</li>
<li>$AA^+$ es sim&eacute;trica</li>
<li>$A^+A$ es sim&eacute;trica</li>
</ul>
<p>dicha matriz es la <strong>seudoinversa de Penrose</strong>.</p>

︡abecf697-b9f5-42ed-8e4b-c55a5033592d︡{"html": "<h3><strong><a name=\"SVD\"></a></strong></h3>\n<h3>Aplicaci&oacute;n de la descomposici&oacute;n SVD reducida a la resoluci&oacute;n de &nbsp;ecuaciones normales</h3>\n<p>Dada una matriz $A\\in R^{m\\times n}$, de rango $n$, su <strong>descomposici&oacute;n en valores singulares&nbsp; </strong>es de la forma $A=UDV^t$, donde $U\\in R^{m\\times n}$ verifica que $U^tU=I$, $V\\in R^{n\\times n}$ verifica que es una matriz ortogonal, $V^tV=I$, y $D\\in R^{n\\times n}$ es una matriz diagonal con los valores singulares no nulos ordenados de mayor a menor a lo largo de la diagonal principal.</p>\n<p>Dado el sistema de ecuaciones normales $A^tAx=A^tb$, podemos sustituir $A=UDV^t$&nbsp;en las ecuaciones normales, resultando:</p>\n<p>$$(UDV^t)^t(UDV^t)x=(UDV^t)^tb\\ \\Longrightarrow VD^tU^tUDV^tx=VD^tU^tb\\ \\Longrightarrow$$</p>\n<p>$$VDDV^tx=VDU^tb\\ \\Longrightarrow DV^tx=U^tb=c\\ \\Longrightarrow V^tx=D^{-1}c\\ \\Longrightarrow$$</p>\n<p>$$VV^tx=VD^{-1}c\\ \\Longrightarrow x=VD^{-1}c,\\ \\ \\mbox{con}\\ \\ c=U^tb$$</p>\n<p>$$\\Longrightarrow x=VD^{-1}U^tb$$</p>\n<p>La matriz $A^{+}=VD^{-1}U^t$ se denomina <strong>seudoinversa de Penrose</strong> de la matriz $A$. La seudosoluci&oacute;n del sistema es</p>\n<p>$$\\Longrightarrow x=A^{+}b$$</p>\n<p>Por otra parte, si el rango num&eacute;rico estimado a partir de los valores singulares de la matriz $A$ es $r&lt;n$, podemos obtener la <strong>desomposici&oacute;n en valores singulares reducida&nbsp;</strong> sin m&aacute;s que suprimir las $n-r$ &uacute;ltimas columnas de las matrices $U, D, V$, resultando nuevas matrices reducidas $U_r, D_r, V_r$. La descomposici&oacute;n queda $A=U_rD_rV_r^t$ y la seudoinversa de Penrose queda $A^{+}=V_rD_r^{-1}U_r^t$</p>\n<p>&nbsp;</p>\n<p><strong>Teorema:</strong></p>\n<p>Toda matriz $A\\in R^{m\\times n}$, de rango $n$,&nbsp;tiene una &uacute;nica matriz asociada $A^+$ verificando:</p>\n<ul>\n<li>$AA^+A=A$</li>\n<li>$A^+AA^+=A^+$</li>\n<li>$AA^+$ es sim&eacute;trica</li>\n<li>$A^+A$ es sim&eacute;trica</li>\n</ul>\n<p>dicha matriz es la <strong>seudoinversa de Penrose</strong>.</p>"}︡
︠0151b010-1ac5-4f11-bf2b-2b8669da4c15i︠
%html
<p>La siguiente funci&oacute;n proporciona la descomposici&oacute;n en valores singulares reducida de una matriz &nbsp;$A=U_rD_rV_r^t$</p>
<p style="text-align: center;"><span style="color: #0000ff;">U, D, V = descomposicion_SVD_reducida(A,&nbsp; tol)</span></p>
<p>El par&aacute;metro tol es opcional y por defecto vale tol=$10^{-14}$; mide el nivel de tolerancia para calcular el rango num&eacute;rico de $A$ mediante la descomposici&oacute;n SVD. En caso de que el rango num&eacute;rico $r&lt;n$, la funci&oacute;n avisa de dicho rango.</p>

︡a0d5367c-6b60-4255-aa10-f7fec1d1524e︡{"html": "<p>La siguiente funci&oacute;n proporciona la descomposici&oacute;n en valores singulares reducida de una matriz &nbsp;$A=U_rD_rV_r^t$</p>\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\">U, D, V = descomposicion_SVD_reducida(A,&nbsp; tol)</span></p>\n<p>El par&aacute;metro tol es opcional y por defecto vale tol=$10^{-14}$; mide el nivel de tolerancia para calcular el rango num&eacute;rico de $A$ mediante la descomposici&oacute;n SVD. En caso de que el rango num&eacute;rico $r&lt;n$, la funci&oacute;n avisa de dicho rango.</p>"}︡
︠b4fcbf92-9fea-4e9c-a2f0-969cd7ded6c5a︠
%auto
def descomposicion_SVD_reducida(A, tol = 10^-14):
    U, D, V = descomposicion_SVD(A)
    n = A.ncols()
    for i in range(n):
        if D[n - i - 1, n - i - 1] > tol:
            break
    r = n - i
    if r < n:
        print 'la matriz tiene rango numérico ',r
    return U[:, 0:r],D[0:r, 0:r],V[:, 0:r]
︡1b1c87df-b760-4792-b9e5-cd8a5725c343︡︡
︠6d5e3df0-0573-4662-93b5-ad577fc247cbi︠
%html
<p>La siguiente funci&oacute;n calcula la seudoinversa de Penrose de una matriz $A$</p>
<p style="text-align: center;"><span style="color: #0000ff;">Ap = seudoinversa(A, tol)</span></p>
<p>El par&aacute;metro tol es opcional y por defecto vale tol=$10^{-14}$; mide el nivel de tolerancia para calcular el rango num&eacute;rico&nbsp; de $A$ mediante la descomposici&oacute;n SVD.</p>

︡831ac873-7344-4dd4-876e-23f2dba5ae95︡{"html": "<p>La siguiente funci&oacute;n calcula la seudoinversa de Penrose de una matriz $A$</p>\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\">Ap = seudoinversa(A, tol)</span></p>\n<p>El par&aacute;metro tol es opcional y por defecto vale tol=$10^{-14}$; mide el nivel de tolerancia para calcular el rango num&eacute;rico&nbsp; de $A$ mediante la descomposici&oacute;n SVD.</p>"}︡
︠d8282abd-5850-4eb1-82fc-f622a2fe4348a︠
%auto
def seudoinversa(A, tol = 10^-14):
    U, D, V = descomposicion_SVD_reducida(A, tol)
    return (V*D.inverse()*U.transpose()).zero_at(tol)
︡98e7d18c-ed32-494b-81dc-7c4a8b331fc7︡︡
︠2caab0bf-2b16-4b74-8746-f544f31a2c2fi︠
%html
<h3><span style="color: #0000ff;">Ejemplo 7 (cont. Ejemplo 5)</span></h3>
<p>Hallar la seudosoluci&oacute;n del sistema superdeterminado $Ax=b$ y el error de aproximaci&oacute;n, para</p>
<p>$$A=\left(\begin{array}{rrr}1 &amp; 8 &amp; 0\\ 1 &amp; 0 &amp; 4\\ 1 &amp; 8 &amp; 4\\ 1 &amp; 16 &amp; 4\end{array}\right),\ \ &nbsp;b=\left(\begin{array}{r} -64 \\ -160\\ 192\\ 160\end{array}\right)$$</p>
<p>utilizando la descomposici&oacute;n en valores singulares reducida de la matriz $A$. Hallar la seudoinversa $A^+$.</p>

︡010cd37c-f969-4693-89df-3b4e81840443︡{"html": "<h3><span style=\"color: #0000ff;\">Ejemplo 7 (cont. Ejemplo 5)</span></h3>\n<p>Hallar la seudosoluci&oacute;n del sistema superdeterminado $Ax=b$ y el error de aproximaci&oacute;n, para</p>\n<p>$$A=\\left(\\begin{array}{rrr}1 &amp; 8 &amp; 0\\\\ 1 &amp; 0 &amp; 4\\\\ 1 &amp; 8 &amp; 4\\\\ 1 &amp; 16 &amp; 4\\end{array}\\right),\\ \\ &nbsp;b=\\left(\\begin{array}{r} -64 \\\\ -160\\\\ 192\\\\ 160\\end{array}\\right)$$</p>\n<p>utilizando la descomposici&oacute;n en valores singulares reducida de la matriz $A$. Hallar la seudoinversa $A^+$.</p>"}︡
︠2da52ebc-46e6-4aec-8863-dae026194e3e︠
A = matrix(RDF, [[1, 8, 0], [1, 0, 4], [1, 8, 4], [1, 16, 4]]); show(A)
b = vector(RDF, [-64, -160, 192, 160]); show(b)
︡48a9ff1e-992d-4ef7-8c1f-7b8a0957119c︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n1.0 & 8.0 & 0.0 \\\\\n1.0 & 0.0 & 4.0 \\\\\n1.0 & 8.0 & 4.0 \\\\\n1.0 & 16.0 & 4.0\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(-64.0,\\,-160.0,\\,192.0,\\,160.0\\right)", "display": true}}︡
︠0efc5980-543f-4b65-a7cd-14a4d38cc2c7︠
U, D, V = descomposicion_SVD_reducida(A)
︡5a35e3d6-704f-4e56-a458-0778fb8487e8︡︡
︠8972c46e-cdaf-4a78-af61-c569a818b70c︠
(U*D*V.transpose() - A).zero_at(10^-14)
︡5105e339-f11d-42c9-9ef7-e5ccad476ca9︡{"stdout": "[0.0 0.0 0.0]\n[0.0 0.0 0.0]\n[0.0 0.0 0.0]\n[0.0 0.0 0.0]"}︡
︠42fcad9c-bf1a-4094-95a5-0a05bd11301a︠
(U.transpose()*U - 1).zero_at(10^-14)
︡912fd014-3d3c-48bb-ab01-7d7f726574a3︡{"stdout": "[0.0 0.0 0.0]\n[0.0 0.0 0.0]\n[0.0 0.0 0.0]"}︡
︠a9217f33-2e4c-40b4-85cb-c74387c36408︠
(V.transpose()*V - 1).zero_at(10^-14)
︡deb66a12-eaf2-4908-8b07-4e2c1af80924︡{"stdout": "[0.0 0.0 0.0]\n[0.0 0.0 0.0]\n[0.0 0.0 0.0]"}︡
︠5e4a7286-e119-4c0f-902f-a4728185ff8b︠
D
︡92ddb32f-21da-4156-8d63-03006860febe︡{"stdout": "[20.305831396166774                0.0                0.0]\n[               0.0  4.798550222929083                0.0]\n[               0.0                0.0 0.8044420852210697]"}︡
︠babf037d-17d7-429b-9430-b3a2b51d4cd9︠
V*D.inverse()*U.transpose()*b  ### seudosolución del sistema
︡f42fa67e-33ee-47a2-9f59-0bc6c6401477︡{"stdout": "(-223.99999999999983, 20.000000000000004, 31.999999999999954)"}︡
︠970989fc-d153-4c55-add7-ec63e4c25cffi︠
%html
<p>Ahora hallamos la seudoinversa.</p>

︡ece91e7d-9529-48e7-bf6e-f8256254edce︡{"html": "<p>Ahora hallamos la seudoinversa.</p>"}︡
︠b434713d-9083-4b5e-9c46-3029f8496639︠
Aplus = seudoinversa(A)           # con ayuda de la función definida al efecto
show(Aplus)
︡d043e802-66cb-48e0-8890-51c33e24f0c2︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n1.0 & 0.5 & 0.0 & -0.5 \\\\\n0.0 & -0.0625 & 0.0 & 0.0625 \\\\\n-0.25 & 0.0833333333333 & 0.0833333333333 & 0.0833333333333\n\\end{array}\\right)", "display": true}}︡
︠305fe5aa-f882-4dba-b7ca-e7963642b47ci︠
%html
<p>Obtenemos la seudosoluci&oacute;n del sistema:</p>

︡6accfe95-54b6-4845-a98d-096c3cdbb017︡{"html": "<p>Obtenemos la seudosoluci&oacute;n del sistema:</p>"}︡
︠7cb91504-cfe7-49f0-b5e7-12cb6c1cdfa3︠
Aplus*b
︡27fb1e1b-3ce3-4dd8-890c-3665093a6ef7︡{"stdout": "(-223.9999999999999, 20.000000000000007, 31.999999999999954)"}︡
︠36ceaf63-3607-4f7a-a2b7-3c5a4339fcf1i︠
%html
<p>Comprobamos las propiedades de la seudoinversa de Penrose:</p>

︡3bfa0028-20fd-48f2-ae1a-d7c1b43704e8︡{"html": "<p>Comprobamos las propiedades de la seudoinversa de Penrose:</p>"}︡
︠6fbfbb15-d017-4fb9-a7aa-16271a33aa7d︠
(Aplus*A*Aplus - Aplus).zero_at(10^-14)
︡5e32404d-3aaf-46b6-b93f-210979dda1fc︡{"stdout": "[0.0 0.0 0.0 0.0]\n[0.0 0.0 0.0 0.0]\n[0.0 0.0 0.0 0.0]"}︡
︠bcb480c0-f195-4239-888f-b46e6f32157e︠
(A*Aplus*A - A).zero_at(10^-14)
︡99512140-7b4c-4845-aea3-29bda40a1bd4︡{"stdout": "[0.0 0.0 0.0]\n[0.0 0.0 0.0]\n[0.0 0.0 0.0]\n[0.0 0.0 0.0]"}︡
︠8cad94bb-2963-4f78-babd-915a4f512f72︠
(A*Aplus -(A*Aplus).transpose()).zero_at(10^-14)
︡4a87b99c-ea57-4950-8e28-83c4e812c3a3︡{"stdout": "[0.0 0.0 0.0 0.0]\n[0.0 0.0 0.0 0.0]\n[0.0 0.0 0.0 0.0]\n[0.0 0.0 0.0 0.0]"}︡
︠34c74055-1da7-47c5-9bc5-2a44920cf9be︠
(Aplus*A - (Aplus*A).transpose()).zero_at(10^-14)
︡f861db75-a86e-4d33-9fd7-207de2136486︡{"stdout": "[0.0 0.0 0.0]\n[0.0 0.0 0.0]\n[0.0 0.0 0.0]"}︡
︠c2cddb15-580e-434b-9cd8-ea3b5d469bc9i︠
%html
<h3><span style="color: #0000ff;">Ejemplo 8 (cont. Ejemplo 6)</span></h3>
<p>Consideremos el sistema superdeterminado $Ax=b$ donde $A$ es la matriz obtenida a partir de las 5 primeras columnas de la matriz de Hilbert de orden 10 y $b$ es un vector lleno de n&uacute;meros 1, de orden 10. Comparar la soluci&oacute;n obtenida directamente de las ecuaciones normales con la obtenida mediante seudoinversa de Penrose, simulando que almacenamos los datos con una precisi&oacute;n de 30 bits en la mantisa&nbsp; en ambos casos.</p>

︡7bd90f3e-29f3-4e84-8316-bd26a442ee07︡{"html": "<h3><span style=\"color: #0000ff;\">Ejemplo 8 (cont. Ejemplo 6)</span></h3>\n<p>Consideremos el sistema superdeterminado $Ax=b$ donde $A$ es la matriz obtenida a partir de las 5 primeras columnas de la matriz de Hilbert de orden 10 y $b$ es un vector lleno de n&uacute;meros 1, de orden 10. Comparar la soluci&oacute;n obtenida directamente de las ecuaciones normales con la obtenida mediante seudoinversa de Penrose, simulando que almacenamos los datos con una precisi&oacute;n de 30 bits en la mantisa&nbsp; en ambos casos.</p>"}︡
︠132179d2-e016-4e2e-89fb-47206fc064bd︠
m = 10; n = 5         ### dimensiones de la matriz de Hilbert   m x n
precision = 30        ### especificamos los bits de precisión para la mantisa


#### no es preciso modificar este código

A = (matrizHilbert(m)[:, 0:n]).change_ring(RealField(precision))     
show(A)
b = vector(RealField(precision), [1 for i in range(m)])
show(b)
︡61b17c6c-682b-403d-995b-136c9cdfade7︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrrr}\n1.0000000 & 0.50000000 & 0.33333333 & 0.25000000 & 0.20000000 \\\\\n0.50000000 & 0.33333333 & 0.25000000 & 0.20000000 & 0.16666667 \\\\\n0.33333333 & 0.25000000 & 0.20000000 & 0.16666667 & 0.14285714 \\\\\n0.25000000 & 0.20000000 & 0.16666667 & 0.14285714 & 0.12500000 \\\\\n0.20000000 & 0.16666667 & 0.14285714 & 0.12500000 & 0.11111111 \\\\\n0.16666667 & 0.14285714 & 0.12500000 & 0.11111111 & 0.10000000 \\\\\n0.14285714 & 0.12500000 & 0.11111111 & 0.10000000 & 0.090909091 \\\\\n0.12500000 & 0.11111111 & 0.10000000 & 0.090909091 & 0.083333333 \\\\\n0.11111111 & 0.10000000 & 0.090909091 & 0.083333333 & 0.076923077 \\\\\n0.10000000 & 0.090909091 & 0.083333333 & 0.076923077 & 0.071428571\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(1.0000000,\\,1.0000000,\\,1.0000000,\\,1.0000000,\\,1.0000000,\\,1.0000000,\\,1.0000000,\\,1.0000000,\\,1.0000000,\\,1.0000000\\right)", "display": true}}︡
︠baa9f429-f513-4cf8-9fd1-63e664364fa0︠
Ap = seudoinversa(A)
x1 = Ap*b
show(x1)
︡4265728b-3746-40d1-a9f6-e670c4a406c9︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(15.375859,\\,-308.93270,\\,1428.9764,\\,-2308.8110,\\,1204.8390\\right)", "display": true}}︡
︠82b18c8c-81b7-43db-ab6e-943ea711d013︠
(A*x1 - b).norm()
︡6030caa7-e4b2-45c8-bfb5-5c34804c3864︡{"stdout": "0.013198944"}︡
︠dcc190f9-654b-4610-b4ca-a64d163ea090︠
x2 = (A.transpose()*A).solve_right(A.transpose()*b)
show(x2)
︡770888ac-265d-4349-9082-21a1b3ae3c3a︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(1.6792575,\\,-83.959037,\\,543.03975,\\,-1058.6941,\\,624.79961\\right)", "display": true}}︡
︠a0aff3e2-2daa-42da-8636-760437f18e3b︠
(A*x2 - b).norm()
︡ade62122-ff3b-4b2a-b2a4-3004541cf68d︡{"stdout": "0.034503627"}︡
︠ef80e36c-2ee6-4e75-8d43-5700236ad1bdi︠
%html
<p>Observaci&oacute;n: si comparamos los errores obtenidos para el c&aacute;lculo directo de las ecuaciones normales&nbsp; y para seudoinversa de Penrose, los mejores resultados se han obtenido para &eacute;sta &uacute;ltima. La soluci&oacute;n m&aacute;s fiable es x1.</p>

︡a435b0c7-49e7-4bb4-8562-e96e6318cc0a︡{"html": "<p>Observaci&oacute;n: si comparamos los errores obtenidos para el c&aacute;lculo directo de las ecuaciones normales&nbsp; y para seudoinversa de Penrose, los mejores resultados se han obtenido para &eacute;sta &uacute;ltima. La soluci&oacute;n m&aacute;s fiable es x1.</p>"}︡
︠3ee75ed2-e88d-46ed-977a-a92e36157164︠
show(x1)
show(x2)
︡0cdb3079-b709-47bd-b2d6-515a6186ba66︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(15.375859,\\,-308.93270,\\,1428.9764,\\,-2308.8110,\\,1204.8390\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(1.6792575,\\,-83.959037,\\,543.03975,\\,-1058.6941,\\,624.79961\\right)", "display": true}}︡
︠ea4ed63b-8a47-4c76-9374-ad0697c17a70i︠
%html
<h3><strong><a name="cuadrados"></a></strong></h3>
<h3>Ajustes de nubes de puntos por m&iacute;nimos cuadrados</h3>
<p>Los siguientes ejemplos ilustran la aplicaci&oacute;n de las ecuaciones normales de sistemas superdeterminados al problema de ajustes de una nube de puntos mediante una funci&oacute;n, combinaci&oacute;n lineal de ciertas funciones, en el sentido de m&iacute;nimos cuadrados.</p>

︡001cc863-1560-49f2-8414-a4974c74c211︡{"html": "<h3><strong><a name=\"cuadrados\"></a></strong></h3>\n<h3>Ajustes de nubes de puntos por m&iacute;nimos cuadrados</h3>\n<p>Los siguientes ejemplos ilustran la aplicaci&oacute;n de las ecuaciones normales de sistemas superdeterminados al problema de ajustes de una nube de puntos mediante una funci&oacute;n, combinaci&oacute;n lineal de ciertas funciones, en el sentido de m&iacute;nimos cuadrados.</p>"}︡
︠c7bf7de5-ff48-4336-83c3-5c5ed02e9cddi︠
%html
<h3><span style="color: #0000ff;">Ejemplo 9</span></h3>
<p>Dada la nube de puntos $(x_i,y_i)$ del plano:</p>
<p>$$\begin{array}{| l | r |r |r |r |r |r |r |r |r |r |r |}x_i: &amp; 1 &amp; 2 &amp; 3 &amp; 4 &amp; 5 &amp; 6 &amp; 7 &amp; 8 &amp; 9 &amp; 10 &amp; 11 \\y_i: &amp; 1.3 &amp; 3.5 &amp; 4.2 &amp; 5.0 &amp; 7.0 &amp; 8.8 &amp; 10.1 &amp; 12.5 &amp; 13.0 &amp; 15.6 &amp; 16.1 \\\end{array}$$</p>
<p>a) Hallar la recta de regresi&oacute;n que aproxima a dicha nube de puntos y representar gr&aacute;ficamente el resultado.</p>
<p>b) Hallar la par&aacute;bola de regresi&oacute;n y representar gr&aacute;ficamente.</p>
<p>c) &iquest;Cual de las dos aproximaciones anteriores tiene menor error de aproximaci&oacute;n asociado? &iquest;Porqu&eacute;?</p>

︡7573f0ce-5083-4c8f-94ba-cba454979bd7︡{"html": "<h3><span style=\"color: #0000ff;\">Ejemplo 9</span></h3>\n<p>Dada la nube de puntos $(x_i,y_i)$ del plano:</p>\n<p>$$\\begin{array}{| l | r |r |r |r |r |r |r |r |r |r |r |}x_i: &amp; 1 &amp; 2 &amp; 3 &amp; 4 &amp; 5 &amp; 6 &amp; 7 &amp; 8 &amp; 9 &amp; 10 &amp; 11 \\\\y_i: &amp; 1.3 &amp; 3.5 &amp; 4.2 &amp; 5.0 &amp; 7.0 &amp; 8.8 &amp; 10.1 &amp; 12.5 &amp; 13.0 &amp; 15.6 &amp; 16.1 \\\\\\end{array}$$</p>\n<p>a) Hallar la recta de regresi&oacute;n que aproxima a dicha nube de puntos y representar gr&aacute;ficamente el resultado.</p>\n<p>b) Hallar la par&aacute;bola de regresi&oacute;n y representar gr&aacute;ficamente.</p>\n<p>c) &iquest;Cual de las dos aproximaciones anteriores tiene menor error de aproximaci&oacute;n asociado? &iquest;Porqu&eacute;?</p>"}︡
︠e7b17b6c-e0f0-4c83-b0d8-29c565f90d29︠
listax = [i for i in range(1, 12)]
show(listax)
︡d645c6de-39bb-48df-b79a-9da25b62e406︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11\\right]", "display": true}}︡
︠1e3ae0ec-a591-478e-8bc6-c0024ad21d47︠
listay = [1.3, 3.5 ,4.2, 5.0, 7.0, 8.8, 10.1, 12.5, 13.0, 15.6, 16.1]
show(listay)
︡1b13d7d7-03a3-4c69-bd44-60d5dc3deaed︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left[1.30000000000000, 3.50000000000000, 4.20000000000000, 5.00000000000000, 7.00000000000000, 8.80000000000000, 10.1000000000000, 12.5000000000000, 13.0000000000000, 15.6000000000000, 16.1000000000000\\right]", "display": true}}︡
︠9ef2b2a3-1ffa-4c59-b780-e7fe453a301di︠
%html
<p>a) La recta de regresi&oacute;n es de la forma $\ y=mx+n$, donde $(m,n)$ es la seudosoluci&oacute;n del sistema $Ax=b$ resultante de imponer que la recta "pase" por los 11 puntos. Resolveremos las ecuaciones normales $A^tAx=A^tb$ mediante la seudoinversa de Penrose.</p>

︡822263c4-f525-4950-8d19-a6199a399366︡{"html": "<p>a) La recta de regresi&oacute;n es de la forma $\\ y=mx+n$, donde $(m,n)$ es la seudosoluci&oacute;n del sistema $Ax=b$ resultante de imponer que la recta \"pase\" por los 11 puntos. Resolveremos las ecuaciones normales $A^tAx=A^tb$ mediante la seudoinversa de Penrose.</p>"}︡
︠988cf313-f8cb-42ec-ab2a-fdf478a04aad︠
A=matrix([[listax[i], 1] for i in range(11)])
show(A)
︡40f4ba01-5bf2-4c80-833d-06bf484345be︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rr}\n1 & 1 \\\\\n2 & 1 \\\\\n3 & 1 \\\\\n4 & 1 \\\\\n5 & 1 \\\\\n6 & 1 \\\\\n7 & 1 \\\\\n8 & 1 \\\\\n9 & 1 \\\\\n10 & 1 \\\\\n11 & 1\n\\end{array}\\right)", "display": true}}︡
︠391861e1-c4e3-432d-9754-20064034fe00︠
b=vector(listay)
show(b)
︡56800a9f-3029-4bb9-a53f-5ed8f46684a1︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(1.30000000000000,\\,3.50000000000000,\\,4.20000000000000,\\,5.00000000000000,\\,7.00000000000000,\\,8.80000000000000,\\,10.1000000000000,\\,12.5000000000000,\\,13.0000000000000,\\,15.6000000000000,\\,16.1000000000000\\right)", "display": true}}︡
︠5e718b63-5299-4ca8-b76b-405f840bc7e3︠
Ap = seudoinversa(A)
sol = Ap*b
show(sol)
︡653184da-01eb-48aa-99cb-a3bb51f3eddd︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(1.51727272727,\\,-0.276363636364\\right)", "display": true}}︡
︠33478cf3-e895-4da6-aacb-39411da1fe6ci︠
%html
<p>La soluci&oacute;n anterior proporciona los par&aacute;metros de la recta de regresi&oacute;n que calculamos a continuaci&oacute;n:</p>

︡4ec118e7-89d3-4dd2-ac9e-7d5690d0feba︡{"html": "<p>La soluci&oacute;n anterior proporciona los par&aacute;metros de la recta de regresi&oacute;n que calculamos a continuaci&oacute;n:</p>"}︡
︠4c04ad94-a414-4302-9ad8-809427a4dd2d︠
x = var('x')
recta = vector([x, 1])*sol
show(recta)
︡5ce566d6-3bad-4392-9ed8-daf03f360eea︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}1.51727272727 \\, x - 0.276363636364", "display": true}}︡
︠658aa67d-f103-4e72-9b96-7e5e7dafe9aei︠
%html
<p>El error de m&iacute;nimos cuadrados:</p>

︡d8db6cbc-edf8-4863-bee3-7424d691b7fd︡{"html": "<p>El error de m&iacute;nimos cuadrados:</p>"}︡
︠e07b7f1f-e39a-4832-9a18-ca82039a77c1︠
error = (A*sol - b).norm()
error
︡e2185f68-6c14-4ff9-a735-f624f2cbd06f︡{"stdout": "1.5776564898608307"}︡
︠f120484e-ac28-4c92-9d62-af18ff68599ei︠
%html
<p>Vamos a representar gr&aacute;ficamente la nube de puntos y la recta de regresi&oacute;n:</p>

︡a88c531a-e8fe-4900-af37-5206df5d9f94︡{"html": "<p>Vamos a representar gr&aacute;ficamente la nube de puntos y la recta de regresi&oacute;n:</p>"}︡
︠ba1fa797-be9e-4003-a396-44eee19301e2︠
puntos = [[listax[i], listay[i]] for i  in range(11)]
show(puntos)
︡85cc9f87-0fba-4ded-9dd0-517beadc84da︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left[\\left[1, 1.30000000000000\\right], \\left[2, 3.50000000000000\\right], \\left[3, 4.20000000000000\\right], \\left[4, 5.00000000000000\\right], \\left[5, 7.00000000000000\\right], \\left[6, 8.80000000000000\\right], \\left[7, 10.1000000000000\\right], \\left[8, 12.5000000000000\\right], \\left[9, 13.0000000000000\\right], \\left[10, 15.6000000000000\\right], \\left[11, 16.1000000000000\\right]\\right]", "display": true}}︡
︠055bf5fe-18c8-4147-9568-433244afc2fe︠
show(
plot(recta, 0, 12) + 
list_plot(puntos, color = 'red', size = 15), 
figsize = 6)
︡aea57df7-9b10-4328-8386-d5d1f54e2519︡︡
︠2dc87326-85b9-473a-a635-f7612f26f472i︠
%html
<p>b) La par&aacute;bola de regresi&oacute;n es de la forma $\ y=ax^2+bx+c$, donde el vector $(a, b,c)$ es la seudosoluci&oacute;n del sistema $Ax=b$ resultante de imponer que la par&aacute;bola "pase" por los 11 puntos. Tambi&eacute;n resolveremos las ecuaciones normales $A^tAx=A^tb$ mediante la seudoinversa de Penrose.</p>

︡2f9830f9-0c2b-492d-af6b-47597754501b︡{"html": "<p>b) La par&aacute;bola de regresi&oacute;n es de la forma $\\ y=ax^2+bx+c$, donde el vector $(a, b,c)$ es la seudosoluci&oacute;n del sistema $Ax=b$ resultante de imponer que la par&aacute;bola \"pase\" por los 11 puntos. Tambi&eacute;n resolveremos las ecuaciones normales $A^tAx=A^tb$ mediante la seudoinversa de Penrose.</p>"}︡
︠49f2f0e6-4a34-4b51-8731-54a810c22b99︠
A = matrix([[listax[i]^2, listax[i], 1] for i in range(11)])
show(A)
︡004d17c3-932c-4ece-9677-5e7666a15b65︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n1 & 1 & 1 \\\\\n4 & 2 & 1 \\\\\n9 & 3 & 1 \\\\\n16 & 4 & 1 \\\\\n25 & 5 & 1 \\\\\n36 & 6 & 1 \\\\\n49 & 7 & 1 \\\\\n64 & 8 & 1 \\\\\n81 & 9 & 1 \\\\\n100 & 10 & 1 \\\\\n121 & 11 & 1\n\\end{array}\\right)", "display": true}}︡
︠6569e2cc-8d72-41d6-b991-c9b20cf1cb87︠
Ap = seudoinversa(A)
sol = Ap*b
show(sol)
︡22c15c08-36dc-4f27-a82d-b93c1f4f3a52︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(0.0134032634033,\\,1.35643356643,\\,0.0721212121212\\right)", "display": true}}︡
︠55f0ae7d-4242-4763-8757-c1b421c60550i︠
%html
<p>El error de m&iacute;nimos cuadrados:</p>

︡49f0409a-1d19-4364-b217-704a8c4ee820︡{"html": "<p>El error de m&iacute;nimos cuadrados:</p>"}︡
︠dd4cde6b-f82e-4e86-8685-08748163b866︠
error2 = (A*sol - b).norm()
error2
︡7eada083-41b4-4c95-a8c7-2da0baf87d43︡{"stdout": "1.528025677422492"}︡
︠f82e6475-8797-4ecf-a9e3-bdad7caaebfei︠
%html
<p>Construimos la par&aacute;bola de regresi&oacute;n a partir de la soluci&oacute;n del sistema anterior:</p>

︡5b176700-12dd-407f-93b2-e05586174fcd︡{"html": "<p>Construimos la par&aacute;bola de regresi&oacute;n a partir de la soluci&oacute;n del sistema anterior:</p>"}︡
︠84ae5ccc-7271-4da8-8709-5b1cd16638fa︠
x = var('x')
parabola = vector([x^2, x, 1])*sol
show(parabola)
︡7947e43b-b28f-48ec-9a63-e56d4e26d158︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}0.0134032634033 \\, x^{2} + 1.35643356643 \\, x + 0.0721212121212", "display": true}}︡
︠ecb08bda-d4da-4967-9e13-83294f51f9e0i︠
%html
<p>Representamos gr&aacute;ficamente el resultado:</p>

︡097cf08f-412a-4403-bc75-b7d34b3420af︡{"html": "<p>Representamos gr&aacute;ficamente el resultado:</p>"}︡
︠66b9edfb-aebb-4ff1-b232-e8b583b59a82︠
show(
plot(parabola, 0, 12) + 
list_plot(puntos, color = 'red', size = 15), 
figsize = 6)
︡cb80f2d5-979b-4006-8d18-6d4ff804f4ca︡︡
︠07fbc7c5-0571-4eb3-92eb-58c868ddeda0i︠
%html
<p>A simple vista, parece que la par&aacute;bola es una recta. Vamos a ampliar el rango de valores de la representaci&oacute;n para comprobar que se trata realmente de una par&aacute;bola:</p>

︡65a03f74-d389-4d95-aa6d-d8c37107a111︡{"html": "<p>A simple vista, parece que la par&aacute;bola es una recta. Vamos a ampliar el rango de valores de la representaci&oacute;n para comprobar que se trata realmente de una par&aacute;bola:</p>"}︡
︠cf4af03f-a9fd-4d1b-814b-cfc0476c5a32︠
show(
plot(parabola, -80, 12) + 
list_plot(puntos, color = 'red', size = 15), 
figsize = 6)
︡d2cf8e27-5a88-4db9-967f-b1cd86436c15︡︡
︠9bf34a2a-2ad3-4d2c-bdbe-e9c6f30b4a6bi︠
%html
<p>c) El error asociado a la par&aacute;bola siempre ser&aacute; menor que el asociado a la recta ya que esta &uacute;ltima se puede considerar como un caso particular de par&aacute;bola, para $a=0$. Comparamos gr&aacute;ficamente ambas aproximaciones:</p>

︡7f22145e-9c8f-491e-9e9d-42a95610cdf9︡{"html": "<p>c) El error asociado a la par&aacute;bola siempre ser&aacute; menor que el asociado a la recta ya que esta &uacute;ltima se puede considerar como un caso particular de par&aacute;bola, para $a=0$. Comparamos gr&aacute;ficamente ambas aproximaciones:</p>"}︡
︠94e07e45-5912-455f-9103-7f8ce519bf7d︠
error, error2
︡daf9cf46-71d2-4058-9e23-c88c0af9844c︡{"stdout": "(1.5776564898608307, 1.528025677422492)"}︡
︠49945552-b300-4cda-9ca7-67fe0d185ccf︠
show(
plot(recta, 0, 12, color = 'blue') +
plot(parabola, 0, 12, color = 'orange') +
list_plot(puntos, color = 'red', size = 15), 
figsize = 6)
︡f934d2c4-7f83-4e7e-a900-59f38d0f9288︡︡
︠5136b9a5-b5f7-4dfd-b608-6cc60fd2276ai︠
%html
<h3><span style="color: #0000ff;">Ejemplo 10</span></h3>
<p>Se pretende encontrar en $\mathbb{R}^3$ un plano de la&nbsp;forma $\ z = \alpha x + \beta y+\gamma$</p>
<p>que pase por los puntos</p>
<p>$$\left \{ \left(\begin{array}{r} 1 \\ 1 \\ 3 \end{array}\right),\left(\begin{array}{r} 1 \\ -1 \\ 3 \end{array}\right),\left(\begin{array}{r} -1 \\ 1 \\ 0 \end{array}\right),\left(\begin{array}{r} 0 \\ 1 \\ -3 \end{array}\right),\left(\begin{array}{r} -1 \\ -1 \\ 2 \end{array}\right),\left(\begin{array}{r} 1 \\ 0 \\ 1 \end{array}\right)\right\}$$</p>
<p>donde $\alpha, \beta, \gamma \in&nbsp;\mathbb{R}$.</p>
<p>a) Plantear el sistema de ecuaciones correspondiente y comprobar que es&nbsp;incompatible.</p>
<p>b) Calcular la seudosoluci&oacute;n y la norma del error, utilizando&nbsp;transformaciones de Householder para las ecuaciones normales del sistema incompatible.</p>
<p>c) Representar gr&aacute;ficamente el resultado.</p>

︡ee72d590-a7e0-4d78-8bde-a43584775c71︡{"html": "<h3><span style=\"color: #0000ff;\">Ejemplo 10</span></h3>\n<p>Se pretende encontrar en $\\mathbb{R}^3$ un plano de la&nbsp;forma $\\ z = \\alpha x + \\beta y+\\gamma$</p>\n<p>que pase por los puntos</p>\n<p>$$\\left \\{ \\left(\\begin{array}{r} 1 \\\\ 1 \\\\ 3 \\end{array}\\right),\\left(\\begin{array}{r} 1 \\\\ -1 \\\\ 3 \\end{array}\\right),\\left(\\begin{array}{r} -1 \\\\ 1 \\\\ 0 \\end{array}\\right),\\left(\\begin{array}{r} 0 \\\\ 1 \\\\ -3 \\end{array}\\right),\\left(\\begin{array}{r} -1 \\\\ -1 \\\\ 2 \\end{array}\\right),\\left(\\begin{array}{r} 1 \\\\ 0 \\\\ 1 \\end{array}\\right)\\right\\}$$</p>\n<p>donde $\\alpha, \\beta, \\gamma \\in&nbsp;\\mathbb{R}$.</p>\n<p>a) Plantear el sistema de ecuaciones correspondiente y comprobar que es&nbsp;incompatible.</p>\n<p>b) Calcular la seudosoluci&oacute;n y la norma del error, utilizando&nbsp;transformaciones de Householder para las ecuaciones normales del sistema incompatible.</p>\n<p>c) Representar gr&aacute;ficamente el resultado.</p>"}︡
︠749fd4c3-b828-4a07-b6c1-8f807cce47c3i︠
%html
<p>a)</p>

︡5a345480-7002-42ef-b3bf-852b40f9a19b︡{"html": "<p>a)</p>"}︡
︠cdcae520-c8e3-41ce-aefc-cf423969a1d4︠
A = matrix(RDF, [[1, 1, 1], [1, -1, 1], [-1, 1, 1], [0, 1, 1], [-1, -1, 1], [1, 0, 1]])
b = vector(RDF, [3, 3, 0, -3, 2, 1])
show(A)
show(b)
︡145464fa-0c31-4315-8387-004475e5bb57︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n1.0 & 1.0 & 1.0 \\\\\n1.0 & -1.0 & 1.0 \\\\\n-1.0 & 1.0 & 1.0 \\\\\n0.0 & 1.0 & 1.0 \\\\\n-1.0 & -1.0 & 1.0 \\\\\n1.0 & 0.0 & 1.0\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(3.0,\\,3.0,\\,0.0,\\,-3.0,\\,2.0,\\,1.0\\right)", "display": true}}︡
︠f3549df9-8812-4010-b4ce-d1992ad553a7i︠
%html
<p>Comprobamos que el sistema lineal es incompatible:</p>

︡190f5b84-ca59-45be-86e0-6cae8455a051︡{"html": "<p>Comprobamos que el sistema lineal es incompatible:</p>"}︡
︠bdcef9eb-b54f-4815-9587-8dcb872c9723︠
A.solve_right(b)  ### esta orden "falla" porque el sistema está superdeterminado
︡95d1b25f-4035-41d5-88f1-37a0d3395dbf︡{"stderr": "Traceback (most recent call last):\n  File \"<stdin>\", line 1, in <module>\n  File \"_sage_input_115.py\", line 10, in <module>\n    exec compile(u'open(\"___code___.py\",\"w\").write(\"# -*- coding: utf-8 -*-\\\\n\" + _support_.preparse_worksheet_cell(base64.b64decode(\"QS5zb2x2ZV9yaWdodChiKSAgIyMjIGVzdGEgb3JkZW4gImZhbGxhIiBwb3JxdWUgZWwgc2lzdGVtYSBlc3TDoSBzdXBlcmRldGVybWluYWRv\"),globals())+\"\\\\n\"); execfile(os.path.abspath(\"___code___.py\"))' + '\\n', '', 'single')\n  File \"\", line 1, in <module>\n    \n  File \"/tmp/tmpZetUij/___code___.py\", line 2, in <module>\n    exec compile(u'A.solve_right(b)  ### esta orden \"falla\" porque el sistema est\\xe1 superdeterminado' + '\\n', '', 'single')\n  File \"\", line 1, in <module>\n    \n  File \"sage/matrix/matrix_double_dense.pyx\", line 1741, in sage.matrix.matrix_double_dense.Matrix_double_dense.solve_right (/mnt/highperf/buildbot/slave/sage_git/build/src/build/cythonized/sage/matrix/matrix_double_dense.c:12183)\nValueError: coefficient matrix of a system over RDF/CDF must be square, not 6 x 3"}︡
︠f8911a78-3231-48c9-a049-3cd2ab703b9c︠
(A.augment(b)).echelon_form()   # comprobamos que rango(A) < rango(A|b) 
                                # por lo que el sistema es incompatible
︡e103a934-3498-4201-9075-cfb4f3c10c1a︡{"stdout": "[ 1.0  0.0  0.0  0.0]\n[ 0.0  1.0 -0.0 -0.0]\n[ 0.0  0.0  1.0  0.0]\n[ 0.0  0.0  0.0  1.0]\n[ 0.0  0.0  0.0  0.0]\n[ 0.0  0.0  0.0  0.0]"}︡
︠7fdc1ab2-8270-4a9a-a6e1-7f0e9f2e1fd2i︠
%html
<p>b) Hallamos la seudosoluci&oacute;n <span id="cell_outer_36">mediante factorizaci&oacute;n $QR$ por transformaciones de Householder</span></p>

︡bee36cfb-d2ea-4835-91de-e95fe02aebee︡{"html": "<p>b) Hallamos la seudosoluci&oacute;n <span id=\"cell_outer_36\">mediante factorizaci&oacute;n $QR$ por transformaciones de Householder</span></p>"}︡
︠d70073ef-46de-4a42-9c50-fddea0e75a9e︠
Qh, Rh = factorizacion_QR_Householder(A)
︡2ff9c4f6-ef3b-4d12-97b7-cc9cd1990568︡{"stdout": "N\u00ba de iteraciones:  3"}︡
︠6b55bf4e-1751-449e-882e-eb704b7bfe3b︠
(Qh*Rh - A).norm()
︡101e2053-c42e-4835-bbff-0eebc8009414︡{"stdout": "1.2123315170483423e-15"}︡
︠30292813-09af-4093-b5ff-353d6676eacd︠
Rhr = Rh[0:3]  # seleccionamos las tres primeras filas, coincidiendo con que el rango de A es 3
︡988bf5ed-94b2-4c04-9880-c690ef74e05f︡︡
︠cf71c890-eb10-4acb-8fd5-e1f2d33eb6f7︠
bh = Qh.transpose()*b
bh
︡bc866df7-5adb-4934-8f96-edf47148c8da︡{"stdout": "(-2.2360679774997902, -2.23606797749979, -2.5354627641855494, -3.446713391736838, 0.8800776606817091, -1.7079398929176435)"}︡
︠95ebf2e0-a25b-4990-bfe9-94750f2b0076︠
bhr = bh[0:3]  # seleccionamos las tres primeras filas, coincidiendo con que el rango de A es 3
︡197d3ef3-78ef-4766-adb1-867138c959db︡︡
︠2c359651-f936-4570-b212-36e180c30b1d︠
sol = sustre2(Rhr, bhr)
show(sol)
︡cdad7d11-ffcc-469c-b019-2dab47da4fd0︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(0.785714285714,\\,-1.21428571429,\\,1.07142857143\\right)", "display": true}}︡
︠d1221f28-ee0b-4e62-a6c0-032df5464c53︠
error = vector(bh[3:6]).norm()  ## seleccionamos a partir de la fila 3 hasta la última (6)
                                ## coincidiendo con que el rango de A es 3

error
︡c9f8486d-c918-4542-89da-afcb1d371127︡{"stdout": "3.9460649476951817"}︡
︠95a9a4c4-a6aa-4b8a-a92a-658febde207d︠
(A*sol - b).norm()
︡3c35c2fc-f883-4bc3-bd3a-cb31ab07f8ba︡{"stdout": "3.946064947695181"}︡
︠82007b6d-4b54-47ca-8712-e04512db9c93i︠
%html
<p>Construimos el plano de m&iacute;nimos cuadrados que aproxima la nube de puntos:</p>

︡283c2cc1-f018-4897-8018-84be82688d28︡{"html": "<p>Construimos el plano de m&iacute;nimos cuadrados que aproxima la nube de puntos:</p>"}︡
︠7b06f798-8669-4737-b4d7-2831d3a49220︠
x, y = var('x, y')
plano = vector([x, y, 1])*sol
show(plano)
︡cb9b20a4-510b-4dd3-8836-eab3bca0a8de︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}0.785714285714 \\, x - 1.21428571429 \\, y + 1.07142857143", "display": true}}︡
︠2c8afd4a-b53d-4288-90dc-8a2caf54c838i︠
%html
<p>c) A partir de la matriz ampliada del sistema, vamos a extraer los puntos del espacio $(x,y,z)$ para, posteriormente, representarlos gr&aacute;ficamente.</p>

︡6ac80f2a-b7f1-400f-af3a-da9afb8a61ff︡{"html": "<p>c) A partir de la matriz ampliada del sistema, vamos a extraer los puntos del espacio $(x,y,z)$ para, posteriormente, representarlos gr&aacute;ficamente.</p>"}︡
︠399be9a4-e896-45d9-b1be-115d4a9a608e︠
AM = (A.augment(matrix(b).transpose()))
show(AM)
︡bd4e34c5-d831-4f61-9d24-13fedfc14818︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n1.0 & 1.0 & 1.0 & 3.0 \\\\\n1.0 & -1.0 & 1.0 & 3.0 \\\\\n-1.0 & 1.0 & 1.0 & 0.0 \\\\\n0.0 & 1.0 & 1.0 & -3.0 \\\\\n-1.0 & -1.0 & 1.0 & 2.0 \\\\\n1.0 & 0.0 & 1.0 & 1.0\n\\end{array}\\right)", "display": true}}︡
︠1f046f94-05ef-4550-8851-cb58a1d04294︠
puntos = [AM[i, [0, 1, 3]].list() for i  in range(6)]
show(puntos)
︡4763a196-00af-4f89-9106-43c089ec9204︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left[\\left[1.0, 1.0, 3.0\\right], \\left[1.0, -1.0, 3.0\\right], \\left[-1.0, 1.0, 0.0\\right], \\left[0.0, 1.0, -3.0\\right], \\left[-1.0, -1.0, 2.0\\right], \\left[1.0, 0.0, 1.0\\right]\\right]", "display": true}}︡
︠0f42a414-232f-4521-98cb-289b5240b60c︠
list_plot(puntos, color = 'red', size = 10) + plot3d(plano, (x, -2, 2), (y, -2, 2))
︡703bdf20-31be-4d74-ad06-16a3cf31db7b︡︡
︠6ebd0e0e-83ef-44b4-91f0-a7cca17559f0i︠
%html
<h3><span style="color: #0000ff;">Ejemplo 11</span></h3>
<p>Se desea expresar la funci&oacute;n $f(x)= x^3 -2x^2-4x+1$</p>
<p>como combinaci&oacute;n lineal de&nbsp;las siguientes funciones en el intervalo $[-2,4]$</p>
<p>$$ \left\{ 1, {\sin}(x), {\rm cos}(x), {\rm sen}( 2x),{\rm cos}(2x), {\rm sen}(3x), {\rm cos}(3x) \right\}$$</p>
<p>es decir,</p>
<p>$$f(x)\approx \alpha_1 + \alpha_2 {\rm sen}(x)+\alpha_3 {\rm&nbsp;cos}(x)+\alpha_4 {\rm sen} (2x)+\alpha_5 {\rm cos}(2x)+\alpha_6 {\rm&nbsp;sen}(3x)+\alpha_7 {\rm cos}(3x)$$</p>
<p>a) Tomando 20 valores para $x$ en dicho intervalo, distribuidos uniformemente, plantear el sistema&nbsp;superdeterminado y comprobar que es incompatible.</p>
<p>b) Usando transformaciones ortogonales, calcular la seudosoluci&oacute;n del sistema y la norma del error.</p>
<p>c) &nbsp;Representar tanto la funci&oacute;n $f(x)$ como el polinomio&nbsp;trigonom&eacute;trico obtenido.</p>

︡a316ffe5-2e3a-436a-8a5e-27a4d4a5ebcc︡{"html": "<h3><span style=\"color: #0000ff;\">Ejemplo 11</span></h3>\n<p>Se desea expresar la funci&oacute;n $f(x)= x^3 -2x^2-4x+1$</p>\n<p>como combinaci&oacute;n lineal de&nbsp;las siguientes funciones en el intervalo $[-2,4]$</p>\n<p>$$ \\left\\{ 1, {\\sin}(x), {\\rm cos}(x), {\\rm sen}( 2x),{\\rm cos}(2x), {\\rm sen}(3x), {\\rm cos}(3x) \\right\\}$$</p>\n<p>es decir,</p>\n<p>$$f(x)\\approx \\alpha_1 + \\alpha_2 {\\rm sen}(x)+\\alpha_3 {\\rm&nbsp;cos}(x)+\\alpha_4 {\\rm sen} (2x)+\\alpha_5 {\\rm cos}(2x)+\\alpha_6 {\\rm&nbsp;sen}(3x)+\\alpha_7 {\\rm cos}(3x)$$</p>\n<p>a) Tomando 20 valores para $x$ en dicho intervalo, distribuidos uniformemente, plantear el sistema&nbsp;superdeterminado y comprobar que es incompatible.</p>\n<p>b) Usando transformaciones ortogonales, calcular la seudosoluci&oacute;n del sistema y la norma del error.</p>\n<p>c) &nbsp;Representar tanto la funci&oacute;n $f(x)$ como el polinomio&nbsp;trigonom&eacute;trico obtenido.</p>"}︡
︠7205de33-ea0e-4517-a515-6227ee2ff8c9i︠
%html
<p>a)</p>

︡049aa571-1429-45a5-8515-bb5d5added2f︡{"html": "<p>a)</p>"}︡
︠cca7c04b-94b7-4e36-bc93-cc4cd4817f9c︠
np = 20     ## número de puntos uniformemente distribuidos en [-2, 4]

## No es preciso modificar este código para construir la matriz A del sistema

A = matrix([[1, sin(x), cos(x), sin(2*x), cos(2*x), sin(3*x), cos(3*x)] for x in [(-2 + k*6./(np-1)).n() for k in range(np)]])
︡dce3ca4c-286b-44e3-a370-d66e0947cfa2︡︡
︠0d7eef40-4597-4938-9fe1-c1daa7e7cce9︠
## construimos el vector b para la función x^3 - 2*x^2 - 4*x + 1

b = vector([x^3 - 2*x^2 - 4*x + 1 for  x in [(-2 + k*6/(np - 1)).n() for k in range(np)]])
︡5e1ef978-8aa4-43ba-902f-bc99b263a72c︡︡
︠6e29e1e8-3e61-45a5-b0ea-21f2fc572371i︠
%html
<p>Comrpobamos que el sistema superdeterminado es incompatible:</p>

︡a37df043-89e9-4d1d-a86b-09020c4ed8bf︡{"html": "<p>Comrpobamos que el sistema superdeterminado es incompatible:</p>"}︡
︠9c7db539-0309-4e3f-a2a0-4f55a0d56f2f︠
A.rank()
︡cb6f5de3-0a78-4b56-b3fe-b68f37a6c66d︡{"stdout": "7"}︡
︠bb868ccb-2ac5-43f6-8247-baa3c9da34c5︠
(A.augment(b)).rank()
︡4e2b02e9-b374-4cb6-bc61-260704bcd238︡{"stdout": "8"}︡
︠1e747c86-84d2-46e2-ac0f-93cac5fd3ae5i︠
%html
<p>b)</p>

︡18d16437-c150-480c-9942-642d0a00fd5c︡{"html": "<p>b)</p>"}︡
︠244eb727-af9f-4d37-9167-6fd7ad4bd2ff︠
Q, R = factorizacion_QR_Householder(A)
︡ffaef03f-d58c-4762-bf71-95de4619111d︡{"stdout": "N\u00ba de iteraciones:  7"}︡
︠fe37f071-f965-4e5d-9ec6-32ecc54cf19d︠
bp = Q.transpose()*b
︡01243105-e8b5-4a6c-85ce-3c378ad2c24a︡︡
︠aa486b61-973b-4003-bfb7-2e86b78aea4f︠
sol = sustre2(R[0:7], bp[0:7])
show(sol)
︡7bdff1e7-7b8b-49e9-9d87-f3616686adc4︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(-0.712492425135714,\\,-4.56054343597829,\\,-0.291713615581375,\\,2.34232089153885,\\,2.72739177752949,\\,-2.96426773769640,\\,0.0206694879974657\\right)", "display": true}}︡
︠323b442f-2b80-4fb2-801f-3544f7c2588ai︠
%html
<p>Error de m&iacute;nimos cuadrados:</p>

︡f05fa17c-e862-4403-9935-366ab2c4d71a︡{"html": "<p>Error de m&iacute;nimos cuadrados:</p>"}︡
︠b89d3c41-5d88-459c-ba9a-d3085ac2ed1a︠
error = vector(bp[7:np]).norm();
error
︡72675a95-65e6-4307-9acc-be0c7d2f3e59︡{"stdout": "15.6587427177747"}︡
︠0f30f9c8-8efa-4437-b040-5760f30448ae︠
norm(A*sol - b)
︡27cfb6a1-c8cc-42ef-af78-7237b0ae7280︡{"stdout": "15.6587427177747"}︡
︠b2819f21-943b-482e-a1dc-80ca0f2963abi︠
%html
<p>A partir de la seudosoluci&oacute;n, construimos la funci&oacute;n polinomial trigonom&eacute;trica que aproxima a la funci&oacute;n original:</p>

︡e7b38030-fd6d-41c9-a48f-860ea7ab159f︡{"html": "<p>A partir de la seudosoluci&oacute;n, construimos la funci&oacute;n polinomial trigonom&eacute;trica que aproxima a la funci&oacute;n original:</p>"}︡
︠418e9c62-ee19-4b96-ab1c-8502d291cf1d︠
x, y = var('x, y')
f = x^3 - 2*x^2 - 4*x + 1
show(f)
aprox = vector(sol)*vector([1, sin(x), cos(x), sin(2*x), cos(2*x), sin(3*x), cos(3*x)])
show(aprox)
︡9bbbfcbe-0954-4fda-9939-725a7eeab82a︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}x^{3} - 2 \\, x^{2} - 4 \\, x + 1", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}0.0206694879974657 \\, \\cos\\left(3 \\, x\\right) + 2.72739177752949 \\, \\cos\\left(2 \\, x\\right) - 0.291713615581375 \\, \\cos\\left(x\\right) - 2.96426773769640 \\, \\sin\\left(3 \\, x\\right) + 2.34232089153885 \\, \\sin\\left(2 \\, x\\right) - 4.56054343597829 \\, \\sin\\left(x\\right) - 0.712492425135714", "display": true}}︡
︠6ceb5309-42a7-4a03-8c9a-fff4649193abi︠
%html
<p>c) Representamos gr&aacute;ficamente:</p>

︡9489e06c-462b-4030-897d-248d014d44ac︡{"html": "<p>c) Representamos gr&aacute;ficamente:</p>"}︡
︠23808503-5a79-4611-bebb-35b4343c8a8f︠
puntos = [(x, x^3 - 2*x^2 - 4*x + 1) for  x in [(-2 + k*6/(np - 1)).n() for k in range(np)]]
show(puntos)
︡ca15ae3d-ed76-4afc-9712-c56f4b671e60︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left[\\left(-2.00000000000000, -7.00000000000000\\right), \\left(-1.68421052631579, -2.71366088351071\\right), \\left(-1.36842105263158, 0.166059192302085\\right), \\left(-1.05263157894737, 1.82810905379793\\right), \\left(-0.736842105263158, 2.46143752733635\\right), \\left(-0.421052631578947, 2.25499343927686\\right), \\left(-0.105263157894737, 1.39772561597901\\right), \\left(0.210526315789474, 0.0785828838023036\\right), \\left(0.526315789473684, -1.51348593089372\\right), \\left(0.842105263157895, -3.18953200174953\\right), \\left(1.15789473684211, -4.76060650240560\\right), \\left(1.47368421052632, -6.03776060650241\\right), \\left(1.78947368421053, -6.83204548768042\\right), \\left(2.10526315789474, -6.95451231958011\\right), \\left(2.42105263157895, -6.21621227584196\\right), \\left(2.73684210526316, -4.42819653010643\\right), \\left(3.05263157894737, -1.40151625601399\\right), \\left(3.36842105263158, 3.05277737279486\\right), \\left(3.68421052631579, 9.12363318267969\\right), \\left(4.00000000000000, 17.0000000000000\\right)\\right]", "display": true}}︡
︠d253d703-8ded-42bb-85f6-8b9a05a56274︠
show(
plot(aprox, -2, 4)+
plot(f, -2, 4, color = 'red')+
list_plot(puntos, color = 'green', size = 15)
, figsize = 6)
︡94e18016-ae55-49c4-8b77-2669ea998170︡︡
︠9a77232b-23e2-4116-9862-f7f6a4e1c7c2i︠
%html
<h3 style="font-size: 1.17em;"><span style="color: #0000ff;">Ejemplo 12&nbsp; (Incidente en la Guerra del Golfo)<br /></span></h3>
<p><span style="color: #000000;">En este ejercicio vamos a simular num&eacute;ricamente un sonado incidente que sucedi&oacute; el 25 de febrero de 1991 durante la Guerra del Golfo, cuando un antimisil PATRIOT no intercept&oacute; un misil Scud, el cual, a la postre, caus&oacute; la muerte de 28 soldados y m&aacute;s de 100 heridos en la base militar objetivo. Puede leer algo m&aacute;s en este <a href="https://es.wikipedia.org/wiki/MIM-104_Patriot#El_error_de_Dharan" target="_blank">enlace</a>.<br /></span></p>
<p><span style="color: #000000;">De manera muy simplificada, los misiles PATRIOT funcionan as&iacute;: desde que se reinicia el sistema antimisiles, un radar rastrea posibles objetivos. Cuando se detecta uno, en el instante $t_0$, que lleva una trayectoria $y(x)$ respecto de cierto sistema de referencia, se tarda 9 segundos en activar el misil PATRIOT (entre otras cosas, se determina el punto de intercepci&oacute;n $P(\bar{x},\bar{y})$, cuya abscisa ser&aacute; el punto en que se encuentra el Scud transcurridos los 9 segundos m&aacute;s la cuarta parte de la distancia que le separa de la lanzadera del antimisil PATRIOT, pues &eacute;ste tiene el triple de velocidad que aqu&eacute;l); tras los cuales se dispara el antimisil. Cuando el antimisil alcanza el punto de intercepci&oacute;n, busca el misil objetivo mediante un sistema de radar de un radio de acci&oacute;n de 100 metros, para corregir en lo necesario su trayectoria y poder proceder as&iacute; a la destrucci&oacute;n del misil enemigo. Se pide:</span></p>
<p><span style="color: #000000;">a) Determinar la trayectoria $y(x)$ que sigue el misil Scud, si se sabe que aproximadamente coincide con la c&uacute;bica (polinomio de tercer grado) de regresi&oacute;n $y(x)=ax^3+bx^2+cx+d$ que aproxima a los puntos $(x_i,y_i)$ que se proporcionar&aacute;n por el sistema radar, para $0 \leq i \leq 10$.</span></p>
<p><span style="color: #000000;">b) Determinar los kil&oacute;metros horizontales $x$ recorridos por el misil Scud como funci&oacute;n lineal del tiempo $t$ (medido en d&eacute;cimas de segundo), si se sabe que coincide aproximadamente con la recta de regresi&oacute;n $x(t)=et+f$ asociada a los puntos $(t_i,x_i)$ dados.</span></p>
<p><span style="color: #000000;">c) Si el sistema se reinici&oacute; hace 10 horas, esto es, $t_0=360000$, (medido en d&eacute;cimas de segundo) y la lanzadera del antimisil PATRIOT est&aacute; situada en el punto de abscisa $x=100$ de la trayectoria, averiguar las coordenadas aproximadas del punto de intercepci&oacute;n.</span></p>
<p><span style="color: #000000;">d) En 1991, el misil PATRIOT trabajaba internamente con un procesador de aritm&eacute;tica en coma flotante de 24 bits y convert&iacute;a toda unidad temporal en un m&uacute;ltiplo entero de una d&eacute;cima de segundo. Como $0.1_{10}\approx 0.00011001100110011001100_{2}=0.09999905_{10}$ trabajando con 24 bits, en realidad internamente el misil PATRIOT contaba el tiempo en m&uacute;ltiplos enteros de esta cantidad, arrastrando errores de redondeo. Calcular el punto de impacto que determinar&iacute;a el misil PATRIOT en estas circunstancias, y concluir si ser&iacute;a o no efectivo en su tarea de intercepci&oacute;n del misil Scud.</span></p>

︡d0e4fc4d-bae4-444e-b0eb-88b5725856b8︡{"html": "<h3 style=\"font-size: 1.17em;\"><span style=\"color: #0000ff;\">Ejemplo 12&nbsp; (Incidente en la Guerra del Golfo)<br /></span></h3>\n<p><span style=\"color: #000000;\">En este ejercicio vamos a simular num&eacute;ricamente un sonado incidente que sucedi&oacute; el 25 de febrero de 1991 durante la Guerra del Golfo, cuando un antimisil PATRIOT no intercept&oacute; un misil Scud, el cual, a la postre, caus&oacute; la muerte de 28 soldados y m&aacute;s de 100 heridos en la base militar objetivo. Puede leer algo m&aacute;s en este <a href=\"https://es.wikipedia.org/wiki/MIM-104_Patriot#El_error_de_Dharan\" target=\"_blank\">enlace</a>.<br /></span></p>\n<p><span style=\"color: #000000;\">De manera muy simplificada, los misiles PATRIOT funcionan as&iacute;: desde que se reinicia el sistema antimisiles, un radar rastrea posibles objetivos. Cuando se detecta uno, en el instante $t_0$, que lleva una trayectoria $y(x)$ respecto de cierto sistema de referencia, se tarda 9 segundos en activar el misil PATRIOT (entre otras cosas, se determina el punto de intercepci&oacute;n $P(\\bar{x},\\bar{y})$, cuya abscisa ser&aacute; el punto en que se encuentra el Scud transcurridos los 9 segundos m&aacute;s la cuarta parte de la distancia que le separa de la lanzadera del antimisil PATRIOT, pues &eacute;ste tiene el triple de velocidad que aqu&eacute;l); tras los cuales se dispara el antimisil. Cuando el antimisil alcanza el punto de intercepci&oacute;n, busca el misil objetivo mediante un sistema de radar de un radio de acci&oacute;n de 100 metros, para corregir en lo necesario su trayectoria y poder proceder as&iacute; a la destrucci&oacute;n del misil enemigo. Se pide:</span></p>\n<p><span style=\"color: #000000;\">a) Determinar la trayectoria $y(x)$ que sigue el misil Scud, si se sabe que aproximadamente coincide con la c&uacute;bica (polinomio de tercer grado) de regresi&oacute;n $y(x)=ax^3+bx^2+cx+d$ que aproxima a los puntos $(x_i,y_i)$ que se proporcionar&aacute;n por el sistema radar, para $0 \\leq i \\leq 10$.</span></p>\n<p><span style=\"color: #000000;\">b) Determinar los kil&oacute;metros horizontales $x$ recorridos por el misil Scud como funci&oacute;n lineal del tiempo $t$ (medido en d&eacute;cimas de segundo), si se sabe que coincide aproximadamente con la recta de regresi&oacute;n $x(t)=et+f$ asociada a los puntos $(t_i,x_i)$ dados.</span></p>\n<p><span style=\"color: #000000;\">c) Si el sistema se reinici&oacute; hace 10 horas, esto es, $t_0=360000$, (medido en d&eacute;cimas de segundo) y la lanzadera del antimisil PATRIOT est&aacute; situada en el punto de abscisa $x=100$ de la trayectoria, averiguar las coordenadas aproximadas del punto de intercepci&oacute;n.</span></p>\n<p><span style=\"color: #000000;\">d) En 1991, el misil PATRIOT trabajaba internamente con un procesador de aritm&eacute;tica en coma flotante de 24 bits y convert&iacute;a toda unidad temporal en un m&uacute;ltiplo entero de una d&eacute;cima de segundo. Como $0.1_{10}\\approx 0.00011001100110011001100_{2}=0.09999905_{10}$ trabajando con 24 bits, en realidad internamente el misil PATRIOT contaba el tiempo en m&uacute;ltiplos enteros de esta cantidad, arrastrando errores de redondeo. Calcular el punto de impacto que determinar&iacute;a el misil PATRIOT en estas circunstancias, y concluir si ser&iacute;a o no efectivo en su tarea de intercepci&oacute;n del misil Scud.</span></p>"}︡
︠2e294711-fbdb-40e4-84e9-afa80158726e︠
####  1º GENERAMOS UNOS DATOS FICTICIOS DEL PROBLEMA

## lista de tiempos:
    
listat=[360000.000000000,360058.828294118,360117.656588236,360176.484882354,360235.313176472,360294.141470590,360352.969764708,360411.798058826,360470.626352944,360529.454647062,360588.282941180]

## lista de abcisas suponiendo que el radar detectó 11 posiciones en el eje OX
    
listax = [ 10*i   for i in range(11)]  

## lista de ordenadas de la trayectoria. 
## VAMOS A SUPONER QUE LA SOL. EXACTA  ES  y = -1/111000 x^3 -1/100 x + 10

listay=[10.-k/100-(k^3)/111000 for k in listax]
︡9e7334af-6506-428a-9ee5-ded8c31a92ee︡︡
︠9e5b1e12-595f-4eb5-9c87-53ecb22c9e18i︠
%html
<p>a) La c&uacute;bica de regresi&oacute;n es de la forma $\ y=ax^3+b^2+cx+d$, donde el vector $(a, b,c,d)$ es la seudosoluci&oacute;n del sistema $A{\bf x}={\bf b}$ resultante de imponer que&nbsp; el polinomio de tercer orden&nbsp; "pase" por los 11 puntos. Tambi&eacute;n resolveremos las ecuaciones normales $A^tA{\bf x}=A^t{\bf b}$ mediante la seudoinversa de Penrose.</p>

︡e0845e49-9d95-45bb-ac90-d0ccfd312502︡{"html": "<p>a) La c&uacute;bica de regresi&oacute;n es de la forma $\\ y=ax^3+b^2+cx+d$, donde el vector $(a, b,c,d)$ es la seudosoluci&oacute;n del sistema $A{\\bf x}={\\bf b}$ resultante de imponer que&nbsp; el polinomio de tercer orden&nbsp; \"pase\" por los 11 puntos. Tambi&eacute;n resolveremos las ecuaciones normales $A^tA{\\bf x}=A^t{\\bf b}$ mediante la seudoinversa de Penrose.</p>"}︡
︠def5b1fd-ce69-486c-a336-324f3c8ecfd2︠
### por ser una CÚBICA de regresión se toman valores x^3, x^2, x, 1

A=matrix([[listax[i]^3, listax[i]^2, listax[i], 1] for i in range(11)])  

print 'matriz A:'
show(A)
b=vector(listay)
print 'vector b:'
print(b)
Ap=seudoinversa(A)
soly=Ap*b
print
print 'seudosolución:'
show(soly)
︡8afe686c-29d2-4bdf-ac8a-66d13050ef83︡{"stdout": "matriz A:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n0 & 0 & 0 & 1 \\\\\n1000 & 100 & 10 & 1 \\\\\n8000 & 400 & 20 & 1 \\\\\n27000 & 900 & 30 & 1 \\\\\n64000 & 1600 & 40 & 1 \\\\\n125000 & 2500 & 50 & 1 \\\\\n216000 & 3600 & 60 & 1 \\\\\n343000 & 4900 & 70 & 1 \\\\\n512000 & 6400 & 80 & 1 \\\\\n729000 & 8100 & 90 & 1 \\\\\n1000000 & 10000 & 100 & 1\n\\end{array}\\right)", "display": true}}︡{"stdout": "vector b:\n(10.0000000000000, 9.89099099099099, 9.72792792792793, 9.45675675675676, 9.02342342342342, 8.37387387387387, 7.45405405405405, 6.20990990990991, 4.58738738738739, 2.53243243243243, -0.00900900900900936)\n\nseudosoluci\u00f3n:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(-9.00900900903 \\times 10^{-06},\\,1.97992680871 \\times 10^{-15},\\,-0.01,\\,10.0\\right)", "display": true}}︡
︠9cb2ec9c-4460-4e7d-b168-dd683c0e6009︠
### construimos el polinomio CÚBICO asociado a la seudosolución y representamos el resultado

x = var('x')
cubica = vector([x^3, x^2, x, 1])*soly  ### aquí se calcula la curva CÚBICA

show(cubica)
puntos=[[listax[i], listay[i]] for i  in range(11)]
plot(cubica, 0, 100) + list_plot(puntos, color = 'red', size = 15)
︡35356bd9-37b5-49e4-ab42-6fca3ebbd8fd︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}-\\left(9.00900900903 \\times 10^{-06}\\right) \\, x^{3} + \\left(1.97992680871 \\times 10^{-15}\\right) \\, x^{2} - 0.01 \\, x + 10.0", "display": true}}︡
︠cdec7133-23cf-488e-8605-320f544e7541i︠
%html
<p>b) La recta de regresi&oacute;n es de la forma $x=et+f$, donde el vector $(e,f)$ es la seudosoluci&oacute;n del sistema $B{\bf t}={\bf c}$ resultante de imponer que la recta "pase" por los 11 puntos $(t_i,x_i)$. Resolveremos las ecuaciones normales $B^tB{\bf t}=B^t{\bf c}$ mediante la seudoinversa de Penrose.</p>

︡d61dc947-a867-49ea-838a-b330936c68a9︡{"html": "<p>b) La recta de regresi&oacute;n es de la forma $x=et+f$, donde el vector $(e,f)$ es la seudosoluci&oacute;n del sistema $B{\\bf t}={\\bf c}$ resultante de imponer que la recta \"pase\" por los 11 puntos $(t_i,x_i)$. Resolveremos las ecuaciones normales $B^tB{\\bf t}=B^t{\\bf c}$ mediante la seudoinversa de Penrose.</p>"}︡
︠1eaee889-225e-492a-b196-fc050e0f74a2︠
### NO ES NECESARIO  MODIFICAR ESTE CÓDIGO

print 'matriz B:'
B = matrix([[listat[i], 1] for i in range(11)])
show(B)
c = vector(listax)
print 'vector c:'
print(c)
Bp = seudoinversa(B)
solx = Bp*c
print
print 'seudosolución:'
print(solx)
︡0b5e73e9-c595-4ea2-b1b9-65f109daf59a︡{"stdout": "matriz B:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rr}\n360000.000000000 & 1.00000000000000 \\\\\n360058.828294118 & 1.00000000000000 \\\\\n360117.656588236 & 1.00000000000000 \\\\\n360176.484882354 & 1.00000000000000 \\\\\n360235.313176472 & 1.00000000000000 \\\\\n360294.141470590 & 1.00000000000000 \\\\\n360352.969764708 & 1.00000000000000 \\\\\n360411.798058826 & 1.00000000000000 \\\\\n360470.626352944 & 1.00000000000000 \\\\\n360529.454647062 & 1.00000000000000 \\\\\n360588.282941180 & 1.00000000000000\n\\end{array}\\right)", "display": true}}︡{"stdout": "vector c:\n(0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100)\n\nseudosoluci\u00f3n:\n(0.16998623111425654, -61195.04320113253)"}︡
︠ba7e2cc0-4bf2-40d3-a81a-c55bbe5738a5︠
## construimos la recta de regresión a partir de la seudosolución y representamos gráficamente
t = var('t')
recta = vector([t, 1])*solx
show(recta)
puntos = [[listat[i], listax[i]] for i  in range(11)]

##ELEGIMOS EL INTERVALO [360000, 36589] PARA REPRESENTAR TODOS LOS DATOS

plot(recta, 360000, 360589)+list_plot(puntos, color = 'red', size = 15)
︡b9623a84-7b56-42f1-8639-e17bde51b890︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}0.169986231114 \\, t - 61195.0432011", "display": true}}︡
︠582a3c45-58aa-4fb6-a9a9-9b908d509a75i︠
%html
<p>c) Para hallar el punto de intercepci&oacute;n, basta ver la abscisa en el instante $t_0+90$ (recordemos que el tiempo se mide en d&eacute;cimas de segundo y transcurren 9 segundos), y sumar la cuarta parte de lo que resta hasta la abscisa 100 (que corresponde a la ubicaci&oacute;n de la lanzadera del antimisil PATRIOT).</p>

︡b14d1c9c-770f-4489-a1d3-ee7dc9bd2308︡{"html": "<p>c) Para hallar el punto de intercepci&oacute;n, basta ver la abscisa en el instante $t_0+90$ (recordemos que el tiempo se mide en d&eacute;cimas de segundo y transcurren 9 segundos), y sumar la cuarta parte de lo que resta hasta la abscisa 100 (que corresponde a la ubicaci&oacute;n de la lanzadera del antimisil PATRIOT).</p>"}︡
︠f322aa41-24b5-4a68-984c-ca93818be9cc︠
x0 = solx*vector([360000 + 90, 1])  # CALCULAMOS EL VALOR x0 A PARTIR DE LA RECTA DE REGRESION 
                                    #  y tiempo de retraso de 90 décimas de segundo

print 'valor x0:', x0
ximpacto = x0+(100-x0)/4            # CALCULAMOS EL VALOR X DEL IMPACTO PREVISTO tras sumar 1/4 distancia

# CALCULAMOS EL VALOR de ordenadas y DEL PUNTO DE IMPACTO PREVISTO POR LA FUNCIÓN CÚBICA

yimpacto = soly*vector([ximpacto^3, ximpacto^2, ximpacto, 1])  

impacto = vector([ximpacto, yimpacto])
print "Las coordinadas previstas para la intercepción son: "
print impacto
︡0eae9a4d-8148-4e3c-b0dd-b123d503cf68︡{"stdout": "valor x0: 15.2987608001\nLas coordinadas previstas para la intercepci\u00f3n son: \n(36.47407060007936, 9.198110057298296)"}︡
︠664a9c9f-7c36-42dc-af9a-aaccc35668cd︠
show(
plot(cubica, 0, 100) + 
point([ximpacto, yimpacto], color = 'red', size = 25),
figsize = 6)
︡01c2d79e-252f-4188-8a74-5ec867c255a6︡︡
︠7a70d0cd-e793-4a1f-b802-da46216ddb07i︠
%html
<p>d) Ahora tenemos que repetir los c&aacute;lculos, trabajando con unidades temporales aproximadas&nbsp; a una d&eacute;cima de segundo (0.1),&nbsp; guarda en el sistema antimisil PATRIOT, por el valor&nbsp; <span style="color: #000000;">0.09999905</span>.</p>

︡a1cdfb6a-7718-4052-8d4f-7fefae1d989d︡{"html": "<p>d) Ahora tenemos que repetir los c&aacute;lculos, trabajando con unidades temporales aproximadas&nbsp; a una d&eacute;cima de segundo (0.1),&nbsp; guarda en el sistema antimisil PATRIOT, por el valor&nbsp; <span style=\"color: #000000;\">0.09999905</span>.</p>"}︡
︠1e9ba0da-fe93-4a29-b51c-bb5795da28b2︠
unidad = 0.9999905     ### valor real al almacenar 0.1 segundos, dependiendo de los bits del sistema


xn0 = solx*vector([(360000 + 90)*unidad, 1]) ## nueva solución al cabo de 90 décimas de segundo

## PRESENTAMOS RESULTADOS

print 'valor x0 erroneo:', xn0
xnimpacto = xn0+(100-xn0)/4

ynimpacto = soly*vector([xnimpacto^3, xnimpacto^2, xnimpacto, 1])
nimpacto = vector([xnimpacto, ynimpacto])
print "Las coordinadas erroneas previstas por el misil PATRIOT para la intercepción son: "
print nimpacto
︡a43ba3d6-73d0-44b8-aa84-fdaecb9b6d31︡{"stdout": "valor x0 erroneo: 14.7172625515\nLas coordinadas erroneas previstas por el misil PATRIOT para la intercepci\u00f3n son: \n(36.03794691360417, 9.217965637430375)"}︡
︠50bc1696-53ba-45ac-914d-a169d93c1f80i︠
%html
<p>Hallamos la distancia entre ambos puntos de impacto, el real y el err&oacute;neo debido al redondeo de la d&eacute;cima de segundo,medida en metros:</p>

︡e12cacaf-8370-4fc6-8f7c-c2a4c4c15d7f︡{"html": "<p>Hallamos la distancia entre ambos puntos de impacto, el real y el err&oacute;neo debido al redondeo de la d&eacute;cima de segundo,medida en metros:</p>"}︡
︠91c34d40-c047-423f-a694-df67162babef︠
1000 * (impacto - nimpacto).norm() # DISTANCIA MÍNIMA ENTRE AMBOS PUNTOS DE IMPACTO, EN METROS.
︡265ab819-88bd-4612-acc4-edcc7a5c297b︡{"stdout": "436.57543903326314"}︡
︠dcba6935-8448-4d61-b6ce-23c804c84db5i︠
%html
<p>Es decir, la posici&oacute;n real del misil Scud dista del punto de intercepci&oacute;n calculado &iexcl;&iexcl;m&aacute;s de 100 metros!! (de hecho, m&aacute;s de cuatrocientos), cuando en realidad el radio de acci&oacute;n del misil PATRIOT es de 100 metros. As&iacute;, el misil PATRIOT no detecta al Scud y el Scud sigue su curso, impactando en su objetivo.</p>
<p>El error num&eacute;rico proviene del hecho de no reiniciar el sistema de temporizaci&oacute;n del misil PATRIOT peri&oacute;dicamente, para evitar acumular errores de redondeo. En el incidente real, el error, tras un estudio minucioso, se identific&oacute;&nbsp; y se tipific&oacute; que hab&iacute;a un l&iacute;mite temporal&nbsp; de 20 horas de uso continuado, para que el error de conversi&oacute;n de 0.1 segundos a 24 bits no repercutiera en la fiabilidad de la intercepci&oacute;n.</p>

︡5dd2d2e6-835d-4937-9571-38e8601192bd︡{"html": "<p>Es decir, la posici&oacute;n real del misil Scud dista del punto de intercepci&oacute;n calculado &iexcl;&iexcl;m&aacute;s de 100 metros!! (de hecho, m&aacute;s de cuatrocientos), cuando en realidad el radio de acci&oacute;n del misil PATRIOT es de 100 metros. As&iacute;, el misil PATRIOT no detecta al Scud y el Scud sigue su curso, impactando en su objetivo.</p>\n<p>El error num&eacute;rico proviene del hecho de no reiniciar el sistema de temporizaci&oacute;n del misil PATRIOT peri&oacute;dicamente, para evitar acumular errores de redondeo. En el incidente real, el error, tras un estudio minucioso, se identific&oacute;&nbsp; y se tipific&oacute; que hab&iacute;a un l&iacute;mite temporal&nbsp; de 20 horas de uso continuado, para que el error de conversi&oacute;n de 0.1 segundos a 24 bits no repercutiera en la fiabilidad de la intercepci&oacute;n.</p>"}︡
︠a1aded10-1e66-44bf-a06b-18fdda09991ai︠
%html
<p><a name="mensajes"></a></p>
<h3 style="font-size: 1.17em;"><span style="color: #0000ff;"><span style="color: #000000;">Proyecciones ortogonales y codificaci&oacute;n de mensajes<br /></span></span></h3>
<p><span style="color: #0000ff;"><span style="color: #000000;">Sabemos que la proyecci&oacute;n ortogonal (o mejor aproximaci&oacute;n de m&iacute;nimos cuadrados) de un vector $b$ sobre una variedad lineal $L$ de dimensi&oacute;n finita, es &uacute;nica. </span></span></p>
<p><span style="color: #0000ff;"><span style="color: #000000;">Esto se puede aprovechar para codificar u ocultar un vector de datos&nbsp;<span style="color: #0000ff;"><span style="color: #000000;">$s\in L$</span></span> mediante otro vector &nbsp;<span style="color: #0000ff;"><span style="color: #000000;">$b\notin L$</span></span>&nbsp; resultado de&nbsp; sumarle un vector $u$ ortogonal a $L$.&nbsp; Es decir, el vector $b=s+\lambda u$ tiene como &uacute;nica&nbsp; proyecci&oacute;n ortogonal sobre $L$ al vector $s$, siendo $\lambda$ un par&aacute;metro de valor aleatorio no nulo. Tan solo conociendo $b$ y una base de $L$, podremos calcular $s$ como la mejor aproximaci&oacute;n de m&iacute;nimos cuadrados a $b$ desde $L$. Si declaramos p&uacute;blicamente el vector $b$, tan solo los que conozcan una base de $L$ estar&aacute;n en condiciones de obtener el vector de datos $s$.</span><br /></span></p>
<h3 style="font-size: 1.17em;"><span style="color: #0000ff;"><br /></span></h3>
<h3 style="font-size: 1.17em;"><span style="color: #0000ff;">Ejemplo 13</span></h3>
<p><span style="color: #000000;">En este ejercicio vamos a simular un esquema simple de compartici&oacute;n de una clave secreta. Esta clave secreta ser&aacute; una palabra de cuatro letras codificada seg&uacute;n un vector ${\bf s}$ de longitud 4, cuyas entradas corresponden a los caracteres de la palabra seg&uacute;n la asociaci&oacute;n siguiente:</span></p>
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
<p><span style="color: #000000;">De manera muy simplificada, si se quiere repartir la clave secreta entre 3 personas, de manera que s&oacute;lo cuando se junten al menos 2 de ellas puedan recuperar dicha clave, se puede proceder de la siguiente manera. Se halla una base ${\cal B}=\{ {\bf u_1,u_2,u_3}\}$ de una variedad lineal $L$ de dimensi&oacute;n 3 a la que pertenezca ${\bf s}$. Se halla un vector ${\bf u}$ ortogonal a $L$. Se calcula un vector ${\bf b}={\bf s}+\lambda {\bf u}$, para $\lambda \neq 0$. A cada persona se le asigna un par diferente de vectores de la base ${\cal B}$, y se hace p&uacute;blico ${\bf b}$. Para descifrar la clave secreta, basta que dos de las tres personas se junten, para poder as&iacute; montar una base de $L$, y mediante &eacute;sta encontrar la proyecci&oacute;n ortogonal de ${\bf b}$ sobre $L$, que representa la clave secreta. Veamos un ejemplo.<br /></span></p>

︡0b7767e2-8143-4986-91ea-7fa72d35337d︡{"html": "<p><a name=\"mensajes\"></a></p>\n<h3 style=\"font-size: 1.17em;\"><span style=\"color: #0000ff;\"><span style=\"color: #000000;\">Proyecciones ortogonales y codificaci&oacute;n de mensajes<br /></span></span></h3>\n<p><span style=\"color: #0000ff;\"><span style=\"color: #000000;\">Sabemos que la proyecci&oacute;n ortogonal (o mejor aproximaci&oacute;n de m&iacute;nimos cuadrados) de un vector $b$ sobre una variedad lineal $L$ de dimensi&oacute;n finita, es &uacute;nica. </span></span></p>\n<p><span style=\"color: #0000ff;\"><span style=\"color: #000000;\">Esto se puede aprovechar para codificar u ocultar un vector de datos&nbsp;<span style=\"color: #0000ff;\"><span style=\"color: #000000;\">$s\\in L$</span></span> mediante otro vector &nbsp;<span style=\"color: #0000ff;\"><span style=\"color: #000000;\">$b\\notin L$</span></span>&nbsp; resultado de&nbsp; sumarle un vector $u$ ortogonal a $L$.&nbsp; Es decir, el vector $b=s+\\lambda u$ tiene como &uacute;nica&nbsp; proyecci&oacute;n ortogonal sobre $L$ al vector $s$, siendo $\\lambda$ un par&aacute;metro de valor aleatorio no nulo. Tan solo conociendo $b$ y una base de $L$, podremos calcular $s$ como la mejor aproximaci&oacute;n de m&iacute;nimos cuadrados a $b$ desde $L$. Si declaramos p&uacute;blicamente el vector $b$, tan solo los que conozcan una base de $L$ estar&aacute;n en condiciones de obtener el vector de datos $s$.</span><br /></span></p>\n<h3 style=\"font-size: 1.17em;\"><span style=\"color: #0000ff;\"><br /></span></h3>\n<h3 style=\"font-size: 1.17em;\"><span style=\"color: #0000ff;\">Ejemplo 13</span></h3>\n<p><span style=\"color: #000000;\">En este ejercicio vamos a simular un esquema simple de compartici&oacute;n de una clave secreta. Esta clave secreta ser&aacute; una palabra de cuatro letras codificada seg&uacute;n un vector ${\\bf s}$ de longitud 4, cuyas entradas corresponden a los caracteres de la palabra seg&uacute;n la asociaci&oacute;n siguiente:</span></p>\n<p>&nbsp;</p>\n<table border=\"0\" cellspacing=\"0\"><colgroup span=\"13\" width=\"59\"></colgroup>\n<tbody>\n<tr>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\" height=\"20\"><span style=\"font-family: DejaVu Sans;\">A</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">B</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">C</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">D</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">E</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">F</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">G</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">H</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">I</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">J</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">K</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">L</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">M</span></td>\n</tr>\n<tr>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" height=\"20\"><span style=\"font-family: DejaVu Sans;\">0</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">1</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">2</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">3</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">4</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">5</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">6</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">7</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">8</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">9</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">10</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">11</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">12</span></td>\n</tr>\n<tr>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\" height=\"20\"><span style=\"font-family: DejaVu Sans;\">N</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" bgcolor=\"#CCCCCC\">-</td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">O</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">P</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">Q</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">R</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">S</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">T</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">U</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">V</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">W</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">X</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">Y</span></td>\n</tr>\n<tr>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\" height=\"20\"><span style=\"font-family: DejaVu Sans;\">13</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\">14</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">15</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">16</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">17</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">18</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">19</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">20</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">21</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">22</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">23</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">24</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" valign=\"TOP\"><span style=\"font-family: DejaVu Sans;\">25</span></td>\n</tr>\n<tr>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" bgcolor=\"#CCCCCC\" height=\"19\"><span style=\"font-family: DejaVu Sans;\">Z</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">.</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" bgcolor=\"#CCCCCC\"><span style=\"font-family: DejaVu Sans;\">_<br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n</tr>\n<tr>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\" height=\"19\"><span style=\"font-family: DejaVu Sans;\">26</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\">27</span></td>\n<td style=\"border: 1px solid #000000;\" align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\">28</span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\"><span style=\"font-family: DejaVu Sans;\"><br /></span></td>\n<td align=\"CENTER\">&nbsp;</td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>\n<p><span style=\"color: #000000;\">De manera muy simplificada, si se quiere repartir la clave secreta entre 3 personas, de manera que s&oacute;lo cuando se junten al menos 2 de ellas puedan recuperar dicha clave, se puede proceder de la siguiente manera. Se halla una base ${\\cal B}=\\{ {\\bf u_1,u_2,u_3}\\}$ de una variedad lineal $L$ de dimensi&oacute;n 3 a la que pertenezca ${\\bf s}$. Se halla un vector ${\\bf u}$ ortogonal a $L$. Se calcula un vector ${\\bf b}={\\bf s}+\\lambda {\\bf u}$, para $\\lambda \\neq 0$. A cada persona se le asigna un par diferente de vectores de la base ${\\cal B}$, y se hace p&uacute;blico ${\\bf b}$. Para descifrar la clave secreta, basta que dos de las tres personas se junten, para poder as&iacute; montar una base de $L$, y mediante &eacute;sta encontrar la proyecci&oacute;n ortogonal de ${\\bf b}$ sobre $L$, que representa la clave secreta. Veamos un ejemplo.<br /></span></p>"}︡
︠ec062ded-c002-498e-8e00-438602b4b2bca︠
%auto
alfabeto = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "-", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", ".", "_"]
︡11b5e83c-541a-4899-90bb-88121071f084︡︡
︠9efd06de-d32a-402c-bb08-64a9b666963ci︠
%html
<p>Elegimos la clave secreta de 4 letras 'HACK' y hacemos todos los c&aacute;lculos para repartir las 3 sombras del mensaje (proyecciones) a tres personas y la clave p&uacute;blica que conocer&aacute;n todas ellas.</p>

︡0ef8b0b3-cb80-4dbb-a082-876f21e0add5︡{"html": "<p>Elegimos la clave secreta de 4 letras 'HACK' y hacemos todos los c&aacute;lculos para repartir las 3 sombras del mensaje (proyecciones) a tres personas y la clave p&uacute;blica que conocer&aacute;n todas ellas.</p>"}︡
︠420f6b3f-bf90-4fab-9c68-835783df3c0f︠
clave_secreta = "HACK"    ### ESTA ES LA CLAVE SECRETA ELEGIDA

### ESTE ES EL VECTOR s DE NUMEROS ASOCIADO A LA CLAVE

print 'clave secreta:', clave_secreta
s=vector(SR,[alfabeto.index(i) for i in clave_secreta])  # ESTE ES EL VECTOR s DE NUMEROS DE LA CLAVE
print 'vector de la clave secreta: s=',s
mat=matrix(s)

### CONSTRUIMOS UNA VARIEDAD ORTOGONAL A DICHO VECTOR s
variedad_ortogonal=mat.right_kernel() 
      
### para tomar u, primero hallamos BASE DEL COMPLEMENTO ORTOGONAL A L(s)
base_variedad_ortogonal=variedad_ortogonal.basis_matrix()  
### ELEGIMOS EL VECTOR u ORTOGONAL A s, TOMANDO, POR EJEMPLO, LA SUMA DE LOS DE LA BASE
u=base_variedad_ortogonal[0]+base_variedad_ortogonal[1]+base_variedad_ortogonal[2]  
print 'vector ortogonal a s elegido: u=',u

# BASE DE NUESTRA VARIEDAD L QUE CONTIENE EL VECTOR s
base_sombras=(matrix(u).right_kernel()).basis_matrix().transpose()  
print 'base de la variedad L que contiene nuestra clave;son las sombras de la clave secreta:'
print base_sombras

# MOSTRAMOS LAS TRES PAREJAS DE VECTORES
for i in range(3):  
    print 'Persona %d, sombra de vectores tras ocultar la %dª columna:' % (i+1,i+1)
    print base_sombras.delete_columns([i])
    
# ELECCIÓN ALEATORIA DEL PARAMETRO lambda Y CALCULO DEL VECTOR b DE CLAVE PUBLICA
param=3+ZZ.random_element(20) 
b=s+param*u 
print "Clave pública, vector b=",b
︡215eadc4-c159-4f55-b562-075987663c68︡{"stdout": "clave secreta: HACK\nvector de la clave secreta: s= (7, 0, 2, 10)\nvector ortogonal a s elegido: u= (1, 1, 1, -9/10)\nbase de la variedad L que contiene nuestra clave;son las sombras de la clave secreta:\n[   1    0    0]\n[   0    1    0]\n[   0    0    1]\n[10/9 10/9 10/9]\nPersona 1, sombra de vectores tras ocultar la 1\u00aa columna:\n[   0    0]\n[   1    0]\n[   0    1]\n[10/9 10/9]\nPersona 2, sombra de vectores tras ocultar la 2\u00aa columna:\n[   1    0]\n[   0    0]\n[   0    1]\n[10/9 10/9]\nPersona 3, sombra de vectores tras ocultar la 3\u00aa columna:\n[   1    0]\n[   0    1]\n[   0    0]\n[10/9 10/9]\nClave p\u00fablica, vector b= (12, 5, 7, 11/2)"}︡
︠f112ed42-a3dd-4a91-af8b-0553b5f373a8i︠
%html
<p>Ahora, supongamos que se juntan las personas 1 y 2 y comparten sus sombras del mensaje.</p>
<p>Construimos una matriz cuyas columnas sean&nbsp; la uni&oacute;n de las sombras del mensaje de esas personas:</p>
<p>$$A=\left(\begin{array}{rrrr} 0 &amp; 0 &amp; 1&nbsp; &amp; 0\\ 1 &amp; 0 &amp; 0 &amp; 0 \\ 0 &amp; 1 &amp; 0 &amp; 1 \\ \frac{10}9 &amp;&nbsp;\frac{10}9 &amp;&nbsp;\frac{10}9 &amp;&nbsp;\frac{10}9 \end{array}\right)$$</p>
<p>Entonces, la seudosoluci&oacute;n $x$ del sistema $Ax=b$ nos proporciona la mejor aproximaci&oacute;n a $b$ que es $s=Ax$, el secreto.</p>
<p>&nbsp;</p>

︡763b9202-37b8-4073-9d9f-b0080fa80a7a︡{"html": "<p>Ahora, supongamos que se juntan las personas 1 y 2 y comparten sus sombras del mensaje.</p>\n<p>Construimos una matriz cuyas columnas sean&nbsp; la uni&oacute;n de las sombras del mensaje de esas personas:</p>\n<p>$$A=\\left(\\begin{array}{rrrr} 0 &amp; 0 &amp; 1&nbsp; &amp; 0\\\\ 1 &amp; 0 &amp; 0 &amp; 0 \\\\ 0 &amp; 1 &amp; 0 &amp; 1 \\\\ \\frac{10}9 &amp;&nbsp;\\frac{10}9 &amp;&nbsp;\\frac{10}9 &amp;&nbsp;\\frac{10}9 \\end{array}\\right)$$</p>\n<p>Entonces, la seudosoluci&oacute;n $x$ del sistema $Ax=b$ nos proporciona la mejor aproximaci&oacute;n a $b$ que es $s=Ax$, el secreto.</p>\n<p>&nbsp;</p>"}︡
︠cdb1b44e-18ea-4ca8-ba71-5f1cb03f60bd︠
### matriz A, unión de las sombras por columnas
A = matrix([[0, 0, 1, 0], [1, 0, 0, 0], [0, 1, 0, 1], [10/9, 10/9, 10/9, 10/9]]) 
print 'matriz A unión de las sombras:'
show(A)

### vector de la clave pública 
print 'vector de clave pública:'
b = vector([21, 14, 16, -13/5])   
show(b)                                         

# SEUDOINVERSA DE LA MATRIZ
B = seudoinversa(A)  

# SEUDOSOLUCION DEL SISTEMA Ax=b
seudosol = B*b  
print 'seudosolucion del sistema, redondeada al entero más próximo: '
print map(round, list(seudosol))

# MEJOR APROXIMACION A b, EL VECTOR s
secreto = map(round, list(A*seudosol)) 
print 'vector del secreto: ', list(secreto)

# CONSTRUIMOS EL MENSAJE ASOCIADO A s
mensaje_original = ""  
for i in secreto:
    mensaje_original = mensaje_original + alfabeto[i]
print 'mensaje original: ', mensaje_original
︡7a3b5031-12ef-4a58-a221-f8249fe7c2d0︡{"stdout": "matriz A uni\u00f3n de las sombras:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n0 & 0 & 1 & 0 \\\\\n1 & 0 & 0 & 0 \\\\\n0 & 1 & 0 & 1 \\\\\n\\frac{10}{9} & \\frac{10}{9} & \\frac{10}{9} & \\frac{10}{9}\n\\end{array}\\right)", "display": true}}︡{"stdout": "vector de clave p\u00fablica:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(21,\\,14,\\,16,\\,-\\frac{13}{5}\\right)", "display": true}}︡{"stdout": "la matriz tiene rango num\u00e9rico  3\nseudosolucion del sistema, redondeada al entero m\u00e1s pr\u00f3ximo: \n[0, 1, 7, 1]\nvector del secreto:  [7, 0, 2, 10]\nmensaje original:  HACK"}︡
︠9483d300-5806-43da-9637-5369913ccd1ci︠
%html
<h3><a name="cuestionario"></a></h3>
<h3>CUESTIONARIO PARA EL ALUMNADO</h3>
<p><span id="cell_outer_0">Introduzca en la variable NUMERO_ALUMNO, que aparece m&aacute;s abajo, el n&uacute;mero correspondiente a su cuestionario y pulse el enlace&nbsp; <span style="color: #0000ff;"><span style="text-decoration: underline;">evaluate</span></span> que&nbsp; aparecer&aacute; m&aacute;s abajo.</span> Acceder&aacute; a un cuestionario con respuestas tipo test que se entregar&aacute; cumplimentado al finalizar esta sesi&oacute;n pr&aacute;ctica, siguiendo un modelo impreso que entregar&aacute; el profesor.</p>

︡e8fe7c79-0a54-4590-8d35-67fc51892609︡{"html": "<h3><a name=\"cuestionario\"></a></h3>\n<h3>CUESTIONARIO PARA EL ALUMNADO</h3>\n<p><span id=\"cell_outer_0\">Introduzca en la variable NUMERO_ALUMNO, que aparece m&aacute;s abajo, el n&uacute;mero correspondiente a su cuestionario y pulse el enlace&nbsp; <span style=\"color: #0000ff;\"><span style=\"text-decoration: underline;\">evaluate</span></span> que&nbsp; aparecer&aacute; m&aacute;s abajo.</span> Acceder&aacute; a un cuestionario con respuestas tipo test que se entregar&aacute; cumplimentado al finalizar esta sesi&oacute;n pr&aacute;ctica, siguiendo un modelo impreso que entregar&aacute; el profesor.</p>"}︡
︠bbf18cfd-b487-42f5-8900-1016ab21988e︠
NUMERO_ALUMNO = 0

NOMBRE_FICHERO_EXAMEN='ALN_L6_t.htl'
load(DATA+'codigo_examinar_html.sage')
︡8a14893a-f36e-403d-a12a-c2e56c9929ed︡︡
