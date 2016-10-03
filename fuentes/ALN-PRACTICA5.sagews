︠8d475ccb-0433-4e8a-a177-ee01444057c3ai︠
%hide
%auto
DATA="foo.data/"
︡6e62783c-b98c-4971-90f5-a79e7e2399b9︡
︠a00600f3-81d9-4032-8072-2de6661f38f8i︠
%html
<p>&nbsp;</p>
<h3 style="font-size: 1.17em; text-align: center;">ESCUELA DE INGENIER&Iacute;A INFORM&Aacute;TICA</h3>
<h3 style="font-size: 1.17em; text-align: center;">UNIVERSIDAD DE SEVILLA</h3>
<h4 style="font-size: 1em; text-align: center;"><strong>&Aacute;LGEBRA LINEAL Y NUM&Eacute;RICA</strong></h4>
<h3 style="font-size: 1.17em;">Quinta pr&aacute;ctica: descomposiciones QR y SVD de una matriz.</h3>
<p>En esta quinta sesi&oacute;n nos marcamos los siguientes objetivos:</p>
<p>- Estudiar la <a href="#QR">descomposici&oacute;n QR</a> de una matriz y aportar algoritmos de c&aacute;lculo.</p>
<p>- Aplicar la descomposici&oacute;n QR a la <a href="#resolucion">resoluci&oacute;n de sistemas lineales</a>, analizando las ventajas.</p>
<p>- Estudiar la <a href="#DVS">descomposici&oacute;n en valores singulares (SVD)</a> de una matriz y &nbsp;aportar un algoritmo de c&aacute;lculo para la SVD.</p>
<p>- <a href="#aplicar">Aplicar &nbsp;la SVD</a> al problema del c&aacute;lculo del rango de una matriz y a la compresi&oacute;n de im&aacute;genes digitales.</p>
<p>La pr&aacute;ctica finaliza con la realizaci&oacute;n por parte del alumnado de un <a href="#cuestionario">cuestionario personalizado.</a></p>

︡a695464a-5e1b-4f73-b3e8-30f11821b141︡{"html": "<p>&nbsp;</p>\n<h3 style=\"font-size: 1.17em; text-align: center;\">ESCUELA DE INGENIER&Iacute;A INFORM&Aacute;TICA</h3>\n<h3 style=\"font-size: 1.17em; text-align: center;\">UNIVERSIDAD DE SEVILLA</h3>\n<h4 style=\"font-size: 1em; text-align: center;\"><strong>&Aacute;LGEBRA LINEAL Y NUM&Eacute;RICA</strong></h4>\n<h3 style=\"font-size: 1.17em;\">Quinta pr&aacute;ctica: descomposiciones QR y SVD de una matriz.</h3>\n<p>En esta quinta sesi&oacute;n nos marcamos los siguientes objetivos:</p>\n<p>- Estudiar la <a href=\"#QR\">descomposici&oacute;n QR</a> de una matriz y aportar algoritmos de c&aacute;lculo.</p>\n<p>- Aplicar la descomposici&oacute;n QR a la <a href=\"#resolucion\">resoluci&oacute;n de sistemas lineales</a>, analizando las ventajas.</p>\n<p>- Estudiar la <a href=\"#DVS\">descomposici&oacute;n en valores singulares (SVD)</a> de una matriz y &nbsp;aportar un algoritmo de c&aacute;lculo para la SVD.</p>\n<p>- <a href=\"#aplicar\">Aplicar &nbsp;la SVD</a> al problema del c&aacute;lculo del rango de una matriz y a la compresi&oacute;n de im&aacute;genes digitales.</p>\n<p>La pr&aacute;ctica finaliza con la realizaci&oacute;n por parte del alumnado de un <a href=\"#cuestionario\">cuestionario personalizado.</a></p>"}︡
︠619508a5-f9f9-4db2-bba0-f0093ed002abi︠
%html
<h3><strong><a name="QR"></a></strong></h3>
<h3><strong>Factorizaci&oacute;n QR de una matriz</strong></h3>
<p><strong>Teorema</strong></p>
<p><em>Dada una matriz $A\in \mathbb{R}^{m x n}$ de rango $n$, existe una matriz&nbsp; $Q\in \mathbb{R}^{m x n}$ y otra $R$ no singular de orden $n$, tales que $A=QR$, donde $Q^tQ=I_n\ $ &nbsp;y $R$ es triangular superior.</em></p>
<p>La <strong>demostraci&oacute;n </strong>consiste en &nbsp;una interpretaci&oacute;n matricial de todo el proceso de ortonormalizaci&oacute;n de Gram-Schmidt aplicado a las columnas $\{ a_1,a_2,\dots,a_n\}$ de la matriz $A$ y que ser&aacute; estudiado en clase te&oacute;rica m&aacute;s adelante. A continuaci&oacute;n se proporciona la formulaci&oacute;n resultante de dicho proceso.</p>
<p>Si $\{ q_1,q_2,\dots,q_n\}$ son las columnas de la matriz buscada $Q$, resultado del proceso de ortonormalizaci&oacute;n de Gram-Schmit aplicado sobre las columnas de $A$, tenemos las siguientes f&oacute;rmulas</p>
<p>$$y_1=a_1,\ \ \ \ y_{k+1}=a_{k+1}-\sum_{i=1}^{k} \frac{&lt;y_i,a_{k+1}&gt;}{&lt;y_i,y_i&gt;}y_i,\ \ \ \ k=1,\dots,n-1$$</p>
<p>$$q_k=\frac{y_k}{\parallel y_k\parallel_2},\ \ \ \ k=1,\dots,n$$</p>
<p>donde $&lt;a,b&gt;$ representa el producto escalar usual en $\mathbb{R}^m$ y $\parallel a \parallel_2$ es la norma eucl&iacute;dea asociada.</p>
<p>Adem&aacute;s, sabemos, cada $y_{k+1}$ es ortogonal a todos los vectores precedentes $\{y_1,\dots,y_k\}$ y, consecuentemente, tambi&eacute;n es ortogonal a los vectores $\{a_1,\dots,a_k\}$, para $k=1,\dots,n-1$; esto es $&lt;y_{k+1},a_i&gt;=0$ para $i=1,2,\dots k$.</p>
<p>Ahora bien, el producto matricial</p>
<p>$$Q^tA=\left(\begin{array}{c} q_1^t \\ q_2^t\\ \vdots \\ q_n^t\end{array}\right)\left( a_1\ a_2\ \dots \ a_n\right)=\left(\begin{array}{cccc} q_1^t a_1 &amp; q_1^t a_2 &amp; \cdots &amp; q_1^t a_n\\ q_2^t a_1 &amp; q_2^t a_2 &amp; \cdots &amp; q_2^t a_n\\ \vdots &amp; \vdots &amp; \ddots &amp; \vdots \\ q_n^t a_1 &amp; q_n^t a_2 &amp; \cdots &amp; q_n^t a_n\end{array}\right)=$$</p>
<p>$$=\left(\begin{array}{cccc} &lt;q_1, a_1&gt; &amp; &lt;q_1, a_2&gt; &amp; \cdots &amp; &lt;q_1, a_n&gt;\\ &lt;q_2, a_1&gt; &amp; &lt;q_2, a_2&gt; &amp; \cdots &amp; &lt;q_2, a_n&gt;\\ \vdots &amp; \vdots &amp; \ddots &amp; \vdots \\ &lt;q_n, a_1&gt; &amp; &lt;q_n, a_2&gt; &amp; \cdots &amp; &lt;q_n,a_n&gt;\end{array}\right)=\left(\begin{array}{cccc} &lt;q_1, a_1&gt; &amp; &lt;q_1, a_2&gt; &amp; \cdots &amp; &lt;q_1, a_n&gt;\\ 0 &amp; &lt;q_2, a_2&gt; &amp; \cdots &amp; &lt;q_2, a_n&gt;\\ \vdots &amp; \vdots &amp; \ddots &amp; \vdots \\ 0 &amp; 0 &amp; \cdots &amp; &lt;q_n,a_n&gt;\end{array}\right)=R$$</p>
<p>De donde $Q^tA=R$ es una matriz triangular superior y cada $r_{ii}=&lt;q_i,a_i&gt;\neq 0$, por lo que $R$ es tambi&eacute;n una matriz no singular. Finalmente, multiplicando por $Q$ resulta &nbsp;$QQ^tA=QR\longrightarrow IA=QR\longrightarrow A=QR$.</p>
<p style="text-align: center;"><span style="color: #0000ff;"><br /></span></p>

︡e4715ec4-0ecc-4568-9c76-d578c202998d︡{"html": "<h3><strong><a name=\"QR\"></a></strong></h3>\n<h3><strong>Factorizaci&oacute;n QR de una matriz</strong></h3>\n<p><strong>Teorema</strong></p>\n<p><em>Dada una matriz $A\\in \\mathbb{R}^{m x n}$ de rango $n$, existe una matriz&nbsp; $Q\\in \\mathbb{R}^{m x n}$ y otra $R$ no singular de orden $n$, tales que $A=QR$, donde $Q^tQ=I_n\\ $ &nbsp;y $R$ es triangular superior.</em></p>\n<p>La <strong>demostraci&oacute;n </strong>consiste en &nbsp;una interpretaci&oacute;n matricial de todo el proceso de ortonormalizaci&oacute;n de Gram-Schmidt aplicado a las columnas $\\{ a_1,a_2,\\dots,a_n\\}$ de la matriz $A$ y que ser&aacute; estudiado en clase te&oacute;rica m&aacute;s adelante. A continuaci&oacute;n se proporciona la formulaci&oacute;n resultante de dicho proceso.</p>\n<p>Si $\\{ q_1,q_2,\\dots,q_n\\}$ son las columnas de la matriz buscada $Q$, resultado del proceso de ortonormalizaci&oacute;n de Gram-Schmit aplicado sobre las columnas de $A$, tenemos las siguientes f&oacute;rmulas</p>\n<p>$$y_1=a_1,\\ \\ \\ \\ y_{k+1}=a_{k+1}-\\sum_{i=1}^{k} \\frac{&lt;y_i,a_{k+1}&gt;}{&lt;y_i,y_i&gt;}y_i,\\ \\ \\ \\ k=1,\\dots,n-1$$</p>\n<p>$$q_k=\\frac{y_k}{\\parallel y_k\\parallel_2},\\ \\ \\ \\ k=1,\\dots,n$$</p>\n<p>donde $&lt;a,b&gt;$ representa el producto escalar usual en $\\mathbb{R}^m$ y $\\parallel a \\parallel_2$ es la norma eucl&iacute;dea asociada.</p>\n<p>Adem&aacute;s, sabemos, cada $y_{k+1}$ es ortogonal a todos los vectores precedentes $\\{y_1,\\dots,y_k\\}$ y, consecuentemente, tambi&eacute;n es ortogonal a los vectores $\\{a_1,\\dots,a_k\\}$, para $k=1,\\dots,n-1$; esto es $&lt;y_{k+1},a_i&gt;=0$ para $i=1,2,\\dots k$.</p>\n<p>Ahora bien, el producto matricial</p>\n<p>$$Q^tA=\\left(\\begin{array}{c} q_1^t \\\\ q_2^t\\\\ \\vdots \\\\ q_n^t\\end{array}\\right)\\left( a_1\\ a_2\\ \\dots \\ a_n\\right)=\\left(\\begin{array}{cccc} q_1^t a_1 &amp; q_1^t a_2 &amp; \\cdots &amp; q_1^t a_n\\\\ q_2^t a_1 &amp; q_2^t a_2 &amp; \\cdots &amp; q_2^t a_n\\\\ \\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots \\\\ q_n^t a_1 &amp; q_n^t a_2 &amp; \\cdots &amp; q_n^t a_n\\end{array}\\right)=$$</p>\n<p>$$=\\left(\\begin{array}{cccc} &lt;q_1, a_1&gt; &amp; &lt;q_1, a_2&gt; &amp; \\cdots &amp; &lt;q_1, a_n&gt;\\\\ &lt;q_2, a_1&gt; &amp; &lt;q_2, a_2&gt; &amp; \\cdots &amp; &lt;q_2, a_n&gt;\\\\ \\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots \\\\ &lt;q_n, a_1&gt; &amp; &lt;q_n, a_2&gt; &amp; \\cdots &amp; &lt;q_n,a_n&gt;\\end{array}\\right)=\\left(\\begin{array}{cccc} &lt;q_1, a_1&gt; &amp; &lt;q_1, a_2&gt; &amp; \\cdots &amp; &lt;q_1, a_n&gt;\\\\ 0 &amp; &lt;q_2, a_2&gt; &amp; \\cdots &amp; &lt;q_2, a_n&gt;\\\\ \\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots \\\\ 0 &amp; 0 &amp; \\cdots &amp; &lt;q_n,a_n&gt;\\end{array}\\right)=R$$</p>\n<p>De donde $Q^tA=R$ es una matriz triangular superior y cada $r_{ii}=&lt;q_i,a_i&gt;\\neq 0$, por lo que $R$ es tambi&eacute;n una matriz no singular. Finalmente, multiplicando por $Q$ resulta &nbsp;$QQ^tA=QR\\longrightarrow IA=QR\\longrightarrow A=QR$.</p>\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\"><br /></span></p>"}︡
︠151bd16a-c57e-4c9e-9398-dd96bb1fc4ffi︠
%html
<p>La siguiente funci&oacute;n&nbsp;proporciona la descomposici&oacute;n $A=QR$, siguiendo el proceso vectorial descrito anteriormente:</p>
<p style="text-align: center;"><span style="color: #0000ff;">Q, R = factorizacion_QR(A)</span></p>
<p>&nbsp;</p>

︡2f4af804-5d19-437c-b1bd-e147ce0a6cd6︡{"html": "<p>La siguiente funci&oacute;n&nbsp;proporciona la descomposici&oacute;n $A=QR$, siguiendo el proceso vectorial descrito anteriormente:</p>\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\">Q, R = factorizacion_QR(A)</span></p>\n<p>&nbsp;</p>"}︡
︠baa055b3-6847-4d19-88c9-24ed3ce491ff︠
#auto
def tril(A,k):
    L = copy(A)
    m = L.nrows()
    n = L.ncols()
    for i in range(m):
        for j in range(i + 1 + k, n):
            L[i, j] = 0
    return(L)
    
def triu(A):
    L = copy(A).transpose()
    return(tril(L, 0).transpose())
    
def factorizacion_QR(A):
    m = A.nrows()
    n = A.ncols()
    Q = A[:, 0]/(A[:, 0]).norm()
    for i in range(1, n):
        v = A[:, i]
        for j in range(Q.ncols()):
            p = -(v.transpose()[0])*(Q.transpose()[j])
            v = v+p*Q[:, j]
            v = v/v.norm(2)
        Q = Q.augment(v)
    R = triu(Q.transpose()*A)
    return Q, R
︡fe7ab652-e6a3-4edc-a68c-bd2434f72a90︡︡
︠4f2c8f19-4eb4-459d-a229-314c88e348fbi︠
%html
<h3><span style="color: #0000ff;">Ejemplo 1</span></h3>
<p>Vamos a hallar la factorizaci&oacute;n $QR$ de una matriz $A$ de orden 3:</p>

︡5db0cb3a-4898-466c-a455-f0ec5ca0df9a︡{"html": "<h3><span style=\"color: #0000ff;\">Ejemplo 1</span></h3>\n<p>Vamos a hallar la factorizaci&oacute;n $QR$ de una matriz $A$ de orden 3:</p>"}︡
︠d4fa1f11-7d6c-471e-a05c-cc90183f4bf0︠
A = matrix(RDF, [[1, 2, -1], [3, 4, 0],[-1, 0, 1]])
show(A)
︡f49f968e-93bd-427a-97e4-81ac61928379︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n1.0 & 2.0 & -1.0 \\\\\n3.0 & 4.0 & 0.0 \\\\\n-1.0 & 0.0 & 1.0\n\\end{array}\\right)", "display": true}}︡
︠fceaf0fd-c4a4-4b8a-a409-bc4b75588ba7︠
Q, R = factorizacion_QR(A)
show(Q)
show(R)
︡4167dd40-90d9-4993-b6b6-9a571ba9bfb2︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n0.301511344578 & 0.492365963917 & -0.816496580928 \\\\\n0.904534033733 & 0.123091490979 & 0.408248290464 \\\\\n-0.301511344578 & 0.861640436855 & 0.408248290464\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n3.31662479036 & 4.22115882409 & -0.603022689156 \\\\\n0.0 & 1.47709789175 & 0.369274472938 \\\\\n0.0 & 0.0 & 1.22474487139\n\\end{array}\\right)", "display": true}}︡
︠9329cbba-ec3e-424b-bb0b-88ee64cb185fi︠
%html
<p>Comprobamos si la factorizaci&oacute;n $QR$ es correcta:</p>

︡9ef7c6d2-6d00-4119-8558-054dd92e1a0b︡{"html": "<p>Comprobamos si la factorizaci&oacute;n $QR$ es correcta:</p>"}︡
︠e8223335-ae88-4b12-b421-83266f4c0b06︠
Q*R == A
︡7d5e50be-5800-438c-8399-67d39bd8cd17︡{"stdout": "False"}︡
︠9d7c0933-9fa5-4a84-b8df-1e9b059c4808︠
Q*R - A
︡0c7508fe-e958-43a2-a258-5a4111782df7︡{"stdout": "[-2.220446049250313e-16  4.440892098500626e-16                    0.0]\n[-4.440892098500626e-16                    0.0 -5.551115123125783e-17]\n[ 2.220446049250313e-16  6.661338147750939e-16 -2.220446049250313e-16]"}︡
︠f70a8ee2-49a3-4a4e-b8ea-a5e6c8e4a021i︠
%html
<p>Obs&eacute;rvese que las diferencias entre $QR$ y $A$ se deben a peque&ntilde;os errores de redondeo, del orden de $10^{-16}$ aproximadamente. Existe un m&eacute;todo en Sage que, aplicado sobre una matriz $A$, devuelve otra matriz donde se sustituyen&nbsp; los n&uacute;meros pr&oacute;ximos a cero por cero, con un nivel de tolerancia determinado, es decir, que si $|a|&lt;tol$ entonces reemplazamos $a=0$. La sintaxis es</p>
<p><span style="font-family: arial,helvetica,sans-serif; color: #0000ff;">A.zero_at(tol)</span></p>
<p>donde tol es el nivel de tolerancia.</p>
<p>Lo aplicamos al resultado anterior, con un nivel de tolerancia tol=$10^{-15}$.</p>

︡b7e9f69e-1316-4f84-89d9-da7a789e8525︡{"html": "<p>Obs&eacute;rvese que las diferencias entre $QR$ y $A$ se deben a peque&ntilde;os errores de redondeo, del orden de $10^{-16}$ aproximadamente. Existe un m&eacute;todo en Sage que, aplicado sobre una matriz $A$, devuelve otra matriz donde se sustituyen&nbsp; los n&uacute;meros pr&oacute;ximos a cero por cero, con un nivel de tolerancia determinado, es decir, que si $|a|&lt;tol$ entonces reemplazamos $a=0$. La sintaxis es</p>\n<p><span style=\"font-family: arial,helvetica,sans-serif; color: #0000ff;\">A.zero_at(tol)</span></p>\n<p>donde tol es el nivel de tolerancia.</p>\n<p>Lo aplicamos al resultado anterior, con un nivel de tolerancia tol=$10^{-15}$.</p>"}︡
︠9d242f7d-2ce6-4fb4-8930-4d7ffff1fb93︠
(Q*R - A).zero_at(10^-15) # comprobamos que, salvo pequeños errores, QR = A   pues   QR-A = O
︡1bbbb551-5d99-4733-bf7a-42f5b93c4989︡{"stdout": "[0.0 0.0 0.0]\n[0.0 0.0 0.0]\n[0.0 0.0 0.0]"}︡
︠d2c59130-bdaa-4ecc-9a6e-3e246aa9e355︠
(Q*R - A).zero_at(10^-16) # si bajamos el nivel de tolerancia, siguen visibles algunos errores
︡a779b98a-2dd9-4853-8167-de488fa8b42f︡{"stdout": "[-2.220446049250313e-16  4.440892098500626e-16                    0.0]\n[-4.440892098500626e-16                    0.0                    0.0]\n[ 2.220446049250313e-16  6.661338147750939e-16 -2.220446049250313e-16]"}︡
︠a4bbf318-c3b5-492d-9250-11efb3f0cb16i︠
%html
<p>Otra posibilidad para comprobar c&oacute;mo de pr&oacute;ximos est&aacute;n los valores de las matrices&nbsp; $QR$ y $A$ es hallar la norma matricial de $QR-A$ para ver si est&aacute; pr&oacute;xima a cero.</p>

︡e11b3329-60b5-4ef6-89c7-cae5c268ac52︡{"html": "<p>Otra posibilidad para comprobar c&oacute;mo de pr&oacute;ximos est&aacute;n los valores de las matrices&nbsp; $QR$ y $A$ es hallar la norma matricial de $QR-A$ para ver si est&aacute; pr&oacute;xima a cero.</p>"}︡
︠10e21d89-80b7-431c-8ccf-dfb2e9fdd87b︠
(Q*R - A).norm(2)
︡926cf3c6-fa68-480d-b14c-8e705ed2e092︡{"stdout": "8.267182955174136e-16"}︡
︠917f6aa9-388f-49e3-af45-78ad518b7f28i︠
%html
<p>Comprobamos finalmente si $Q^t Q = I$:</p>

︡5a5566de-d0ca-459c-ad5e-387aea0ad70b︡{"html": "<p>Comprobamos finalmente si $Q^t Q = I$:</p>"}︡
︠07469d87-74f6-44de-90f4-65e1f9773f60︠
show(Q)
︡62b4090e-3ade-411d-8b71-9395ac988d67︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n0.301511344578 & 0.492365963917 & -0.816496580928 \\\\\n0.904534033733 & 0.123091490979 & 0.408248290464 \\\\\n-0.301511344578 & 0.861640436855 & 0.408248290464\n\\end{array}\\right)", "display": true}}︡
︠985fb9f4-905b-4cda-923f-e15f89194da4︠
show(Q.transpose()*Q - 1)  # calculamos el valor numérico de   Q^t*Q-I
︡91502f02-146c-49da-832d-2e5443a8e257︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n-2.22044604925 \\times 10^{-16} & 2.77555756156 \\times 10^{-16} & -2.08166817117 \\times 10^{-16} \\\\\n2.77555756156 \\times 10^{-16} & -2.22044604925 \\times 10^{-16} & 1.11022302463 \\times 10^{-16} \\\\\n-2.08166817117 \\times 10^{-16} & 1.11022302463 \\times 10^{-16} & 0.0\n\\end{array}\\right)", "display": true}}︡
︠3b50ef1d-b1c0-4f7d-8989-9ea50d829651︠
(Q.transpose()*Q - 1).norm(2)
︡ce9cec6f-c898-45e2-ba1e-b8dc42b2d849︡{"stdout": "5.874175344655736e-16"}︡
︠6cd6f508-6b15-492c-8be8-d6fee523bc62︠
(Q.transpose()*Q - 1).zero_at(10^-15)
︡94b29c20-9a23-4dc1-9e4e-b312859a8e25︡{"stdout": "[0.0 0.0 0.0]\n[0.0 0.0 0.0]\n[0.0 0.0 0.0]"}︡
︠6a2f11ba-b5db-4c48-aaf8-4e22a4d96429i︠
%html
<h3><span style="color: #0000ff;">Ejemplo 2</span></h3>
<p>Sea &nbsp;$H_{15}$ la&nbsp;matriz de Hilbert de orden $15$ (los elementos de&nbsp;$H_{n}$ vienen definidos como&nbsp;$h_{ij}= \displaystyle \frac{1}{i+j-1}, \ \ \ &nbsp; \forall&nbsp;i,j=1,\dots, n$) .</p>
<p>Calcular la descomposici&oacute;n $QR$ para la matriz $H_{15}$&nbsp;y analizar los errores cometidos.</p>

︡5edfedad-8d4e-4ad4-9c5e-eaa629fe7dad︡{"html": "<h3><span style=\"color: #0000ff;\">Ejemplo 2</span></h3>\n<p>Sea &nbsp;$H_{15}$ la&nbsp;matriz de Hilbert de orden $15$ (los elementos de&nbsp;$H_{n}$ vienen definidos como&nbsp;$h_{ij}= \\displaystyle \\frac{1}{i+j-1}, \\ \\ \\ &nbsp; \\forall&nbsp;i,j=1,\\dots, n$) .</p>\n<p>Calcular la descomposici&oacute;n $QR$ para la matriz $H_{15}$&nbsp;y analizar los errores cometidos.</p>"}︡
︠ec874ad7-ea9b-4350-8236-84918862f428︠
#auto    

###  facilitamos una función que genera la matriz de Hilbert de orden n

def matrizHilbert(n):
    return matrix(QQ, [[1/(i + j - 1) for i in range(1, n + 1)] for j in range(1, n + 1)])
︡bebce90c-7545-424a-9548-67047e68b8f7︡︡
︠19c84839-135b-4a76-addd-64d8d94b9381︠
A = matrizHilbert(15).n()
︡2e2d9388-e07d-4af6-82d7-cd86c5a74173︡︡
︠bd32761e-e462-4049-abc6-d109b7bb4fa8︠
Q, R = factorizacion_QR(A)
︡94bbfa28-0d8d-427b-8c5b-734100c8c9be︡︡
︠57dfda45-08b9-409c-8c0b-50fdc5d7f758︠
(Q*R - A).norm(2)
︡21f9293f-a5d1-471a-88ac-8eae2f29a309︡{"stdout": "0.31006821489289954"}︡
︠68421597-1b26-4221-a475-65f99c1c34ec︠
(Q.transpose()*Q - 1).norm(2)
︡6a721d80-809e-4a01-b2e6-ba3c5172bccf︡{"stdout": "0.9853997106305209"}︡
︠889ee0d9-52a0-4dba-8117-6a1ad60435b9i︠
%html
<p>En este ejemplo, los errores num&eacute;ricos son considerablemente grandes. En consecuencia, tal descomposici&oacute;n obtenida no puede utilizarse en c&aacute;lculos pr&aacute;cticos poque no tendr&iacute;an validez o fiabilidad.</p>
<p>Podemos intentar identificar las matrices que tienen un mal comportamiento num&eacute;rico con ayuda del estudio del n&uacute;mero de condici&oacute;n de tales matrices.</p>

<p>La siguiente funci&oacute;n proporciona el n&uacute;mero de condici&oacute;n de una matriz $A$ regular, para la norma especificada:</p>
<p style="text-align: center;"><span style="color: #0000ff;">numero_condicion(A, p)</span></p>
<p>donde p=1 se refiere a la norma-1, p=2 para la norma eucl&iacute;dea (valor por defecto) y p=Infinity para la &nbsp;norma infinito. Si la matriz es singular, entonces devuelve el valor 0.</p>

︡f93302c2-e4e3-47a6-b57b-2660e878a23c︡{"html": "<p>En este ejemplo, los errores num&eacute;ricos son considerablemente grandes. En consecuencia, tal descomposici&oacute;n obtenida no puede utilizarse en c&aacute;lculos pr&aacute;cticos poque no tendr&iacute;an validez o fiabilidad.</p>\n<p>Podemos intentar identificar las matrices que tienen un mal comportamiento num&eacute;rico con ayuda del estudio del n&uacute;mero de condici&oacute;n de tales matrices.</p>\n\n<p>La siguiente funci&oacute;n proporciona el n&uacute;mero de condici&oacute;n de una matriz $A$ regular, para la norma especificada:</p>\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\">numero_condicion(A, p)</span></p>\n<p>donde p=1 se refiere a la norma-1, p=2 para la norma eucl&iacute;dea (valor por defecto) y p=Infinity para la &nbsp;norma infinito. Si la matriz es singular, entonces devuelve el valor 0.</p>"}︡
︠d642216a-8306-482b-9e67-bb2d6a22c061︠
#auto
def numero_condicion(A, p = 2):
    try:
        B = A.inverse() 
        cond = 1
        if p == 2: 
            cond = A.norm(2)*B.norm(2) 
        if p == 1: 
            cond = A.norm(1)*B.norm(1) 
        if p == Infinity: 
            cond = A.norm(Infinity)*B.norm(Infinity) 
    except ZeroDivisionError:
        cond = 0
    return cond
︡c1b28a59-41cb-4465-a530-c2dc57eef1bd︡︡
︠6321110d-e965-4c0a-a6e7-2bc35daf00c6︠
numero_condicion(A)
︡9b41ba2a-9dee-4ebe-93bb-d2fd327d8014︡{"stdout": "4.197819332639827e+17"}︡
︠bb0d80cb-db05-4abe-9d42-c627357195eci︠
%html
<p>Observamos que la matriz de Hilbert de orden 15 tiene un n&uacute;mero de condici&oacute;n superior a $4\cdot 10^{17}$, de ah&iacute; su mal comportamiento en los c&aacute;lculos num&eacute;ricos de su descomposici&oacute;n QR.</p>
<p>Las matrices de Hilbert son conocidas en la literatura matem&aacute;tica por tratarse de ejemplos de matrices muy mal condicionadas para realizar c&aacute;lculos num&eacute;ricos con ellas.</p>
<p>En vista de los resultados obtenidos anteriormente, el m&eacute;todo de descomposici&oacute;n $QR$ por ortonormalizaci&oacute;n de Gram-Schmidt puede amplificar errores para matrices mal condicionadas, obteni&eacute;ndose que la matriz $Q$ de la descomposici&oacute;n no es ortogonal, lo que invalida dicha descomposici&oacute;n. En consecuencia habr&iacute;a que introducir alg&uacute;n refinamiento o m&eacute;todo alternativo para abordar este tipo de descomposici&oacute;n, que tuviera en cuenta el condicionamiento de las matrices. Estudiaremos otras formas alternativas de descomposiciones $QR$ en pr&oacute;ximos temas.</p>

︡2120aea8-9877-4094-b5b3-d7417d80d398︡{"html": "<p>Observamos que la matriz de Hilbert de orden 15 tiene un n&uacute;mero de condici&oacute;n superior a $4\\cdot 10^{17}$, de ah&iacute; su mal comportamiento en los c&aacute;lculos num&eacute;ricos de su descomposici&oacute;n QR.</p>\n<p>Las matrices de Hilbert son conocidas en la literatura matem&aacute;tica por tratarse de ejemplos de matrices muy mal condicionadas para realizar c&aacute;lculos num&eacute;ricos con ellas.</p>\n<p>En vista de los resultados obtenidos anteriormente, el m&eacute;todo de descomposici&oacute;n $QR$ por ortonormalizaci&oacute;n de Gram-Schmidt puede amplificar errores para matrices mal condicionadas, obteni&eacute;ndose que la matriz $Q$ de la descomposici&oacute;n no es ortogonal, lo que invalida dicha descomposici&oacute;n. En consecuencia habr&iacute;a que introducir alg&uacute;n refinamiento o m&eacute;todo alternativo para abordar este tipo de descomposici&oacute;n, que tuviera en cuenta el condicionamiento de las matrices. Estudiaremos otras formas alternativas de descomposiciones $QR$ en pr&oacute;ximos temas.</p>"}︡
︠aa1c6dfa-dab9-46f1-b216-be8db7bf1b69i︠
%html
<h3><strong><a name="resolucion"></a></strong></h3>
<h3><strong>Aplicaci&oacute;n de la descomposici&oacute;n $QR$ a la resoluci&oacute;n de sistemas lineales</strong></h3>
<p>Dado un&nbsp; sistema lineal&nbsp; $Ax=b$, si la matriz $A$ cuadrada admite descomposici&oacute;n $A=QR$ donde $Q$ es una <strong>matriz ortogonal</strong> ($Q^t=Q^{-1}$) y $R$ es una matriz triangular superior, podemos hacer la siguiente transformaci&oacute;n:</p>
<p>$$Ax=b\longleftrightarrow QRx=b\longleftrightarrow Rx=Q^tb$$</p>
<p>de donde resulta un sistema lineal equivalente con matriz de coeficientes triangular. El coste computacional para resolver dicho sistema es de orden $n^2$, siendo $n$ el orden de la matriz $A$, sin embargo, el coste computacional de la descomposici&oacute;n $QR$ a partir del m&eacute;todo de Gram-Schmidt es superior a cualquier m&eacute;todo de escalonamiento del sistema original de los ya estudiados. &iquest;D&oacute;nde radica el inter&eacute;s? En el condicionamiento de los sistemas resultantes. Sabemos que, para la norma eucl&iacute;dea (o espectral) de las matrices, el n&uacute;mero de condici&oacute;n de una matriz es 1 (el m&iacute;nimo posible) si y solo si dicha matriz es ortogonal y adem&aacute;s $\kappa(A)=\kappa(QR)=\kappa(R)$ por ser $Q$ matriz ortogonal. En conclusi&oacute;n, los sistemas $Ax=b$ y $Rx=Q^tb$ est&aacute;n igualmente condicionados. Esto no sucede con los m&eacute;todos de escalonamiento, donde la matriz $A$ admite una descomposici&oacute;n del tipo $PA=LU$ siendo $P$ una matriz de permutaci&oacute;n (y por tanto ortogonal), $L$ una matriz triangular inferior unitaria y $U$ una matriz triangular superior. En tales casos resulta $\kappa(PA)=\kappa(A)=\kappa(LU)\leq\kappa(L)\kappa(U)$. Al resolverse el sistema lineal $Ax=b$ en tres etapas:</p>
<p style="text-align: center;">1&ordm;.-&nbsp;&nbsp; $b'=Pb$ &nbsp; &nbsp; 2&ordm;.-&nbsp;&nbsp;&nbsp; $Lg=b'$&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3&ordm;.- $Ux=g$</p>
<p>los errores de una etapa se transmiten a la siguiente, pudiendo amplificarse hasta el l&iacute;mite marcado por el n&uacute;mero de condici&oacute;n de la matriz de cada etapa. As&iacute;, en general, $\kappa(A)$ es bastante menor que $\kappa(L)\kappa(U)$ con lo que corremos el riesgo, al escalonar, que la soluci&oacute;n final est&eacute; afectada de mayores errores que utilizando el m&eacute;todo de descomposici&oacute;n $QR$.</p>

︡e4f16045-1ce6-475c-9f90-c112d405004c︡{"html": "<h3><strong><a name=\"resolucion\"></a></strong></h3>\n<h3><strong>Aplicaci&oacute;n de la descomposici&oacute;n $QR$ a la resoluci&oacute;n de sistemas lineales</strong></h3>\n<p>Dado un&nbsp; sistema lineal&nbsp; $Ax=b$, si la matriz $A$ cuadrada admite descomposici&oacute;n $A=QR$ donde $Q$ es una <strong>matriz ortogonal</strong> ($Q^t=Q^{-1}$) y $R$ es una matriz triangular superior, podemos hacer la siguiente transformaci&oacute;n:</p>\n<p>$$Ax=b\\longleftrightarrow QRx=b\\longleftrightarrow Rx=Q^tb$$</p>\n<p>de donde resulta un sistema lineal equivalente con matriz de coeficientes triangular. El coste computacional para resolver dicho sistema es de orden $n^2$, siendo $n$ el orden de la matriz $A$, sin embargo, el coste computacional de la descomposici&oacute;n $QR$ a partir del m&eacute;todo de Gram-Schmidt es superior a cualquier m&eacute;todo de escalonamiento del sistema original de los ya estudiados. &iquest;D&oacute;nde radica el inter&eacute;s? En el condicionamiento de los sistemas resultantes. Sabemos que, para la norma eucl&iacute;dea (o espectral) de las matrices, el n&uacute;mero de condici&oacute;n de una matriz es 1 (el m&iacute;nimo posible) si y solo si dicha matriz es ortogonal y adem&aacute;s $\\kappa(A)=\\kappa(QR)=\\kappa(R)$ por ser $Q$ matriz ortogonal. En conclusi&oacute;n, los sistemas $Ax=b$ y $Rx=Q^tb$ est&aacute;n igualmente condicionados. Esto no sucede con los m&eacute;todos de escalonamiento, donde la matriz $A$ admite una descomposici&oacute;n del tipo $PA=LU$ siendo $P$ una matriz de permutaci&oacute;n (y por tanto ortogonal), $L$ una matriz triangular inferior unitaria y $U$ una matriz triangular superior. En tales casos resulta $\\kappa(PA)=\\kappa(A)=\\kappa(LU)\\leq\\kappa(L)\\kappa(U)$. Al resolverse el sistema lineal $Ax=b$ en tres etapas:</p>\n<p style=\"text-align: center;\">1&ordm;.-&nbsp;&nbsp; $b'=Pb$ &nbsp; &nbsp; 2&ordm;.-&nbsp;&nbsp;&nbsp; $Lg=b'$&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3&ordm;.- $Ux=g$</p>\n<p>los errores de una etapa se transmiten a la siguiente, pudiendo amplificarse hasta el l&iacute;mite marcado por el n&uacute;mero de condici&oacute;n de la matriz de cada etapa. As&iacute;, en general, $\\kappa(A)$ es bastante menor que $\\kappa(L)\\kappa(U)$ con lo que corremos el riesgo, al escalonar, que la soluci&oacute;n final est&eacute; afectada de mayores errores que utilizando el m&eacute;todo de descomposici&oacute;n $QR$.</p>"}︡
︠de0f535d-0833-4b2f-8754-e9fb144ddb02i︠
%html
<h3><span style="color: #0000ff;">Ejemplo 3</span></h3>
<p>a) Generar una matriz aleatoria $A$ cuadrada de orden 20.</p>
<p>b) Comprobar &nbsp;que el n&uacute;mero de condici&oacute;n, para la norma eucl&iacute;dea, en la descomposici&oacute;n $QR=A$ es el mismo para las matrices $A$ y $R$ y que, adem&aacute;s, como $Q$ es una matriz ortogonal, tiene $\kappa_2(Q)=1$.</p>
<p>c) Comprobar que para la descomposici&oacute;n $PA=LU$ estudiada en temas anteriores, sucede que $\kappa(A)$ es bastante menor que $\kappa(L)\kappa(U)$.</p>
<p>d) Repetir el proceso tomando como A la matriz de Hilbert de orden 20. Comparar las soluciones que se obtiene del sistema cuya soluci&oacute;n es el vector $(1,\ldots ,1)^T$ seg&uacute;n los m&eacute;todos descritos en los apartados b) y c).</p>
<p><strong>Observaci&oacute;n:</strong> Para los apartados c y d, se redefine aqu&iacute; la funci&oacute;n <em>descompPLU</em> de la Pr&aacute;ctica 2 y los procedimientos auxiliares modld y sustre2.</p>

︡f3bb2464-45f6-4d0b-b32c-f1c686dce2ee︡{"html": "<h3><span style=\"color: #0000ff;\">Ejemplo 3</span></h3>\n<p>a) Generar una matriz aleatoria $A$ cuadrada de orden 20.</p>\n<p>b) Comprobar &nbsp;que el n&uacute;mero de condici&oacute;n, para la norma eucl&iacute;dea, en la descomposici&oacute;n $QR=A$ es el mismo para las matrices $A$ y $R$ y que, adem&aacute;s, como $Q$ es una matriz ortogonal, tiene $\\kappa_2(Q)=1$.</p>\n<p>c) Comprobar que para la descomposici&oacute;n $PA=LU$ estudiada en temas anteriores, sucede que $\\kappa(A)$ es bastante menor que $\\kappa(L)\\kappa(U)$.</p>\n<p>d) Repetir el proceso tomando como A la matriz de Hilbert de orden 20. Comparar las soluciones que se obtiene del sistema cuya soluci&oacute;n es el vector $(1,\\ldots ,1)^T$ seg&uacute;n los m&eacute;todos descritos en los apartados b) y c).</p>\n<p><strong>Observaci&oacute;n:</strong> Para los apartados c y d, se redefine aqu&iacute; la funci&oacute;n <em>descompPLU</em> de la Pr&aacute;ctica 2 y los procedimientos auxiliares modld y sustre2.</p>"}︡
︠9f1145a7-3fe4-4102-9778-8cfccd49c85aas︠
%auto
def descompPLU(M):
    A = copy(M)
    m = A.nrows(); n = A.ncols()
    piv = range(n)
    for k in range(m):
        [vmax, q] = max([[abs(A[s, k]), s] for s in range(k, m)])
        if q != k:
            piv[k], piv[q] = piv[q], piv[k]
            A.swap_rows(q, k)
        if A[k, k] != 0:
            for t in range(k + 1, m):
                A[t, k] = A[t, k]/A[k, k]
                for v in range(k + 1, n):
                    A[t, v] = A[t, v] - A[t, k]*A[k, v]
    L = identity_matrix(base_ring(A), m) + tril(A, -1)
    U = triu(A)
    P = identity_matrix(base_ring(A), m).matrix_from_rows(piv)
    return P, L, U

def modld(L, b):
    g = copy(b)
    n = len(b)
    for k in range(n - 1):
        for j in range(k + 1, n):
            g[j] = g[j] - g[k]*L[j, k]
    return g
    
def sustre2(U, g):
    n = U.ncols()
    x = copy(g)
    x[n - 1] = g[n - 1]/U[n - 1, n - 1]
    for k in range(n - 2, -1, -1):
        x[k] = (g[k] - sum(U[k, j]*x[j] for j in range(k + 1, n)))/U[k, k]
    return x
︡81c542fe-86cd-4702-84b1-8f9a5e74224e︡{"done":true}︡
︠44637cda-379c-4ef6-85fd-3cdad433c1f2︠
A = random_matrix(RDF, 20)  # generamos una matriz aleatoria de orden 20 y elementos en el intervalo (-1,1)
︡c7756427-a542-4ef1-adb2-457c9e42eb23︡︡
︠2d11c511-a8aa-41d3-b9c7-5230befde402︠
Q, R = factorizacion_QR(A)
︡4271258a-d762-4ed4-a29f-c2e5e5555034︡︡
︠5d93c1ca-d464-4320-b72a-159749e5b96b︠
nqA, nqR = numero_condicion(A), numero_condicion(R)
nqA, nqR
︡b4da56a9-e767-4b34-9bde-35d33c65b951︡{"stdout": "(31.958432275722135, 31.95843227572228)"}︡
︠93933728-b32e-4709-895d-d7f718515066︠
numero_condicion(Q)
︡8e75b395-f739-4a80-b444-0b86bc5929ab︡{"stdout": "1.0000000000000016"}︡
︠2f1b335e-d417-46cc-9033-a8ed569aa51f︠
P, L, U = descompPLU(A)  # hallamos la descomposición PLU de la matriz A
︡fbb85b03-1b36-403e-9565-4f118ad8fff1︡︡
︠c3e0996d-e7c1-4d58-942f-cc9d0620e109︠
nqA, nqU, nqL = numero_condicion(A), numero_condicion(U), numero_condicion(L)
nqA, nqU, nqL
︡a4dcc9f2-4dbb-46b7-84ee-0397768df532︡{"stdout": "(31.958432275722135, 48.79703894512114, 16.59949442782771)"}︡
︠9238aa1c-484e-49e6-85ce-1fab443054ac︠
nqU*nqL
︡f75ec5b2-a187-44d7-98d4-108c9f9b43dd︡{"stdout": "810.0061760640301"}︡
︠60f1da46-afbc-4160-8edc-c73fa597bef0︠
nqU*nqL/nqA  ### calculamos en qué proporción puede ser peor un resultado que otro
︡5c77d263-c750-4f47-87b9-dc38ac9343c0︡{"stdout": "25.34561673976003"}︡
︠ebf6738c-cb58-4143-a470-48a5001d482ei︠
%html
<p>Luego los errores de transmisi&oacute;n en la descomposici&oacute;n $PA=LU$ podr&iacute;an llegar a ser bastante mayores que en la descomposici&oacute;n $A=QR$.</p>
<p>Probamos ahora con la matriz de Hilbert de orden 20:</p>

︡782de609-8eed-4301-b6e1-1b444aeff28c︡{"html": "<p>Luego los errores de transmisi&oacute;n en la descomposici&oacute;n $PA=LU$ podr&iacute;an llegar a ser bastante mayores que en la descomposici&oacute;n $A=QR$.</p>\n<p>Probamos ahora con la matriz de Hilbert de orden 20:</p>"}︡
︠d0444a1f-9974-49f8-83be-e0b430404c7c︠
A = matrizHilbert(20)
︡389e07b4-5d19-49c1-907d-f0d7c1e0701a︡︡
︠0e9bd09d-67f3-4790-b0aa-f8df41d2a01ci︠
%html
<p>Primero generamos la soluci&oacute;n de&nbsp; $Ax=b$ tomando como vector soluci&oacute;n $x_0=(1,1,\dots, 1)$ y como vector de t&eacute;rminos independientes $b=Ax_0$. De esta forma podemos controlar los errores de c&aacute;lculo num&eacute;rico que resulten.</p>

︡cb0bf02f-bdc7-47a1-b443-4eb3aac5de75︡{"html": "<p>Primero generamos la soluci&oacute;n de&nbsp; $Ax=b$ tomando como vector soluci&oacute;n $x_0=(1,1,\\dots, 1)$ y como vector de t&eacute;rminos independientes $b=Ax_0$. De esta forma podemos controlar los errores de c&aacute;lculo num&eacute;rico que resulten.</p>"}︡
︠c77d1ce7-7e60-4e0e-a397-293015ad3898︠
x0 = vector(QQ, [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1])
b = A*x0

A*x0 == b
︡341a3211-c7f5-43ae-9032-57264a0b480e︡{"stdout": "True"}︡
︠ce999590-8757-4a53-968c-dfe924e4a96ai︠
%html
<p>Ahora pasamos tanto la matriz $A$ como el vector $b$ a valores decimales en el anillo RDF:</p>

︡95e7c9e4-6daf-4b46-8a24-0a0b701c7628︡{"html": "<p>Ahora pasamos tanto la matriz $A$ como el vector $b$ a valores decimales en el anillo RDF:</p>"}︡
︠c0d150ef-f108-46c2-a06c-d9b7f6f80425︠
A = A.change_ring(RDF)
b = vector(RDF, list(b))
︡f7cd47e8-4b73-4ea9-8fd1-d8d76dabce31︡︡
︠ad9f4a60-f8fa-4d79-b1de-e4eb1619b8e0︠
A*x0 == b   ### al pasar a valores decimales, x0 ha dejado de ser la solución exacta
︡01e7a486-3b0f-49fa-8d76-46f2e4d6bbd0︡{"stdout": "False"}︡
︠84386a6e-954a-4a77-9b7a-7c666acaceb1︠
(A*x0 - b).norm()   ### el error de aproximación es muy pequeño
︡65dab59f-7621-4115-843e-4d6bcd02559f︡{"stdout": "9.28879225241625e-16"}︡
︠0e9d65b0-1fbe-4421-a9bf-367f2fa0e30di︠
%html
<p>Ahora hallamos la soluci&oacute;n aportada mediante escalonamiento directo del sistema:</p>

︡45b1ee05-82fc-427d-b9c0-19d2125c973c︡{"html": "<p>Ahora hallamos la soluci&oacute;n aportada mediante escalonamiento directo del sistema:</p>"}︡
︠82e7b1cb-d6f5-4c61-938d-76d0820e886f︠
xd = A.solve_right(b)
xd
︡30cf50fa-adb3-4fa6-b264-8068fdd7ff47︡{"stdout": "(1.0000000258359165, 0.9999964819760394, 1.0001120060772792, 0.998626576444952, 1.0066523704847596, 1.0028997398903028, 0.8302617020281003, 1.7397444244409908, -0.2157470810107882, 0.3555723025193358, 7.3233321388189045, -10.76974655754928, 12.004124074645418, -4.6876866816124805, 2.347462947586987, 3.6114074073089184, -6.02704656480004, 8.549559466160185, -2.828783546340204, 1.7592587902809314)"}︡
︠5c55699b-ae62-4bd1-9577-2a515466bbd9i︠
%html
<p>Ahora, la soluci&oacute;n mediante descomposici&oacute;n $PA = LU$:</p>

︡8a04ac10-7f40-44fb-b513-dac68ee4e503︡{"html": "<p>Ahora, la soluci&oacute;n mediante descomposici&oacute;n $PA = LU$:</p>"}︡
︠b9f74a02-a771-4043-a68c-fed2a3cde5c8︠
P, L, U = descompPLU(A)
︡3d7c1493-0688-4fd2-a5cd-5ee2c4bdcb90︡︡
︠ffa7e4f3-e2bc-4529-8625-81ace7811a27︠
bp = P*b              # obtenemos el vector P*b
g = modld(L,bp)       # g es la solución del sistema auxiliar Lg=Pb
xplu = sustre2(U, g)  # xplu es la solución final del sistema Ux=g
xplu
︡25ff3474-122f-40d0-9c7b-ef6357c55b70︡{"stdout": "(1.0000000086426724, 0.9999986657161956, 1.000051870354066, 0.9991154891259608, 1.0081538624512598, 0.9554259795063353, 1.1480447591128848, 0.7179174753630226, 1.2219909210581241, 1.1349811979685378, 0.9046499198959809, -0.1506153244366207, 3.2583719348362883, 0.5724925380487212, -2.78859172959099, 7.021744897670579, -3.3827258983473394, 2.625929343329312, 0.7555313550930265, 0.9975327354788517)"}︡
︠e833dd95-88c4-43c9-970d-92f4477d0ea4i︠
%html
<p>Finalmente, mediante descomposici&oacute;n $A=QR$ obtenida por el m&eacute;todo de Gram-Scmidt:</p>

︡3b89a104-7be6-4dc2-ae98-b92085459138︡{"html": "<p>Finalmente, mediante descomposici&oacute;n $A=QR$ obtenida por el m&eacute;todo de Gram-Scmidt:</p>"}︡
︠368d1fa0-a07e-4407-ab6a-6efbd8fcf8b7︠
Q, R = factorizacion_QR(A)
︡66cce1c6-cf7d-4f6c-b9d5-b1861e6940ca︡︡
︠e241666f-85b2-4c1d-a021-9ba98b9abb83︠
(Q.transpose()*Q).norm('frob')
︡08d17f34-5363-4239-accc-4298a7061589︡{"stdout": "4.994014329624126"}︡
︠fa00d6a8-0bd9-4eff-b32a-de32b34ad0cc︠
(A - Q*R).norm('frob')
︡d8d1661f-3081-43e8-a02a-2b473a3a77a9︡{"stdout": "0.3571406104314039"}︡
︠a21cdb78-247e-49b0-9141-b634c53706cb︠
bq = Q.transpose()*b
xqr = sustre2(R,bq)
xqr
︡ff97f290-eaaa-4ee0-89a9-b6e0849e4d1b︡{"stdout": "(2.8872853182468163, -96.58188187929285, 1263.975828191251, -6891.783613442126, 18890.3611357611, -27169.96481425453, 19114.333576212786, -4435.025353989018, -703.5096991009256, 4.353201821174893, 3.2207786870491524, 7.730352396437635, 15.649322159940274, -27.33618841606627, -3.320535095509117, 13.280590295752525, -45.67363415987604, 25.056377897591577, 87.18471198395866, -34.44202450827505)"}︡
︠3f2007de-e54a-4c6c-ba4c-41d66b542e75i︠
%html
<p>Comparamos la norma del error obtenido por cada m&eacute;todo:</p>

︡f6936b53-7dd1-429c-add8-3334b2582d57︡{"html": "<p>Comparamos la norma del error obtenido por cada m&eacute;todo:</p>"}︡
︠1dfb50d8-ddab-47e5-b8e2-8908b1254915︠
print (xd - x0).norm()     ## método directo solve_righ
print (xplu - x0).norm()   ## método descomposicion PLU
print (xqr - x0).norm()    ## método descomposicion QR
︡63ec918d-8727-4e11-8c25-90d1716c633c︡{"stdout": "21.5561545561\n8.90581820712\n39111.2676546"}︡
︠fceeb1d3-8307-4d45-9d85-bbe1fdb6f9a8︠
print (A*x0 - b).norm()     ## error de aproximación de la solución x0
print (A*xd - b).norm()     ## error de aproximación de la solución mediante solve_right
print (A*xplu - b).norm()   ## error de aproximación mediante PLU
print (A*xqr - b).norm()    ## error de aproximación mediante QR
︡6f7db3c3-46cc-4867-903b-e8938d2348ea︡{"stdout": "9.28879225242e-16\n1.38666811331e-15\n1.20601090128e-15\n2.67170698894e-05"}︡
︠8310f09d-ef5f-47fb-9d16-1c84f9b7c037i︠
%html
<p>La soluci&oacute;n m&aacute;s pr&oacute;xima a la realidad, pese al mal condicionamiento, se obtiene mediante la descomposici&oacute;n $PLU$, seguida del escalonamiento directo y, finalmente, los peores resultados se obtienen para la factorizaci&oacute;n QR de la matriz.</p>
<p>Es una conclusi&oacute;n err&oacute;nea pensar que este tipo de ejemplos invalida el uso de la descomposici&oacute;n $QR$ como m&eacute;todo de resoluci&oacute;n de sistemas de ecuaciones. La conclusi&oacute;n es que el m&eacute;todo de Gram-Schmidt como procedimiento para obtener una descomposici&oacute;n de tipo $A=QR$ est&aacute; muy mal condicionado. En pr&oacute;ximos temas veremos t&eacute;cnicas de descomposici&oacute;n $QR$ m&aacute;s sofisticadas y que funcionan bastante mejor para sistemas mal condicionados que las t&eacute;cnicas basadas en escalonamiento; concretamente, estudiaremos factorizaciones&nbsp; $A=QR$ mediante transformaciones de Householder y mediante rotaciones de Givens.</p>

︡76e6bbfa-e83a-4dd6-97c7-0ff524d2f874︡{"html": "<p>La soluci&oacute;n m&aacute;s pr&oacute;xima a la realidad, pese al mal condicionamiento, se obtiene mediante la descomposici&oacute;n $PLU$, seguida del escalonamiento directo y, finalmente, los peores resultados se obtienen para la factorizaci&oacute;n QR de la matriz.</p>\n<p>Es una conclusi&oacute;n err&oacute;nea pensar que este tipo de ejemplos invalida el uso de la descomposici&oacute;n $QR$ como m&eacute;todo de resoluci&oacute;n de sistemas de ecuaciones. La conclusi&oacute;n es que el m&eacute;todo de Gram-Schmidt como procedimiento para obtener una descomposici&oacute;n de tipo $A=QR$ est&aacute; muy mal condicionado. En pr&oacute;ximos temas veremos t&eacute;cnicas de descomposici&oacute;n $QR$ m&aacute;s sofisticadas y que funcionan bastante mejor para sistemas mal condicionados que las t&eacute;cnicas basadas en escalonamiento; concretamente, estudiaremos factorizaciones&nbsp; $A=QR$ mediante transformaciones de Householder y mediante rotaciones de Givens.</p>"}︡
︠b994e7ad-da84-4ba1-b8f3-b7838fe5c7b2i︠
%html
<h3><span style="color: #0000ff;">Ejemplo 4</span></h3>
<p>Resolver el sistema lineal $Ax=b$ mediante la descomposici&oacute;n $A=QR$, para&nbsp;</p>
<p>$$\left(\begin{array}{ccc}1 &amp; 2 &amp; -1\\ 3 &amp; 4 &amp; 0\\ -1 &amp; 0 &amp; 1\end{array}\right),\ \ b=\left(\begin{array}{c}2\\ -1\\ 3\end{array}\right)$$</p>

︡39a5cca1-ab97-46af-819e-9b0bdefa3bf3︡{"html": "<h3><span style=\"color: #0000ff;\">Ejemplo 4</span></h3>\n<p>Resolver el sistema lineal $Ax=b$ mediante la descomposici&oacute;n $A=QR$, para&nbsp;</p>\n<p>$$\\left(\\begin{array}{ccc}1 &amp; 2 &amp; -1\\\\ 3 &amp; 4 &amp; 0\\\\ -1 &amp; 0 &amp; 1\\end{array}\\right),\\ \\ b=\\left(\\begin{array}{c}2\\\\ -1\\\\ 3\\end{array}\\right)$$</p>"}︡
︠074031a5-8c7c-4dd8-8d6c-ca760b8ea19d︠
A = matrix(RDF, [[1, 2, -1], [3, 4, 0], [-1, 0, 1]])
b = vector(RDF, [2, -1, 3]);
show(A)
show(b)
︡916c0b8d-4e78-4f53-a653-73d73704e641︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n1.0 & 2.0 & -1.0 \\\\\n3.0 & 4.0 & 0.0 \\\\\n-1.0 & 0.0 & 1.0\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(2.0,\\,-1.0,\\,3.0\\right)", "display": true}}︡
︠f8695839-d0b7-41bb-8b2c-8f9da32d2155︠
Q, R = factorizacion_QR(A)
show(Q)
show(R)
︡699b274a-648c-4225-a5bf-a062380f479b︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n0.301511344578 & 0.492365963917 & -0.816496580928 \\\\\n0.904534033733 & 0.123091490979 & 0.408248290464 \\\\\n-0.301511344578 & 0.861640436855 & 0.408248290464\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n3.31662479036 & 4.22115882409 & -0.603022689156 \\\\\n0.0 & 1.47709789175 & 0.369274472938 \\\\\n0.0 & 0.0 & 1.22474487139\n\\end{array}\\right)", "display": true}}︡
︠9c4e8883-190a-45ce-ba89-7420eba7ca87︠
bq = Q.transpose()*b; show(bq)
︡77ec427e-eec9-4c09-9a05-bf39e97af48c︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(-1.20604537831,\\,3.44656174742,\\,-0.816496580928\\right)", "display": true}}︡
︠90f282bf-396a-414b-ae84-a73c6762d2ad︠
sustre2(R, bq)
︡ba1e4d59-f933-4870-8352-5a0de83481a0︡{"stdout": "(-3.666666666666664, 2.499999999999998, -0.6666666666666657)"}︡
︠cde40d10-3126-4e09-9e92-14d1d3936953i︠
%html
<p>Comparamos con la soluci&oacute;n mediante&nbsp; escalonamiento directo:</p>

︡df078e0e-acf6-4dca-85b3-8ccc6f31ad25︡{"html": "<p>Comparamos con la soluci&oacute;n mediante&nbsp; escalonamiento directo:</p>"}︡
︠4a24483b-79ee-4a6f-9081-49172a82d9f5︠
A.solve_right(b)
︡3c91c147-f40e-42c0-944a-e27e884e4600︡{"stdout": "(-3.6666666666666665, 2.5, -0.6666666666666667)"}︡
︠0d9671b8-eacd-461f-b3ae-9d2f14101bcdi︠
%html
<h3><a name="DVS"></a></h3>
<h3>Descomposici&oacute;n en valores singulares (SVD) de una matriz</h3>
<p><strong>Teorema (Descomposici&oacute;n en valores singulares)</strong></p>
<p>Toda matriz real $A$, de orden $m\times n$ puede ser factorizada de la&nbsp;forma $A=U\Sigma V^t$ donde $U$ es una matriz ortogonal $m\times m$, $\Sigma$ es una matriz&nbsp;diagonal $m\times n$ y $V$ es una matriz ortogonal de orden $n\times n$.</p>
<p><strong>Idea constructiva de demostraci&oacute;n:</strong></p>
<p>La matriz $A^tA$ es sim&eacute;trica de orden $n\times n$ y semidefinida&nbsp;positiva.</p>
<p>Resulta, de ello, que sus autovalores son reales no negativos $\{\sigma_1^2,\sigma_2^2,\ldots,\sigma_n^2\}$, los cuales ordenaremos de mayor a menor (pudiendo estar repetidos), de&nbsp;forma que los $r$ primeros son no nulos y los $n-r$ &uacute;ltimos son nulos (puede que no haya ninguno nulo). Los&nbsp;valores positivos $\{\sigma_1,\sigma_2,\ldots,\sigma_n\}$ se definen &nbsp;como los <strong>valores singulares</strong> de&nbsp;la matriz $A$.</p>
<p>Sea $\{v_1,v_2,\ldots,v_n\}$ un conjunto ortonormal de autovectores&nbsp;de $A^tA$, dispuestos de forma que</p>
<p>$$A^tAv_i=\sigma_i^2v_i$$</p>
<p>Se verifica entonces que</p>
<p>$$\|Av_i\|^2_2=v_i^tA^tAv_i=v_i^t\sigma_i^2v_i=\sigma_i^2$$</p>
<p>Construimos la matriz $V$ de orden $n\times n$ cuyas columnas son&nbsp;$v_1,v_2,\ldots,v_n$ y definimos</p>
<p>$$u_i=\sigma_i^{-1}Av_i\ \ &nbsp;1\leq i\leq r$$</p>
<p>Los vectores $u_i$ constituyen un sistema ortonormal para&nbsp;$1\leq i,j\leq r$.</p>
<p>Elegimos vectores adicionales $u_{r+1},u_{r+2},\ldots,u_m$ de tal&nbsp;forma que $\{u_1,\ldots,u_m\}$ constituya una base ortonormal&nbsp;de $\mathbb{R}^m$ y construimos la matriz $U$ de orden $m\times m$&nbsp;cuyas columnas son los vectores $u_i$. Por otra parte, &nbsp;la matriz $\Sigma$ de orden $m\times n$ es una matriz diagonal cuyos elementos diagonales $\Sigma_{ii}=\sigma_i\ $ para $1\leq i\leq r$&nbsp;&nbsp;y los restantes&nbsp;elementos nulos. Finalmente se tiene que</p>
<p>$$A=U\Sigma V^t$$</p>
<p>$$ A=U \Sigma V^t = (u_1\ u_2\dots\ u_m) \left(\begin{array}{cccccc} \sigma_1 &amp; &nbsp;&amp; &nbsp;&amp; &amp; &amp; &nbsp;\\ &amp; \ddots &amp; &nbsp;&amp; &amp; &amp; &nbsp;\\ &nbsp;&amp; &nbsp;&amp;\sigma_r &amp; &nbsp;&amp; &amp; \\ &nbsp;&amp; &amp; &amp; 0 &amp; &amp;\\&nbsp; &amp; &amp; &amp; &amp; \ddots &amp; \\ &nbsp;&amp; &amp; &amp; &amp; &amp; 0\end{array}\right) \left(\begin{array}{c}v_1^t\\ v_2^t\\ \vdots \\ v_n^t\end{array}\right)$$</p>
<p>Una forma especialmente interesante de expresar la descomposici&oacute;n anterior es la siguiente:</p>
<p>$$A=U\Sigma V^t=\sigma_1u_1v_1^t+\sigma_2u_2v_2^t+\dots+\sigma_ru_rv_r^t+0+\dots+0$$</p>
<p>que expresa a la matriz $A$, de rango $r$, como suma de $r$ matrices, cada una de ellas de rango 1.</p>

︡b6327d72-8c42-442f-9e90-c5624b0b6c97︡{"html": "<h3><a name=\"DVS\"></a></h3>\n<h3>Descomposici&oacute;n en valores singulares (SVD) de una matriz</h3>\n<p><strong>Teorema (Descomposici&oacute;n en valores singulares)</strong></p>\n<p>Toda matriz real $A$, de orden $m\\times n$ puede ser factorizada de la&nbsp;forma $A=U\\Sigma V^t$ donde $U$ es una matriz ortogonal $m\\times m$, $\\Sigma$ es una matriz&nbsp;diagonal $m\\times n$ y $V$ es una matriz ortogonal de orden $n\\times n$.</p>\n<p><strong>Idea constructiva de demostraci&oacute;n:</strong></p>\n<p>La matriz $A^tA$ es sim&eacute;trica de orden $n\\times n$ y semidefinida&nbsp;positiva.</p>\n<p>Resulta, de ello, que sus autovalores son reales no negativos $\\{\\sigma_1^2,\\sigma_2^2,\\ldots,\\sigma_n^2\\}$, los cuales ordenaremos de mayor a menor (pudiendo estar repetidos), de&nbsp;forma que los $r$ primeros son no nulos y los $n-r$ &uacute;ltimos son nulos (puede que no haya ninguno nulo). Los&nbsp;valores positivos $\\{\\sigma_1,\\sigma_2,\\ldots,\\sigma_n\\}$ se definen &nbsp;como los <strong>valores singulares</strong> de&nbsp;la matriz $A$.</p>\n<p>Sea $\\{v_1,v_2,\\ldots,v_n\\}$ un conjunto ortonormal de autovectores&nbsp;de $A^tA$, dispuestos de forma que</p>\n<p>$$A^tAv_i=\\sigma_i^2v_i$$</p>\n<p>Se verifica entonces que</p>\n<p>$$\\|Av_i\\|^2_2=v_i^tA^tAv_i=v_i^t\\sigma_i^2v_i=\\sigma_i^2$$</p>\n<p>Construimos la matriz $V$ de orden $n\\times n$ cuyas columnas son&nbsp;$v_1,v_2,\\ldots,v_n$ y definimos</p>\n<p>$$u_i=\\sigma_i^{-1}Av_i\\ \\ &nbsp;1\\leq i\\leq r$$</p>\n<p>Los vectores $u_i$ constituyen un sistema ortonormal para&nbsp;$1\\leq i,j\\leq r$.</p>\n<p>Elegimos vectores adicionales $u_{r+1},u_{r+2},\\ldots,u_m$ de tal&nbsp;forma que $\\{u_1,\\ldots,u_m\\}$ constituya una base ortonormal&nbsp;de $\\mathbb{R}^m$ y construimos la matriz $U$ de orden $m\\times m$&nbsp;cuyas columnas son los vectores $u_i$. Por otra parte, &nbsp;la matriz $\\Sigma$ de orden $m\\times n$ es una matriz diagonal cuyos elementos diagonales $\\Sigma_{ii}=\\sigma_i\\ $ para $1\\leq i\\leq r$&nbsp;&nbsp;y los restantes&nbsp;elementos nulos. Finalmente se tiene que</p>\n<p>$$A=U\\Sigma V^t$$</p>\n<p>$$ A=U \\Sigma V^t = (u_1\\ u_2\\dots\\ u_m) \\left(\\begin{array}{cccccc} \\sigma_1 &amp; &nbsp;&amp; &nbsp;&amp; &amp; &amp; &nbsp;\\\\ &amp; \\ddots &amp; &nbsp;&amp; &amp; &amp; &nbsp;\\\\ &nbsp;&amp; &nbsp;&amp;\\sigma_r &amp; &nbsp;&amp; &amp; \\\\ &nbsp;&amp; &amp; &amp; 0 &amp; &amp;\\\\&nbsp; &amp; &amp; &amp; &amp; \\ddots &amp; \\\\ &nbsp;&amp; &amp; &amp; &amp; &amp; 0\\end{array}\\right) \\left(\\begin{array}{c}v_1^t\\\\ v_2^t\\\\ \\vdots \\\\ v_n^t\\end{array}\\right)$$</p>\n<p>Una forma especialmente interesante de expresar la descomposici&oacute;n anterior es la siguiente:</p>\n<p>$$A=U\\Sigma V^t=\\sigma_1u_1v_1^t+\\sigma_2u_2v_2^t+\\dots+\\sigma_ru_rv_r^t+0+\\dots+0$$</p>\n<p>que expresa a la matriz $A$, de rango $r$, como suma de $r$ matrices, cada una de ellas de rango 1.</p>"}︡
︠a32d7d68-e503-430d-8b5b-83895cad98ddi︠
%html
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<p>Podemos calcular la descomposici&oacute;n en valores singulares de una matriz $A$ con la instrucci&oacute;n:</p>
<p style="text-align: center;"><span style="color: #0000ff;">U, D, V = descomposicion_SVD(A)</span></p>
<p style="text-align: left;"><span style="background-color: #ffffff;"><span style="color: #000000;">resultando $A=UDV^t$.&nbsp;</span></span></p>
</div>

︡54b04ce0-638c-483f-8a45-85b9a5d64101︡{"html": "<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\n<p>Podemos calcular la descomposici&oacute;n en valores singulares de una matriz $A$ con la instrucci&oacute;n:</p>\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\">U, D, V = descomposicion_SVD(A)</span></p>\n<p style=\"text-align: left;\"><span style=\"background-color: #ffffff;\"><span style=\"color: #000000;\">resultando $A=UDV^t$.&nbsp;</span></span></p>\n</div>"}︡
︠712a588d-d28b-49c7-b03d-3abd0e4feed5︠
#auto
def descomposicion_SVD(A):
    import numpy
    M = A.numpy()
    U, s, V = numpy.linalg.svd(M)
    S = numpy.zeros(M.shape)
    S[:len(s), :len(s)] = numpy.diag(s)
    U = matrix(U); S = matrix(S); V = matrix(V)
    return U, S, V.transpose()
︡642c515e-e67f-4218-9643-56bbe9c86abd︡︡
︠f2036b6d-0dcc-4456-9e16-2ba5a5793b4ei︠
%html
<h3><span style="color: #0000ff;">Ejemplo 5</span></h3>
<p>Hallar la descomposici&oacute;n en valores singulares de la siguiente matriz $A$.</p>

︡8ad00c00-4e0f-4de7-ae58-a0d42b27e872︡{"html": "<h3><span style=\"color: #0000ff;\">Ejemplo 5</span></h3>\n<p>Hallar la descomposici&oacute;n en valores singulares de la siguiente matriz $A$.</p>"}︡
︠fb374e7e-5d28-4f0a-9639-236f196a534d︠
A = matrix(RDF, [[1, 2, -1], [3, 4, 0], [-1, 0, 1]]); show(A)
︡b532adc2-bcc5-4b2a-b53c-3d79f7a62125︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n1.0 & 2.0 & -1.0 \\\\\n3.0 & 4.0 & 0.0 \\\\\n-1.0 & 0.0 & 1.0\n\\end{array}\\right)", "display": true}}︡
︠f4c45729-e418-4db7-a373-e97643336a91︠
U, D, V = descomposicion_SVD(A)
show(D)
︡68c23884-e2b4-46e4-9ec8-02463f538bf2︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n5.52083942193 & 0.0 & 0.0 \\\\\n0.0 & 1.37769942137 & 0.0 \\\\\n0.0 & 0.0 & 0.788844966771\n\\end{array}\\right)", "display": true}}︡
︠e7d45faf-dbb6-4ba4-b934-2b4f5459e110︠
U*D*V.transpose() == A
︡47a126d5-d3bc-4cc0-90e5-61d357549ea5︡{"stdout": "False"}︡
︠d0bdea60-9c51-4220-ba2e-14112dc26630︠
(U*D*V.transpose() - A).zero_at(10^-15)
︡163fbaf8-e95d-4762-a532-c1465c131ed0︡{"stdout": "[0.0 0.0 0.0]\n[0.0 0.0 0.0]\n[0.0 0.0 0.0]"}︡
︠cf7c914e-ab05-45fd-84a5-dd137715cfe0︠
show(U.transpose()*U - 1)
︡9b90a167-e204-4b96-82f4-c3a8676bbc1e︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n8.881784197 \\times 10^{-16} & -6.93889390391 \\times 10^{-17} & -9.71445146547 \\times 10^{-17} \\\\\n-6.93889390391 \\times 10^{-17} & 8.881784197 \\times 10^{-16} & -5.55111512313 \\times 10^{-17} \\\\\n-9.71445146547 \\times 10^{-17} & -5.55111512313 \\times 10^{-17} & 8.881784197 \\times 10^{-16}\n\\end{array}\\right)", "display": true}}︡
︠f17ca803-c581-485a-bc30-eea5d6662f81︠
(U.transpose()*U - 1).zero_at(10^-15)
︡0f4b08c4-ed41-48fc-b342-856859033451︡{"stdout": "[0.0 0.0 0.0]\n[0.0 0.0 0.0]\n[0.0 0.0 0.0]"}︡
︠22930696-8319-4b69-8674-d5a1b469bd75︠
show(V.transpose()*V - 1)
︡14c529c5-1679-4ab7-ab08-a22bd8d3d07e︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n2.22044604925 \\times 10^{-16} & 9.71445146547 \\times 10^{-17} & -2.77555756156 \\times 10^{-17} \\\\\n9.71445146547 \\times 10^{-17} & 4.4408920985 \\times 10^{-16} & 0.0 \\\\\n-2.77555756156 \\times 10^{-17} & 0.0 & 4.4408920985 \\times 10^{-16}\n\\end{array}\\right)", "display": true}}︡
︠5082f686-3274-46ad-bcc8-cab3f01578ec︠
(V.transpose()*V - 1).zero_at(10^-15)
︡612e08c2-050b-4427-9084-cf8723f1603e︡{"stdout": "[0.0 0.0 0.0]\n[0.0 0.0 0.0]\n[0.0 0.0 0.0]"}︡
︠23b3a79f-480a-4519-b846-667e23b8b465i︠
%html
<h3><a name="aplicar"></a></h3>
<h3>Aplicaci&oacute;n de la SVD al c&aacute;lculo del rango de una matriz</h3>
<p>De la expresi&oacute;n $A=U\Sigma V^t$ y, puesto que $U$ y $V$ son matrices ortogonales (no singulares) se deduce que&nbsp;</p>
<p>$$rango(A)=rango(\Sigma)=r$$</p>
<p>siendo $r$ el n&uacute;mero de valores singulares no nulos. Podr&iacute;a pensarse que para calcular el rango de una matriz $A$ nada mejor que escalonarla mediante transformaciones elementales y contar el n&uacute;mero de pivotes, no obstante, los errores de redondeo y de transmisi&oacute;n durante todo el proceso podr&iacute;an dar lugar a que filas que sean proporcionales (que se anular&iacute;an durante el escalonamiento) no lo hagan debido precisamente a esos errores, con lo que el valor final del rango ser&iacute;a err&oacute;neo. El siguiente teorema (debido a Hermann Weyl) proporciona una interesante cota</p>
<p><strong>Teorema</strong></p>
<p><em>Si una matriz $A$ tiene rango $r$ y es sustituida por una versi&oacute;n con peque&ntilde;as perturbaciones $A_\epsilon$, entonces se verifica</em></p>
<p>$$\parallel A-A_\epsilon\parallel_2\ge \sigma_{r+1}$$</p>
<p><em>d&oacute;nde $\sigma_1 \geq \sigma_2 \geq \cdots$ son los valores singulares de $A_\epsilon$.</em></p>
<p>En conclusi&oacute;n, si el valor del miembro de la derecha es muy elevado, se plantea dos posibilidades: o bien el error de la perturbaci&oacute;n es muy alto y las matrices $A$ y $A_\epsilon$ contienen muchos errores, o bien el rango no es realmente $r$. De esta forma podemos elegir como rango de la matriz $A$ aquel valor $r$ para el que el miembro de la derecha tenga un valor despreciable, muy pr&oacute;ximo a cero. Al resultado de determinar el rango de esta forma se le&nbsp; denomina&nbsp; <em>rango num&eacute;rico</em> de la matriz $A$.</p>

︡0878abfc-945f-4220-9350-2d1963e9b9d1︡{"html": "<h3><a name=\"aplicar\"></a></h3>\n<h3>Aplicaci&oacute;n de la SVD al c&aacute;lculo del rango de una matriz</h3>\n<p>De la expresi&oacute;n $A=U\\Sigma V^t$ y, puesto que $U$ y $V$ son matrices ortogonales (no singulares) se deduce que&nbsp;</p>\n<p>$$rango(A)=rango(\\Sigma)=r$$</p>\n<p>siendo $r$ el n&uacute;mero de valores singulares no nulos. Podr&iacute;a pensarse que para calcular el rango de una matriz $A$ nada mejor que escalonarla mediante transformaciones elementales y contar el n&uacute;mero de pivotes, no obstante, los errores de redondeo y de transmisi&oacute;n durante todo el proceso podr&iacute;an dar lugar a que filas que sean proporcionales (que se anular&iacute;an durante el escalonamiento) no lo hagan debido precisamente a esos errores, con lo que el valor final del rango ser&iacute;a err&oacute;neo. El siguiente teorema (debido a Hermann Weyl) proporciona una interesante cota</p>\n<p><strong>Teorema</strong></p>\n<p><em>Si una matriz $A$ tiene rango $r$ y es sustituida por una versi&oacute;n con peque&ntilde;as perturbaciones $A_\\epsilon$, entonces se verifica</em></p>\n<p>$$\\parallel A-A_\\epsilon\\parallel_2\\ge \\sigma_{r+1}$$</p>\n<p><em>d&oacute;nde $\\sigma_1 \\geq \\sigma_2 \\geq \\cdots$ son los valores singulares de $A_\\epsilon$.</em></p>\n<p>En conclusi&oacute;n, si el valor del miembro de la derecha es muy elevado, se plantea dos posibilidades: o bien el error de la perturbaci&oacute;n es muy alto y las matrices $A$ y $A_\\epsilon$ contienen muchos errores, o bien el rango no es realmente $r$. De esta forma podemos elegir como rango de la matriz $A$ aquel valor $r$ para el que el miembro de la derecha tenga un valor despreciable, muy pr&oacute;ximo a cero. Al resultado de determinar el rango de esta forma se le&nbsp; denomina&nbsp; <em>rango num&eacute;rico</em> de la matriz $A$.</p>"}︡
︠5891f657-7828-4cdd-ba07-c71929842d6ai︠
%html
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<p>La siguiente funci&oacute;n calcula el<strong style="font-weight: bold;">&nbsp;rango num&eacute;rico de una matriz&nbsp;</strong>a partir de su descomposici&oacute;n en valores singulares, con un nivel de tolerancia $\delta$, dado, esto es &nbsp;$\sigma_{r+1}\leq \delta$</p>
<p style="text-align: center;"><span style="color: #0000ff;">rango_SVD(A, tol)</span></p>
<p style="text-align: left;">el par&aacute;metro tol es opcional y su valor por defecto es tol$=10^{-14}$</p>
</div>

︡b26de80c-79c9-41f9-989b-baa9aed4c109︡{"html": "<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\n<p>La siguiente funci&oacute;n calcula el<strong style=\"font-weight: bold;\">&nbsp;rango num&eacute;rico de una matriz&nbsp;</strong>a partir de su descomposici&oacute;n en valores singulares, con un nivel de tolerancia $\\delta$, dado, esto es &nbsp;$\\sigma_{r+1}\\leq \\delta$</p>\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\">rango_SVD(A, tol)</span></p>\n<p style=\"text-align: left;\">el par&aacute;metro tol es opcional y su valor por defecto es tol$=10^{-14}$</p>\n</div>"}︡
︠1184c490-277e-49ba-9b90-75a8d57e59a3︠
#auto
def rango_SVD(A, tol = 10^-14):
    U, D, V = descomposicion_SVD(A)
    n = A.nrows()
    s = 0
    for i in range(n):
        s = D[n - i - 1, n - i - 1]
        if s > tol:
            break
    return n - i
︡a58a4c57-53df-4519-8847-c5d42ebc3ae1︡︡
︠59c8974f-d7db-49b3-a7e0-5ef02c975f19i︠
%html
<h3><span style="color: #0000ff;">Ejemplo 6</span></h3>
<p>Generar una matriz &nbsp;aleatoria A, cuadrada y de orden 10. Modificar dos filas mediante las siguientes transformaciones:</p>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 16px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">A[3]=0.1*A[7]-4.2*A[5]</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 16px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">A[4]=-0.1*A[9]+4.2*A[2]</div>
<p>A[3]=0.1*A[7]-4.2*A[5]</p>
<p>A[4]=-0.2*A[9]+3.7*A[2]</p>
<p>Obviamente como la matriz $A$ tiene al menos dos filas combinaciones lineales de otras, su determinante debe&nbsp;ser nulo y su rango menor o igual a 8.</p>
<p>a) Hacer las comprobaciones oportunas mediante las ordenes &nbsp;<strong>A.det()</strong> (que nos proporciona el determinante) y <strong>A.echelon_form()</strong> (que nos devuelve la forma escalonada can&oacute;nica) &nbsp;para ver el rango de A. &iquest;Qu&eacute; sucede?</p>
<p>b) Deducir el rango de A &nbsp;a partir de la descomposici&oacute;n SVD de la matriz.</p>
<p>c) Utilizar la instrucci&oacute;n <span style="color: #0000ff;">rango_SVD(A)</span> para comprobar el resultado.</p>

︡073983b4-2987-4028-bf42-88d8185b774c︡{"html": "<h3><span style=\"color: #0000ff;\">Ejemplo 6</span></h3>\n<p>Generar una matriz &nbsp;aleatoria A, cuadrada y de orden 10. Modificar dos filas mediante las siguientes transformaciones:</p>\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 16px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">A[3]=0.1*A[7]-4.2*A[5]</div>\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 16px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">A[4]=-0.1*A[9]+4.2*A[2]</div>\n<p>A[3]=0.1*A[7]-4.2*A[5]</p>\n<p>A[4]=-0.2*A[9]+3.7*A[2]</p>\n<p>Obviamente como la matriz $A$ tiene al menos dos filas combinaciones lineales de otras, su determinante debe&nbsp;ser nulo y su rango menor o igual a 8.</p>\n<p>a) Hacer las comprobaciones oportunas mediante las ordenes &nbsp;<strong>A.det()</strong> (que nos proporciona el determinante) y <strong>A.echelon_form()</strong> (que nos devuelve la forma escalonada can&oacute;nica) &nbsp;para ver el rango de A. &iquest;Qu&eacute; sucede?</p>\n<p>b) Deducir el rango de A &nbsp;a partir de la descomposici&oacute;n SVD de la matriz.</p>\n<p>c) Utilizar la instrucci&oacute;n <span style=\"color: #0000ff;\">rango_SVD(A)</span> para comprobar el resultado.</p>"}︡
︠8d33c177-8915-402b-abb5-06d2ef1594f4︠
A = random_matrix(RDF, 10)
A[3] = 0.1*A[7] - 4.2*A[5]
A[4] = -0.2*A[9] + 3.7*A[2]
︡9c9b168c-68e3-439b-8398-d274a0ddb130︡︡
︠d8d29c00-1e4f-4bc5-b0b9-cca3d6110027︠
A.det()
︡98fb567b-5756-461f-adb9-9f8f86ec72df︡{"stdout": "-7.451797689491438e-33"}︡
︠cecf4ff7-6624-4fd0-a61b-d9b80cdff423︠
UU = A.echelon_form()  # calculamos la forma canónica escalonada
show(UU)
︡e3c1ecc8-5d2b-4d46-a258-474efcca379a︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrrrrrrrr}\n1.0 & 0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 3.5527136788 \\times 10^{-15} \\\\\n0.0 & 1.0 & 0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 0.0 & -3.5527136788 \\times 10^{-15} \\\\\n0.0 & 0.0 & 1.0 & 0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 3.5527136788 \\times 10^{-15} \\\\\n0.0 & 0.0 & 0.0 & 1.0 & 0.0 & 0.0 & 0.0 & 0.0 & 0.0 & -1.7763568394 \\times 10^{-15} \\\\\n0.0 & 0.0 & 0.0 & 0.0 & 1.0 & 0.0 & 0.0 & 0.0 & 0.0 & -3.5527136788 \\times 10^{-15} \\\\\n0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 1.0 & 0.0 & 0.0 & 0.0 & -4.4408920985 \\times 10^{-16} \\\\\n0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 1.0 & 0.0 & 0.0 & -8.881784197 \\times 10^{-16} \\\\\n0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 1.0 & 0.0 & -3.5527136788 \\times 10^{-15} \\\\\n0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 1.0 & -3.5527136788 \\times 10^{-15} \\\\\n0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 1.0\n\\end{array}\\right)", "display": true}}︡
︠48f8e2ee-685e-409e-ba05-3c22b637f8ed︠
[UU[i, i] for i in range(10)]
︡cb1fc426-45a5-49d2-baa8-4268ea534fb4︡{"stdout": "[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.9999999999999999]"}︡
︠88ecf128-3bc7-4478-9b57-0d9aeb85f2c7i︠
%html
<p>Se han obtenido 10 pivotes, por lo que el rango ser&iacute;a 10. Lo comprobamos con la funci&oacute;n rank()&nbsp; que tambi&eacute;n proporciona el rango siguiendo el m&eacute;todo de escalonamiento:</p>

︡f95527f3-9401-4c49-9ff6-8f503af3ce0b︡{"html": "<p>Se han obtenido 10 pivotes, por lo que el rango ser&iacute;a 10. Lo comprobamos con la funci&oacute;n rank()&nbsp; que tambi&eacute;n proporciona el rango siguiendo el m&eacute;todo de escalonamiento:</p>"}︡
︠3ac3f032-c5bc-4fa0-b4be-ec8490b9b2cb︠
A.rank()
︡d0d46eb2-3d9a-424d-b956-97054d1a3502︡{"stdout": "10"}︡
︠a5a2cd92-532e-438e-bd6f-1a2d0b423c76i︠
%html
<p>Ahora estudiamos el rango num&eacute;rico a partir de la descomposici&oacute;n SVD:</p>

︡0beac189-8306-409b-8a7b-80c6c6cd5cd5︡{"html": "<p>Ahora estudiamos el rango num&eacute;rico a partir de la descomposici&oacute;n SVD:</p>"}︡
︠e5d980d8-aaf4-4f1d-b66c-ee09dd9a745f︠
U, D, V = A.SVD()
︡0ef3507f-d281-4661-ba4c-45d511adc492︡︡
︠4152554b-caee-4492-88aa-8f552b861a41︠
[D[i, i] for i in range(10)]  # mostramos los valores singulares ordenados de mayor a menor
︡951c9b96-ad9c-46b2-83f9-cc3182143d37︡{"stdout": "[9.871602161983798,\n 6.94142122379865,\n 2.259419915336298,\n 2.0614611872940842,\n 1.3359801770478699,\n 1.1826951789394173,\n 1.0346039657197137,\n 0.317794471897805,\n 3.519247979105596e-16,\n 7.0267140376012e-17]"}︡
︠8ebaf485-3b3d-4582-9015-55626c92101ai︠
%html
<p>Obs&eacute;rvese que los dos &uacute;ltimos valores singulares son muy peque&ntilde;os, con lo que el rango estimado de la matriz es 10-2=8</p>

︡5166f98f-aca0-4474-961d-dd07d92addec︡{"html": "<p>Obs&eacute;rvese que los dos &uacute;ltimos valores singulares son muy peque&ntilde;os, con lo que el rango estimado de la matriz es 10-2=8</p>"}︡
︠a2a6f135-2286-4501-85ed-b280feb279aa︠
rango_SVD(A)
︡37dea600-1f50-4930-8f44-8c1bec0deb26︡{"stdout": "8"}︡
︠e96c7065-11c7-4f8a-b391-69d87547d210i︠
%html
<h3><strong>Una aplicaci&oacute;n de la descomposici&oacute;n SVD a la compresi&oacute;n de im&aacute;genes&nbsp;</strong></h3>
<p>Vamos a analizar una sencilla, y rudimentaria, aplicaci&oacute;n de la descomposici&oacute;n SVD de una matriz al problema de&nbsp;<strong>compresi&oacute;n de im&aacute;genes (con p&eacute;rdida de calidad)</strong>.</p>
<p>Una fotograf&iacute;a digital en blanco y negro a resoluci&oacute;n&nbsp;$m\times n$ p&iacute;xeles&nbsp;se puede&nbsp;interpretar matem&aacute;ticamente como una matriz de dimensi&oacute;n $m\times n$ cuyos&nbsp;elementos, que est&aacute;n en el intervalo $[0,1]$, indican la&nbsp;tonalidad de gris de un pixel de la pantalla del ordenador, en una gama de grises que va desde el negro (0) hasta el blanco (1). Sea&nbsp;$A=(a_{ij})$ la matriz asociada a una fotograf&iacute;a en blanco y negro de dimensi&oacute;n $m\times n$.</p>
<p>Sean $\sigma_1,\dots, \sigma_r$ los valores singulares no nulos de $A$&nbsp;ordenados de mayor &nbsp;a menor. As&iacute;, se tiene que&nbsp;existen matrices ortogonales $U$ y $V$ tales que</p>
<p>$$ A=U \Sigma V^t = U \left(\begin{array}{cccccc} \sigma_1 &amp; &nbsp;&amp; &nbsp;&amp; &amp; &amp; &nbsp;\\ &amp; \ddots &amp; &nbsp;&amp; &amp; &amp; &nbsp;\\ &nbsp;&amp; &nbsp;&amp;\sigma_r &amp; &nbsp;&amp; &amp; \\ &nbsp;&amp; &amp; &amp; 0 &amp; &amp;\\&nbsp; &amp; &amp; &amp; &amp; \ddots &amp; \\ &nbsp;&amp; &amp; &amp; &amp; &amp; 0\end{array}\right) V^t$$</p>
<p>Consideremos las matrices $\Sigma_k =\left(\begin{array}{cccccc} \sigma_1 &amp; &nbsp;&amp; &nbsp;&amp; &amp; &amp; &nbsp;\\&nbsp;&amp; \ddots &amp; &nbsp;&amp; &amp; &amp; &nbsp;\\ &nbsp;&amp; &nbsp;&amp;\sigma_k &amp; &nbsp;&amp; &amp; \\ &nbsp;&amp; &amp; &amp; 0 &amp; &amp;\\&nbsp;&amp; &amp; &amp; &amp; \ddots &amp; \\ &nbsp;&amp; &amp; &amp; &amp; &amp; 0\end{array}\right) &nbsp;\ \ &nbsp; \forall&nbsp;k=1,\dots, r$ y la sucesi&oacute;n de fotograf&iacute;as&nbsp;$\displaystyle \{ A_k : k=0, \dots,r\}$ donde $A_k = U \Sigma_k&nbsp;V^t$.&nbsp;</p>
<p>Obs&eacute;rvese que puesto que s&oacute;lo son no nulos los k primeros valores de la matriz $\Sigma_k$, basta multiplicar las k primeras columnas de $U$ y las k primeras filas de $V^t$ o, equivalentemente, las k primeras columnas de $V$. De esta forma, la cantidad de datos para construir $A_k$ se reduce a $k(m+n+1)$, frente a los $m\times n$ datos de la matriz $A$. As&iacute;, conseguimos un factor de compresi&oacute;n (en tanto por uno) de</p>
<p>$$\frac{k(m+n+1)}{mn}$$</p>
<p>Podemos experimentar con diferentes &nbsp;valores de $k$, buscando que la imagen de la fotograf&iacute;a $A_k$ sea visualmente equivalente a la de $A$, hasta encontrar un equilibrio adecuado entre el mayor factor de compresi&oacute;n posible y la calidad visual resultante. Si se trata de obtener una compresi&oacute;n de la imagen, no tiene sentido tomar $k$ mayor que la mitad del tama&ntilde;o de la imagen.</p>

︡95280289-8b35-470b-bb5d-9a0ae84c307d︡{"html": "<h3><strong>Una aplicaci&oacute;n de la descomposici&oacute;n SVD a la compresi&oacute;n de im&aacute;genes&nbsp;</strong></h3>\n<p>Vamos a analizar una sencilla, y rudimentaria, aplicaci&oacute;n de la descomposici&oacute;n SVD de una matriz al problema de&nbsp;<strong>compresi&oacute;n de im&aacute;genes (con p&eacute;rdida de calidad)</strong>.</p>\n<p>Una fotograf&iacute;a digital en blanco y negro a resoluci&oacute;n&nbsp;$m\\times n$ p&iacute;xeles&nbsp;se puede&nbsp;interpretar matem&aacute;ticamente como una matriz de dimensi&oacute;n $m\\times n$ cuyos&nbsp;elementos, que est&aacute;n en el intervalo $[0,1]$, indican la&nbsp;tonalidad de gris de un pixel de la pantalla del ordenador, en una gama de grises que va desde el negro (0) hasta el blanco (1). Sea&nbsp;$A=(a_{ij})$ la matriz asociada a una fotograf&iacute;a en blanco y negro de dimensi&oacute;n $m\\times n$.</p>\n<p>Sean $\\sigma_1,\\dots, \\sigma_r$ los valores singulares no nulos de $A$&nbsp;ordenados de mayor &nbsp;a menor. As&iacute;, se tiene que&nbsp;existen matrices ortogonales $U$ y $V$ tales que</p>\n<p>$$ A=U \\Sigma V^t = U \\left(\\begin{array}{cccccc} \\sigma_1 &amp; &nbsp;&amp; &nbsp;&amp; &amp; &amp; &nbsp;\\\\ &amp; \\ddots &amp; &nbsp;&amp; &amp; &amp; &nbsp;\\\\ &nbsp;&amp; &nbsp;&amp;\\sigma_r &amp; &nbsp;&amp; &amp; \\\\ &nbsp;&amp; &amp; &amp; 0 &amp; &amp;\\\\&nbsp; &amp; &amp; &amp; &amp; \\ddots &amp; \\\\ &nbsp;&amp; &amp; &amp; &amp; &amp; 0\\end{array}\\right) V^t$$</p>\n<p>Consideremos las matrices $\\Sigma_k =\\left(\\begin{array}{cccccc} \\sigma_1 &amp; &nbsp;&amp; &nbsp;&amp; &amp; &amp; &nbsp;\\\\&nbsp;&amp; \\ddots &amp; &nbsp;&amp; &amp; &amp; &nbsp;\\\\ &nbsp;&amp; &nbsp;&amp;\\sigma_k &amp; &nbsp;&amp; &amp; \\\\ &nbsp;&amp; &amp; &amp; 0 &amp; &amp;\\\\&nbsp;&amp; &amp; &amp; &amp; \\ddots &amp; \\\\ &nbsp;&amp; &amp; &amp; &amp; &amp; 0\\end{array}\\right) &nbsp;\\ \\ &nbsp; \\forall&nbsp;k=1,\\dots, r$ y la sucesi&oacute;n de fotograf&iacute;as&nbsp;$\\displaystyle \\{ A_k : k=0, \\dots,r\\}$ donde $A_k = U \\Sigma_k&nbsp;V^t$.&nbsp;</p>\n<p>Obs&eacute;rvese que puesto que s&oacute;lo son no nulos los k primeros valores de la matriz $\\Sigma_k$, basta multiplicar las k primeras columnas de $U$ y las k primeras filas de $V^t$ o, equivalentemente, las k primeras columnas de $V$. De esta forma, la cantidad de datos para construir $A_k$ se reduce a $k(m+n+1)$, frente a los $m\\times n$ datos de la matriz $A$. As&iacute;, conseguimos un factor de compresi&oacute;n (en tanto por uno) de</p>\n<p>$$\\frac{k(m+n+1)}{mn}$$</p>\n<p>Podemos experimentar con diferentes &nbsp;valores de $k$, buscando que la imagen de la fotograf&iacute;a $A_k$ sea visualmente equivalente a la de $A$, hasta encontrar un equilibrio adecuado entre el mayor factor de compresi&oacute;n posible y la calidad visual resultante. Si se trata de obtener una compresi&oacute;n de la imagen, no tiene sentido tomar $k$ mayor que la mitad del tama&ntilde;o de la imagen.</p>"}︡
︠60044a0f-7642-44da-9caa-527f56f6fa8di︠
%html
<h3><span style="color: #0000ff;">Ejemplo 7</span></h3>
<p>El siguiente bloque de instrucciones genera una matriz $A$ que representa una imagen digital en blanco y negro a partir de un fichero denominado Lena256.png, que est&aacute; guardado en un directorio especificado en la variable global DATA.</p>

︡aef59aa1-8a53-4067-a790-8f7cef956d62︡{"html": "<h3><span style=\"color: #0000ff;\">Ejemplo 7</span></h3>\n<p>El siguiente bloque de instrucciones genera una matriz $A$ que representa una imagen digital en blanco y negro a partir de un fichero denominado Lena256.png, que est&aacute; guardado en un directorio especificado en la variable global DATA.</p>"}︡
︠6ed7ba34-2b11-4718-95d0-fe9587156436︠
nombre_fichero = 'Lena256.png'  ### el nombre del fichero debe ir entre comillas

import pylab 
imagen = pylab.imread(DATA + nombre_fichero)
imagenmedia = pylab.mean(imagen, 2)
A = matrix(imagenmedia)
m = A.nrows(); n = A.ncols()
print 'matriz de orden:',m,'x',n
︡03cdf58c-9b92-4e3a-8513-38622546dfe5︡{"stdout": "matriz de orden: 256 x 256"}︡
︠356adaeb-7017-475c-a131-911f3a683dcbi︠
%html
<p>Podemos visualizar la imagen mediante la siguiente instrucci&oacute;n:</p>

︡84e4d594-9682-4c07-8a2a-0d11c0268c68︡{"html": "<p>Podemos visualizar la imagen mediante la siguiente instrucci&oacute;n:</p>"}︡
︠2edfdb7c-ad40-4e33-bc3a-d0b8d2f2ff95︠
matrix_plot(A, figsize = 4)
︡488ed83a-7285-4222-8f2f-a5973105b6a7︡︡
︠8c0a5846-a28a-42f7-999e-946c9c2d38a5i︠
%html
<p>Hallamos la descomposici&oacute;n $A=UDV^t$:</p>

︡8dd8431e-fa63-49b7-bdbf-e6d3d41a7206︡{"html": "<p>Hallamos la descomposici&oacute;n $A=UDV^t$:</p>"}︡
︠3cb31737-c07e-40ff-98ea-5e771c481364︠
U, D, V = descomposicion_SVD(A)
︡1d52564c-f09d-404e-a3da-7bbb998ea562︡︡
︠53a84b37-260b-4218-8559-7ae6ca730e1bi︠
%html
<p>Visualizamos la lista de valores singulares de la matriz $A$, ordenados de mayor a menor:</p>

︡aebf7dd8-5270-4b12-a26a-e9b1155f94b6︡{"html": "<p>Visualizamos la lista de valores singulares de la matriz $A$, ordenados de mayor a menor:</p>"}︡
︠a8beb420-2474-4616-a15c-6e63cb05334e︠
list_plot([D[i, i] for i in range(n)])
︡f049ff12-3428-4a08-bb04-5dadfd7e0598︡︡
︠ec0c8668-79d7-4fb8-b871-165557a0fe8bi︠
%html
<p>Con objeto de diferenciar mejor los valores m&aacute;s peque&ntilde;os (a partir del 50&ordm; en adelante) vamos a representar nuevamente los mismos pero prescindiendo de los 10 primeros valores:</p>

︡2220037b-bf66-48c7-93ca-bad626fd7e5c︡{"html": "<p>Con objeto de diferenciar mejor los valores m&aacute;s peque&ntilde;os (a partir del 50&ordm; en adelante) vamos a representar nuevamente los mismos pero prescindiendo de los 10 primeros valores:</p>"}︡
︠e7d248dd-e5a0-4598-9a14-ea67d04fb5c1︠
list_plot([D[i, i] for i in range(10, n)])
︡4322e146-5616-4eeb-8e51-58142c93aa40︡︡
︠559eaa6c-5b2a-4868-ad74-e5594439a946i︠
%html
<p>Vamos a visualizar $A_{50}$:</p>

︡eb139373-86f2-4796-b3c1-5cb6bcc6cec8︡{"html": "<p>Vamos a visualizar $A_{50}$:</p>"}︡
︠8b46c680-1a5b-42af-8c4f-329a59a216b4︠
k = 50  ### tan solo hay que modificar el valor asignado a k

Ak = U[:,0:k]*D[0:k,0:k]*(V[:,0:k].transpose())
matrix_plot(Ak, figsize = 4)
︡556dfeb5-7dd4-492b-9c69-5452c7d82396︡︡
︠06b36bfb-f5a3-41e0-a1f2-012826f3f688i︠
%html
<p>Calculamos el factor de compresi&oacute;n:</p>

︡8076800a-e9aa-4535-bd4e-d80d57769a58︡{"html": "<p>Calculamos el factor de compresi&oacute;n:</p>"}︡
︠a6e3d976-e7a2-4b4d-9581-83fc25364913︠
(k*(m + n + 1)/(m*n)).n()
︡cf4896cc-384f-45ea-9dd4-647ed3c29c10︡{"stdout": "0.391387939453125"}︡
︠bf0615fb-c93b-42b9-803b-a18329cf6df9i︠
%html
<p>Calculamos la norma de la diferencia entre las matrices que representan las im&aacute;genes original y comprimida. Este valor lo llamaremos <strong>nivel de tolerancia de la aproximaci&oacute;n</strong>. Obviamente, mientras m&aacute;s pr&oacute;ximo a cero sea el nivel de tolerancia, mayor ser&aacute; la similitud entre ambas im&aacute;genes.</p>

︡05b076b5-b78b-4f8d-9728-a85758589f4b︡{"html": "<p>Calculamos la norma de la diferencia entre las matrices que representan las im&aacute;genes original y comprimida. Este valor lo llamaremos <strong>nivel de tolerancia de la aproximaci&oacute;n</strong>. Obviamente, mientras m&aacute;s pr&oacute;ximo a cero sea el nivel de tolerancia, mayor ser&aacute; la similitud entre ambas im&aacute;genes.</p>"}︡
︠798bb2c7-c2a8-408e-927f-19f5661ea705︠
(Ak - A).norm(2)
︡d9ddcbf4-0588-485e-99dd-4fa013b2e23a︡{"stdout": "1.3564892787869307"}︡
︠5f26d890-b433-4a1c-a6c0-adf3396d5f28i︠
%html
<p>Repetimos para $A_{20}$:</p>

︡1a22b25d-c1b0-416b-86a6-c61a1f9391cc︡{"html": "<p>Repetimos para $A_{20}$:</p>"}︡
︠65832683-4249-4b42-ab5b-387ee73f87db︠
k = 20  ### tan solo hay que modificar el valor asignado a k

Ak = U[:, 0:k]*D[0:k, 0:k]*(V[:, 0:k].transpose())
matrix_plot(Ak, figsize = 4)
︡3d199900-08ae-45f2-9c2a-b2b1044ce311︡︡
︠d83719fe-da25-40fc-b017-ca714f0831a1︠
(k*(m + n + 1)/(m*n)).n()
︡7abe51f4-70df-4036-8840-d03fca2c8e25︡{"stdout": "0.156555175781250"}︡
︠71789df0-936c-48b2-b6a9-cc10975bd5fa︠
(Ak - A).norm(2)
︡d57df392-45a1-420f-ad08-51fe9e184da9︡{"stdout": "3.4663024461044407"}︡
︠b0ce6bf3-a881-4bfd-95ca-e9a0ff16ab48i︠
%html
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<p>Obviamente, se obtiene una peor aproximaci&oacute;n (mayor error)&nbsp; tomando 20 valores que si tomamos 50 valores singulares.</p>
<p>El siguiente script permite automatizar el proceso de c&aacute;lculo de los $A_k$, obtener el factor de compresi&oacute;n y comparar visualmente el resultado con la imagen original:</p>
</div>

︡04cb79a5-db96-4564-abc9-a1ed2a6ec3d8︡{"html": "<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\n<p>Obviamente, se obtiene una peor aproximaci&oacute;n (mayor error)&nbsp; tomando 20 valores que si tomamos 50 valores singulares.</p>\n<p>El siguiente script permite automatizar el proceso de c&aacute;lculo de los $A_k$, obtener el factor de compresi&oacute;n y comparar visualmente el resultado con la imagen original:</p>\n</div>"}︡
︠5e9c46cd-20a3-496e-b245-7d5adb0da7c5︠
nombre_fichero = 'Lena256.png'  ### el nombre del fichero debe ir entre comillas

import pylab 
imagen = pylab.imread(DATA + nombre_fichero)
imagenmedia = pylab.mean(imagen, 2)
A = matrix(imagenmedia)
m = A.nrows(); n = A.ncols()
print 'matriz de orden:',m,'x',n
U, D, V = descomposicion_SVD(A)

@interact
def compresion_imagen_SVD(k = ("nº valores singulares (calidad)",(20,(1..floor(0.5*min(m,n)))))):
    factor = 100*(k*(m + n + 1)/(m*n)).n()
    html("<h2>Imagen comprimida usando %s valores singulares</h2>"%k)
    html("    Compresión al %.2f%%                Original"%factor)
    Ak = U[:, 0:k]*D[0:k, 0:k]*(V[:, 0:k].transpose())
    g = graphics_array([matrix_plot(Ak), matrix_plot(A)])
    g.save(axes = False, figsize = [8, 3])
︡f7d3e121-cd2d-4ebb-b0e8-7a302d6249f2︡{"stdout": "matriz de orden: 256 x 256"}︡{"html": "<!--notruncate-->\n        <div padding=6 id=\"div-interact-127\">\n          <table width=800px height=20px bgcolor=\"#c5c5c5\" cellpadding=15>\n            <tr>\n              <td bgcolor=\"#f9f9f9\" valign=top align=left>\n            <table>\n              <tr><td colspan=3><table><tr><td align=right><font color=\"black\">n\u00ba valores singulares (calidad)&nbsp;</font></td><td>\n        <table>\n          <tr>\n            <td>\n              <div id=\"slider-k-127\" style=\"margin:0px; margin-left: 1.0em; margin-right: 1.0em; width: 15.0em;\"></div>\n            </td>\n            \n            <td>\n              <font color=\"black\" id=\"slider-k-127-lbl\"></font>\n            </td>\n          </tr>\n        </table><script>\n    (function() {\n        var values = [\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"65\",\"66\",\"67\",\"68\",\"69\",\"70\",\"71\",\"72\",\"73\",\"74\",\"75\",\"76\",\"77\",\"78\",\"79\",\"80\",\"81\",\"82\",\"83\",\"84\",\"85\",\"86\",\"87\",\"88\",\"89\",\"90\",\"91\",\"92\",\"93\",\"94\",\"95\",\"96\",\"97\",\"98\",\"99\",\"100\",\"101\",\"102\",\"103\",\"104\",\"105\",\"106\",\"107\",\"108\",\"109\",\"110\",\"111\",\"112\",\"113\",\"114\",\"115\",\"116\",\"117\",\"118\",\"119\",\"120\",\"121\",\"122\",\"123\",\"124\",\"125\",\"126\",\"127\",\"128\"];\n        setTimeout(function() {\n            $('#slider-k-127').slider({\n                step: 1,\n                min: 0,\n                max: 127,\n                value: 19,\n                change: function (e, ui) {\n                    var position = ui.value;\n                    if (values != null) {\n                        $('#slider-k-127-lbl').text(values[position]);\n                        interact(127, {variable: 'k', adapt_number: 2, value: encode64(position)}, 1);\n                    }\n                },\n                slide: function (e, ui) {\n                    if (values != null) {\n                        $('#slider-k-127-lbl').text(values[ui.value]);\n                    }\n                }\n            });\n            if (values != null) {\n                $('#slider-k-127-lbl').text(values[$('#slider-k-127').slider('value')]);\n            }\n        }, 1);\n    })();\n    </script></td>\n</tr></table></td></tr>\n              <tr><td></td><td style='width: 100%;'>\n        <div id=\"cell-interact-127\"><?__SAGE__START>\n          <table border=0 bgcolor=\"white\" width=100%>\n            <tr>\n              <td bgcolor=\"white\" align=left valign=top>\n                <pre><?__SAGE__TEXT></pre>\n              </td>\n            </tr>\n            <tr>\n              <td align=left valign=top><?__SAGE__HTML></td>\n            </tr>\n          </table><?__SAGE__END>\n        </div></td><td></td></tr>\n              <tr><td colspan=3></td></tr>\n            </table></td>\n            </tr>\n          </table>\n        </div>"}︡
︠47ceb651-8f17-43d7-9f57-23a1d6c4cb30i︠
%html
<p>El script anterior puede utilizarse como una funci&oacute;n y llamarse desde cualquier otra celda de c&aacute;lculo.</p>

︡65e8a7f4-53ec-4dab-8ada-11463b0ec304︡{"html": "<p>El script anterior puede utilizarse como una funci&oacute;n y llamarse desde cualquier otra celda de c&aacute;lculo.</p>"}︡
︠d86c2014-9dc6-476f-8d00-58fc6873f434︠
compresion_imagen_SVD(50)
︡e989b6c2-95d6-4574-a293-924be1615150︡{"html": "<h2>Imagen comprimida usando 50 valores singulares</h2>"}︡{"html": "    Compresi\u00f3n al 39.14%                Original"}︡
︠61e9dd58-990d-4094-90f8-b6417c37826ci︠
%html
<p>Tambi&eacute;n se puede optar por buscar el menor valor $k$ que se estima razonable para tener una buena compresi&oacute;n visual para un nivel de tolerancia&nbsp;de la aproximaci&oacute;n <span style="color: #0000ff;">tol</span>&nbsp;&nbsp; dada, en el sentido de que la diferencia $A-A_k$ tenga norma menor que <span style="color: #0000ff;">tol</span>.</p>
<p>Por ejemplo, tomando <span style="color: #0000ff;">tol</span>=2 en el ejemplo anterior, tendremos:</p>

︡a0210db7-9201-4582-be4f-4231685fd241︡{"html": "<p>Tambi&eacute;n se puede optar por buscar el menor valor $k$ que se estima razonable para tener una buena compresi&oacute;n visual para un nivel de tolerancia&nbsp;de la aproximaci&oacute;n <span style=\"color: #0000ff;\">tol</span>&nbsp;&nbsp; dada, en el sentido de que la diferencia $A-A_k$ tenga norma menor que <span style=\"color: #0000ff;\">tol</span>.</p>\n<p>Por ejemplo, tomando <span style=\"color: #0000ff;\">tol</span>=2 en el ejemplo anterior, tendremos:</p>"}︡
︠75610d89-943e-4796-808b-69c946416e70︠
tol = 2  ## basta modificar tan solo el nivel de tolerancia elegido

k = 0
norma = tol + 1
while norma > tol:
    k = k+1
    Ak = U[:,0:k]*D[0:k,0:k]*(V[:,0:k].transpose())
    norma = (A - Ak).norm(2)
print 'NIVEL DE TOLERANCIA: ', tol
compresion_imagen_SVD(k)
︡33750b79-98f0-4045-9422-d1297ac3d396︡{"stdout": "NIVEL DE TOLERANCIA:  2"}︡{"html": "<h2>Imagen comprimida usando 35 valores singulares</h2>"}︡{"html": "    Compresi\u00f3n al 27.40%                Original"}︡
︠d68a3f2a-9afd-4149-96cf-0388a02f8720︠
print (A - Ak).norm(2)
(A - Ak).norm(2) < tol
︡ba20551f-4bbb-4e1f-842a-7a2d02542c3a︡{"stdout": "1.95078020097\nTrue"}︡
︠820e9dfa-a1f1-4f33-adf4-44509085cff2i︠
%html
<h3><a name="cuestionario"></a></h3>
<h3>CUESTIONARIO PARA EL ALUMNADO</h3>
<p><span id="cell_outer_0">Introduzca en la variable NUMERO_ALUMNO, que aparece m&aacute;s abajo, el n&uacute;mero correspondiente a su cuestionario y pulse el enlace&nbsp; <span style="color: #0000ff;"><span style="text-decoration: underline;">evaluate</span></span> que&nbsp; aparecer&aacute; m&aacute;s abajo.</span> Acceder&aacute; a un cuestionario con respuestas tipo test que se entregar&aacute; cumplimentado al finalizar esta sesi&oacute;n pr&aacute;ctica, siguiendo un modelo impreso que entregar&aacute; el profesor.</p>

︡f321ee5e-58b5-467e-aaeb-d4255639946c︡{"html": "<h3><a name=\"cuestionario\"></a></h3>\n<h3>CUESTIONARIO PARA EL ALUMNADO</h3>\n<p><span id=\"cell_outer_0\">Introduzca en la variable NUMERO_ALUMNO, que aparece m&aacute;s abajo, el n&uacute;mero correspondiente a su cuestionario y pulse el enlace&nbsp; <span style=\"color: #0000ff;\"><span style=\"text-decoration: underline;\">evaluate</span></span> que&nbsp; aparecer&aacute; m&aacute;s abajo.</span> Acceder&aacute; a un cuestionario con respuestas tipo test que se entregar&aacute; cumplimentado al finalizar esta sesi&oacute;n pr&aacute;ctica, siguiendo un modelo impreso que entregar&aacute; el profesor.</p>"}︡
︠c1c9bf65-3be5-4c1d-a13f-dfe881d401ec︠
NUMERO_ALUMNO = 0



NOMBRE_FICHERO_EXAMEN = 'ALN_L5_t.htl'
load(DATA + 'codigo_examinar_html.sage')
︡70efdb05-015b-46aa-b24b-0f8a49cff67d︡︡









