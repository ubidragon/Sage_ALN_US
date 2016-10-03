︠614e3820-6f7f-408c-b3e6-236e8edde475ai︠
%hide
%auto
DATA="foo.data/"
︠d019e56f-d6b9-4e90-b796-979888c552f3i︠
%html
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<h3 style="font-size: 1.17em; text-align: center;">ESCUELA DE INGENIER&Iacute;A INFORM&Aacute;TICA</h3>
<h3 style="font-size: 1.17em; text-align: center;">UNIVERSIDAD DE SEVILLA</h3>
<h4 style="font-size: 1em; text-align: center;"><strong>&Aacute;LGEBRA LINEAL Y NUM&Eacute;RICA</strong></h4>
<h3 style="font-size: 1.17em;">Cuarta&nbsp; pr&aacute;ctica: resoluci&oacute;n de sistemas lineales mediante m&eacute;todos iterativos.</h3>
<p>En esta cuarta sesi&oacute;n nos marcamos los siguientes objetivos:</p>
<p>- Plantear <a href="#iterativos">m&eacute;todos iterativos</a> de resoluci&oacute;n de sistemas lineales y caracterizar la convergencia de los mismos.</p>
<p>- Comprensi&oacute;n de los <a href="#descomposicion">m&eacute;todos de descomposici&oacute;n</a> para abordar m&eacute;todos iterativos de resoluci&oacute;n de sistemas lineales.</p>
<p>- M&eacute;todo de descomposici&oacute;n de <a href="#jacobi">Jacobi</a>.</p>
<p>- M&eacute;todo de descomposici&oacute;n de <a href="#seidel">Gauss-Seidel</a>.</p>
<p>- M&eacute;todo de descomposici&oacute;n mediante <a href="#sor">Relajaci&oacute;n SOR</a>.</p>
<p>La pr&aacute;ctica finaliza con la realizaci&oacute;n por parte del alumnado de un <a href="#cuestionario">cuestionario personalizado.</a></p>
</div>

︡b2cfdf2c-46a3-4222-89d4-5911afcfb7c0︡{"html": "<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\n<h3 style=\"font-size: 1.17em; text-align: center;\">ESCUELA DE INGENIER&Iacute;A INFORM&Aacute;TICA</h3>\n<h3 style=\"font-size: 1.17em; text-align: center;\">UNIVERSIDAD DE SEVILLA</h3>\n<h4 style=\"font-size: 1em; text-align: center;\"><strong>&Aacute;LGEBRA LINEAL Y NUM&Eacute;RICA</strong></h4>\n<h3 style=\"font-size: 1.17em;\">Cuarta&nbsp; pr&aacute;ctica: resoluci&oacute;n de sistemas lineales mediante m&eacute;todos iterativos.</h3>\n<p>En esta cuarta sesi&oacute;n nos marcamos los siguientes objetivos:</p>\n<p>- Plantear <a href=\"#iterativos\">m&eacute;todos iterativos</a> de resoluci&oacute;n de sistemas lineales y caracterizar la convergencia de los mismos.</p>\n<p>- Comprensi&oacute;n de los <a href=\"#descomposicion\">m&eacute;todos de descomposici&oacute;n</a> para abordar m&eacute;todos iterativos de resoluci&oacute;n de sistemas lineales.</p>\n<p>- M&eacute;todo de descomposici&oacute;n de <a href=\"#jacobi\">Jacobi</a>.</p>\n<p>- M&eacute;todo de descomposici&oacute;n de <a href=\"#seidel\">Gauss-Seidel</a>.</p>\n<p>- M&eacute;todo de descomposici&oacute;n mediante <a href=\"#sor\">Relajaci&oacute;n SOR</a>.</p>\n<p>La pr&aacute;ctica finaliza con la realizaci&oacute;n por parte del alumnado de un <a href=\"#cuestionario\">cuestionario personalizado.</a></p>\n</div>"}︡
︠3857874c-4488-4004-9d37-d6e3aaea8067i︠
%html
<p style="font-size: 1.17em;"><a name="iterativos"></a></p>
<h3 style="font-size: 1.17em;">M&eacute;todos iterativos</h3>
<p>Dado un sistema de ecuaciones $$Ax=b$$ donde $A$ es una <strong>matriz cuadrada no singular</strong>, buscaremos un sistema equivalente de la forma</p>
<p>$$x=B\ x+c$$</p>
<p>Podemos aprovechar la expresi&oacute;n anterior para definir la siguiente sucesi&oacute;n de vectores:</p>
<p>$$x_{k+1}=B\ x_k+c$$&nbsp;a partir de un vector inicial $x_0$. La matriz $B$ se denomina <strong>matriz de iteraci&oacute;n</strong>.</p>
<p>Tenemos los siguientes resultados para garantizar la convergencia de la sucesi&oacute;n $\{x_k\}$ a la soluci&oacute;n $x$ del sistema de ecuaciones:</p>
<p><strong>Proposici&oacute;n 1</strong></p>
<p>El sistema $x=Bx+c$ es equivalente al $Ax=b$ si y solo si $c=(I-B)A^{-1}b$</p>
<p><strong>Proposici&oacute;n 2</strong></p>
<p>Si definimos $\epsilon_k=x_k-x$ como el error en la k-&eacute;sima iteraci&oacute;n, se verifica:</p>
<p>$$\epsilon_k=B^k\epsilon_0\ \ \longrightarrow\ \ &nbsp;\parallel \epsilon_k\parallel\leq \parallel B\parallel^k\cdot\parallel \epsilon_0\parallel$$</p>
<p>donde $\parallel B\parallel$ representa una norma matricial inducida por la correspondiente norma vectorial.</p>
<p><strong>Proposici&oacute;n 3</strong></p>
<p>Se verifica que:&nbsp;</p>
<p>$$\parallel \epsilon_k\parallel\leq\frac{\parallel B\parallel^k}{1-\parallel B\parallel}\parallel x_1-x_0\parallel$$</p>
<p><strong>Teorema 1</strong></p>
<p>La sucesi&oacute;n $\{x_k\}$ es convergente al valor $x$ si y solo si existe una norma matricial tal que $\parallel &nbsp;B \parallel&nbsp;&lt;1$</p>
<p><strong>Teorema 2</strong></p>
<p>Son equivalentes: &nbsp;a) $\rho(B)&lt;1$ &nbsp; b) &nbsp;existe una norma matricial tal que $\parallel &nbsp;B \parallel&nbsp;&lt;1$</p>
<p>Recordemos que $\rho(B)$ es el radio espectral de la matriz $B$, es decir, el valor del mayor autovalor, en valor absoluto, asociado a la matriz $B$. El radio espectral es el valor &iacute;nfimo de todas las normas matriciales.</p>
<p><strong>Nota</strong></p>
<p>Dados distintos m&eacute;todos iterados para resolver un mismo sistema lineal $Ax=b$, para estimar cu&aacute;l de ellos converge m&aacute;s r&aacute;pidamente a la soluci&oacute;n basta estudiar el radio espectral de cada matriz de iteraci&oacute;n, puesto que <strong>mientras m&aacute;s peque&ntilde;o sea el radio espectral m&aacute;s r&aacute;pida ser&aacute; la convergencia</strong>.</p>
<p><strong><br /></strong></p>

︡bd66fa80-d087-47f1-aca0-e04c944362af︡{"html": "<p style=\"font-size: 1.17em;\"><a name=\"iterativos\"></a></p>\n<h3 style=\"font-size: 1.17em;\">M&eacute;todos iterativos</h3>\n<p>Dado un sistema de ecuaciones $$Ax=b$$ donde $A$ es una <strong>matriz cuadrada no singular</strong>, buscaremos un sistema equivalente de la forma</p>\n<p>$$x=B\\ x+c$$</p>\n<p>Podemos aprovechar la expresi&oacute;n anterior para definir la siguiente sucesi&oacute;n de vectores:</p>\n<p>$$x_{k+1}=B\\ x_k+c$$&nbsp;a partir de un vector inicial $x_0$. La matriz $B$ se denomina <strong>matriz de iteraci&oacute;n</strong>.</p>\n<p>Tenemos los siguientes resultados para garantizar la convergencia de la sucesi&oacute;n $\\{x_k\\}$ a la soluci&oacute;n $x$ del sistema de ecuaciones:</p>\n<p><strong>Proposici&oacute;n 1</strong></p>\n<p>El sistema $x=Bx+c$ es equivalente al $Ax=b$ si y solo si $c=(I-B)A^{-1}b$</p>\n<p><strong>Proposici&oacute;n 2</strong></p>\n<p>Si definimos $\\epsilon_k=x_k-x$ como el error en la k-&eacute;sima iteraci&oacute;n, se verifica:</p>\n<p>$$\\epsilon_k=B^k\\epsilon_0\\ \\ \\longrightarrow\\ \\ &nbsp;\\parallel \\epsilon_k\\parallel\\leq \\parallel B\\parallel^k\\cdot\\parallel \\epsilon_0\\parallel$$</p>\n<p>donde $\\parallel B\\parallel$ representa una norma matricial inducida por la correspondiente norma vectorial.</p>\n<p><strong>Proposici&oacute;n 3</strong></p>\n<p>Se verifica que:&nbsp;</p>\n<p>$$\\parallel \\epsilon_k\\parallel\\leq\\frac{\\parallel B\\parallel^k}{1-\\parallel B\\parallel}\\parallel x_1-x_0\\parallel$$</p>\n<p><strong>Teorema 1</strong></p>\n<p>La sucesi&oacute;n $\\{x_k\\}$ es convergente al valor $x$ si y solo si existe una norma matricial tal que $\\parallel &nbsp;B \\parallel&nbsp;&lt;1$</p>\n<p><strong>Teorema 2</strong></p>\n<p>Son equivalentes: &nbsp;a) $\\rho(B)&lt;1$ &nbsp; b) &nbsp;existe una norma matricial tal que $\\parallel &nbsp;B \\parallel&nbsp;&lt;1$</p>\n<p>Recordemos que $\\rho(B)$ es el radio espectral de la matriz $B$, es decir, el valor del mayor autovalor, en valor absoluto, asociado a la matriz $B$. El radio espectral es el valor &iacute;nfimo de todas las normas matriciales.</p>\n<p><strong>Nota</strong></p>\n<p>Dados distintos m&eacute;todos iterados para resolver un mismo sistema lineal $Ax=b$, para estimar cu&aacute;l de ellos converge m&aacute;s r&aacute;pidamente a la soluci&oacute;n basta estudiar el radio espectral de cada matriz de iteraci&oacute;n, puesto que <strong>mientras m&aacute;s peque&ntilde;o sea el radio espectral m&aacute;s r&aacute;pida ser&aacute; la convergencia</strong>.</p>\n<p><strong><br /></strong></p>"}︡
︠d7778946-9ce4-4a3a-a962-8fc95113b80di︠
%html
<p>En SAGE podemos obtener las principales <strong>normas matriciales</strong> asociadas a una matriz $A$ con el atributo <span style="color: #0000ff;">A.norm(p)</span>.&nbsp;&nbsp;Tenemos</p>
<p>A.norm(1) $\ \rightarrow\ \parallel A\parallel_1$</p>
<p>A.norm( 2) $\ \rightarrow\ \parallel A\parallel_2=\sqrt{\rho(A^tA)}\ $ norma eucl&iacute;dea</p>
<p>A.norm(Infinity) $\ \rightarrow\ \parallel A\parallel_\infty$</p>
<p>A.norm('frob') $\ \rightarrow\ \parallel A\parallel_F\ $ norma de Frobenius</p>
<p>Por otra lado, la funci&oacute;n&nbsp;<span style="color: #0000ff;">radio_espectral(A)</span>&nbsp;proporciona el <strong>radio espectral </strong>de la matriz A.</p>

︡d9342fe9-9d7d-4356-bdac-2113f5afb2aa︡{"html": "<p>En SAGE podemos obtener las principales <strong>normas matriciales</strong> asociadas a una matriz $A$ con el atributo <span style=\"color: #0000ff;\">A.norm(p)</span>.&nbsp;&nbsp;Tenemos</p>\n<p>A.norm(1) $\\ \\rightarrow\\ \\parallel A\\parallel_1$</p>\n<p>A.norm( 2) $\\ \\rightarrow\\ \\parallel A\\parallel_2=\\sqrt{\\rho(A^tA)}\\ $ norma eucl&iacute;dea</p>\n<p>A.norm(Infinity) $\\ \\rightarrow\\ \\parallel A\\parallel_\\infty$</p>\n<p>A.norm('frob') $\\ \\rightarrow\\ \\parallel A\\parallel_F\\ $ norma de Frobenius</p>\n<p>Por otra lado, la funci&oacute;n&nbsp;<span style=\"color: #0000ff;\">radio_espectral(A)</span>&nbsp;proporciona el <strong>radio espectral </strong>de la matriz A.</p>"}︡
︠3dc904e7-bb48-4899-b96b-fe0b46b5b054a︠
%auto
def radio_espectral(B):
    A=copy(B)
    return vector((A.change_ring(CC)).eigenvalues()).norm(Infinity)
︡12deac04-32df-42f4-a30f-c7ca5288b75b︡︡
︠86dbdc46-3447-49e1-a08b-07ce5570ebeei︠
%html
<p>La siguiente funci&oacute;n intenta resolver un sistema $A{\bf x}={\bf b}$ utilizando el m&eacute;todo iterativo ${\bf x} _{n+1}=B{\bf x_n}+{\bf c}$, con comienzo en el vector inicial ${\bf x_0}$. Su sintaxis es &nbsp;&nbsp;</p>
<p style="text-align: center;"><span style="color: #0000ff;">metodo_iterado(A, b, B, c, x0, tol, maxiter, veriter, solosiconverge)</span></p>
<p>donde <span style="color: #0000ff;">tol </span>es un par&aacute;metro opcional que indica el nivel de tolerancia para detener el proceso iterativo; &eacute;ste se detiene si la norma eucl&iacute;dea $\parallel A{\bf x}-{\bf b}\parallel\leq tol$. Su valor por defecto es tol=$10^{-14}$. Por otra parte, <span style="color: #0000ff;">maxiter </span>es otro par&aacute;metro opcional que fija el n&uacute;mero m&aacute;ximo de iteraciones a realizar. Por defecto maxiter=1000. Adicionalmente, <span style="color: #0000ff;">veriter</span> es otro par&aacute;metro opcional que indica si se quieren visualizar las sucesivas aproximaciones (True) o no (False). Por defecto se usa el valor False. Por &uacute;ltimo, <span style="color: #0000ff;"><span style="color: #0000ff;">solosiconverge</span></span> es otro par&aacute;metro opcional que indica si se quiere restringir la aplicaci&oacute;n del m&eacute;todo cuando &eacute;ste tiene garantizada la convergencia con independencia del vector inicial (True, valor por defecto), o si por el contrario se permite su aplicaci&oacute;n (False) aun cuando la convergencia no est&eacute; garantizada (porque el radio espectral de la matriz de iteraci&oacute;n sea mayor que 1).</p>

︡a6c0f0d8-df4d-47b4-b792-01cc7856ab70︡{"html": "<p>La siguiente funci&oacute;n intenta resolver un sistema $A{\\bf x}={\\bf b}$ utilizando el m&eacute;todo iterativo ${\\bf x} _{n+1}=B{\\bf x_n}+{\\bf c}$, con comienzo en el vector inicial ${\\bf x_0}$. Su sintaxis es &nbsp;&nbsp;</p>\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\">metodo_iterado(A, b, B, c, x0, tol, maxiter, veriter, solosiconverge)</span></p>\n<p>donde <span style=\"color: #0000ff;\">tol </span>es un par&aacute;metro opcional que indica el nivel de tolerancia para detener el proceso iterativo; &eacute;ste se detiene si la norma eucl&iacute;dea $\\parallel A{\\bf x}-{\\bf b}\\parallel\\leq tol$. Su valor por defecto es tol=$10^{-14}$. Por otra parte, <span style=\"color: #0000ff;\">maxiter </span>es otro par&aacute;metro opcional que fija el n&uacute;mero m&aacute;ximo de iteraciones a realizar. Por defecto maxiter=1000. Adicionalmente, <span style=\"color: #0000ff;\">veriter</span> es otro par&aacute;metro opcional que indica si se quieren visualizar las sucesivas aproximaciones (True) o no (False). Por defecto se usa el valor False. Por &uacute;ltimo, <span style=\"color: #0000ff;\"><span style=\"color: #0000ff;\">solosiconverge</span></span> es otro par&aacute;metro opcional que indica si se quiere restringir la aplicaci&oacute;n del m&eacute;todo cuando &eacute;ste tiene garantizada la convergencia con independencia del vector inicial (True, valor por defecto), o si por el contrario se permite su aplicaci&oacute;n (False) aun cuando la convergencia no est&eacute; garantizada (porque el radio espectral de la matriz de iteraci&oacute;n sea mayor que 1).</p>"}︡
︠94bd44eb-12fe-46b6-a1d8-5c027ec00187a︠
%auto
def metodo_iterado(A, b, B, c, x00, tol = 10^-14, maxiter = 1000, veriter = False, solosiconverge = True):
    k = 1
    m = A.nrows()
    n = A.ncols()
    if m != n:
        k = 0
        print 'La matriz no es cuadrada.'
    else:
        k = 1; n = 0
        R = radio_espectral(B).n()
        if solosiconverge and R >= 1:
            k = 0
            print 'El método no es convergente:'
            print '   el radio espectral de la matriz de iteración es ', R
        else:
            x0 = vector(A.base_ring(),[0 for h in range(m)]) + x00
            while (A*x0 - b).norm() > tol and n < maxiter:
                n = n + 1
                x1 = B*x0 + c
                x0 = copy(x1)
                if veriter:
                    print 'iter.',n,'=',x0
    if k == 1:
        if n < maxiter:
            print 'Nº. de iteraciones realizadas:',n
        else:
            print 'Abortado en la iteracion:', maxiter
        print 'El radio espectral de la matriz de iteración es:', R
        Error = (A*x0 - b).norm().n()
        print 'Error de la aproximación:', Error
        print 'Solución aproximada:'
        return x0
︡1ac90c68-fd0a-408f-bdca-5d6c2a8b74ad︡︡
︠8539687c-9308-4ec2-ac64-78f7dcf66b37i︠
%html
<h3><span style="color: #0000ff;">Ejemplo 1 (caso convergente)<br /></span></h3>
<p>Sean $A=\left( \begin{array}{cc}0&amp;2\\ 3 &amp;3 \end{array}\right)$, ${\bf b}=(2,6)^T$, $B=\left( \begin{array}{cc} 1 &amp; -\frac 13 \\&nbsp; \frac 34&nbsp; &amp; 0 \end{array}\right)$ y ${\bf c}=(\frac 13,\frac 14)^T$. Se pide:</p>
<p>a) Comprobar que los sistemas $Ax=b$ &nbsp; y&nbsp;&nbsp; $x=Bx+c$ son equivalentes.</p>
<p>b) Calcular las principales normas matriciales y el radio espectral de la matriz $B$.</p>
<p>c) Comenzando con el vector nulo, aplicar el m&eacute;todo iterado ${\bf x_{n+1}}=B {\bf x_n}+{\bf c}$, para tratar de encontrar la soluci&oacute;n del sistema $A{\bf x}={\bf b}$. Valorar la aproximaci&oacute;n obtenida.</p>

︡f17e1158-e0f0-422b-b7fb-413c706678b6︡{"html": "<h3><span style=\"color: #0000ff;\">Ejemplo 1 (caso convergente)<br /></span></h3>\n<p>Sean $A=\\left( \\begin{array}{cc}0&amp;2\\\\ 3 &amp;3 \\end{array}\\right)$, ${\\bf b}=(2,6)^T$, $B=\\left( \\begin{array}{cc} 1 &amp; -\\frac 13 \\\\&nbsp; \\frac 34&nbsp; &amp; 0 \\end{array}\\right)$ y ${\\bf c}=(\\frac 13,\\frac 14)^T$. Se pide:</p>\n<p>a) Comprobar que los sistemas $Ax=b$ &nbsp; y&nbsp;&nbsp; $x=Bx+c$ son equivalentes.</p>\n<p>b) Calcular las principales normas matriciales y el radio espectral de la matriz $B$.</p>\n<p>c) Comenzando con el vector nulo, aplicar el m&eacute;todo iterado ${\\bf x_{n+1}}=B {\\bf x_n}+{\\bf c}$, para tratar de encontrar la soluci&oacute;n del sistema $A{\\bf x}={\\bf b}$. Valorar la aproximaci&oacute;n obtenida.</p>"}︡
︠ecdaab2f-48c2-437e-bcc7-8c67ba8c6589︠
A = matrix([[0, 2], [3, 3]])
b = vector([2, 6])
B = matrix([[1, -1/3], [3/4, 0]])
c = vector([1/3, 1/4])
show(A); show(b); show(B); show(c)
︡e9c35e2b-845d-4c0b-8fe8-2aaa47bd35bb︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rr}\n0 & 2 \\\\\n3 & 3\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(2,\\,6\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rr}\n1 & -\\frac{1}{3} \\\\\n\\frac{3}{4} & 0\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\frac{1}{3},\\,\\frac{1}{4}\\right)", "display": true}}︡
︠c828358f-36d3-4bb4-b067-96eb660dd44f︠
A.dimensions()[0]
︡d1e2bab9-145d-4e19-9f07-d79c4ab07deb︡{"stdout": "2"}︡
︠09cf5d6c-4a91-4dc7-919b-874096470dc2︠
##### comprobamos si los sistemas son equivalentes (debe devolver el valor True)

c == (identity_matrix(A.dimensions()[0]) - B)*A.inverse()*b
︡339ec4b9-a5cd-47a3-af46-1b19ab10d9a8︡{"stdout": "True"}︡
︠54eedcc1-c966-48d9-9b9b-119c08eb2c34︠
##### hallamos las normas matriciales y el radio espectral

print 'norma 1 de B:', B.norm(1)
print 'norma euclídea de B:', B.norm()
print 'norma infinito de B:', B.norm(Infinity)
print 'norma de Frobenius de B:', B.norm('frob')
print 'radio espectral de B:', radio_espectral(B)
︡c7e728e5-3d4c-4cd5-b516-73e32c2b3286︡{"stdout": "norma 1 de B: 1.75\nnorma eucl\u00eddea de B: 1.27882525054\nnorma infinito de B: 1.33333333333\nnorma de Frobenius de B: 1.29368122469\nradio espectral de B: 0.500000000000000"}︡
︠c8569093-224d-4e78-be8a-ef71ed4d5763i︠
%html
<p>Como el radio espectral de $B$ es menor que 1, tenemos garantizada la convergencia del m&eacute;todo iterado.</p>

︡51c5a5c6-95cc-4bf4-b8d0-91c80042ca89︡{"html": "<p>Como el radio espectral de $B$ es menor que 1, tenemos garantizada la convergencia del m&eacute;todo iterado.</p>"}︡
︠3b4d5712-86e1-4c28-9b33-43a2a5554cf4︠
metodo_iterado(A, b, B, c, vector([0.,0.]))
︡5b19be93-36c8-4e61-8635-d0604c1dc478︡{"stdout": "N\u00ba. de iteraciones realizadas: 54\nEl radio espectral de la matriz de iteraci\u00f3n es: 0.500000000000000\nError de la aproximaci\u00f3n: 8.57678724301002e-15\nSoluci\u00f3n aproximada:\n(0.999999999999999, 0.999999999999998)"}︡
︠38bb1465-c722-4669-83fc-e1d1d5d5ff0c︠
A.solve_right(b) # comparamos con la solución exacta
︡50f709b7-0a3b-4353-b66b-6f848c2b220a︡{"stdout": "(1, 1)"}︡
︠dbbb35fe-b006-45bb-b1bf-346f34a36229i︠
%html
<h3><span style="color: #0000ff;">Ejemplo 2&nbsp; (caso divergente)<br /></span></h3>
<p>Sean $A=\left( \begin{array}{cc}0&amp;2\\ 3 &amp;3 \end{array}\right)$, ${\bf b}=(2,6)^T$, $B=\left( \begin{array}{cc}1&amp;2\\ 3 &amp;4 \end{array}\right)$ y ${\bf c}=(-2,-6)^T$. Se pide:</p>
<p>a) Comprobar que los sistemas $Ax=b$ &nbsp; y&nbsp;&nbsp; $x=Bx+c$ son equivalentes.</p>
<p>b) Calcular las principales normas matriciales y el radio espectral de la matriz $B$.</p>
<p>c) Comenzando con el vector nulo, aplicar el m&eacute;todo iterado ${\bf x_{n+1}}=B {\bf x_n}+{\bf c}$, para tratar de encontrar la soluci&oacute;n del sistema $A{\bf x}={\bf b}$. Valorar la aproximaci&oacute;n obtenida.</p>
<p>d) Comenzando en el vector $(1,1)^T$, aplicar el m&eacute;todo iterado ${\bf x_{n+1}}=B {\bf x_n}+{\bf c}$, para tratar de encontrar la soluci&oacute;n del sistema $A{\bf x}={\bf b}$. Valorar la aproximaci&oacute;n obtenida.</p>

︡7f959767-02e1-4bee-815b-e211b48f079b︡{"html": "<h3><span style=\"color: #0000ff;\">Ejemplo 2&nbsp; (caso divergente)<br /></span></h3>\n<p>Sean $A=\\left( \\begin{array}{cc}0&amp;2\\\\ 3 &amp;3 \\end{array}\\right)$, ${\\bf b}=(2,6)^T$, $B=\\left( \\begin{array}{cc}1&amp;2\\\\ 3 &amp;4 \\end{array}\\right)$ y ${\\bf c}=(-2,-6)^T$. Se pide:</p>\n<p>a) Comprobar que los sistemas $Ax=b$ &nbsp; y&nbsp;&nbsp; $x=Bx+c$ son equivalentes.</p>\n<p>b) Calcular las principales normas matriciales y el radio espectral de la matriz $B$.</p>\n<p>c) Comenzando con el vector nulo, aplicar el m&eacute;todo iterado ${\\bf x_{n+1}}=B {\\bf x_n}+{\\bf c}$, para tratar de encontrar la soluci&oacute;n del sistema $A{\\bf x}={\\bf b}$. Valorar la aproximaci&oacute;n obtenida.</p>\n<p>d) Comenzando en el vector $(1,1)^T$, aplicar el m&eacute;todo iterado ${\\bf x_{n+1}}=B {\\bf x_n}+{\\bf c}$, para tratar de encontrar la soluci&oacute;n del sistema $A{\\bf x}={\\bf b}$. Valorar la aproximaci&oacute;n obtenida.</p>"}︡
︠2d880852-2950-4521-ae69-6e35f7c0d90f︠
A = matrix([[0, 2], [3, 3]])
b = vector([2, 6])
B = matrix([[1, 2], [3, 4]])
c = vector([-2, -6])
show(A); show(b); show(B); show(c)
︡43824d7f-ad0f-45c2-8c11-f4f12b795880︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rr}\n0 & 2 \\\\\n3 & 3\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(2,\\,6\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rr}\n1 & 2 \\\\\n3 & 4\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(-2,\\,-6\\right)", "display": true}}︡
︠41a16005-131b-4c89-8034-9806872f6107︠
##### comprobamos si los sistemas son equivalentes (debe devolver el valor True)

c == (identity_matrix(A.dimensions()[0]) - B)*A.inverse()*b
︡1c3f89c0-26d9-49db-ad34-591552b85052︡{"stdout": "True"}︡
︠98cc7e75-42dd-42b5-9530-093f86bf70c7︠
print 'norma 1 de B:', B.norm(1)
print 'norma euclídea de B:', B.norm()
print 'norma infinito de B:', B.norm(Infinity)
print 'norma de Frobenius de B:', B.norm('frob')
print 'radio espectral de B:', radio_espectral(B)
︡a06d4da3-1899-4048-9c6e-ca77c5d10e8f︡{"stdout": "norma 1 de B: 6.0\nnorma eucl\u00eddea de B: 5.46498570422\nnorma infinito de B: 7.0\nnorma de Frobenius de B: 5.47722557505\nradio espectral de B: 5.37228132326901"}︡
︠794edca7-69cf-4657-8b1d-236f4b318d00i︠
%html
<p>Como el radio espectral de $B$ es mayor que 1, el m&eacute;todo iterado no converge, es decir, es divergente.</p>

︡357d26d0-7742-4c6e-bb9e-53f18920266f︡{"html": "<p>Como el radio espectral de $B$ es mayor que 1, el m&eacute;todo iterado no converge, es decir, es divergente.</p>"}︡
︠76a07b2b-784e-4218-9a4e-66257fbb4b2b︠
metodo_iterado(A, b, B, c, [0, 0])
︡54f8a1da-5fd9-4943-8479-4bb01da389b4︡{"stdout": "El m\u00e9todo no es convergente:\n   el radio espectral de la matriz de iteraci\u00f3n es  5.37228132326901"}︡
︠6f2b3142-126e-415c-aa01-e05851704aefi︠
%html
<p>Aunque el m&eacute;todo iterado no tiene garantizada la convergencia, realizamos 100 iteraciones.</p>

︡e09b6ec9-f02a-4a54-81c8-a37edfc154f8︡{"html": "<p>Aunque el m&eacute;todo iterado no tiene garantizada la convergencia, realizamos 100 iteraciones.</p>"}︡
︠f8489364-ca24-43d6-bbd8-4131d105063a︠
metodo_iterado(A, b, B, c, vector([0., 0.]), tol = 10^(-14), maxiter = 100, veriter = False, solosiconverge = False)
︡69e5a658-2ff4-43f2-ae59-a33e00ee8e83︡{"stdout": "Abortado en la iteracion: 100\nEl radio espectral de la matriz de iteraci\u00f3n es: 5.37228132326901\nError de la aproximaci\u00f3n: 6.40005745700300e73\nSoluci\u00f3n aproximada:\n(-6.08893727196607e72, -1.33112733563869e73)"}︡
︠00a75a5e-c48f-468c-a352-72e1baf46064︠
A.solve_right(b)  # calculamos la solución del sistema
︡6bafa5c2-1a61-4416-a12c-bd8ddf4699af︡{"stdout": "(1, 1)"}︡
︠9fa03d68-20a8-47b6-ba91-da879d4a2d6d︠
#### repetimos el método iterado comenzando por la solución real

metodo_iterado(A, b, B, c, vector([1., 1.]), tol = 10^(-14), maxiter = 100, veriter = False, solosiconverge = False)
︡6c2fa3c4-4ea9-4564-a5fc-441dc4547ae0︡{"stdout": "N\u00ba. de iteraciones realizadas: 0\nEl radio espectral de la matriz de iteraci\u00f3n es: 5.37228132326901\nError de la aproximaci\u00f3n: 0.000000000000000\nSoluci\u00f3n aproximada:\n(1.00000000000000, 1.00000000000000)"}︡
︠c876d207-3ee6-436c-a695-41d89a0fc372i︠
%html
<p>Como se ha empezado la iteraci&oacute;n tomando como vector inicial el propio vector soluci&oacute;n del sistema, la sucesi&oacute;n que se obtiene es obviamente constante y convergente a la soluci&oacute;n, aun cuando el radio espectral de la matriz de iteraci&oacute;n es mayor que 1.</p>

︡c4d1a398-141f-4b60-a304-a617c4a12de2︡{"html": "<p>Como se ha empezado la iteraci&oacute;n tomando como vector inicial el propio vector soluci&oacute;n del sistema, la sucesi&oacute;n que se obtiene es obviamente constante y convergente a la soluci&oacute;n, aun cuando el radio espectral de la matriz de iteraci&oacute;n es mayor que 1.</p>"}︡
︠e6f9130f-7dd9-4e47-baea-1eda9b750ea3i︠
%html
<p style="font-size: 1.17em;"><a name="descomposicion"></a></p>
<h3 style="font-size: 1.17em;"><strong>M&eacute;todos de descomposici&oacute;n</strong></h3>
<p>Los m&eacute;todos que vamos a estudiar consisten en descomponer la&nbsp;matriz invertible $A$ del sistema $Ax=b$ de la forma&nbsp;$$A=M-N$$de&nbsp;manera que la matriz $M$ sea <strong>f&aacute;cilmente invertible</strong>, por lo&nbsp;que reciben el nombre gen&eacute;rico de&nbsp;<span style="color: #3366ff;"><span style="color: #0000ff;"><strong><span style="color: #000000;">m&eacute;todos de descomposici&oacute;n</span></strong></span><strong><span style="color: #000000;">.</span></strong></span></p>
<p>El sistema queda entonces de la forma</p>
<p>$$(M-N)x=b\longrightarrow&nbsp;&nbsp;Mx=Nx+b\longrightarrow&nbsp;x=M^{-1}Nx+M^{-1}b$$&nbsp;</p>
<p>es decir, expresamos el sistema de la forma</p>
<p>$$Ax=b\ \iff\ x=B\ x+c\ \ \mbox{con}\ \ \left\{\begin{array}{l} B=M^{-1}N\\ &nbsp;c=M^{-1}b \end{array}\right.$$</p>
<p>Para el estudio de los m&eacute;todos que trataremos a continuaci&oacute;n,&nbsp;vamos a partir de la descomposici&oacute;n de la matriz $A$</p>
<p>de la forma $$A=D-E-F$$</p>
<p>donde</p>
<p>$$D=\left(\begin{array}{ccccc} a_{11} &amp; 0 &amp; 0 &amp; \cdots &amp; 0\\ 0 &amp; a_{22} &amp; 0 &amp; \cdots &amp; 0\\ 0 &amp; 0 &amp; a_{33} &amp; \cdots &amp; 0\\ \vdots &amp; \vdots &amp; \vdots &amp; \ddots &amp; \vdots\\ 0 &amp; 0 &amp; 0 &amp; \cdots &amp;a_{nn}\end{array}\right)\ \ \ \ &nbsp;-E=\left(\begin{array}{ccccc}0 &amp; 0 &amp; 0 &amp; \cdots &amp; 0\\ a_{21} &amp; 0 &amp; 0 &amp; \cdots &amp; 0\\a_{31} &amp; a_{32} &amp; 0 &amp; \cdots &amp; 0\\\vdots &amp; \vdots &amp; \vdots &amp; \ddots &amp; \vdots\\a_{n1} &amp; a_{n2} &amp; a_{n3} &amp; \cdots &amp; 0\end{array}\right)$$ $$-F=\left(\begin{array}{ccccc}0 &amp; a_{12} &amp; a_{13} &amp; \cdots &amp; a_{1n}\\ 0 &amp; 0 &amp; a_{23} &amp; \cdots &amp;a_{2n} \\ 0 &amp; 0 &amp; 0 &amp; \cdots &amp; a_{3n} \\ \vdots &amp; \vdots &amp; \vdots &amp; \ddots &amp; \vdots\\ 0 &amp; 0 &amp; 0 &amp; \cdots &amp; 0\end{array}\right)$$</p>

︡1ff31c46-1c41-4e1b-b9f8-ec4a23425b08︡{"html": "<p style=\"font-size: 1.17em;\"><a name=\"descomposicion\"></a></p>\n<h3 style=\"font-size: 1.17em;\"><strong>M&eacute;todos de descomposici&oacute;n</strong></h3>\n<p>Los m&eacute;todos que vamos a estudiar consisten en descomponer la&nbsp;matriz invertible $A$ del sistema $Ax=b$ de la forma&nbsp;$$A=M-N$$de&nbsp;manera que la matriz $M$ sea <strong>f&aacute;cilmente invertible</strong>, por lo&nbsp;que reciben el nombre gen&eacute;rico de&nbsp;<span style=\"color: #3366ff;\"><span style=\"color: #0000ff;\"><strong><span style=\"color: #000000;\">m&eacute;todos de descomposici&oacute;n</span></strong></span><strong><span style=\"color: #000000;\">.</span></strong></span></p>\n<p>El sistema queda entonces de la forma</p>\n<p>$$(M-N)x=b\\longrightarrow&nbsp;&nbsp;Mx=Nx+b\\longrightarrow&nbsp;x=M^{-1}Nx+M^{-1}b$$&nbsp;</p>\n<p>es decir, expresamos el sistema de la forma</p>\n<p>$$Ax=b\\ \\iff\\ x=B\\ x+c\\ \\ \\mbox{con}\\ \\ \\left\\{\\begin{array}{l} B=M^{-1}N\\\\ &nbsp;c=M^{-1}b \\end{array}\\right.$$</p>\n<p>Para el estudio de los m&eacute;todos que trataremos a continuaci&oacute;n,&nbsp;vamos a partir de la descomposici&oacute;n de la matriz $A$</p>\n<p>de la forma $$A=D-E-F$$</p>\n<p>donde</p>\n<p>$$D=\\left(\\begin{array}{ccccc} a_{11} &amp; 0 &amp; 0 &amp; \\cdots &amp; 0\\\\ 0 &amp; a_{22} &amp; 0 &amp; \\cdots &amp; 0\\\\ 0 &amp; 0 &amp; a_{33} &amp; \\cdots &amp; 0\\\\ \\vdots &amp; \\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots\\\\ 0 &amp; 0 &amp; 0 &amp; \\cdots &amp;a_{nn}\\end{array}\\right)\\ \\ \\ \\ &nbsp;-E=\\left(\\begin{array}{ccccc}0 &amp; 0 &amp; 0 &amp; \\cdots &amp; 0\\\\ a_{21} &amp; 0 &amp; 0 &amp; \\cdots &amp; 0\\\\a_{31} &amp; a_{32} &amp; 0 &amp; \\cdots &amp; 0\\\\\\vdots &amp; \\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots\\\\a_{n1} &amp; a_{n2} &amp; a_{n3} &amp; \\cdots &amp; 0\\end{array}\\right)$$ $$-F=\\left(\\begin{array}{ccccc}0 &amp; a_{12} &amp; a_{13} &amp; \\cdots &amp; a_{1n}\\\\ 0 &amp; 0 &amp; a_{23} &amp; \\cdots &amp;a_{2n} \\\\ 0 &amp; 0 &amp; 0 &amp; \\cdots &amp; a_{3n} \\\\ \\vdots &amp; \\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots\\\\ 0 &amp; 0 &amp; 0 &amp; \\cdots &amp; 0\\end{array}\\right)$$</p>"}︡
︠6d8cf3eb-a239-4153-a101-2621fd6655d6i︠
%html
<p>La siguiente funci&oacute;n proporciona las tres matrices $D$, $E$ y $F$ de la descomposici&oacute;n anterior</p>
<p style="text-align: center;"><span style="color: #0000ff;">D, E, F = descomposicion(A)</span></p>

︡f9d125c7-b84e-41e3-8ee7-b6c3fb474da1︡{"html": "<p>La siguiente funci&oacute;n proporciona las tres matrices $D$, $E$ y $F$ de la descomposici&oacute;n anterior</p>\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\">D, E, F = descomposicion(A)</span></p>"}︡
︠dc48c84b-d208-40b2-bcfd-0cdd4abeba4ca︠
%auto
def tril(A, k = 0):
    L = copy(A)
    m = L.nrows()
    n = L.ncols()
    for i in range(m):
        for j in range(i + 1 + k, n):
            L[i, j] = 0
    return(L)

def triu(A, k = 0):
    L = copy(A).transpose()
    return(tril(L, k).transpose())
    
def descomposicion(A):
    m = A.nrows()
    n = A.ncols()
    n = min(m, n)
    D = diagonal_matrix([A[i, i] for i in range(n)])
    E = -tril(A, -1)
    F = -triu(A, -1)
    return(D, E, F)
︡8c6d497b-09e6-4d42-bfd3-5ea685aac463︡︡
︠b5f01820-1887-4bd7-a12c-652caeead9e7i︠
%html
<h3 style="font-size: 1.17em;"><span style="color: #0000ff;">Ejemplo 3<br /></span></h3>
<p>Calculamos la descomposici&oacute;n $A=D-E-F$ de una matriz de orden 3:</p>

︡bdb2757e-cd13-4fda-aa8e-6462782a6824︡{"html": "<h3 style=\"font-size: 1.17em;\"><span style=\"color: #0000ff;\">Ejemplo 3<br /></span></h3>\n<p>Calculamos la descomposici&oacute;n $A=D-E-F$ de una matriz de orden 3:</p>"}︡
︠bbf1bc18-ed61-42b2-a15c-4738a9084671︠
A = matrix(QQ, [[3, 1, 1], [3, -7, 1], [1, 1, -3]])
show(A)
︡838d4f31-5ea1-453e-b62c-179e95a17394︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n3 & 1 & 1 \\\\\n3 & -7 & 1 \\\\\n1 & 1 & -3\n\\end{array}\\right)", "display": true}}︡
︠0dbc5fd7-f497-48d4-98df-5445ffceff37︠
D, E, F = descomposicion(A)
show(D)
show(E)
show(F)
︡12ef2da0-e3a3-4ffd-a081-663155247366︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n3 & 0 & 0 \\\\\n0 & -7 & 0 \\\\\n0 & 0 & -3\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n0 & 0 & 0 \\\\\n-3 & 0 & 0 \\\\\n-1 & -1 & 0\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n0 & -1 & -1 \\\\\n0 & 0 & -1 \\\\\n0 & 0 & 0\n\\end{array}\\right)", "display": true}}︡
︠9890e271-5e4e-415a-a677-216e5c282015︠
A == D - E - F
︡b14ce852-5211-481d-b180-7791e4848b35︡{"stdout": "True"}︡
︠10a7a6ab-3a2a-4dea-ab21-f3a246e3b6b4i︠
%html
<p style="font-size: 1.17em;"><a name="jacobi"></a></p>
<h3 style="font-size: 1.17em;"><strong>M&eacute;todo de Jacobi</strong></h3>
<p>Consiste en realizar la descomposici&oacute;n</p>
<p>$$A=M-N=D-(E+F)$$</p>
<p>es decir, $M=D\ $ y $\ N=E+F$.&nbsp;El sistema queda de la forma</p>
<p>$$Ax=b\Longrightarrow Dx=(E+F)x+b\Longrightarrow&nbsp;&nbsp;x=D^{-1} (E+F)x+D^{-1}b$$</p>
<p>$$x_{k+1}=J\ &nbsp;x_k+c \ \ \ \mbox{con}\ \ \ &nbsp;\left\{\begin{array}{l}&nbsp;J=D^{-1}(E+F)\\ c=D^{-1}b \end{array}\right.$$</p>
<p>La matriz $J$ recibe el nombre de<span style="color: #000000;">&nbsp;<strong>matriz de Jacobi</strong><strong>.</strong></span></p>
<p>Una <strong>observaci&oacute;n importante</strong> es que la matriz $D$ (y por tanto $A$) debe tener <strong>todos los elementos de la diagonal no nulos&nbsp;</strong>para garantizar que existe $D^{-1}$. En caso contrario, ser&iacute;a preciso permutar previamente las filas (ecuaciones) del sistema $Ax=b$.</p>
<p>A partir de la expresi&oacute;n matricial anterior $x_{k+1}=D^{-1}(E+F)x_k+b$, podemos expresar el c&aacute;lculo de cada componente del nuevo vector $x^{k+1}$ como combinaci&oacute;n de los del vector $x^k$:</p>
<p>$$x_i^{k+1}=\frac 1{a_{ii}}(b_i-\sum_{j=1}^{i-1}a_{ij}x_j^k-\sum_{j=i+1}^{m}a_{ij}x_j^k),\ \ \ i=1,2,\dots m$$</p>
<p>El&nbsp;<strong>coste computacional</strong>&nbsp;en cada iteraci&oacute;n es es de $m^2$ multiplicaciones y $m(m-1)$ sumas, donde $m$ es el orden de la matriz. &nbsp;Una cualidad destacable del m&eacute;todo de Jacobi es que es el c&aacute;lculo de los elementos $x_i^{k+1}$ puede hacerse mediante <strong>computaci&oacute;n en paralelo</strong>.</p>
<p><strong>Definici&oacute;n</strong></p>
<p>Se dice que una matriz $A$ es&nbsp;<span style="color: #0000ff;"><strong><span style="color: #000000;">diagonal dominante por filas</span></strong></span>&nbsp;o, simplemente, diagonal dominante si verifica</p>
<p>$$|a_{ii}|&gt;\sum_{j\neq i} |a_{ij}|,\ \ i=1,2,\dots m$$</p>
<p><strong>Teorema 3</strong></p>
<p>Si $A$ es una matriz cuadrada y diagonal dominante entonces tiene inversa.</p>
<p><strong>Teorema 4</strong></p>
<p>Si $A$ es una matriz diagonal dominante entonces el m&eacute;todo de Jacobi converge para cualquier valor inicial $x_0$.</p>

︡be6a51ef-550a-420b-901b-5dd121167a97︡{"html": "<p style=\"font-size: 1.17em;\"><a name=\"jacobi\"></a></p>\n<h3 style=\"font-size: 1.17em;\"><strong>M&eacute;todo de Jacobi</strong></h3>\n<p>Consiste en realizar la descomposici&oacute;n</p>\n<p>$$A=M-N=D-(E+F)$$</p>\n<p>es decir, $M=D\\ $ y $\\ N=E+F$.&nbsp;El sistema queda de la forma</p>\n<p>$$Ax=b\\Longrightarrow Dx=(E+F)x+b\\Longrightarrow&nbsp;&nbsp;x=D^{-1} (E+F)x+D^{-1}b$$</p>\n<p>$$x_{k+1}=J\\ &nbsp;x_k+c \\ \\ \\ \\mbox{con}\\ \\ \\ &nbsp;\\left\\{\\begin{array}{l}&nbsp;J=D^{-1}(E+F)\\\\ c=D^{-1}b \\end{array}\\right.$$</p>\n<p>La matriz $J$ recibe el nombre de<span style=\"color: #000000;\">&nbsp;<strong>matriz de Jacobi</strong><strong>.</strong></span></p>\n<p>Una <strong>observaci&oacute;n importante</strong> es que la matriz $D$ (y por tanto $A$) debe tener <strong>todos los elementos de la diagonal no nulos&nbsp;</strong>para garantizar que existe $D^{-1}$. En caso contrario, ser&iacute;a preciso permutar previamente las filas (ecuaciones) del sistema $Ax=b$.</p>\n<p>A partir de la expresi&oacute;n matricial anterior $x_{k+1}=D^{-1}(E+F)x_k+b$, podemos expresar el c&aacute;lculo de cada componente del nuevo vector $x^{k+1}$ como combinaci&oacute;n de los del vector $x^k$:</p>\n<p>$$x_i^{k+1}=\\frac 1{a_{ii}}(b_i-\\sum_{j=1}^{i-1}a_{ij}x_j^k-\\sum_{j=i+1}^{m}a_{ij}x_j^k),\\ \\ \\ i=1,2,\\dots m$$</p>\n<p>El&nbsp;<strong>coste computacional</strong>&nbsp;en cada iteraci&oacute;n es es de $m^2$ multiplicaciones y $m(m-1)$ sumas, donde $m$ es el orden de la matriz. &nbsp;Una cualidad destacable del m&eacute;todo de Jacobi es que es el c&aacute;lculo de los elementos $x_i^{k+1}$ puede hacerse mediante <strong>computaci&oacute;n en paralelo</strong>.</p>\n<p><strong>Definici&oacute;n</strong></p>\n<p>Se dice que una matriz $A$ es&nbsp;<span style=\"color: #0000ff;\"><strong><span style=\"color: #000000;\">diagonal dominante por filas</span></strong></span>&nbsp;o, simplemente, diagonal dominante si verifica</p>\n<p>$$|a_{ii}|&gt;\\sum_{j\\neq i} |a_{ij}|,\\ \\ i=1,2,\\dots m$$</p>\n<p><strong>Teorema 3</strong></p>\n<p>Si $A$ es una matriz cuadrada y diagonal dominante entonces tiene inversa.</p>\n<p><strong>Teorema 4</strong></p>\n<p>Si $A$ es una matriz diagonal dominante entonces el m&eacute;todo de Jacobi converge para cualquier valor inicial $x_0$.</p>"}︡
︠f4a3f9d8-64e0-4887-84ad-f3e537ad070bi︠
%html
<p>La siguiente funci&oacute;n proporciona, en caso de que exista,&nbsp;la matriz de Jacobi $J$ asociada a una matriz $A$&nbsp;</p>
<p style="text-align: center;"><span style="color: #0000ff;">J = matriz_jacobi(A)</span></p>

︡d61b2d05-6da3-4c2a-af75-841041aa4892︡{"html": "<p>La siguiente funci&oacute;n proporciona, en caso de que exista,&nbsp;la matriz de Jacobi $J$ asociada a una matriz $A$&nbsp;</p>\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\">J = matriz_jacobi(A)</span></p>"}︡
︠9a7a13e4-14d5-4216-8b98-a226e98db0d2a︠
%auto
def matriz_jacobi(A):
    k = 1
    m = A.nrows()
    n = A.ncols()
    if m != n:
        k = 0
        print 'La matriz no es cuadrada.'
    else:
        for i in range(m):
            k = k*A[i, i]
        if k == 0:
            print 'Es necesario permutar las filas de la matriz.'
        else:
            D = diagonal_matrix([A[j, j] for j in range(m)])
            D1 = diagonal_matrix([1/A[j, j] for j in range(m)])
            EF = -A + D
            J = D1*(EF)
            return(J)
︡9a2dce59-1507-475b-950b-19f0c3247821︡︡
︠700656a8-a521-47be-aca8-e7eb02d6b78fi︠
%html
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<h3 style="font-size: 1.17em;"><span style="color: #0000ff;">Ejemplo 4<br /></span></h3>
<p>Calculamos la matriz de Jacobi asociada a una matriz de orden 3:</p>
</div>

︡9043b5d4-d427-44d6-b242-e13ebfae6a58︡{"html": "<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\n<h3 style=\"font-size: 1.17em;\"><span style=\"color: #0000ff;\">Ejemplo 4<br /></span></h3>\n<p>Calculamos la matriz de Jacobi asociada a una matriz de orden 3:</p>\n</div>"}︡
︠460fe5da-0511-495b-becf-540aee21e34b︠
A = matrix(QQ, [[3, 1, 1], [3, -7, 1], [1, 1, -3]])
show(A)

J = matriz_jacobi(A)
show(J)
︡beee9a88-5d9e-4753-8207-4a17dc6f7fd4︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n3 & 1 & 1 \\\\\n3 & -7 & 1 \\\\\n1 & 1 & -3\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n0 & -\\frac{1}{3} & -\\frac{1}{3} \\\\\n\\frac{3}{7} & 0 & \\frac{1}{7} \\\\\n\\frac{1}{3} & \\frac{1}{3} & 0\n\\end{array}\\right)", "display": true}}︡
︠ef9f3054-dabb-49fc-903a-aaaad1a09d42i︠
%html
<p>La siguiente funci&oacute;n intenta resolver un sistema $Ax=b$ utilizando el m&eacute;todo iterativo de Jacobi; su sintaxis es &nbsp;&nbsp;</p>
<p style="text-align: center;"><span style="color: #0000ff;">metodo_jacobi(A, b, tol, maxiter, veriter, solosiconverge)</span></p>
<p>donde <span style="color: #0000ff;">tol </span>es un par&aacute;metro opcional que indica el nivel de tolerancia para detener el proceso iterativo; &eacute;ste se detiene si la norma eucl&iacute;dea $\parallel Ax-b\parallel\leq tol$. Su valor por defecto es tol=$10^{-14}$. Por otra parte, <span style="color: #0000ff;">maxiter </span>es otro par&aacute;metro opcional que fija el n&uacute;mero m&aacute;ximo de iteraciones a realizar. Por defecto maxiter=1000. Adicionalmente, <span style="color: #0000ff;">veriter</span> es otro par&aacute;metro opcional que indica si se quieren visualizar las sucesivas aproximaciones (True) o no (False). Por defecto se usa el valor False. Por &uacute;ltimo, <span style="color: #0000ff;">solosiconverge</span> es otro par&aacute;metro opcional que indica si se quiere restringir la aplicaci&oacute;n del m&eacute;todo cuando &eacute;ste tiene garantizada la convergencia con independencia del vector inicial (True, valor por defecto), o si por el contrario se permite su aplicaci&oacute;n (False) aun cuando la convergencia no est&eacute; garantizada (porque el radio espectral de la matriz de iteraci&oacute;n sea mayor que 1).</p>

︡bf93662d-1253-45b0-96f2-2487554e4e86︡{"html": "<p>La siguiente funci&oacute;n intenta resolver un sistema $Ax=b$ utilizando el m&eacute;todo iterativo de Jacobi; su sintaxis es &nbsp;&nbsp;</p>\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\">metodo_jacobi(A, b, tol, maxiter, veriter, solosiconverge)</span></p>\n<p>donde <span style=\"color: #0000ff;\">tol </span>es un par&aacute;metro opcional que indica el nivel de tolerancia para detener el proceso iterativo; &eacute;ste se detiene si la norma eucl&iacute;dea $\\parallel Ax-b\\parallel\\leq tol$. Su valor por defecto es tol=$10^{-14}$. Por otra parte, <span style=\"color: #0000ff;\">maxiter </span>es otro par&aacute;metro opcional que fija el n&uacute;mero m&aacute;ximo de iteraciones a realizar. Por defecto maxiter=1000. Adicionalmente, <span style=\"color: #0000ff;\">veriter</span> es otro par&aacute;metro opcional que indica si se quieren visualizar las sucesivas aproximaciones (True) o no (False). Por defecto se usa el valor False. Por &uacute;ltimo, <span style=\"color: #0000ff;\">solosiconverge</span> es otro par&aacute;metro opcional que indica si se quiere restringir la aplicaci&oacute;n del m&eacute;todo cuando &eacute;ste tiene garantizada la convergencia con independencia del vector inicial (True, valor por defecto), o si por el contrario se permite su aplicaci&oacute;n (False) aun cuando la convergencia no est&eacute; garantizada (porque el radio espectral de la matriz de iteraci&oacute;n sea mayor que 1).</p>"}︡
︠552031d5-5e6e-4c5a-b49c-9f1c39443c09a︠
%auto
def metodo_jacobi(A, b, tol = 10^-14, maxiter=1000, veriter = False, solosiconverge = True):
    k = 1
    m = A.nrows()
    n = A.ncols()
    if m != n:
        k = 0
        print 'La matriz no es cuadrada.'
    else:
        for i in range(m):
            k = k*A[i, i]
        if k == 0:
            print 'Es necesario permutar las ecuaciones (no puede haber ceros en la diagonal).'
        else:
            k = 1; n = 0
            J = matriz_jacobi(A)
            R = radio_espectral(J).n()
            if solosiconverge and R >= 1:
                k = 0
                print 'El método no es convergente:'
                print '   el radio espectral de la matriz de Jacobi es ', R
            else:
                x0 = vector(A.base_ring(),[0 for h in range(m)])
                x1 = copy(x0)
                while (A*x0 - b).norm() > tol and n < maxiter:
                    n = n + 1
                    for i in range(m):
                        si = 0; ss = 0
                        for t in range(i):
                            si = si + A[i, t]*x0[t]
                        for t in range(i + 1, m):
                            ss = ss + A[i, t]*x0[t]
                        x1[i] = 1/A[i, i]*(b[i] - si -ss)
                    x0 = copy(x1)
                    if veriter:
                        print 'iter.',n,'=',x0
    if k == 1:
        if n < maxiter:
            print 'Nº. de iteraciones realizadas:',n
        else:
            print 'Abortado en la iteracion:', maxiter
        print 'El radio espectral de la matriz de Jacobi es:', R
        Error = (A*x0 - b).norm().n()
        print 'Error de la aproximación:', Error
        print 'Solución aproximada:'
        return(x0)
︡0e3f77de-777a-499e-8d14-45ba57b0853f︡︡
︠93f8c082-d13e-4826-b680-bd728d626568i︠
%html
<h3><span style="color: #0000ff;">Ejemplo 5<br /></span></h3>
<p>Dado el sistema $Ax=b$, comprobar previamente que el m&eacute;todo de Jacobi es convergente y resolverlo despu&eacute;s:</p>
<p>$$A=\left(\begin{array}{cc} 2 &amp; 1\\ 3 &amp; 4\end{array}\right),\ \ b=\left(\begin{array}{c} 3\\ 7\end{array}\right)$$</p>

︡7ffc43af-eda9-4fb0-aa5b-1a4099583a19︡{"html": "<h3><span style=\"color: #0000ff;\">Ejemplo 5<br /></span></h3>\n<p>Dado el sistema $Ax=b$, comprobar previamente que el m&eacute;todo de Jacobi es convergente y resolverlo despu&eacute;s:</p>\n<p>$$A=\\left(\\begin{array}{cc} 2 &amp; 1\\\\ 3 &amp; 4\\end{array}\\right),\\ \\ b=\\left(\\begin{array}{c} 3\\\\ 7\\end{array}\\right)$$</p>"}︡
︠c3b02253-3bee-415e-b932-62bf9274d654︠
A = matrix(RDF, [[2, 1], [3, 4]])
b = vector(RDF, [3, 7])
J = matriz_jacobi(A)
show(J)
︡6d10ebdb-5b74-4c69-8318-3f8a9ae03b4b︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rr}\n0.0 & -0.5 \\\\\n-0.75 & 0.0\n\\end{array}\\right)", "display": true}}︡
︠ca59754c-4686-4e5e-bfc7-6f1d777cca13︠
radio_espectral(J)
︡16bfd288-6322-49d1-a71f-8e58e9359666︡{"stdout": "0.612372435695794"}︡
︠52ecde3c-bd00-4008-9096-ee9078a88b9ci︠
%html
<p>Como el radio espectral $\rho(J)&lt;1$ el m&eacute;todo es convergente. Otra forma de comprobarlo es por el simple hecho de que $A$ es una matriz diagonal dominante. Ahora, aplicamos diferentes opciones del m&eacute;todo iterativo de Jacobi:</p>

︡6afc086c-4148-497f-8535-b957f7b10171︡{"html": "<p>Como el radio espectral $\\rho(J)&lt;1$ el m&eacute;todo es convergente. Otra forma de comprobarlo es por el simple hecho de que $A$ es una matriz diagonal dominante. Ahora, aplicamos diferentes opciones del m&eacute;todo iterativo de Jacobi:</p>"}︡
︠332f243f-2758-4143-b388-1a00c9583d9f︠
metodo_jacobi(A, b, 10^-5, maxiter = 1000, veriter = True, solosiconverge = True)
︡38a3ae53-2e24-44fa-90c9-586514ba9487︡{"stdout": "iter. 1 = (1.5, 1.75)\niter. 2 = (0.625, 0.625)\niter. 3 = (1.1875, 1.28125)\niter. 4 = (0.859375, 0.859375)\niter. 5 = (1.0703125, 1.10546875)\niter. 6 = (0.947265625, 0.947265625)\niter. 7 = (1.0263671875, 1.03955078125)\niter. 8 = (0.980224609375, 0.980224609375)\niter. 9 = (1.0098876953125, 1.01483154296875)\niter. 10 = (0.992584228515625, 0.992584228515625)\niter. 11 = (1.0037078857421875, 1.0055618286132812)\niter. 12 = (0.9972190856933594, 0.9972190856933594)\niter. 13 = (1.0013904571533203, 1.0020856857299805)\niter. 14 = (0.9989571571350098, 0.9989571571350098)\niter. 15 = (1.0005214214324951, 1.0007821321487427)\niter. 16 = (0.9996089339256287, 0.9996089339256287)\niter. 17 = (1.0001955330371857, 1.0002932995557785)\niter. 18 = (0.9998533502221107, 0.9998533502221107)\niter. 19 = (1.0000733248889446, 1.000109987333417)\niter. 20 = (0.9999450063332915, 0.9999450063332915)\niter. 21 = (1.0000274968333542, 1.0000412452500314)\niter. 22 = (0.9999793773749843, 0.9999793773749843)\niter. 23 = (1.0000103113125078, 1.0000154669687618)\niter. 24 = (0.9999922665156191, 0.9999922665156191)\niter. 25 = (1.0000038667421904, 1.0000058001132857)\niter. 26 = (0.9999970999433572, 0.9999970999433572)\niter. 27 = (1.0000014500283214, 1.0000021750424821)\niter. 28 = (0.9999989124787589, 0.9999989124787589)\nN\u00ba. de iteraciones realizadas: 28\nEl radio espectral de la matriz de Jacobi es: 0.612372435695794\nError de la aproximaci\u00f3n: 8.28231501972841e-6\nSoluci\u00f3n aproximada:\n(0.9999989124787589, 0.9999989124787589)"}︡
︠2d3a5b62-4322-4860-8f64-2e5016964203i︠
%html
<p>Ahora, con un nivel de tolerancia de $10^{-3}$</p>

︡8225042e-0ecf-41d5-b43c-e5974a3133d9︡{"html": "<p>Ahora, con un nivel de tolerancia de $10^{-3}$</p>"}︡
︠a23374d8-fa8e-4b24-9e2f-39a865e63975︠
metodo_jacobi(A, b, tol = 10^-3)
︡9a3b8855-07da-47c2-b900-79dc895e1e38︡{"stdout": "N\u00ba. de iteraciones realizadas: 19\nEl radio espectral de la matriz de Jacobi es: 0.612372435695794\nError de la aproximaci\u00f3n: 0.000708069412796277\nSoluci\u00f3n aproximada:\n(1.0000733248889446, 1.000109987333417)"}︡
︠603fec3c-571f-4273-a944-fbd09b7e87b0i︠
%html
<p>Ahora, hasta alcanzar la soluci&oacute;n exacta. Esto no siempre es posible, pues depende de los errores computacionales; en cualquier caso, el n&uacute;mero de iteraciones m&aacute;ximo por defecto es de 1000 iteraciones, lo que evita que el algoritmo entre en un bucle infinito.</p>

︡8c64efff-d3e8-41e6-bc61-dba77a258e6c︡{"html": "<p>Ahora, hasta alcanzar la soluci&oacute;n exacta. Esto no siempre es posible, pues depende de los errores computacionales; en cualquier caso, el n&uacute;mero de iteraciones m&aacute;ximo por defecto es de 1000 iteraciones, lo que evita que el algoritmo entre en un bucle infinito.</p>"}︡
︠246265a8-46e4-4d3b-9cf2-5975a5ad6022︠
metodo_jacobi(A, b, tol = 0)
︡87a59822-d5e0-4205-b902-59160f25e38d︡{"stdout": "N\u00ba. de iteraciones realizadas: 76\nEl radio espectral de la matriz de Jacobi es: 0.612372435695794\nError de la aproximaci\u00f3n: 0.000000000000000\nSoluci\u00f3n aproximada:\n(0.9999999999999999, 1.0)"}︡
︠ea96b294-7052-4a5a-967e-3b2ee3783484i︠
%html
<p>Ahora, forzamos a realizar exactamente 30 iteraciones:</p>

︡2edbdb5d-bc36-495c-b1e3-0c0f94906f27︡{"html": "<p>Ahora, forzamos a realizar exactamente 30 iteraciones:</p>"}︡
︠f54908df-2e87-4a74-b917-68ddeb7be792︠
metodo_jacobi(A, b, tol = 0, maxiter = 30)
︡0487347b-fa66-49ac-ba44-22a6b8635154︡{"stdout": "Abortado en la iteracion: 30\nEl radio espectral de la matriz de Jacobi es: 0.612372435695794\nError de la aproximaci\u00f3n: 3.10586813239815e-6\nSoluci\u00f3n aproximada:\n(0.9999995921795346, 0.9999995921795346)"}︡
︠5dfa50ed-e554-4a35-b1ec-63d32057efd4i︠
%html
<p>Ahora, visualizamos las 10 primeras iteraciones:</p>

︡fad4bec0-1252-473f-9ad4-1cbd8148b46e︡{"html": "<p>Ahora, visualizamos las 10 primeras iteraciones:</p>"}︡
︠46f751a4-f2cf-4a3e-9252-50092c43e8b9︠
metodo_jacobi(A, b, tol = 0, maxiter = 10, veriter = True)
︡e985cdcb-9c78-4dba-9762-9c4e0ace9478︡{"stdout": "iter. 1 = (1.5, 1.75)\niter. 2 = (0.625, 0.625)\niter. 3 = (1.1875, 1.28125)\niter. 4 = (0.859375, 0.859375)\niter. 5 = (1.0703125, 1.10546875)\niter. 6 = (0.947265625, 0.947265625)\niter. 7 = (1.0263671875, 1.03955078125)\niter. 8 = (0.980224609375, 0.980224609375)\niter. 9 = (1.0098876953125, 1.01483154296875)\niter. 10 = (0.992584228515625, 0.992584228515625)\nAbortado en la iteracion: 10\nEl radio espectral de la matriz de Jacobi es: 0.612372435695794\nError de la aproximaci\u00f3n: 0.0564768330299356\nSoluci\u00f3n aproximada:\n(0.992584228515625, 0.992584228515625)"}︡
︠e9f53b0d-568f-49be-bc1b-117589d4aaf7i︠
%html
<p style="font-size: 1.17em;"><a name="seidel"></a></p>
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<h3 style="font-size: 1.17em;"><strong>M&eacute;todo de Gauss-Seidel</strong></h3>
<p>Si partimos de la expresi&oacute;n del m&eacute;todo de Jacobi</p>
<p>$$x_i^{k+1}=\frac 1{a_{ii}}(b_i-\sum_{j=1}^{i-1}a_{ij}x_j^k-\sum_{j=i+1}^{m}a_{ij}x_j^k),\ \ \ i=1,2,\dots m$$</p>
<p>podemos mejorar la convergencia utilizando las componentes ya calculadas $x_1^{k+1},\dots x_{i-1}^{k+1}$ en el primer sumatorio, en lugar de las "antiguas" &nbsp;$x_1^{k},\dots x_{i-1}^{k}$, resultando</p>
<p>$$x_i^{k+1}=\frac 1{a_{ii}}(b_i-\sum_{j=1}^{i-1}a_{ij}x_j^{k+1}-\sum_{j=i+1}^{m}a_{ij}x_j^k),\ \ \ i=1,2,\dots m$$</p>
<p>Desde el punto de vista matricial, el m&eacute;todo es el resultado de realizar la descomposici&oacute;n</p>
<p>$$A=M-N=(D-E)-F$$</p>
<p>El sistema nos queda</p>
<p>$$Ax=b\Longrightarrow &nbsp;(D-E)x=Fx+b\Longrightarrow&nbsp;&nbsp;x=(D-E)^{-1}Fx+(D-E)^{-1}b$$</p>
<p>$$x_{n+1}=L_1\ x_n+c\ \ \mbox{con}\ \ \left\{\begin{array}{l}L_1=(D-E)^{-1}F\\ c=(D-E)^{-1}b \end{array}\right.$$</p>
<p>La matriz $L_1$ recibe el nombre de&nbsp;<span style="color: #0000ff;"><strong><span style="color: #000000;">matriz de Gauss-Seidel</span></strong></span><strong><span style="color: #000000;">.</span></strong></p>
<p>Desde el punto de vista computacional, el m&eacute;todo de Gauss-Seidel tiene el mismo coste computacional en cada iteraci&oacute;n que el m&eacute;todo de Jacobi. Ahora se pierde la posibilidad de computaci&oacute;n paralela pero a cambio, en general, se mejora la velocidad de convergencia.</p>
<p><strong>Teorema 7</strong></p>
<p>Si $A$ es una matriz diagonal dominante entonces el m&eacute;todo de Gauss-Seidel converge para cualquier valor inicial $x_0$.</p>
<p><strong>Teorema 8</strong></p>
<p>Si $A$ es una matriz sim&eacute;trica y definida positiva entonces el m&eacute;todo de Gauss-Seidel converge para cualquier valor inicial $x_0$.</p>
</div>

︡5c62a8c9-bb30-4268-b2bb-10cedd9d4ec6︡{"html": "<p style=\"font-size: 1.17em;\"><a name=\"seidel\"></a></p>\n<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\n<h3 style=\"font-size: 1.17em;\"><strong>M&eacute;todo de Gauss-Seidel</strong></h3>\n<p>Si partimos de la expresi&oacute;n del m&eacute;todo de Jacobi</p>\n<p>$$x_i^{k+1}=\\frac 1{a_{ii}}(b_i-\\sum_{j=1}^{i-1}a_{ij}x_j^k-\\sum_{j=i+1}^{m}a_{ij}x_j^k),\\ \\ \\ i=1,2,\\dots m$$</p>\n<p>podemos mejorar la convergencia utilizando las componentes ya calculadas $x_1^{k+1},\\dots x_{i-1}^{k+1}$ en el primer sumatorio, en lugar de las \"antiguas\" &nbsp;$x_1^{k},\\dots x_{i-1}^{k}$, resultando</p>\n<p>$$x_i^{k+1}=\\frac 1{a_{ii}}(b_i-\\sum_{j=1}^{i-1}a_{ij}x_j^{k+1}-\\sum_{j=i+1}^{m}a_{ij}x_j^k),\\ \\ \\ i=1,2,\\dots m$$</p>\n<p>Desde el punto de vista matricial, el m&eacute;todo es el resultado de realizar la descomposici&oacute;n</p>\n<p>$$A=M-N=(D-E)-F$$</p>\n<p>El sistema nos queda</p>\n<p>$$Ax=b\\Longrightarrow &nbsp;(D-E)x=Fx+b\\Longrightarrow&nbsp;&nbsp;x=(D-E)^{-1}Fx+(D-E)^{-1}b$$</p>\n<p>$$x_{n+1}=L_1\\ x_n+c\\ \\ \\mbox{con}\\ \\ \\left\\{\\begin{array}{l}L_1=(D-E)^{-1}F\\\\ c=(D-E)^{-1}b \\end{array}\\right.$$</p>\n<p>La matriz $L_1$ recibe el nombre de&nbsp;<span style=\"color: #0000ff;\"><strong><span style=\"color: #000000;\">matriz de Gauss-Seidel</span></strong></span><strong><span style=\"color: #000000;\">.</span></strong></p>\n<p>Desde el punto de vista computacional, el m&eacute;todo de Gauss-Seidel tiene el mismo coste computacional en cada iteraci&oacute;n que el m&eacute;todo de Jacobi. Ahora se pierde la posibilidad de computaci&oacute;n paralela pero a cambio, en general, se mejora la velocidad de convergencia.</p>\n<p><strong>Teorema 7</strong></p>\n<p>Si $A$ es una matriz diagonal dominante entonces el m&eacute;todo de Gauss-Seidel converge para cualquier valor inicial $x_0$.</p>\n<p><strong>Teorema 8</strong></p>\n<p>Si $A$ es una matriz sim&eacute;trica y definida positiva entonces el m&eacute;todo de Gauss-Seidel converge para cualquier valor inicial $x_0$.</p>\n</div>"}︡
︠3d25d8ea-5140-426c-a58f-7c19e5335e2ei︠
%html
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<p>La siguiente funci&oacute;n proporciona, en caso de que exista,&nbsp;la matriz de Gauss-Seidel $L_1$ asociada a una matriz $A$&nbsp;</p>
<p style="text-align: center;"><span style="color: #0000ff;">$L_1$ = matriz_gauss_seidel($A$)</span></p>
</div>

︡5d289f3c-467a-43f2-935b-ee03057cce24︡{"html": "<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\n<p>La siguiente funci&oacute;n proporciona, en caso de que exista,&nbsp;la matriz de Gauss-Seidel $L_1$ asociada a una matriz $A$&nbsp;</p>\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\">$L_1$ = matriz_gauss_seidel($A$)</span></p>\n</div>"}︡
︠0d8b64c2-115b-4744-a07f-d1d7e28c4392a︠
%auto
def matriz_gauss_seidel(A):
    k = 1
    m = A.nrows()
    n = A.ncols()
    if m != n:
        k = 0
        print 'La matriz no es cuadrada.'
    else:
        for i in range(m):
            k = k*A[i, i]
        if k == 0:
            print 'Es necesario permutar las filas de la matriz.'
        else:
            DE1 = tril(A, 0).inverse()
            F = -triu(A, -1)
            return(DE1*F)
︡117224fc-c16c-4665-b309-e755c77cabb3︡︡
︠337645af-ca0e-4c6f-9907-68f3302b64e5i︠
%html
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;">
<h3 style="font-size: 1.17em;"><span style="color: #0000ff;">Ejemplo 6<br /></span></h3>
<p>Calculamos la matriz de Gauss-Seidel asociada a una matriz de orden 3:</p>
</div>
</div>

︡d2b28ad4-e4f7-4ca5-a515-02641e15f580︡{"html": "<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\n<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;\">\n<h3 style=\"font-size: 1.17em;\"><span style=\"color: #0000ff;\">Ejemplo 6<br /></span></h3>\n<p>Calculamos la matriz de Gauss-Seidel asociada a una matriz de orden 3:</p>\n</div>\n</div>"}︡
︠35e5ba66-60ec-477f-a211-dcbf980344a2︠
A = matrix(QQ, [[3, 1, 1], [3, -7, 1], [1, 1, -3]])
show(A)

L = matriz_gauss_seidel(A)
show (L)
︡09073e5e-8083-4755-88d6-6099399deb24︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n3 & 1 & 1 \\\\\n3 & -7 & 1 \\\\\n1 & 1 & -3\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n0 & -\\frac{1}{3} & -\\frac{1}{3} \\\\\n0 & -\\frac{1}{7} & 0 \\\\\n0 & -\\frac{10}{63} & -\\frac{1}{9}\n\\end{array}\\right)", "display": true}}︡
︠ffa08dfa-ec67-4c58-b258-e97f136983c9i︠
%html
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;">
<p>La siguiente funci&oacute;n intenta resolver un sistema $Ax=b$ utilizando el m&eacute;todo iterativo de Gauss-Seidel; su sintaxis es &nbsp;&nbsp;</p>
<p style="text-align: center;"><span style="color: #0000ff;">metodo_gauss_seidel(A, b, tol, maxiter, veriter, solosiconverge)</span></p>
<p>y contiene los mismos par&aacute;metros y valores por defecto que &nbsp;metodo_jacobi( )</p>
</div>
</div>

︡9cc6b15d-f258-4dd6-b396-9c131c40a848︡{"html": "<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\n<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;\">\n<p>La siguiente funci&oacute;n intenta resolver un sistema $Ax=b$ utilizando el m&eacute;todo iterativo de Gauss-Seidel; su sintaxis es &nbsp;&nbsp;</p>\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\">metodo_gauss_seidel(A, b, tol, maxiter, veriter, solosiconverge)</span></p>\n<p>y contiene los mismos par&aacute;metros y valores por defecto que &nbsp;metodo_jacobi( )</p>\n</div>\n</div>"}︡
︠04add083-9181-4528-ac71-9cd4af7f1e7da︠
%auto
def metodo_gauss_seidel(A, b, tol = 10^-14, maxiter = 1000, veriter = False, solosiconverge = True):
    k = 1
    m = A.nrows()
    n = A.ncols()
    if m != n:
        k = 0
        print 'La matriz no es cuadrada.'
    else:
        for i in range(m):
            k = k*A[i, i]
        if k == 0:
            print 'Es necesario permutar las ecuaciones (no puede haber ceros en la diagonal).'
        else:
            k = 1; n = 0
            L = matriz_gauss_seidel(A)
            R = radio_espectral(L).n()
            if solosiconverge and R >= 1:
                k = 0
                print 'El método no es convergente:'
                print '   el radio espectral de la matriz de Gauss-Seidel es ',R
            else:
                x0 = vector(A.base_ring(),[0 for h in range(m)])
                x1 = copy(x0)
                while (A*x0 - b).norm() > tol and n < maxiter:
                    n = n + 1
                    for i in range(m):
                        si = 0; ss = 0
                        for t in range(i):
                            si = si + A[i, t]*x1[t]
                        for t in range(i + 1, m):
                            ss = ss + A[i, t]*x0[t]
                        x1[i] = 1/A[i, i]*(b[i] - si - ss)
                    x0 = copy(x1)
                    if veriter:
                        print 'iter.',n,'=',x0
    if k == 1:
        if n < maxiter:
            print 'Nº. de iteraciones realizadas:',n
        else:
            print 'Abortado en la iteracion:',maxiter
        print 'El radio espectral de la matriz de Gauss-Seidel es:', R
        Error = (A*x0 - b).norm().n()
        print 'Error de la aproximación:', Error
        print 'Solución aproximada:'
        return(x0)
︡45157cd5-07f0-4bb4-80c9-1680d79c1a79︡︡
︠58d0ed7a-fb19-4b86-b221-6642a674ff63i︠
%html
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;">
<h3 style="font-size: 1.17em;"><span style="color: #0000ff;">Ejemplo 7<br /></span></h3>
<p>Resolvemos el sistema $Ax=b$ mediante el m&eacute;todo iterativo de Gauss-Seidel, para&nbsp;</p>
<p>$$A=\left(\begin{array}{cc} 2 &amp; 1\\ 3 &amp; 4\end{array}\right),\ \ b=\left(\begin{array}{c} 3\\ 7\end{array}\right)$$</p>
</div>
</div>

︡16bf4d24-db73-4eac-8cdd-5f239fe35f5a︡{"html": "<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\n<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;\">\n<h3 style=\"font-size: 1.17em;\"><span style=\"color: #0000ff;\">Ejemplo 7<br /></span></h3>\n<p>Resolvemos el sistema $Ax=b$ mediante el m&eacute;todo iterativo de Gauss-Seidel, para&nbsp;</p>\n<p>$$A=\\left(\\begin{array}{cc} 2 &amp; 1\\\\ 3 &amp; 4\\end{array}\\right),\\ \\ b=\\left(\\begin{array}{c} 3\\\\ 7\\end{array}\\right)$$</p>\n</div>\n</div>"}︡
︠f905a0a4-64ef-414c-a50b-c24bd7b1145a︠
A = matrix(RDF, [[2, 1], [3, 4]])
b=vector(RDF, [3, 7])
metodo_gauss_seidel(A, b)
︡a394df21-d7df-4eac-a3a4-f6c9a1c4c600︡{"stdout": "N\u00ba. de iteraciones realizadas: 34\nEl radio espectral de la matriz de Gauss-Seidel es: 0.375000000000000\nError de la aproximaci\u00f3n: 5.32907051820075e-15\nSoluci\u00f3n aproximada:\n(1.0000000000000044, 0.9999999999999967)"}︡
︠d775c2b1-dafc-4032-bd3b-54d7de385577︠
metodo_gauss_seidel(A, b, tol = 0)
︡c64945fb-0dde-4b49-b908-317cf32dbdb0︡{"stdout": "N\u00ba. de iteraciones realizadas: 37\nEl radio espectral de la matriz de Gauss-Seidel es: 0.375000000000000\nError de la aproximaci\u00f3n: 0.000000000000000\nSoluci\u00f3n aproximada:\n(1.0000000000000002, 0.9999999999999998)"}︡
︠b2075e5e-4a76-41e3-abc4-b2b4ec492f7b︠
metodo_gauss_seidel(A, b, tol = 0, maxiter = 5, veriter = True)
︡f68de985-b722-4c2f-b1f8-10960424ff04︡{"stdout": "iter. 1 = (1.5, 0.625)\niter. 2 = (1.1875, 0.859375)\niter. 3 = (1.0703125, 0.947265625)\niter. 4 = (1.0263671875, 0.980224609375)\niter. 5 = (1.0098876953125, 0.992584228515625)\nAbortado en la iteracion: 5\nEl radio espectral de la matriz de Gauss-Seidel es: 0.375000000000000\nError de la aproximaci\u00f3n: 0.0123596191406250\nSoluci\u00f3n aproximada:\n(1.0098876953125, 0.992584228515625)"}︡
︠d14f9818-6f1c-40b4-9ba4-762e538dbfbci︠
%html
<p style="font-size: 1.17em;"><a name="sor"></a></p>
<h3 style="font-size: 1.17em;"><strong>M&eacute;todo de Relajaci&oacute;n SOR</strong></h3>
<p>Si partimos de la expresi&oacute;n del m&eacute;todo de Gauss-Seidel</p>
<p>$$x_i^{k+1}=\frac 1{a_{ii}}(b_i-\sum_{j=1}^{i-1}a_{ij}x_j^{k+1}-\sum_{j=i+1}^{m}a_{ij}x_j^k),\ \ \ i=1,2,\dots m$$</p>
<p>podemos tomar como valor aproximado cierta ponderaci&oacute;n entre $x^{k+1}$ y $x^k$. Para ello, sea $\omega\neq0$ y tomamos nuevo valor</p>
<p>$$\omega\ x^{k+1}+(1-\omega) x^{k}$$</p>
<p>El resultado es el siguiente m&eacute;todo iterativo conocido como <span style="color: #0000ff;"><strong><span style="color: #000000;">m&eacute;todo de Relajaci&oacute;n SOR</span></strong></span> (del ingl&eacute;s sucessive overrelaxation, es decir, sobre-relajaci&oacute;n sucesiva):</p>
<p>$$x_i^{k+1}=\frac {\omega}{a_{ii}}(b_i-\sum_{j=1}^{i-1}a_{ij}x_j^{k+1}-\sum_{j=i+1}^{m}a_{ij}x_j^k)+(1-\omega)x_i^k,\ \ \ i=1,2,\dots m$$</p>
<p>Desde el punto de vista matricial, este m&eacute;todo realiza la descomposici&oacute;n</p>
<p>$$ A=\frac{1}{\omega}D-\frac{1-\omega}{\omega}D-E-F=\frac{1}{\omega}(D-\omega E)-\left(\frac{1-\omega}{\omega}D+F\right)=M-N$$</p>
<p>El sistema se transforma entonces en</p>
<p>$$\frac{1}{\omega}(D-\omega E)\ x=\left(\frac{1-\omega}{\omega}D+F\right)x+b\Longrightarrow &nbsp;$$</p>
<p>$$(D-\omega E)\ x=\bigg((1-\omega)D+\omega F\bigg)\ x+\omega b\Longrightarrow&nbsp;&nbsp;$$</p>
<p>$$x=(D-\omega E)^{-1}\bigg((1-\omega)D+\omega F\bigg)\ x+\omega(D-\omega E)^{-1}b$$</p>
<p>$$x_{k+1}=L_\omega\ x_k+c$$</p>
<p>$$\left\{\begin{array}{l}L_\omega=(D-\omega E)^{-1}\Big((1-\omega)D+\omega F\Big)\\ c=\omega(D-\omega E)^{-1}b\end{array}\right.$$</p>
<p>La matriz $L_\omega$ recibe el nombre de&nbsp;<span style="color: #0000ff;"><strong><span style="color: #000000;">matriz de relajaci&oacute;n</span></strong></span><strong><span style="color: #000000;">.</span></strong></p>
<p>Si $\omega=1$ la matriz se reduce a $L_1=(D-E)^{-1}F$, es decir,&nbsp;se trata del m&eacute;todo de Gauss-Seidel.</p>
<p>Si $\omega&gt;1$ se dice que se trata de un m&eacute;todo de&nbsp;<span style="color: #0000ff;"><strong><span style="color: #000000;">sobre-relajaci&oacute;n</span></strong></span><span style="color: #000000;"><strong>. </strong>Suele emplearse para incrementar la velocidad de convergencia del m&eacute;todo de Gauss-Seidel.</span></p>
<p>Si $\omega&lt;1$ se dice que se trata de un m&eacute;todo de&nbsp;<span style="color: #0000ff;"><strong><span style="color: #000000;">sub-relajaci&oacute;n</span></strong></span><span style="color: #000000;"><strong>. </strong>Suele emplearse cuando el m&eacute;todo de Gauss-Seidel no converge.</span></p>
<h4 style="font-size: 1em;">Teorema 9</h4>
<p><span style="font-weight: normal;"><span style="font-size: medium;">Una condici&oacute;n necesaria para que converja el m&eacute;todo de relajaci&oacute;n es que $\omega\in(0,2)$.</span></span></p>
<h4 style="font-size: 1em;">Teorema 10</h4>
<p><span style="font-weight: normal;"><span style="font-size: medium;">Si $A$ es diagonal dominante, el m&eacute;todo de relajaci&oacute;n es&nbsp;convergente cualquiera que sea $\omega\in(0,1]$.</span></span></p>
<h4 style="font-size: 1em;">Teorema 11</h4>
<p><span style="font-size: medium;">Si $A$ es sim&eacute;trica y definida positiva, el m&eacute;todo de&nbsp;relajaci&oacute;n converge si, y s&oacute;lo si, $\omega\in(0,2)$</span></p>

︡bc208c58-833d-4540-b464-40ded4343be6︡{"html": "<p style=\"font-size: 1.17em;\"><a name=\"sor\"></a></p>\n<h3 style=\"font-size: 1.17em;\"><strong>M&eacute;todo de Relajaci&oacute;n SOR</strong></h3>\n<p>Si partimos de la expresi&oacute;n del m&eacute;todo de Gauss-Seidel</p>\n<p>$$x_i^{k+1}=\\frac 1{a_{ii}}(b_i-\\sum_{j=1}^{i-1}a_{ij}x_j^{k+1}-\\sum_{j=i+1}^{m}a_{ij}x_j^k),\\ \\ \\ i=1,2,\\dots m$$</p>\n<p>podemos tomar como valor aproximado cierta ponderaci&oacute;n entre $x^{k+1}$ y $x^k$. Para ello, sea $\\omega\\neq0$ y tomamos nuevo valor</p>\n<p>$$\\omega\\ x^{k+1}+(1-\\omega) x^{k}$$</p>\n<p>El resultado es el siguiente m&eacute;todo iterativo conocido como <span style=\"color: #0000ff;\"><strong><span style=\"color: #000000;\">m&eacute;todo de Relajaci&oacute;n SOR</span></strong></span> (del ingl&eacute;s sucessive overrelaxation, es decir, sobre-relajaci&oacute;n sucesiva):</p>\n<p>$$x_i^{k+1}=\\frac {\\omega}{a_{ii}}(b_i-\\sum_{j=1}^{i-1}a_{ij}x_j^{k+1}-\\sum_{j=i+1}^{m}a_{ij}x_j^k)+(1-\\omega)x_i^k,\\ \\ \\ i=1,2,\\dots m$$</p>\n<p>Desde el punto de vista matricial, este m&eacute;todo realiza la descomposici&oacute;n</p>\n<p>$$ A=\\frac{1}{\\omega}D-\\frac{1-\\omega}{\\omega}D-E-F=\\frac{1}{\\omega}(D-\\omega E)-\\left(\\frac{1-\\omega}{\\omega}D+F\\right)=M-N$$</p>\n<p>El sistema se transforma entonces en</p>\n<p>$$\\frac{1}{\\omega}(D-\\omega E)\\ x=\\left(\\frac{1-\\omega}{\\omega}D+F\\right)x+b\\Longrightarrow &nbsp;$$</p>\n<p>$$(D-\\omega E)\\ x=\\bigg((1-\\omega)D+\\omega F\\bigg)\\ x+\\omega b\\Longrightarrow&nbsp;&nbsp;$$</p>\n<p>$$x=(D-\\omega E)^{-1}\\bigg((1-\\omega)D+\\omega F\\bigg)\\ x+\\omega(D-\\omega E)^{-1}b$$</p>\n<p>$$x_{k+1}=L_\\omega\\ x_k+c$$</p>\n<p>$$\\left\\{\\begin{array}{l}L_\\omega=(D-\\omega E)^{-1}\\Big((1-\\omega)D+\\omega F\\Big)\\\\ c=\\omega(D-\\omega E)^{-1}b\\end{array}\\right.$$</p>\n<p>La matriz $L_\\omega$ recibe el nombre de&nbsp;<span style=\"color: #0000ff;\"><strong><span style=\"color: #000000;\">matriz de relajaci&oacute;n</span></strong></span><strong><span style=\"color: #000000;\">.</span></strong></p>\n<p>Si $\\omega=1$ la matriz se reduce a $L_1=(D-E)^{-1}F$, es decir,&nbsp;se trata del m&eacute;todo de Gauss-Seidel.</p>\n<p>Si $\\omega&gt;1$ se dice que se trata de un m&eacute;todo de&nbsp;<span style=\"color: #0000ff;\"><strong><span style=\"color: #000000;\">sobre-relajaci&oacute;n</span></strong></span><span style=\"color: #000000;\"><strong>. </strong>Suele emplearse para incrementar la velocidad de convergencia del m&eacute;todo de Gauss-Seidel.</span></p>\n<p>Si $\\omega&lt;1$ se dice que se trata de un m&eacute;todo de&nbsp;<span style=\"color: #0000ff;\"><strong><span style=\"color: #000000;\">sub-relajaci&oacute;n</span></strong></span><span style=\"color: #000000;\"><strong>. </strong>Suele emplearse cuando el m&eacute;todo de Gauss-Seidel no converge.</span></p>\n<h4 style=\"font-size: 1em;\">Teorema 9</h4>\n<p><span style=\"font-weight: normal;\"><span style=\"font-size: medium;\">Una condici&oacute;n necesaria para que converja el m&eacute;todo de relajaci&oacute;n es que $\\omega\\in(0,2)$.</span></span></p>\n<h4 style=\"font-size: 1em;\">Teorema 10</h4>\n<p><span style=\"font-weight: normal;\"><span style=\"font-size: medium;\">Si $A$ es diagonal dominante, el m&eacute;todo de relajaci&oacute;n es&nbsp;convergente cualquiera que sea $\\omega\\in(0,1]$.</span></span></p>\n<h4 style=\"font-size: 1em;\">Teorema 11</h4>\n<p><span style=\"font-size: medium;\">Si $A$ es sim&eacute;trica y definida positiva, el m&eacute;todo de&nbsp;relajaci&oacute;n converge si, y s&oacute;lo si, $\\omega\\in(0,2)$</span></p>"}︡
︠5f569c89-92cf-4268-9353-6649f4c64f12i︠
%html
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;">
<p>La siguiente funci&oacute;n proporciona, en caso de que exista,&nbsp;la matriz de relajaci&oacute;n $L_{\omega}$ asociada a una matriz $A$&nbsp;</p>
<p style="text-align: center;"><span style="color: #0000ff;">$L_{\omega}$ = matriz_relajacion($A,\omega$)</span></p>
</div>
</div>

︡d68d0acd-def4-4253-8866-699460e475b7︡{"html": "<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\n<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;\">\n<p>La siguiente funci&oacute;n proporciona, en caso de que exista,&nbsp;la matriz de relajaci&oacute;n $L_{\\omega}$ asociada a una matriz $A$&nbsp;</p>\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\">$L_{\\omega}$ = matriz_relajacion($A,\\omega$)</span></p>\n</div>\n</div>"}︡
︠5cb2025d-2514-4150-ac6e-aa9fac3d8d51a︠
%auto
def matriz_relajacion(A, w):
    k = 1
    m = A.nrows()
    n = A.ncols()
    if m != n:
        k = 0
        print 'La matriz no es cuadrada.'
    else:
        for i in range(m):
            k = k*A[i, i]
        if k == 0:
            print 'Es necesario permutar las filas de la matriz.'
        else:
            k = 1
            D = diagonal_matrix([A[j,j] for j in range(m)])
            E = -tril(A, -1)
            F = -triu(A, -1)
            DwE1 = (D - w*E).inverse()
            return(DwE1*((1 - w)*D + w*F))
︡9f201753-b4b8-4663-9c8e-344d12bc2624︡︡
︠17422694-a7ff-4f2e-a9e3-d689a6c2ecf4i︠
%html
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;">
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;">
<h3 style="font-size: 1.17em;"><span style="color: #0000ff;">Ejemplo 8<br /></span></h3>
<p>Calculamos la matriz de relajacion para $\omega=1.2$ asociada a una matriz de orden 3:</p>
</div>
</div>
</div>

︡75229276-bb09-458e-9b20-56b1c8e41bd1︡{"html": "<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\n<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;\">\n<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;\">\n<h3 style=\"font-size: 1.17em;\"><span style=\"color: #0000ff;\">Ejemplo 8<br /></span></h3>\n<p>Calculamos la matriz de relajacion para $\\omega=1.2$ asociada a una matriz de orden 3:</p>\n</div>\n</div>\n</div>"}︡
︠10ccb04a-4ad1-4b80-8a28-496d5c96c85e︠
A = matrix(QQ, [[3, 1, 1], [3, -7, 1], [1, 1, -3]])
show(A)

Lw = matriz_relajacion(A, 1.2)
show(Lw)
︡f4c0c204-f201-434a-b7cb-7c8f6d527423︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n3 & 1 & 1 \\\\\n3 & -7 & 1 \\\\\n1 & 1 & -3\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n-0.200000000000000 & -0.400000000000000 & -0.400000000000000 \\\\\n-0.102857142857143 & -0.405714285714286 & -0.0342857142857143 \\\\\n-0.121142857142857 & -0.322285714285714 & -0.373714285714286\n\\end{array}\\right)", "display": true}}︡
︠b4acc74a-b7f6-4c3e-af2c-e2bb38b4abd2i︠
%html
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;">
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;">
<p>La siguiente funci&oacute;n intenta resolver un sistema $Ax=b$ utilizando el m&eacute;todo iterativo de relajaci&oacute;n SOR; su sintaxis es &nbsp;&nbsp;</p>
<p style="text-align: center;"><span style="color: #0000ff;">metodo_relajacion(A, b, $\omega$, tol, maxiter, veriter, solosiconverge)</span></p>
<p>y contiene los mismos par&aacute;metros y valores por defecto que &nbsp;metodo_jacobi( ), adem&aacute;s del par&aacute;metro de relajaci&oacute;n $\omega$.</p>
</div>
</div>
</div>

︡11480326-11c7-4a9a-835a-164a8367bafa︡{"html": "<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\n<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;\">\n<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;\">\n<p>La siguiente funci&oacute;n intenta resolver un sistema $Ax=b$ utilizando el m&eacute;todo iterativo de relajaci&oacute;n SOR; su sintaxis es &nbsp;&nbsp;</p>\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\">metodo_relajacion(A, b, $\\omega$, tol, maxiter, veriter, solosiconverge)</span></p>\n<p>y contiene los mismos par&aacute;metros y valores por defecto que &nbsp;metodo_jacobi( ), adem&aacute;s del par&aacute;metro de relajaci&oacute;n $\\omega$.</p>\n</div>\n</div>\n</div>"}︡
︠61f64f6f-6117-4fcc-ad76-e828f367ef38a︠
%auto
def metodo_relajacion(A, b, w, tol = 10^-14, maxiter = 1000, veriter = False, solosiconverge = True):
    k = 1
    m = A.nrows()
    n = A.ncols()
    if m != n:
        k = 0
        print 'La matriz no es cuadrada.'
    else:
        for i in range(m):
            k = k*A[i, i]
        if k == 0:
            print 'Es necesario permutar las ecuaciones (no puede haber ceros en la diagonal).'
        else:
            k = 1; n = 0
            Lw = matriz_relajacion(A, w)
            R = radio_espectral(Lw).n()
            if solosiconverge and R >= 1:
                k = 0
                print 'El método no es convergente:'
                print '   el radio espectral de la matriz de relajación es ', R
            else:
                x0 = vector(A.base_ring(),[0 for h in range(m)])
                x1 = copy(x0)
                while (A*x0 - b).norm() > tol and n < maxiter:
                    n = n + 1
                    for i in range(m):
                        si = 0; ss = 0
                        for t in range(i):
                            si = si + A[i, t]*x1[t]
                        for t in range(i + 1, m):
                            ss = ss + A[i, t]*x0[t]
                        x1[i] = w/A[i, i]*(b[i] - si - ss) + (1 - w)*x0[i]
                    x0 = copy(x1)
                    if veriter:
                        print 'iter.',n,'=',x0
    if k == 1:
        if n < maxiter:
            print 'Nº. de iteraciones realizadas:', n
        else:
            print 'Abortado en la iteracion:', maxiter
        print 'El radio espectral de la matriz de relajación es:', R
        Error = (A*x0 - b).norm().n()
        print 'Error de la aproximación:', Error
        print 'Solución aproximada:'
        return(x0)
︡12d98593-e532-49f8-a225-f3746347977e︡︡
︠694015bb-0f63-46f2-ad26-e5a4cc517504i︠
%html
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;">
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;">
<h3 style="font-size: 1.17em;"><span style="color: #0000ff;">Ejemplo 9<br /></span></h3>
<p>Resolvemos el sistema $Ax=b$ mediante el m&eacute;todo de relajaci&oacute;n para diferentes valores de $\omega$, con</p>
<p>$$A=\left(\begin{array}{cc} 2 &amp; 1\\ 3 &amp; 4\end{array}\right),\ \ b=\left(\begin{array}{c} 3\\ 7\end{array}\right)$$</p>
</div>
</div>
</div>

︡cbaa966b-a958-4601-becc-718d9101bc25︡{"html": "<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\n<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;\">\n<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;\">\n<h3 style=\"font-size: 1.17em;\"><span style=\"color: #0000ff;\">Ejemplo 9<br /></span></h3>\n<p>Resolvemos el sistema $Ax=b$ mediante el m&eacute;todo de relajaci&oacute;n para diferentes valores de $\\omega$, con</p>\n<p>$$A=\\left(\\begin{array}{cc} 2 &amp; 1\\\\ 3 &amp; 4\\end{array}\\right),\\ \\ b=\\left(\\begin{array}{c} 3\\\\ 7\\end{array}\\right)$$</p>\n</div>\n</div>\n</div>"}︡
︠8062d763-6f65-48d3-9647-8b3327b0f21f︠
A = matrix(RDF, [[2, 1], [3, 4]])
b = vector([3, 7])
metodo_relajacion(A, b, 0.5)
︡fb4e6cb6-62dc-4f3d-8789-d127257230e2︡{"stdout": "N\u00ba. de iteraciones realizadas: 118\nEl radio espectral de la matriz de relajaci\u00f3n es: 0.768397607480591\nError de la aproximaci\u00f3n: 8.62265274246159e-15\nSoluci\u00f3n aproximada:\n(1.0000000000000053, 0.9999999999999943)"}︡
︠844b825b-4bd8-49ad-a62e-e1491018ab10︠
metodo_relajacion(A, b, 1.5)
︡7d37ee84-a9a7-4e1d-b8b0-dfef88360aff︡{"stdout": "N\u00ba. de iteraciones realizadas: 50\nEl radio espectral de la matriz de relajaci\u00f3n es: 0.500000000000000\nError de la aproximaci\u00f3n: 2.66453525910038e-15\nSoluci\u00f3n aproximada:\n(0.999999999999998, 1.0000000000000016)"}︡
︠f129cc47-b907-4688-9f34-e83c887bc6f5︠
metodo_relajacion(A, b, 1.13)
︡e077fbaa-5341-4b9a-b9d6-5b0b594036dd︡{"stdout": "N\u00ba. de iteraciones realizadas: 17\nEl radio espectral de la matriz de relajaci\u00f3n es: 0.130000000000000\nError de la aproximaci\u00f3n: 3.20237283398938e-15\nSoluci\u00f3n aproximada:\n(0.9999999999999982, 1.000000000000002)"}︡
︠ae8da461-0049-4480-920e-950fffc2bf73︠
metodo_relajacion(A, b, 1.13, tol = 0)
︡6de310ad-b442-4e30-afc5-dc4f2a5cad02︡{"stdout": "N\u00ba. de iteraciones realizadas: 19\nEl radio espectral de la matriz de relajaci\u00f3n es: 0.130000000000000\nError de la aproximaci\u00f3n: 0.000000000000000\nSoluci\u00f3n aproximada:\n(0.9999999999999999, 1.0)"}︡
︠9b1b5a62-78c4-488b-b259-04eb1719a44a︠
metodo_relajacion(A, b, 1.13, tol = 0, maxiter = 8)
︡1a6c17de-a4d3-4f37-b53e-c9d7c3037a45︡{"stdout": "Abortado en la iteracion: 8\nEl radio espectral de la matriz de relajaci\u00f3n es: 0.130000000000000\nError de la aproximaci\u00f3n: 1.77751920182874e-6\nSoluci\u00f3n aproximada:\n(0.9999990877107334, 1.000000413863343)"}︡
︠4595ffa3-3db8-473a-9e21-5a8d2f6b4c17︠
metodo_relajacion(A, b, 1.13, tol = 0, maxiter = 5, veriter = True)
︡67834b65-814c-48d5-b089-911004370fdd︡{"stdout": "iter. 1 = (1.6949999999999998, 0.5409875000000002)\niter. 2 = (1.1689920625, 0.9164508520312499)\niter. 3 = (1.025236300477344, 0.9894736245813884)\niter. 4 = (1.0026666830494606, 0.9991084149200018)\niter. 5 = (1.0001570767737689, 0.9999827834946308)\nAbortado en la iteracion: 5\nEl radio espectral de la matriz de relajaci\u00f3n es: 0.130000000000000\nError de la aproximaci\u00f3n: 0.000500068632078746\nSoluci\u00f3n aproximada:\n(1.0001570767737689, 0.9999827834946308)"}︡
︠de76d2b9-09d5-4b85-a7e1-61b11eb1875bi︠
%html
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<h3><span style="color: #0000ff;">Ejemplo 10<br /></span></h3>
<p>Consideremos el sistema</p>
<p>$$\left(\begin{array}{rrrrrrr}10 &amp; &nbsp; &nbsp;2 &nbsp; &nbsp;&amp; -3 &nbsp; &amp; &nbsp; 2 &nbsp; &amp; &nbsp;-4 &amp;3 &nbsp;&amp;0\\&nbsp;&nbsp;&nbsp; -2 &nbsp; &amp; -12 &nbsp; &nbsp;&amp; &nbsp;5 &nbsp; &amp; &nbsp; 0 &nbsp; &nbsp;&amp; &nbsp;0 &nbsp; &nbsp;&amp; &nbsp;2 &nbsp; &nbsp;&amp; &nbsp;1\\&nbsp;&nbsp; &nbsp; 1 &nbsp; &nbsp;&amp; &nbsp;1 &nbsp;&amp; &nbsp; &nbsp;8 &nbsp; &amp; &nbsp; 1 &nbsp; &nbsp;&amp; &nbsp;1 &nbsp; &amp; &nbsp; 1 &nbsp; &nbsp;&amp; &nbsp;1\\&nbsp;&nbsp;&nbsp; -1 &nbsp; &nbsp;&amp; &nbsp;0 &nbsp; &nbsp;&amp; &nbsp;4 &nbsp; &nbsp;&amp; 15 &nbsp; &amp; &nbsp;-5 &nbsp; &nbsp;&amp; -1 &nbsp; &amp; &nbsp;-2\\&nbsp;&nbsp; &nbsp; 1 &nbsp; &nbsp;&amp; &nbsp;0 &nbsp; &amp; &nbsp; 1 &nbsp; &nbsp;&amp; &nbsp;0 &nbsp; &amp; &nbsp; 5 &nbsp; &nbsp;&amp; &nbsp;0 &nbsp; &amp; &nbsp; 1\\&nbsp;&nbsp; &nbsp; 0 &nbsp; &amp; &nbsp; 0 &nbsp; &nbsp;&amp; -1 &nbsp; &amp; &nbsp;-2 &nbsp; &amp; &nbsp;-3 &nbsp; &nbsp;&amp; -8 &nbsp; &nbsp;&amp; &nbsp;1\\&nbsp;&nbsp; &nbsp; 1 &nbsp; &nbsp;&amp; -2 &nbsp;&amp; &nbsp; -3 &nbsp; &amp; &nbsp; 0 &nbsp; &nbsp;&amp; &nbsp;2 &nbsp; &nbsp;&amp; &nbsp;3 &nbsp; &nbsp;&amp; 12\end{array}\right) &nbsp;\left(\begin{array}{r} x_1 \\ x_2 \\ x_3 \\ x_4 \\ x_5 \\ x_6 \\ x_7 \end{array}\right)=\left(\begin{array}{r} 10 \\ -6 \\ 14 \\ 10 \\ 8 \\ -13 \\13 \end{array}\right)$$</p>
<p>a) Hacer un estudio previo sobre la convergencia de los m&eacute;todos iterativos de Jacobi y &nbsp;de Gauss-Seidel para saber cu&aacute;l converge con mayor velocidad.</p>
<p>b) Encontrar un $\omega \in (0,2)$ que haga que el m&eacute;todo&nbsp;S.O.R. sea m&aacute;s r&aacute;pido que el de Jacobi y el de&nbsp;Gauss-Seidel.</p>
<p>c) Resolver el sistema por Jacobi, Gauss-Seidel y por &nbsp;S.O.R. con un&nbsp;$\omega$ adecuado, comparando el n&uacute;mero de iteraciones&nbsp;necesarias en cada m&eacute;todo para llegar a la soluci&oacute;n&nbsp;aproximada con un mismo grado de tolerancia de $10^{-12}$.</p>
</div>

︡670907ec-33af-481a-b22c-f260257c5800︡{"html": "<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\n<h3><span style=\"color: #0000ff;\">Ejemplo 10<br /></span></h3>\n<p>Consideremos el sistema</p>\n<p>$$\\left(\\begin{array}{rrrrrrr}10 &amp; &nbsp; &nbsp;2 &nbsp; &nbsp;&amp; -3 &nbsp; &amp; &nbsp; 2 &nbsp; &amp; &nbsp;-4 &amp;3 &nbsp;&amp;0\\\\&nbsp;&nbsp;&nbsp; -2 &nbsp; &amp; -12 &nbsp; &nbsp;&amp; &nbsp;5 &nbsp; &amp; &nbsp; 0 &nbsp; &nbsp;&amp; &nbsp;0 &nbsp; &nbsp;&amp; &nbsp;2 &nbsp; &nbsp;&amp; &nbsp;1\\\\&nbsp;&nbsp; &nbsp; 1 &nbsp; &nbsp;&amp; &nbsp;1 &nbsp;&amp; &nbsp; &nbsp;8 &nbsp; &amp; &nbsp; 1 &nbsp; &nbsp;&amp; &nbsp;1 &nbsp; &amp; &nbsp; 1 &nbsp; &nbsp;&amp; &nbsp;1\\\\&nbsp;&nbsp;&nbsp; -1 &nbsp; &nbsp;&amp; &nbsp;0 &nbsp; &nbsp;&amp; &nbsp;4 &nbsp; &nbsp;&amp; 15 &nbsp; &amp; &nbsp;-5 &nbsp; &nbsp;&amp; -1 &nbsp; &amp; &nbsp;-2\\\\&nbsp;&nbsp; &nbsp; 1 &nbsp; &nbsp;&amp; &nbsp;0 &nbsp; &amp; &nbsp; 1 &nbsp; &nbsp;&amp; &nbsp;0 &nbsp; &amp; &nbsp; 5 &nbsp; &nbsp;&amp; &nbsp;0 &nbsp; &amp; &nbsp; 1\\\\&nbsp;&nbsp; &nbsp; 0 &nbsp; &amp; &nbsp; 0 &nbsp; &nbsp;&amp; -1 &nbsp; &amp; &nbsp;-2 &nbsp; &amp; &nbsp;-3 &nbsp; &nbsp;&amp; -8 &nbsp; &nbsp;&amp; &nbsp;1\\\\&nbsp;&nbsp; &nbsp; 1 &nbsp; &nbsp;&amp; -2 &nbsp;&amp; &nbsp; -3 &nbsp; &amp; &nbsp; 0 &nbsp; &nbsp;&amp; &nbsp;2 &nbsp; &nbsp;&amp; &nbsp;3 &nbsp; &nbsp;&amp; 12\\end{array}\\right) &nbsp;\\left(\\begin{array}{r} x_1 \\\\ x_2 \\\\ x_3 \\\\ x_4 \\\\ x_5 \\\\ x_6 \\\\ x_7 \\end{array}\\right)=\\left(\\begin{array}{r} 10 \\\\ -6 \\\\ 14 \\\\ 10 \\\\ 8 \\\\ -13 \\\\13 \\end{array}\\right)$$</p>\n<p>a) Hacer un estudio previo sobre la convergencia de los m&eacute;todos iterativos de Jacobi y &nbsp;de Gauss-Seidel para saber cu&aacute;l converge con mayor velocidad.</p>\n<p>b) Encontrar un $\\omega \\in (0,2)$ que haga que el m&eacute;todo&nbsp;S.O.R. sea m&aacute;s r&aacute;pido que el de Jacobi y el de&nbsp;Gauss-Seidel.</p>\n<p>c) Resolver el sistema por Jacobi, Gauss-Seidel y por &nbsp;S.O.R. con un&nbsp;$\\omega$ adecuado, comparando el n&uacute;mero de iteraciones&nbsp;necesarias en cada m&eacute;todo para llegar a la soluci&oacute;n&nbsp;aproximada con un mismo grado de tolerancia de $10^{-12}$.</p>\n</div>"}︡
︠34a9d2f7-b695-44f4-a075-671fa4cdf9fa︠
A = matrix(RDF, 
[
[10, 2, -3, 2, -4, 3, 0],
[-2, -12, 5, 0, 0, 2, 1],
[1, 1, 8, 1, 1, 1, 1],
[-1, 0, 4, 15, -5, -1, -2],
[1, 0, 1, 0, 5, 0, 1],
[0, 0, -1, -2, -3, -8, 1],
[1, -2, -3, 0, 2, 3, 13]
])
show(A)
b = vector([10, -6, 14, 10, 8, -13, 14])
show(b)
︡d49776d7-1079-46bc-8dc5-deddb2a37a0b︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrrrrr}\n10.0 & 2.0 & -3.0 & 2.0 & -4.0 & 3.0 & 0.0 \\\\\n-2.0 & -12.0 & 5.0 & 0.0 & 0.0 & 2.0 & 1.0 \\\\\n1.0 & 1.0 & 8.0 & 1.0 & 1.0 & 1.0 & 1.0 \\\\\n-1.0 & 0.0 & 4.0 & 15.0 & -5.0 & -1.0 & -2.0 \\\\\n1.0 & 0.0 & 1.0 & 0.0 & 5.0 & 0.0 & 1.0 \\\\\n0.0 & 0.0 & -1.0 & -2.0 & -3.0 & -8.0 & 1.0 \\\\\n1.0 & -2.0 & -3.0 & 0.0 & 2.0 & 3.0 & 13.0\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(10,\\,-6,\\,14,\\,10,\\,8,\\,-13,\\,14\\right)", "display": true}}︡
︠8568e72d-1ad0-4e76-889a-f5c1a1701485i︠
%html
<p>a) Comparamos los radios espectrales de las matrices asociadas a cada m&eacute;todo.</p>

︡fab1f2c3-64c7-42f2-bd66-ca60612acb25︡{"html": "<p>a) Comparamos los radios espectrales de las matrices asociadas a cada m&eacute;todo.</p>"}︡
︠0a4abcf7-8089-4dc2-af5b-0eca4a693b1f︠
J = matriz_jacobi(A)
radio_espectral(J)
︡c42fe2dc-c3c2-4ddc-8f13-e656ea5cf6d4︡{"stdout": "0.362965972552805"}︡
︠391bb9cb-72f4-4070-88a3-556c5dc0609a︠
L = matriz_gauss_seidel(A)
radio_espectral(L)
︡fbf0bf4b-e48b-402e-92bc-f86056853113︡{"stdout": "0.190765875974683"}︡
︠5a55c491-bcee-4f37-a0e7-8ebd9f1798b5i︠
%html
<p>b) Podemos encontrar un valor $\omega$ apropiado mediante tanteo en el intervalo $(0,2)$ &oacute; utilizar un peque&ntilde;o bucle que calcule los valores de los radios espectrales para $\omega$ entre 0 y 2 con incrementos de 0.1 y, en un segundo bucle similar, afinamos una segunda cifra decimal con incrementos de 0.01. De forma visual, localizamos los valores &oacute;ptimos, correspondientes al menor radio espectral:</p>

︡9b2132fe-1eed-4fb2-9894-ed04909a9976︡{"html": "<p>b) Podemos encontrar un valor $\\omega$ apropiado mediante tanteo en el intervalo $(0,2)$ &oacute; utilizar un peque&ntilde;o bucle que calcule los valores de los radios espectrales para $\\omega$ entre 0 y 2 con incrementos de 0.1 y, en un segundo bucle similar, afinamos una segunda cifra decimal con incrementos de 0.01. De forma visual, localizamos los valores &oacute;ptimos, correspondientes al menor radio espectral:</p>"}︡
︠5e722a53-df3b-4e67-a070-ae474d955121︠
#### En este código tan solo hay que tener actualizada la matriz A

for i in range(20):
    Lw = matriz_relajacion(A,(i + 1)/10.)
    print 'parametro de relajacion:',(i + 1)/10.
    print 'radio espectral', radio_espectral(Lw)
︡e3f85724-d87a-4176-883a-1d11541a6a84︡{"stdout": "parametro de relajacion: 0.100000000000000\nradio espectral 0.922819225361168\nparametro de relajacion: 0.200000000000000\nradio espectral 0.844147102730875\nparametro de relajacion: 0.300000000000000\nradio espectral 0.763978788590939\nparametro de relajacion: 0.400000000000000\nradio espectral 0.682331412973498\nparametro de relajacion: 0.500000000000000\nradio espectral 0.599230381431626\nparametro de relajacion: 0.600000000000000\nradio espectral 0.514660030143017\nparametro de relajacion: 0.700000000000000\nradio espectral 0.428440704759211\nparametro de relajacion: 0.800000000000000\nradio espectral 0.340000557239636\nparametro de relajacion: 0.900000000000000\nradio espectral 0.247982660212839\nparametro de relajacion: 1.00000000000000\nradio espectral 0.190765875974683\nparametro de relajacion: 1.10000000000000\nradio espectral 0.392868439516050\nparametro de relajacion: 1.20000000000000\nradio espectral 0.592087297035181\nparametro de relajacion: 1.30000000000000\nradio espectral 0.784978038438975\nparametro de relajacion: 1.40000000000000\nradio espectral 0.977916427414011\nparametro de relajacion: 1.50000000000000\nradio espectral 1.17266297153117\nparametro de relajacion: 1.60000000000000\nradio espectral 1.37004993622286\nparametro de relajacion: 1.70000000000000\nradio espectral 1.57067135416461\nparametro de relajacion: 1.80000000000000\nradio espectral 1.77511677301382\nparametro de relajacion: 1.90000000000000\nradio espectral 1.98407116654689\nparametro de relajacion: 2.00000000000000\nradio espectral 2.19834817501635"}︡
︠f25bb4eb-eca3-4d95-a5b6-b7672849b231i︠
%html
<p>Analizando la lista anterior, parece que el radio espectral decrece hasta valor del par&aacute;metro de relajaci&oacute;n $0.9$ y enpieza a crecer a partir de $1.00$. Vamos a afinar la b&uacute;squeda entre $0.9$ y $1.0$:</p>

︡62c8be9e-77e2-4d14-8c99-26a21f6814f6︡{"html": "<p>Analizando la lista anterior, parece que el radio espectral decrece hasta valor del par&aacute;metro de relajaci&oacute;n $0.9$ y enpieza a crecer a partir de $1.00$. Vamos a afinar la b&uacute;squeda entre $0.9$ y $1.0$:</p>"}︡
︠f18e2107-544e-400b-acfe-534dd4f30fa5︠
valor_inicial = 0.9    ### aqui fijamos el valor encontrado en la lista anterior

### no hay que modificar el resto

for i in range(10):
    Lw = matriz_relajacion(A, valor_inicial + (i + 1)/100.)
    print 'parametro de relajacion:', valor_inicial + (i + 1)/100.
    print 'radio espectral',radio_espectral(Lw)
︡b2d08a72-6b25-4eb0-8bc6-ce893ae209e5︡{"stdout": "parametro de relajacion: 0.910000000000000\nradio espectral 0.238494435165628\nparametro de relajacion: 0.920000000000000\nradio espectral 0.228941964770966\nparametro de relajacion: 0.930000000000000\nradio espectral 0.219322437271696\nparametro de relajacion: 0.940000000000000\nradio espectral 0.209633706957106\nparametro de relajacion: 0.950000000000000\nradio espectral 0.199874900789955\nparametro de relajacion: 0.960000000000000\nradio espectral 0.190047450083240\nparametro de relajacion: 0.970000000000000\nradio espectral 0.180156867521550\nparametro de relajacion: 0.980000000000000\nradio espectral 0.170215857454180\nparametro de relajacion: 0.990000000000000\nradio espectral 0.176648652417924\nparametro de relajacion: 1.00000000000000\nradio espectral 0.190765875974683"}︡
︠2a461e1a-be11-4fac-ab7b-5f94d8481b6ci︠
%html
<p>Parece que un valor de $\omega$&nbsp;pr&oacute;ximo al &oacute;ptimo es $\omega=0.98$</p>

︡19c30c29-5a23-4279-a30f-4ec59a458310︡{"html": "<p>Parece que un valor de $\\omega$&nbsp;pr&oacute;ximo al &oacute;ptimo es $\\omega=0.98$</p>"}︡
︠c6f8ac81-f71b-434e-8b01-ea34bbe4f4d8︠
Lw = matriz_relajacion(A, 0.98)
radio_espectral(Lw)
︡9d2de881-3be9-4739-aa41-c600f8b27689︡{"stdout": "0.170215857454180"}︡
︠ff656254-9cf0-4623-9b85-36f38fbee283i︠
%html
<p>c) comparamos los tres m&eacute;todos iterativos estudiados</p>

︡76e9c5e8-528e-4102-9d5a-215eaed14123︡{"html": "<p>c) comparamos los tres m&eacute;todos iterativos estudiados</p>"}︡
︠2b88546f-3e40-437b-bd69-cda4862693e9︠
metodo_jacobi(A, b, tol = 10^-12)
︡fe542ca2-b2a2-42c7-b352-f02444c5775e︡{"stdout": "N\u00ba. de iteraciones realizadas: 31\nEl radio espectral de la matriz de Jacobi es: 0.362965972552805\nError de la aproximaci\u00f3n: 6.54565200094306e-13\nSoluci\u00f3n aproximada:\n(0.99999999999997, 0.9999999999999606, 0.9999999999999696, 0.9999999999999996, 0.9999999999999709, 0.9999999999999911, 1.000000000000014)"}︡
︠0a1812bf-6d89-4c02-9c9f-72223be1d0e0︠
metodo_gauss_seidel(A, b, tol = 10^-12)
︡fa64f930-d09b-4bb2-9823-981ea654d127︡{"stdout": "N\u00ba. de iteraciones realizadas: 20\nEl radio espectral de la matriz de Gauss-Seidel es: 0.190765875974683\nError de la aproximaci\u00f3n: 7.98157671180263e-13\nSoluci\u00f3n aproximada:\n(0.9999999999999489, 1.0000000000000127, 0.9999999999999956, 0.9999999999999679, 1.0000000000000142, 1.0000000000000013, 1.0000000000000024)"}︡
︠ed125985-e271-41c6-b8a0-a7c5708945d7︠
metodo_relajacion(A, b, 0.98, tol = 10^-12)
︡924fd3f4-1d04-4d66-aa34-cf66cbf4599b︡{"stdout": "N\u00ba. de iteraciones realizadas: 19\nEl radio espectral de la matriz de relajaci\u00f3n es: 0.170215857454180\nError de la aproximaci\u00f3n: 3.39903223868138e-13\nSoluci\u00f3n aproximada:\n(0.999999999999969, 0.9999999999999967, 0.999999999999997, 1.0000000000000024, 1.0000000000000049, 0.9999999999999994, 1.0000000000000007)"}︡
︠dec2060a-00f7-42c5-9254-b1492185ef17i︠
%html
<p>Como conclusi&oacute;n, el m&eacute;todo m&aacute;s eficiente ha sido el de relajaci&oacute;n aunque el coste computacional para encontrar el valor $\omega$ adecuado ha sido muy superior al coste de cualquiera de los otros dos m&eacute;todos. No es pr&aacute;ctica esta forma de encontrar un valor &oacute;ptimo para el par&aacute;metro de relajaci&oacute;n. Su b&uacute;squeda sigue siendo un problema abierto en investigaci&oacute;n matem&aacute;tica, aunque existen algunos refinamientos que no trataremos aqu&iacute;.</p>
<p>Debe entenderse este ejercicio como una ilustraci&oacute;n de la importancia de elegir un valor del par&aacute;metro $\omega$&nbsp; adecuado y su repercusi&oacute;n sobre la velocidad de convergencia.</p>

︡00acbfdb-3dcf-4f5e-b7ca-5735471a6eb5︡{"html": "<p>Como conclusi&oacute;n, el m&eacute;todo m&aacute;s eficiente ha sido el de relajaci&oacute;n aunque el coste computacional para encontrar el valor $\\omega$ adecuado ha sido muy superior al coste de cualquiera de los otros dos m&eacute;todos. No es pr&aacute;ctica esta forma de encontrar un valor &oacute;ptimo para el par&aacute;metro de relajaci&oacute;n. Su b&uacute;squeda sigue siendo un problema abierto en investigaci&oacute;n matem&aacute;tica, aunque existen algunos refinamientos que no trataremos aqu&iacute;.</p>\n<p>Debe entenderse este ejercicio como una ilustraci&oacute;n de la importancia de elegir un valor del par&aacute;metro $\\omega$&nbsp; adecuado y su repercusi&oacute;n sobre la velocidad de convergencia.</p>"}︡
︠efc89f88-f76f-4fb1-ac51-cdc60a7a658fi︠
%html
<h3><span style="color: #0000ff;">Ejemplo 11 (sistema mal condicionado)<br /></span></h3>
<p>Consideremos el sistema $5 \times 5$ de matriz de coeficientes $A=( \frac{1}{i+j-1})$ y soluci&oacute;n el vector $(1,-1,1,-1,1)^t$. Se pide:</p>
<p>a) Hacer un estudio previo sobre la convergencia de los m&eacute;todos iterativos de Jacobi, de Gauss-Seidel y de relajaci&oacute;n para $\omega =0.1$, para saber cu&aacute;l de ellos converge con mayor velocidad.</p>
<p>b) Aplicar los tres m&eacute;todos iterados con tolerancia $10^{-6}$&nbsp; y sopesar qu&eacute; est&aacute; ocurriendo.</p>

︡8f778e90-5ba4-4ac2-a73b-22985a3b546c︡{"html": "<h3><span style=\"color: #0000ff;\">Ejemplo 11 (sistema mal condicionado)<br /></span></h3>\n<p>Consideremos el sistema $5 \\times 5$ de matriz de coeficientes $A=( \\frac{1}{i+j-1})$ y soluci&oacute;n el vector $(1,-1,1,-1,1)^t$. Se pide:</p>\n<p>a) Hacer un estudio previo sobre la convergencia de los m&eacute;todos iterativos de Jacobi, de Gauss-Seidel y de relajaci&oacute;n para $\\omega =0.1$, para saber cu&aacute;l de ellos converge con mayor velocidad.</p>\n<p>b) Aplicar los tres m&eacute;todos iterados con tolerancia $10^{-6}$&nbsp; y sopesar qu&eacute; est&aacute; ocurriendo.</p>"}︡
︠2acdd85b-9ea6-4fa0-80a3-daa155942de4︠
orden = 5  ### fijamos el orden de la matriz

A = matrix(RR, [[1/(i + j + 1) for j in range(orden)] for i in range(orden)])

b = A*vector([1, -1, 1, -1, 1])  ### calculamos b para que la solución sea la propuesta en el enunciado
︡4256fc2e-43cc-4e9b-8dc9-71dd801828a8︡︡
︠e27e2216-f487-4791-be1d-7b922ab822e1︠
show(radio_espectral(matriz_jacobi(A)))
︡bb6b52a6-5516-4e4e-af96-1685a03de0ba︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}3.44414219116595", "display": true}}︡
︠60a89c0b-9992-40b7-b0a3-aa0bf0e6c15f︠
show(radio_espectral(matriz_gauss_seidel(A)))
︡b0147aab-a5f9-4a45-bc93-c73d8e544556︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}0.999957671225202", "display": true}}︡
︠dea9505d-37e5-46b2-b96b-5f6da8dbd8ff︠
show(radio_espectral(matriz_relajacion(A, 0.1)))
︡9228f949-6c29-4a3c-a9cd-6c042c9b10a8︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}0.999997820701217", "display": true}}︡
︠9df94562-08fb-4853-a52a-b381b4e77e37︠
metodo_gauss_seidel(A, b, tol = 10^(-6))
︡e9351a61-3b11-414e-926c-7bb5a6e016bd︡{"stdout": "Abortado en la iteracion: 1000\nEl radio espectral de la matriz de Gauss-Seidel es: 0.999957671225202\nError de la aproximaci\u00f3n: 6.18534179800708e-6\nSoluci\u00f3n aproximada:\n(0.989338307172607, -0.802404031949637, 0.153663610454455, 0.271485894215652, 0.380522250579713)"}︡
︠3cbee512-e8ef-4b03-a5ac-9b5804719ed4︠
metodo_relajacion(A, b, 0.1, tol = 10^(-6))
︡68657e64-0171-4407-9456-a8a85db4c6fa︡{"stdout": "Abortado en la iteracion: 1000\nEl radio espectral de la matriz de relajaci\u00f3n es: 0.999997820701217\nError de la aproximaci\u00f3n: 0.000347332501383923\nSoluci\u00f3n aproximada:\n(0.951830083221475, -0.481598643869432, -0.346779283511088, 0.180849102176620, 0.712473550960172)"}︡
︠484e7dfd-f353-4029-a83c-2b8a2abcf58f︠
A.solve_right(b)
︡9c7a7913-3846-4bfe-bee2-9b9e5a448914︡{"stdout": "(0.999999999999978, -0.999999999999600, 0.999999999998301, -0.999999999997465, 0.999999999998771)"}︡
︠2354a680-c813-4d69-8f64-6c3e9f743423i︠
%html
<p>Lo que sucede es que el radio espectral est&aacute; muy pr&oacute;ximo a 1 en Gauss-Seidel y en m&eacute;todo de relajaci&oacute;n, aunque por debajo de 1, por lo que la convergencia es excesivamente lenta. En el caso del m&eacute;todo de Jacobi, el radio supera el valor 1, por lo que no converge.</p>

︡4d70d35c-e0a2-4677-84dd-d929e1b29d8f︡{"html": "<p>Lo que sucede es que el radio espectral est&aacute; muy pr&oacute;ximo a 1 en Gauss-Seidel y en m&eacute;todo de relajaci&oacute;n, aunque por debajo de 1, por lo que la convergencia es excesivamente lenta. En el caso del m&eacute;todo de Jacobi, el radio supera el valor 1, por lo que no converge.</p>"}︡
︠f49f3d68-f81f-4333-b7d5-6415372df3e4i︠
%html
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;">&nbsp;</div>
</div>

<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;">
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;">&nbsp;</div>
</div>
</div>

<p><a name="cuestionario"></a></p>
<h3>CUESTIONARIO PARA EL ALUMNADO</h3>
<p><span id="cell_outer_0">Introduzca en la variable NUMERO_ALUMNO, que aparece m&aacute;s abajo, el n&uacute;mero correspondiente a su cuestionario y pulse el enlace&nbsp; <span style="color: #0000ff;"><span style="text-decoration: underline;">evaluate</span></span> que&nbsp; aparecer&aacute; m&aacute;s abajo.</span> Acceder&aacute; a un cuestionario con respuestas tipo test que se entregar&aacute; cumplimentado al finalizar esta sesi&oacute;n pr&aacute;ctica, siguiendo un modelo impreso que entregar&aacute; el profesor.</p>

︡6e5b4427-1b6a-489c-885a-40010bccf287︡{"html": "<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\n<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;\">&nbsp;</div>\n</div>\n\n<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\n<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;\">\n<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; margin: 8px;\">&nbsp;</div>\n</div>\n</div>\n\n<p><a name=\"cuestionario\"></a></p>\n<h3>CUESTIONARIO PARA EL ALUMNADO</h3>\n<p><span id=\"cell_outer_0\">Introduzca en la variable NUMERO_ALUMNO, que aparece m&aacute;s abajo, el n&uacute;mero correspondiente a su cuestionario y pulse el enlace&nbsp; <span style=\"color: #0000ff;\"><span style=\"text-decoration: underline;\">evaluate</span></span> que&nbsp; aparecer&aacute; m&aacute;s abajo.</span> Acceder&aacute; a un cuestionario con respuestas tipo test que se entregar&aacute; cumplimentado al finalizar esta sesi&oacute;n pr&aacute;ctica, siguiendo un modelo impreso que entregar&aacute; el profesor.</p>"}︡
︠518f004a-25d3-4e19-8325-b641a270f315︠
NUMERO_ALUMNO = 0

NOMBRE_FICHERO_EXAMEN = 'ALN_L4_t.htl'
load(DATA + 'codigo_examinar_html.sage')
︡4209bd89-a2b9-4cfc-904f-6b9a4db33910︡︡
