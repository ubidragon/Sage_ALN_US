︠ac983db1-717a-4d3a-a37d-d889c57f6bb8ai︠
%hide
%auto
DATA="foo.data/"
︠e3a96647-84d8-4172-a671-d1d81be9c995i︠
%html
<h3 style="font-size: 1.17em; text-align: center;">ESCUELA T&Eacute;CNICA SUPERIOR DE INGENIER&Iacute;A INFORM&Aacute;TICA</h3>
<h3 style="font-size: 1.17em; text-align: center;">UNIVERSIDAD DE SEVILLA</h3>
<h4 style="font-size: 1em; text-align: center;"><strong>&Aacute;LGEBRA LINEAL Y NUM&Eacute;RICA</strong></h4>
<p>&nbsp;</p>
<h2>Eliminaci&oacute;n gaussiana, pivoteo parcial, descomposiciones LU y de Cholesky</h2>
<p>En esta sesi&oacute;n pr&aacute;ctica abordaremos los siguientes contenidos:</p>
<ul>
<li>Un repaso al proceso de <a href="#eliminacion">eliminaci&oacute;n gaussiana</a> de una matriz $A$ y su aplicaci&oacute;n a la resoluci&oacute;n de sistemas de ecuaciones lineales. Mostraremos ejemplos num&eacute;ricos de como el procedimiento de eliminaci&oacute;n est&aacute;ndar puede provocar grandes errores&nbsp; al trabajar con una precisi&oacute;n num&eacute;rica finita.</li>
<li>Mostraremos dos modificaciones del proceso de eliminaci&oacute;n gaussiana: el m&eacute;todo con <a href="#pivoteo">pivoteo parcial</a> y el m&eacute;todo con <a href="#pivoteope">pivoteo parcial escalado</a>. Ilustraremos con ejemplos como se pueden mejorar los errores provocados por el m&eacute;todo est&aacute;ndar.</li>
<li>Se definir&aacute; la <a href="#desclu">descomposici&oacute;n $LU$</a> de una matriz $A$, aportando algoritmos para obtener tales descomposiciones bajo las t&eacute;cnicas de pivoteo estudiadas anteriormente.</li>
<li>Analizaremos la <strong>aplicaci&oacute;n </strong>de la descomposici&oacute;n $LU$ a la <a href="#sislin">resoluci&oacute;n de sistemas lineales</a> $Ax=b$.</li>
<li>Estudiaremos un caso particular de descomposici&oacute;n $LU$ cuando la matriz $A$ es <strong>sim&eacute;trica y definida positiva</strong>, conocido como <a href="#cholesky">descomposici&oacute;n de Cholesky</a>.</li>
</ul>
<p>La pr&aacute;ctica finaliza con la realizaci&oacute;n por parte del alumnado de un <a href="#cuestionario">cuestionario</a> personalizado.</p>

︡0b4ee685-c76a-4f63-80fa-2e1ba5428d33︡{"html": "<h3 style=\"font-size: 1.17em; text-align: center;\">ESCUELA T&Eacute;CNICA SUPERIOR DE INGENIER&Iacute;A INFORM&Aacute;TICA</h3>\n<h3 style=\"font-size: 1.17em; text-align: center;\">UNIVERSIDAD DE SEVILLA</h3>\n<h4 style=\"font-size: 1em; text-align: center;\"><strong>&Aacute;LGEBRA LINEAL Y NUM&Eacute;RICA</strong></h4>\n<p>&nbsp;</p>\n<h2>Eliminaci&oacute;n gaussiana, pivoteo parcial, descomposiciones LU y de Cholesky</h2>\n<p>En esta sesi&oacute;n pr&aacute;ctica abordaremos los siguientes contenidos:</p>\n<ul>\n<li>Un repaso al proceso de <a href=\"#eliminacion\">eliminaci&oacute;n gaussiana</a> de una matriz $A$ y su aplicaci&oacute;n a la resoluci&oacute;n de sistemas de ecuaciones lineales. Mostraremos ejemplos num&eacute;ricos de como el procedimiento de eliminaci&oacute;n est&aacute;ndar puede provocar grandes errores&nbsp; al trabajar con una precisi&oacute;n num&eacute;rica finita.</li>\n<li>Mostraremos dos modificaciones del proceso de eliminaci&oacute;n gaussiana: el m&eacute;todo con <a href=\"#pivoteo\">pivoteo parcial</a> y el m&eacute;todo con <a href=\"#pivoteope\">pivoteo parcial escalado</a>. Ilustraremos con ejemplos como se pueden mejorar los errores provocados por el m&eacute;todo est&aacute;ndar.</li>\n<li>Se definir&aacute; la <a href=\"#desclu\">descomposici&oacute;n $LU$</a> de una matriz $A$, aportando algoritmos para obtener tales descomposiciones bajo las t&eacute;cnicas de pivoteo estudiadas anteriormente.</li>\n<li>Analizaremos la <strong>aplicaci&oacute;n </strong>de la descomposici&oacute;n $LU$ a la <a href=\"#sislin\">resoluci&oacute;n de sistemas lineales</a> $Ax=b$.</li>\n<li>Estudiaremos un caso particular de descomposici&oacute;n $LU$ cuando la matriz $A$ es <strong>sim&eacute;trica y definida positiva</strong>, conocido como <a href=\"#cholesky\">descomposici&oacute;n de Cholesky</a>.</li>\n</ul>\n<p>La pr&aacute;ctica finaliza con la realizaci&oacute;n por parte del alumnado de un <a href=\"#cuestionario\">cuestionario</a> personalizado.</p>"}︡
︠710216bf-faa4-4c2f-9340-303dd81ec2f7i︠
%html
<p><a name="eliminacion"></a></p>
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<h3>Resoluci&oacute;n de sistemas mediante eliminaci&oacute;n gaussiana</h3>
<p>En la pr&aacute;ctica anterior, definimos la&nbsp;funci&oacute;n&nbsp;<span style="color: #0000ff;">forma_escalonada( A)</span>&nbsp;que nos permite obtener tanto las matrices $F$ y $U$ como la secuencia de transformaciones elementales por filas que reproducen el proceso seguido para escalonar la matriz $A$, seg&uacute;n la relaci&oacute;n $FA=U$. Admite las siguientes opciones y par&aacute;metros:</p>
<p style="text-align: center;"><span style="color: #0000ff;">F,U=forma_escalonada(A, canonica?,transformaciones?)</span></p>
<p>donde</p>
<ul>
<li><span style="color: #0000ff;">canonica?</span>&nbsp;puede ser&nbsp;<span style="color: #0000ff;">True</span>&nbsp;para forma escalonada can&oacute;nica&nbsp;y&nbsp;<span style="color: #0000ff;">False</span>&nbsp;para forma escalonada simple</li>
<li><span style="color: #0000ff;">transformaciones?</span>&nbsp;puede ser&nbsp;<span style="color: #0000ff;">True&nbsp;</span>para que se proporcione la lista de transformaciones elementales filas que se han realizado y&nbsp;<span style="color: #0000ff;">False&nbsp;</span>para que se omitan.</li>
</ul>
</div>

︡95b61ba5-97d9-4292-81e4-d38dcfd01df4︡{"html": "<p><a name=\"eliminacion\"></a></p>\n<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\n<h3>Resoluci&oacute;n de sistemas mediante eliminaci&oacute;n gaussiana</h3>\n<p>En la pr&aacute;ctica anterior, definimos la&nbsp;funci&oacute;n&nbsp;<span style=\"color: #0000ff;\">forma_escalonada( A)</span>&nbsp;que nos permite obtener tanto las matrices $F$ y $U$ como la secuencia de transformaciones elementales por filas que reproducen el proceso seguido para escalonar la matriz $A$, seg&uacute;n la relaci&oacute;n $FA=U$. Admite las siguientes opciones y par&aacute;metros:</p>\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\">F,U=forma_escalonada(A, canonica?,transformaciones?)</span></p>\n<p>donde</p>\n<ul>\n<li><span style=\"color: #0000ff;\">canonica?</span>&nbsp;puede ser&nbsp;<span style=\"color: #0000ff;\">True</span>&nbsp;para forma escalonada can&oacute;nica&nbsp;y&nbsp;<span style=\"color: #0000ff;\">False</span>&nbsp;para forma escalonada simple</li>\n<li><span style=\"color: #0000ff;\">transformaciones?</span>&nbsp;puede ser&nbsp;<span style=\"color: #0000ff;\">True&nbsp;</span>para que se proporcione la lista de transformaciones elementales filas que se han realizado y&nbsp;<span style=\"color: #0000ff;\">False&nbsp;</span>para que se omitan.</li>\n</ul>\n</div>"}︡
︠6f871c68-c16b-4eb3-818d-719793023589a︠
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
︡ba6738a3-c3d0-4032-bd82-bbb471b01f0c︡︡
︠cd0970be-c21b-468a-8b74-0e7e6b57f181i︠
%html
<h3><span style="color: #0000ff;">Ejemplo 1</span></h3>
<p>Recordemos su uso con un ejemplo de escalonamiento de una matriz de n&uacute;meros racionales, de orden 3x4:</p>

︡074bea58-dce3-4ca6-8d99-a1e8c7a4def4︡{"html": "<h3><span style=\"color: #0000ff;\">Ejemplo 1</span></h3>\r\n<p>Recordemos su uso con un ejemplo de escalonamiento de una matriz de n&uacute;meros racionales, de orden 3x4:</p>"}︡
︠fd6a5651-b451-4f8e-a896-031027c9a1cc︠
A = matrix(QQ, [[0, 1, -2, 1], [4, 1, 0, 3], [2, 1, 1, -2]]); show(A)
︡dfb2293e-e576-4f8d-aec1-7afdfc8459d1︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n0 & 1 & -2 & 1 \\\\\n4 & 1 & 0 & 3 \\\\\n2 & 1 & 1 & -2\n\\end{array}\\right)", "display": true}}︡
︠87528485-34e2-4586-8ac2-7999c439f3e5︠
F, U = forma_escalonada(A, True, True)
︡c184bf79-d988-4774-b851-2c4d7de9d032︡{"stdout": "Matriz original:\n[ 0  1 -2  1]\n[ 4  1  0  3]\n[ 2  1  1 -2]\nTransformaciones elementales realizadas:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 1 , 2 }", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 3 , 1 }( -\\frac{1}{2} )", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 1 }( \\frac{1}{4} )", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 3 , 2 }( -\\frac{1}{2} )", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 1 , 2 }( -\\frac{1}{4} )", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 1 , 3 }( -\\frac{1}{4} )", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 2 , 3 }( 1 )", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 3 }( \\frac{1}{2} )", "display": true}}︡{"stdout": "Forma escalonada can\u00f3nica:\n[  1   0   0 3/2]\n[  0   1   0  -3]\n[  0   0   1  -2]"}︡
︠c1d0f499-812c-4ec9-bb11-8020b749f555︠
F*A == U
︡9c6858cf-45fd-40f5-8633-e55fa11f8a55︡{"stdout": "True"}︡
︠5adfe5e3-a8b4-4029-9f40-92bb122012efi︠
%html
<h4>Resoluci&oacute;n de sistemas lineales</h4>
<p>Podemos aplicar esta funci&oacute;n para la resoluci&oacute;n de un sistema de ecuaciones lineales $Ax=b$,</p>
<p>mediante&nbsp;escalonamiento de la matriz ampliada $\ M=(A|b)$. &nbsp;El proceso se completa con la resoluci&oacute;n del</p>
<p>sistema a partir de la nueva matriz escalonada, mediante la t&eacute;cnica de <strong>sustituci&oacute;n regresiva</strong>.</p>
<p>La funci&oacute;n <span style="color: #0000ff;">sustre()</span> que definimos a continuaci&oacute;n, aplicada sobre la matriz ampliada escalonada de un sistema de ecuaciones, devuelve su soluci&oacute;n.</p>

︡501f8b06-e4a1-4ee6-89f9-2ebfbb4b2e8f︡{"html": "<h4>Resoluci&oacute;n de sistemas lineales</h4>\r\n<p>Podemos aplicar esta funci&oacute;n para la resoluci&oacute;n de un sistema de ecuaciones lineales $Ax=b$,</p>\r\n<p>mediante&nbsp;escalonamiento de la matriz ampliada $\\ M=(A|b)$. &nbsp;El proceso se completa con la resoluci&oacute;n del</p>\r\n<p>sistema a partir de la nueva matriz escalonada, mediante la t&eacute;cnica de <strong>sustituci&oacute;n regresiva</strong>.</p>\r\n<p>La funci&oacute;n <span style=\"color: #0000ff;\">sustre()</span> que definimos a continuaci&oacute;n, aplicada sobre la matriz ampliada escalonada de un sistema de ecuaciones, devuelve su soluci&oacute;n.</p>"}︡
︠20e8415b-c011-4c68-9cab-b11cdc467675a︠
%auto

def sustre(U):
    m = U.ncols()
    n = U.nrows()
    M = U.submatrix(0, 0, n, m - 1)
    x = U.submatrix(0, m - 1, n, 1)
    x[n - 1] = x[n - 1]/M[n - 1, n - 1]
    for k in range(n - 2, -1, -1):
        x[k] = (x[k] - sum(M[k, j]*x[j] for j in range(k + 1, n)))/M[k, k]
    return x.transpose()
︡dcb305e5-dcf6-4926-bc3b-3633339aed9f︡︡
︠7c7e139a-9c21-47d9-bc4f-afdb95f00d2ci︠
%html
<h3 style="font-size: 1.17em;"><span style="color: #0000ff;">Ejemplo 2</span></h3>
<p>Se&nbsp;considera el sistema de ecuaciones $Ax=b$, donde</p>
<p>$$ A=\left(\begin{array}{rrrr} 8 &amp; -2 &amp; 0 &amp; 7 \\&nbsp;-4 &amp; 5 &amp; 6 &amp; -22 \\ 2 &amp; -2 &amp; 5 &amp; 5 \\ 2 &amp; -1 &amp; 1 &amp; 3\end{array}\right) \ \ \ \ {\rm y} \ \ \ \ b=\left(\begin{array}{r}13 \\ -15 \\ 10 \\ 5\end{array}\right)$$</p>
<p>Resolver el sistema &nbsp;siguiendo los siguientes procedimientos:</p>
<p>a) utilizando la funci&oacute;n de SAGE &nbsp;<span style="color: #0000ff;">solve_right(),</span></p>
<p>b) mediante eliminaci&oacute;n gaussiana sobre la matriz ampliada del sistema,</p>
<p>c) a partir de la forma escalonada can&oacute;nica de la matriz ampliada.</p>

︡6dbc205d-bbcb-4f6d-9974-617eac5f6c2e︡{"html": "<h3 style=\"font-size: 1.17em;\"><span style=\"color: #0000ff;\">Ejemplo 2</span></h3>\n<p>Se&nbsp;considera el sistema de ecuaciones $Ax=b$, donde</p>\n<p>$$ A=\\left(\\begin{array}{rrrr} 8 &amp; -2 &amp; 0 &amp; 7 \\\\&nbsp;-4 &amp; 5 &amp; 6 &amp; -22 \\\\ 2 &amp; -2 &amp; 5 &amp; 5 \\\\ 2 &amp; -1 &amp; 1 &amp; 3\\end{array}\\right) \\ \\ \\ \\ {\\rm y} \\ \\ \\ \\ b=\\left(\\begin{array}{r}13 \\\\ -15 \\\\ 10 \\\\ 5\\end{array}\\right)$$</p>\n<p>Resolver el sistema &nbsp;siguiendo los siguientes procedimientos:</p>\n<p>a) utilizando la funci&oacute;n de SAGE &nbsp;<span style=\"color: #0000ff;\">solve_right(),</span></p>\n<p>b) mediante eliminaci&oacute;n gaussiana sobre la matriz ampliada del sistema,</p>\n<p>c) a partir de la forma escalonada can&oacute;nica de la matriz ampliada.</p>"}︡
︠a987f062-076f-4924-8254-bc14cfcaa7f3︠
A = matrix(QQ, [[8, -2, 0, 7], [-4, 5, 6, -22], [2, -2, 5, 5], [2, -1, 1, 3]]); show(A)
︡7eef6a78-ceef-43fa-a7f4-eda9b1dad96c︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrr}\n8 & -2 & 0 & 7 \\\\\n-4 & 5 & 6 & -22 \\\\\n2 & -2 & 5 & 5 \\\\\n2 & -1 & 1 & 3\n\\end{array}\\right)", "display": true}}︡
︠d2faa3e6-afb0-4a93-8a69-8d14f959ad75︠
b = vector(QQ, [13, -15, 10, 5]); show(b)
︡c06f1402-3f95-45d2-8d9e-76503a42d780︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(13,\\,-15,\\,10,\\,5\\right)", "display": true}}︡
︠86bc10dd-e4e6-4992-a930-db5e78639a07i︠
%html
<p>a)</p>

︡5076c1fc-7611-443d-b00b-c7e1a01403da︡{"html": "<p>a)</p>"}︡
︠ae1bc74a-91d9-4fff-a9d5-b597401461a1︠
A.solve_right(b)
︡fa173347-7d3d-4ce7-b499-6d0a3086151b︡{"stdout": "(1, 1, 1, 1)"}︡
︠bd44ac1e-241d-4a0d-a3fa-a5559cf58cdci︠
%html
<p>b)</p>

︡9a713b4a-1705-48cf-b8d1-249f11805576︡{"html": "<p>b)</p>"}︡
︠00f930c4-b7f2-4d95-883c-3d61f0a47e04︠
M = A.augment(matrix(b).transpose()); show(M)
︡c98417e4-1900-428a-b35c-2ec616173217︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrrrr}\n8 & -2 & 0 & 7 & 13 \\\\\n-4 & 5 & 6 & -22 & -15 \\\\\n2 & -2 & 5 & 5 & 10 \\\\\n2 & -1 & 1 & 3 & 5\n\\end{array}\\right)", "display": true}}︡
︠22555f96-8f91-43b9-977d-80279c046649︠
F, U = forma_escalonada(M)
︡d53a5012-b671-4247-821f-0795bab777de︡{"stdout": "Forma escalonada simple:\n[     8     -2      0      7     13]\n[     0      4      6  -37/2  -17/2]\n[     0      0   29/4 -59/16  57/16]\n[     0      0      0  -5/29  -5/29]"}︡
︠a563c971-a087-4e73-9b81-78e289baa2e0︠
sustre(U)
︡46c14954-f569-4156-901e-3613ba6002e8︡{"stdout": "[1 1 1 1]"}︡
︠4332f699-c0a9-49a9-8e88-0de75b86f2cai︠
%html
<p>c)</p>

︡67e46130-21c3-4d84-9ad4-b78ba566d3f6︡{"html": "<p>c)</p>"}︡
︠eb201496-0bc9-414f-88dd-e682f236ddfb︠
F,U = forma_escalonada(M, True)
︡1f034d7d-7f2f-44fd-bdbf-7e224efbce32︡{"stdout": "Forma escalonada can\u00f3nica:\n[1 0 0 0 1]\n[0 1 0 0 1]\n[0 0 1 0 1]\n[0 0 0 1 1]"}︡
︠6ff0042a-bde3-4824-9b3d-e3f386459992i︠
%html
<h3><a name="pivoteo"></a>T&eacute;cnicas de pivoteo</h3>
<p>La resoluci&oacute;n de un sistema de ecuaciones lineales mediante el m&eacute;todo de eliminaci&oacute;n gaussiana no est&aacute; exenta de problemas debido a la transmisi&oacute;n de los errores de redondeo durante todo el proceso de c&aacute;lculo. Veamos un ejemplo ilustrativo, trabajando con n&uacute;meros reales en punto flotante.</p>
<h3><strong><span style="color: #0000ff;">Ejemplo 3</span></strong></h3>
<p>Consideremos el sistema lineal $\ Ax=b\ $ para las entradas</p>
<p>$ A=\left(\begin{array}{rrrr} 0.003 &amp; 9.00 \\ 4.00 &amp; 0.100 \end{array}\right) \ \ \ \ {\rm y} \ \ \ \ b=\left(\begin{array}{r}9.03 \\ 40.1\end{array}\right)$</p>
<p>cuya soluci&oacute;n exacta es $x=\left(\begin{array}{r}10 \\ 1\end{array}\right)$</p>
<p>Lo resolvemos mediante escalonamiento simple sobre la matriz ampliada del sistema:</p>
<p>&nbsp;</p>

︡5e3ba165-4cb5-4700-b220-07d706939463︡{"html": "<h3><a name=\"pivoteo\"></a>T&eacute;cnicas de pivoteo</h3>\n<p>La resoluci&oacute;n de un sistema de ecuaciones lineales mediante el m&eacute;todo de eliminaci&oacute;n gaussiana no est&aacute; exenta de problemas debido a la transmisi&oacute;n de los errores de redondeo durante todo el proceso de c&aacute;lculo. Veamos un ejemplo ilustrativo, trabajando con n&uacute;meros reales en punto flotante.</p>\n<h3><strong><span style=\"color: #0000ff;\">Ejemplo 3</span></strong></h3>\n<p>Consideremos el sistema lineal $\\ Ax=b\\ $ para las entradas</p>\n<p>$ A=\\left(\\begin{array}{rrrr} 0.003 &amp; 9.00 \\\\ 4.00 &amp; 0.100 \\end{array}\\right) \\ \\ \\ \\ {\\rm y} \\ \\ \\ \\ b=\\left(\\begin{array}{r}9.03 \\\\ 40.1\\end{array}\\right)$</p>\n<p>cuya soluci&oacute;n exacta es $x=\\left(\\begin{array}{r}10 \\\\ 1\\end{array}\\right)$</p>\n<p>Lo resolvemos mediante escalonamiento simple sobre la matriz ampliada del sistema:</p>\n<p>&nbsp;</p>"}︡
︠040035d4-618d-4049-9e9d-2a03ff7641b1︠
M = matrix([[0.003, 9.00, 9.03], [4.00, 0.100, 40.1]]); show(M)
︡769f9039-a5cb-4cc4-a87a-ec2a76472ea3︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n0.00300000000000000 & 9.00000000000000 & 9.03000000000000 \\\\\n4.00000000000000 & 0.100000000000000 & 40.1000000000000\n\\end{array}\\right)", "display": true}}︡
︠b2783736-a8fb-4826-aa29-b966235bac13︠
F, U = forma_escalonada(M, False, True)
︡6fedae6d-5a37-418c-a3c4-b6682abbccc5︡{"stdout": "Matriz original:\n[0.00300000000000000    9.00000000000000    9.03000000000000]\n[   4.00000000000000   0.100000000000000    40.1000000000000]\nTransformaciones elementales realizadas:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 2 , 1 }( -1333.33333333333 )", "display": true}}︡{"stdout": "Forma escalonada simple:\n[0.00300000000000000    9.00000000000000    9.03000000000000]\n[  0.000000000000000   -11999.9000000000   -11999.9000000000]"}︡
︠7bee37f7-2006-45fc-8a89-8193b0531e30︠
sustre(U)
︡ae6ed390-9142-48fc-9682-a1ac1b4d6810︡{"stdout": "[10.0000000000004 1.00000000000000]"}︡
︠c2254f67-e57a-4309-b18e-04a48dbfe363i︠
%html
<p>Obs&eacute;rvese que la soluci&oacute;n se ve afectada por un peque&ntilde;o error $(0.0000000000004)$, insignificante en este caso. No obstante, tales errores pueden magnificarse a medida que disminuye la precisi&oacute;n con la que realicemos los c&aacute;lculos.</p>
<p>Vamos a repetir el proceso pero obligando a SAGE a realizar los c&aacute;lculos con n&uacute;meros reales en <span style="color: #000000;"><strong>punto flotante y 8 bits de precisi&oacute;n para la mantisa</strong></span>, lo que provocar&aacute; grandes errores de redondeo al almacenar los datos:</p>

︡bbfdc524-18b1-4001-976b-6f2177f62f29︡{"html": "<p>Obs&eacute;rvese que la soluci&oacute;n se ve afectada por un peque&ntilde;o error $(0.0000000000004)$, insignificante en este caso. No obstante, tales errores pueden magnificarse a medida que disminuye la precisi&oacute;n con la que realicemos los c&aacute;lculos.</p>\n<p>Vamos a repetir el proceso pero obligando a SAGE a realizar los c&aacute;lculos con n&uacute;meros reales en <span style=\"color: #000000;\"><strong>punto flotante y 8 bits de precisi&oacute;n para la mantisa</strong></span>, lo que provocar&aacute; grandes errores de redondeo al almacenar los datos:</p>"}︡
︠b460a055-33bc-4127-b6a2-c4126fc8bcb5︠
M8 = matrix(RealField(8), [[0.003, 9.00, 9.03], [4.00, 0.100, 40.1]])
show(M8)
︡5b260188-f90b-4da3-99e0-2f258e30e79d︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n0.0030 & 9.0 & 9.0 \\\\\n4.0 & 0.10 & 40.\n\\end{array}\\right)", "display": true}}︡
︠d9e10ff3-8ca4-4c97-987f-243034341911i︠
%html
<p>Mostramos los valores num&eacute;ricos almacenados en memoria, ligeramente diferentes de los mostrados en pantalla:</p>

︡6f209a5c-648e-4977-94a4-bb4c62fdc339︡{"html": "<p>Mostramos los valores num&eacute;ricos almacenados en memoria, ligeramente diferentes de los mostrados en pantalla:</p>"}︡
︠006b5b92-a231-4e71-a852-53e998fa5aeb︠
n(M8)
︡06c62277-2f51-49d2-b9d2-9c32828d01bb︡{"stdout": "[0.00300598144531250    9.00000000000000    9.00000000000000]\n[   4.00000000000000   0.100097656250000    40.0000000000000]"}︡
︠d2230102-8b3d-4c06-b9d0-4f2a2d4b7794︠
F,U = forma_escalonada(M8, False, True)
︡a0e999c7-2a95-48bc-809a-e0904e2145bc︡{"stdout": "Matriz original:\n[0.0030    9.0    9.0]\n[   4.0   0.10    40.]\nTransformaciones elementales realizadas:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 2 , 1 }( -1300. )", "display": true}}︡{"stdout": "Forma escalonada simple:\n[ 0.0030     9.0     9.0]\n[   0.00 -12000. -12000.]"}︡
︠aaa98edc-dd1e-4438-bdf7-3611d3183f9d︠
sustre(U)
︡bd1cbd23-507f-44df-86bd-cce4ac574759︡{"stdout": "[ 21. 0.99]"}︡
︠b831f515-ed7f-4fa1-95da-2ee113425b6fi︠
%html
<p>Obs&eacute;rvese que ahora la soluci&oacute;n obtenida $x=(21,0.99)$ dista mucho de la soluci&oacute;n exacta $x=(10,1)$.</p>
<p>El problema viene motivado, fundamentalmente, porque la transformaci&oacute;n elemental $F_{2,1}(-1300.)$ ha amplificado los errores de redondeo iniciales al multiplicar la primera fila por 1300.</p>
<p>Es preciso por tanto introducir alguna t&eacute;cnica que controle el tama&ntilde;o de los multiplicadores que se emplean en las transformaciones elementales durante el proceso de escalonamiento. Vamos a estudiar, a continuaci&oacute;n, variantes de eliminaci&oacute;n gaussiana con estrategias de &nbsp;elecci&oacute;n de pivotes.</p>
<h4><strong>Eliminaci&oacute;n gaussiana con pivoteo parcial</strong></h4>
<p>En el proceso de escalonamiento, en la etapa k-&eacute;sima, hasta ahora hemos tomado como pivote el primer elemento no nulo de la columna correspondiente, por debajo de la diagonal. Una variante consiste en buscar el elemento de esa parte de la columna que es mayor en valor absoluto a todos los dem&aacute;s e intercambiar las filas de forma que el elemento localizado pase a ser el pivote. De esta forma, al dividir por el nuevo pivote conseguimos que el multiplicador sea menor o igual que 1. Esta t&eacute;cnica se denomina eliminaci&oacute;n gaussiana con <strong>pivoteo parcial</strong>.</p>
<p>Modificamos el algoritmo anterior en este sentido. La nueva versi&oacute;n, con pivoteo parcial, corresponde a la funci&oacute;n</p>
<p style="text-align: center;"><span style="color: #0000ff;">forma_escalonada_piv()</span></p>
<p>que utiliza los mismos par&aacute;metros y opciones que la versi&oacute;n original.</p>

︡b9f60cc1-b605-4806-858f-164c3b259438︡{"html": "<p>Obs&eacute;rvese que ahora la soluci&oacute;n obtenida $x=(21,0.99)$ dista mucho de la soluci&oacute;n exacta $x=(10,1)$.</p>\r\n<p>El problema viene motivado, fundamentalmente, porque la transformaci&oacute;n elemental $F_{2,1}(-1300.)$ ha amplificado los errores de redondeo iniciales al multiplicar la primera fila por 1300.</p>\r\n<p>Es preciso por tanto introducir alguna t&eacute;cnica que controle el tama&ntilde;o de los multiplicadores que se emplean en las transformaciones elementales durante el proceso de escalonamiento. Vamos a estudiar, a continuaci&oacute;n, variantes de eliminaci&oacute;n gaussiana con estrategias de &nbsp;elecci&oacute;n de pivotes.</p>\r\n<h4><strong>Eliminaci&oacute;n gaussiana con pivoteo parcial</strong></h4>\r\n<p>En el proceso de escalonamiento, en la etapa k-&eacute;sima, hasta ahora hemos tomado como pivote el primer elemento no nulo de la columna correspondiente, por debajo de la diagonal. Una variante consiste en buscar el elemento de esa parte de la columna que es mayor en valor absoluto a todos los dem&aacute;s e intercambiar las filas de forma que el elemento localizado pase a ser el pivote. De esta forma, al dividir por el nuevo pivote conseguimos que el multiplicador sea menor o igual que 1. Esta t&eacute;cnica se denomina eliminaci&oacute;n gaussiana con <strong>pivoteo parcial</strong>.</p>\r\n<p>Modificamos el algoritmo anterior en este sentido. La nueva versi&oacute;n, con pivoteo parcial, corresponde a la funci&oacute;n</p>\r\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\">forma_escalonada_piv()</span></p>\r\n<p>que utiliza los mismos par&aacute;metros y opciones que la versi&oacute;n original.</p>"}︡
︠cefd74d8-16a9-4055-ba55-ec12b2d80317a︠
%auto
def forma_escalonada_piv(M, canon = False, trans = False):
    if trans:
        print 'Matriz original:'
        show(M)
        print 'Transformaciones elementales realizadas:'
    A = copy(M)
    m = A.nrows(); n = A.ncols()
    mn = min(m,n)
    F = copy(identity_matrix(base_ring(A), m))
    s = 0
    for k in range(mn):
        vmax = 0
        while (s < n) and (vmax == 0):
            [vmax, q] = max([[abs(A[p, s]), p] for p in range(k, m)])
            if vmax != 0:
                if (q != k):
                    A.swap_rows(q, k)
                    F.swap_rows(q, k)
                    if trans:
                        pretty_print(' F_{' + latex(k+1) + ',' + latex(q+1)+'} ') 
            else:
                s = s + 1
        if (s < n):
            piv = A[k, s]
            for t in range(k + 1, m):
                multip = A[t,s]*piv^-1
                if multip != 0:
                    A[t, s] = 0
                    F[t] = F[t] - multip*F[k]
                    if trans:
                        pretty_print(' F_{' + latex(t+1) + ',' + latex(k+1)+'}(' + latex(-multip) + ') ')
                    for v in range(s + 1, n):
                        A[t, v] = A[t, v] - multip*A[k, v]
            if canon:
                for t in range(k):
                    multip = A[t, s]*piv^-1
                    if multip != 0:
                        A[t, s] = 0
                        F[t] = F[t] - multip*F[k]
                        if trans:
                            pretty_print(' F_{' + latex(t+1) + ',' + latex(k+1)+'}(' + latex(-multip) + ') ')
                        for v in range(s + 1, n):
                            A[t, v] = A[t, v] - multip*A[k,v]
                F[k] = F[k]*piv^-1
                A[k] = A[k]*piv^-1
                if (trans and piv^-1 != 1):
                    pretty_print(' F_{' + latex(k + 1)+'}(' + latex(1/piv) + ') ')      
    if canon and trans:
        print 'Forma escalonada canónica:'
    if not(canon) and trans:
        print 'Forma escalonada simple:'
    show(A)
    return F, A
︡f1b0de30-2760-473e-bc71-9280b9a41b79︡︡
︠0b9aa8af-6d2a-47aa-9322-a175d2999933i︠
%html
<h3><strong><span style="color: #0000ff;">Ejemplo 4</span></strong></h3>
<p>Volvemos sobre el &nbsp;ejemplo anterior, para precisi&oacute;n de 8 bits en punto flotante pero con t&eacute;cnica de pivoteo parcial.</p>

︡aa7a5e4f-db60-41c9-bd89-0e2c628e78ba︡{"html": "<h3><strong><span style=\"color: #0000ff;\">Ejemplo 4</span></strong></h3>\r\n<p>Volvemos sobre el &nbsp;ejemplo anterior, para precisi&oacute;n de 8 bits en punto flotante pero con t&eacute;cnica de pivoteo parcial.</p>"}︡
︠385262db-f168-4e62-9633-08bb230098d8︠
F, U = forma_escalonada_piv(M8, False, True)
︡5fc2c01f-b5e6-4226-b59a-11cd2b9a20ac︡{"stdout": "Matriz original:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n0.0030 & 9.0 & 9.0 \\\\\n4.0 & 0.10 & 40.\n\\end{array}\\right)", "display": true}}︡{"stdout": "Transformaciones elementales realizadas:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}} F_{ 1 , 2 } ", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}} F_{ 2 , 1 }( -0.00075 ) ", "display": true}}︡{"stdout": "Forma escalonada simple:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n4.0 & 0.10 & 40. \\\\\n0.00 & 9.0 & 9.0\n\\end{array}\\right)", "display": true}}︡
︠6ecc1476-72ad-43b1-8324-a97223b80e31︠
sustre(U)
︡6b62af59-26a7-454f-bc5b-2cbd4456ea71︡{"stdout": "[10. 1.0]"}︡
︠978b0791-cf7e-4853-bdc4-514f97a348bai︠
%html
<p>&iexcl;Hemos obtenido la soluci&oacute;n exacta!</p>
<p>&nbsp;No obstante, en la pr&aacute;ctica pueden surgir nuevos contratiempos que no resuelve esta t&eacute;cnica de pivoteo parcial. El m&aacute;s caracter&iacute;stico es el <strong>problema del escalado </strong>de las filas de la matriz:</p>
<p>Supongamos que sustituimos una ecuaci&oacute;n del sistema por un m&uacute;ltiplo grande de ella misma. Los elementos de la fila correspondiente se convierten, "artificialmente", en candidatos para pivotes en el m&eacute;todo de pivoteo parcial ya que han crecido de tama&ntilde;o, lo que puede generar nuevos problemas. Lo ilustraremos con el ejemplo anterior al multiplicar la primera fila por $10^4$ y repetir la t&eacute;cnica de pivoteo parcial.</p>
<h3><span style="color: #0000ff;">Ejemplo 5</span></h3>

︡8c73bdd0-a308-42e8-9fc6-8c5c1440f580︡{"html": "<p>&iexcl;Hemos obtenido la soluci&oacute;n exacta!</p>\n<p>&nbsp;No obstante, en la pr&aacute;ctica pueden surgir nuevos contratiempos que no resuelve esta t&eacute;cnica de pivoteo parcial. El m&aacute;s caracter&iacute;stico es el <strong>problema del escalado </strong>de las filas de la matriz:</p>\n<p>Supongamos que sustituimos una ecuaci&oacute;n del sistema por un m&uacute;ltiplo grande de ella misma. Los elementos de la fila correspondiente se convierten, \"artificialmente\", en candidatos para pivotes en el m&eacute;todo de pivoteo parcial ya que han crecido de tama&ntilde;o, lo que puede generar nuevos problemas. Lo ilustraremos con el ejemplo anterior al multiplicar la primera fila por $10^4$ y repetir la t&eacute;cnica de pivoteo parcial.</p>\n<h3><span style=\"color: #0000ff;\">Ejemplo 5</span></h3>"}︡
︠563fff2e-205d-4946-9e0f-80c07be98e2a︠
M8.rescale_row(0, 10^4)   # modificamos la primera fila; recuerda que Sage enumera comenzando por 0
show(M8)
︡3d73962c-198a-4a29-9257-8844f7e62823︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n30. & 90000. & 90000. \\\\\n4.0 & 0.10 & 40.\n\\end{array}\\right)", "display": true}}︡
︠e89a15d6-7b40-4394-bf70-fa8cb8422be4︠
F,U = forma_escalonada_piv(M8, False, True)
︡ec3087c5-8cb1-4e88-9aa0-6e69e50c3f4b︡{"stdout": "Matriz original:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n30. & 90000. & 90000. \\\\\n4.0 & 0.10 & 40.\n\\end{array}\\right)", "display": true}}︡{"stdout": "Transformaciones elementales realizadas:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}} F_{ 2 , 1 }( -0.13 ) ", "display": true}}︡{"stdout": "Forma escalonada simple:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n30. & 90000. & 90000. \\\\\n0.00 & -12000. & -12000.\n\\end{array}\\right)", "display": true}}︡
︠1ed45fa8-f28a-40c2-ab08-3c6fab305c03︠
sustre(U)
︡e28979fb-7992-4674-9a7d-ed20510c65e3︡{"stdout": "[ 17. 0.99]"}︡
︠c2b10cd4-f225-4088-9273-a3ddb33251ffi︠
%html
<p>Como se puede observar, hemos vuelto a obtener una soluci&oacute;n totalmente err&oacute;nea.</p>

︡68ec78e3-e39c-4b72-8e54-3adadecfc33a︡{"html": "<p>Como se puede observar, hemos vuelto a obtener una soluci&oacute;n totalmente err&oacute;nea.</p>"}︡
︠54830f0f-f24e-48b9-9d99-8313d9d8af28i︠
%html
<h4><a name="pivoteope"></a>Pivoteo parcial escalado</h4>
<p>Una nueva t&eacute;cnica de elecci&oacute;n de pivote que intenta paliar este problema de escalado consiste en modificar el pivoteo parcial, tomando como nuevo pivote en la parte de columna correspondiente aquel que resulte mayor al dividir su valor absoluto por el mayor valor absoluto de los elementos de la fila que lo contiene. En lo sucesivo llamaremos a esta t&eacute;cnica como eliminaci&oacute;n gaussiana con pivoteo parcial escalado.</p>
<p>Modificamos el algoritmo de escalonamiento y la nueva funci&oacute;n resultante es</p>
<p style="text-align: center;"><span style="color: #0000ff;">forma_escalonada_piv_esc()</span></p>
<p>con los mismos par&aacute;metros y opciones que las anteriores.</p>

︡b15da654-254e-440f-9860-0895df7185a9︡{"html": "<h4><a name=\"pivoteope\"></a>Pivoteo parcial escalado</h4>\n<p>Una nueva t&eacute;cnica de elecci&oacute;n de pivote que intenta paliar este problema de escalado consiste en modificar el pivoteo parcial, tomando como nuevo pivote en la parte de columna correspondiente aquel que resulte mayor al dividir su valor absoluto por el mayor valor absoluto de los elementos de la fila que lo contiene. En lo sucesivo llamaremos a esta t&eacute;cnica como eliminaci&oacute;n gaussiana con pivoteo parcial escalado.</p>\n<p>Modificamos el algoritmo de escalonamiento y la nueva funci&oacute;n resultante es</p>\n<p style=\"text-align: center;\"><span style=\"color: #0000ff;\">forma_escalonada_piv_esc()</span></p>\n<p>con los mismos par&aacute;metros y opciones que las anteriores.</p>"}︡
︠c328725e-3fe0-4269-aac1-0756cab7a663a︠
%auto
def forma_escalonada_piv_esc(M, canon = False, trans = False):
    A = copy(M)
    m = A.nrows(); n = A.ncols()
    mn = min(m, n)
    F = copy(identity_matrix(base_ring(A), m))
    s = 0
    for k in range(mn):
        vmax = 0
        while (s < n) and (vmax == 0):
            for p in range(k, m):
                aux = max(abs(A[p, f]) for f in range(s, n))
                if aux != 0:
                    if abs(A[p,s])*aux^-1 > vmax:
                        [vmax, q] = [abs(A[p, s])*aux^-1, p]
            if vmax != 0:
                if (q != k):
                    A.swap_rows(q, k)
                    F.swap_rows(q, k)
                    if trans:
                        pretty_print('  F_{' + latex(k+1) + ',' + latex(q+1)+'} ') 
            else:
                s = s + 1
        if (s < n):
            piv = A[k,s]
            for t in range(k + 1, m):
                multip = A[t, s]*piv^-1
                if multip != 0:
                    A[t, s] = 0
                    F[t] = F[t] - multip*F[k]
                    if trans:
                        pretty_print('  F_{' + latex(t+1) + ',' + latex(k+1)+'}(' + latex(-multip) + ') ')
                    for v in range(s + 1, n):
                        A[t, v] = A[t, v] - multip*A[k, v]
            if canon:
                for t in range(k):
                    multip = A[t, s]*piv^-1
                    if multip != 0:
                        A[t,s] = 0
                        F[t] = F[t] - multip*F[k]
                        if trans:
                            pretty_print('  F_{' + latex(t+1) + ',' + latex(k+1)+'}(' + latex(-multip) + ') ')
                        for v in range(s + 1, n):
                            A[t, v] = A[t, v] - multip*A[k, v]
                F[k] = F[k]*piv^-1
                A[k] = A[k]*piv^-1
                if (trans and piv^-1 != 1):
                    pretty_print(' $ F_{' + latex(k+1)+'}(' + latex(1/piv) + ') $')         
    if canon and trans:
        print 'Forma escalonada canónica:'
    if not(canon) and trans:
        print 'Forma escalonada simple:'
    show(A)
    return F, A
︡3c09a789-b6fd-4937-8669-895a002bc8cf︡︡
︠2362172b-84ee-498a-9e03-d8f08510e72ei︠
%html
<h3><span style="color: #0000ff;">Ejemplo 6</span></h3>
<p>Volvemos sobre el <strong>ejemplo anterior, </strong>aplicando ahora la t&eacute;cnica de escalonamiento con pivoteo parcial escalado.</p>

︡637e6c33-a6c4-42f3-b481-c2c8e7be0160︡{"html": "<h3><span style=\"color: #0000ff;\">Ejemplo 6</span></h3>\r\n<p>Volvemos sobre el <strong>ejemplo anterior, </strong>aplicando ahora la t&eacute;cnica de escalonamiento con pivoteo parcial escalado.</p>"}︡
︠b47fb6a4-2aa8-44e5-85bf-792835ed80c9︠
F, U = forma_escalonada_piv_esc(M8, False, True)
︡9d03f3b2-ec8d-4362-b21a-806903b7963c︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}  F_{ 1 , 2 } ", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}  F_{ 2 , 1 }( -7.5 ) ", "display": true}}︡{"stdout": "Forma escalonada simple:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n4.0 & 0.10 & 40. \\\\\n0.00 & 90000. & 90000.\n\\end{array}\\right)", "display": true}}︡
︠5b64eb12-d449-441e-b755-dac49f61edb7︠
sustre(U)
︡22df0da2-63f9-4fd0-bf4b-8a9720714617︡{"stdout": "[ 10. 0.99]"}︡
︠2aaf51b9-e959-478a-9853-6cb84a94e538i︠
%html
<p>Como puede observarse, una vez m&aacute;s, hemos paliado los efectos del problema de escalado, obteniendo una soluci&oacute;n muy pr&oacute;xima a la exacta.</p>

︡5f336fac-94e2-42f8-b815-942ee259fc7e︡{"html": "<p>Como puede observarse, una vez m&aacute;s, hemos paliado los efectos del problema de escalado, obteniendo una soluci&oacute;n muy pr&oacute;xima a la exacta.</p>"}︡
︠b197ce41-9c8e-4cd4-8301-dbc445c98f01i︠
%html
<h3><a name="desclu"></a><strong>Descomposici&oacute;n $LU$ de una matriz</strong></h3>
<p>El proceso de eliminaci&oacute;n gaussiana de una matriz $A$, como hemos visto, nos lleva a una descomposici&oacute;n matricial del tipo $F\cdot A=U$, donde $U$ es una matriz triangular superior y $F$ es una matriz cuadrada no singular, cuya inversa llamaremos $L=F^{-1}$, resultando $A=L\cdot U$.</p>
<p>Por otra parte, el proceso de eliminaci&oacute;n gaussiana s&oacute;lo requiere a lo sumo dos tipos de transformaciones elementales: intercambios de filas, $F_{ij}\ $, y adici&oacute;n a una fila de un m&uacute;ltiplo de otra, $F_{i,j}(-m_{ij})$. Si podemos prescindir de intercambios de filas, resulta que $F$ y $L$ son <strong>matrices triangulares inferiores unitarias</strong> y, concretamente el elemento $l_{ij}$ de la parte inferior de la matriz $L$ viene dado por los multiplicadores utilizados en el escalonamiento, cambiados de signo; esto es, $l_{ij}=m_{ij}$.</p>
<p>En caso de que sea preciso o nos interese utilizar intercambio de filas, se puede obtener una descomposici&oacute;n del tipo $P\cdot A=L\cdot U$, donde ahora $P$ representa una matriz de permutaci&oacute;n, cuyo efecto al multiplicar por la matriz $A$ consiste en reordenar las filas de la misma. Para obtener la matriz $P$ basta con guardar memoria de todos los intercambios de filas realizados a lo largo del proceso de eliminaci&oacute;n y aplicar estos mismos intercambios a la matriz unidad.</p>
<p>Modificamos los algoritmos anteriores para que guarden memoria de las matrices $P$, $L$ y $U$.&nbsp;</p>
<p>A continuaci&oacute;n se definen varias funciones que act&uacute;an sobre una matriz:</p>
<p><span style="color: #0000ff;">descompLU(A)</span>&nbsp;proporciona la descomposici&oacute;n LU de una matriz A en caso de que exista, informando en caso contrario. Nos devuelve la secuencia de las dos matrices de la descomposici&oacute;n: &nbsp;L, U.</p>
<p><span style="color: #0000ff;">descompPLU(A)</span> proporciona la descomposici&oacute;n PLU de una matriz A resultante de la eliminaci&oacute;n gaussiana con <span style="color: #0000ff;">pivoteo parcial</span>. Nos devuelve una secuencia de las tres matrices de la descomposici&oacute;n: P, L, U.</p>
<p><span style="color: #0000ff;">descompPLUppe(A)</span>&nbsp;proporciona la descomposici&oacute;n PLU de una matriz A resultante de la eliminaci&oacute;n gaussiana con <span style="color: #0000ff;">pivoteo parcial escalado</span>. Nos devuelve una secuencia de las tres matrices de la descomposici&oacute;n: P, L, U.</p>

︡bc979580-3938-4c20-8d87-a5eeec0d0591︡{"html": "<h3><a name=\"desclu\"></a><strong>Descomposici&oacute;n $LU$ de una matriz</strong></h3>\n<p>El proceso de eliminaci&oacute;n gaussiana de una matriz $A$, como hemos visto, nos lleva a una descomposici&oacute;n matricial del tipo $F\\cdot A=U$, donde $U$ es una matriz triangular superior y $F$ es una matriz cuadrada no singular, cuya inversa llamaremos $L=F^{-1}$, resultando $A=L\\cdot U$.</p>\n<p>Por otra parte, el proceso de eliminaci&oacute;n gaussiana s&oacute;lo requiere a lo sumo dos tipos de transformaciones elementales: intercambios de filas, $F_{ij}\\ $, y adici&oacute;n a una fila de un m&uacute;ltiplo de otra, $F_{i,j}(-m_{ij})$. Si podemos prescindir de intercambios de filas, resulta que $F$ y $L$ son <strong>matrices triangulares inferiores unitarias</strong> y, concretamente el elemento $l_{ij}$ de la parte inferior de la matriz $L$ viene dado por los multiplicadores utilizados en el escalonamiento, cambiados de signo; esto es, $l_{ij}=m_{ij}$.</p>\n<p>En caso de que sea preciso o nos interese utilizar intercambio de filas, se puede obtener una descomposici&oacute;n del tipo $P\\cdot A=L\\cdot U$, donde ahora $P$ representa una matriz de permutaci&oacute;n, cuyo efecto al multiplicar por la matriz $A$ consiste en reordenar las filas de la misma. Para obtener la matriz $P$ basta con guardar memoria de todos los intercambios de filas realizados a lo largo del proceso de eliminaci&oacute;n y aplicar estos mismos intercambios a la matriz unidad.</p>\n<p>Modificamos los algoritmos anteriores para que guarden memoria de las matrices $P$, $L$ y $U$.&nbsp;</p>\n<p>A continuaci&oacute;n se definen varias funciones que act&uacute;an sobre una matriz:</p>\n<p><span style=\"color: #0000ff;\">descompLU(A)</span>&nbsp;proporciona la descomposici&oacute;n LU de una matriz A en caso de que exista, informando en caso contrario. Nos devuelve la secuencia de las dos matrices de la descomposici&oacute;n: &nbsp;L, U.</p>\n<p><span style=\"color: #0000ff;\">descompPLU(A)</span> proporciona la descomposici&oacute;n PLU de una matriz A resultante de la eliminaci&oacute;n gaussiana con <span style=\"color: #0000ff;\">pivoteo parcial</span>. Nos devuelve una secuencia de las tres matrices de la descomposici&oacute;n: P, L, U.</p>\n<p><span style=\"color: #0000ff;\">descompPLUppe(A)</span>&nbsp;proporciona la descomposici&oacute;n PLU de una matriz A resultante de la eliminaci&oacute;n gaussiana con <span style=\"color: #0000ff;\">pivoteo parcial escalado</span>. Nos devuelve una secuencia de las tres matrices de la descomposici&oacute;n: P, L, U.</p>"}︡
︠57029f0f-68ca-4ac8-b5e9-55ff494c3302a︠
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

def descompLU(M):
    A = copy(M)
    m = A.nrows(); n = A.ncols()
    for k in range(m):
        if A[k, k] != 0:
            for t in range(k + 1, m):
                A[t, k] = A[t, k]/A[k, k]
                for v in range(k + 1, n):
                    A[t, v] = A[t, v] - A[t, k]*A[k, v]
        elif sum([A[j, k] != 0 for j in range(k + 1, m)]):
            print 'La matriz no admite descomposición LU sin intercambio de filas'
            break
    L = identity_matrix(base_ring(A), m) + tril(A, -1)
    U = triu(A)
    return L, U

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
    
        
        
def descompPLUppe(M):
    A = copy(M)
    m = A.nrows(); n = A.ncols()
    piv = range(n)
    for k in range(m):
        [vmax, q] = max([[abs(A[s, k])/max(abs(A[s, f]) for f in range(k, n)), s] for s in range(k, m)])
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
︡4021f9db-427e-43f9-8ef7-d634afe67f45︡︡
︠ced8fc85-90d2-4ed6-9c4e-79fe09885301i︠
%html
<h3><span style="color: #0000ff;">Ejemplo 7</span></h3>
<p>Calculamos la descomposici&oacute;n $LU$ de una matriz $A$ de orden 3 y comparamos con el proceso de escalonamiento:</p>

︡3e1edc15-bcfc-4c74-a62c-4218508a628b︡{"html": "<h3><span style=\"color: #0000ff;\">Ejemplo 7</span></h3>\r\n<p>Calculamos la descomposici&oacute;n $LU$ de una matriz $A$ de orden 3 y comparamos con el proceso de escalonamiento:</p>"}︡
︠7e3d1ed9-fd53-4dca-b651-6fdbe4e592c4︠
A=matrix(QQ, [[1, 2, 3], [3, 24, 1], [-1, 5, 1]]); show(A)
︡abc4e958-fe91-4f9a-90f9-7d18e043829b︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n1 & 2 & 3 \\\\\n3 & 24 & 1 \\\\\n-1 & 5 & 1\n\\end{array}\\right)", "display": true}}︡
︠93461719-ba73-4c9d-b7c4-a34c43ff311d︠
L, U = descompLU(A)
show(L)
show(U)
︡ba1543e3-4b6e-4da9-8f31-7f6fb14bb036︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n1 & 0 & 0 \\\\\n3 & 1 & 0 \\\\\n-1 & \\frac{7}{18} & 1\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n1 & 2 & 3 \\\\\n0 & 18 & -8 \\\\\n0 & 0 & \\frac{64}{9}\n\\end{array}\\right)", "display": true}}︡
︠99b2b7b8-f9e3-486e-9ac5-bf707502ac03︠
L*U == A
︡c83801c5-9fc1-4d6d-916c-2ce97fa96a99︡{"stdout": "True"}︡
︠cee42025-5c4e-4cc9-861f-de43b95d70d9︠
F,U1 = forma_escalonada(A, False, True)
︡1144e040-47f7-4124-9bb5-c7b5128d0179︡{"stdout": "Matriz original:\n[ 1  2  3]\n[ 3 24  1]\n[-1  5  1]\nTransformaciones elementales realizadas:"}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 2 , 1 }( -3 )", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 3 , 1 }( 1 )", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}F_{ 3 , 2 }( -\\frac{7}{18} )", "display": true}}︡{"stdout": "Forma escalonada simple:\n[   1    2    3]\n[   0   18   -8]\n[   0    0 64/9]"}︡
︠ef99c6fe-666d-4c71-947c-5b0482717bf6︠
show(L)
︡db22e404-42b8-4b5b-8d63-540b5eed18b4︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n1 & 0 & 0 \\\\\n3 & 1 & 0 \\\\\n-1 & \\frac{7}{18} & 1\n\\end{array}\\right)", "display": true}}︡
︠fc745fc2-743d-4b0d-ab56-80be84a5e52ei︠
%html
<h3><span style="color: #0000ff;">Ejemplo 8</span></h3>
<p>Sobre el <strong>ejemplo anterior</strong>, calculamos las descomposiciones PLU con pivoteo parcial y parcial escalado:</p>

︡7cd5ca18-e63d-44ef-ab86-221c9306ce75︡{"html": "<h3><span style=\"color: #0000ff;\">Ejemplo 8</span></h3>\r\n<p>Sobre el <strong>ejemplo anterior</strong>, calculamos las descomposiciones PLU con pivoteo parcial y parcial escalado:</p>"}︡
︠16ba2938-bc75-4b20-ab1c-a3514101f696︠
P, L, U = descompPLU(A)
show(P)
show(L)
show(U)
︡b38f8a2a-63b7-4971-9e79-82e6c2c83296︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n0 & 1 & 0 \\\\\n0 & 0 & 1 \\\\\n1 & 0 & 0\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n1 & 0 & 0 \\\\\n-\\frac{1}{3} & 1 & 0 \\\\\n\\frac{1}{3} & -\\frac{6}{13} & 1\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n3 & 24 & 1 \\\\\n0 & 13 & \\frac{4}{3} \\\\\n0 & 0 & \\frac{128}{39}\n\\end{array}\\right)", "display": true}}︡
︠3bccbd3f-3eab-43d6-a16c-215511937fb6︠
L*U == P*A
︡45e192a6-d7ad-4b2f-9c7b-ac4f57c5b281︡{"stdout": "True"}︡
︠8b760076-e41d-4d70-9998-3b6cd7c6f2b2︠
P, L, U = descompPLUppe(A)
show(P)
show(L)
show(U)
︡1093c2f2-ea86-47f6-a27f-60ef00f2e375︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n1 & 0 & 0 \\\\\n0 & 0 & 1 \\\\\n0 & 1 & 0\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n1 & 0 & 0 \\\\\n-1 & 1 & 0 \\\\\n3 & \\frac{18}{7} & 1\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n1 & 2 & 3 \\\\\n0 & 7 & 4 \\\\\n0 & 0 & -\\frac{128}{7}\n\\end{array}\\right)", "display": true}}︡
︠e073c153-64f1-49fc-9443-2f89499a80d9︠
L*U == P*A
︡509e03c2-3ccc-4dd1-a9c6-941b76c91174︡{"stdout": "True"}︡
︠e7abdfc2-7d1e-4feb-9b9d-12576ffe7086i︠
%html
<h4><a name="sislin"></a>Aplicaci&oacute;n de la descomposici&oacute;n $LU$ a la resoluci&oacute;n de sistemas lineales</h4>
<p>Dado el sistema lineal $A\cdot&nbsp;x=b$ y la descomposici&oacute;n $L\cdot U=P\cdot A$, obtenemos las siguientes relaciones:</p>
<p>$P\cdot&nbsp;A\cdot&nbsp;x=P\cdot&nbsp;b$ &nbsp;$\longrightarrow$ $L\cdot&nbsp;U\cdot&nbsp;x=P\cdot&nbsp;b=b_p\ $, donde $b_p$ es una permutaci&oacute;n del vector $b$. Podemos ahora separar el sistema lineal en dos subsistemas:</p>
<p style="text-align: center;">$U\cdot&nbsp;x=g\ \ $ &nbsp;y &nbsp;$\ \ L\cdot&nbsp;g=b_p$</p>
<p>El primer sistema es triangular superior y se resuelve por sustituci&oacute;n regresiva de las variables del vector $x$, quedando expresada la soluci&oacute;n como</p>
<p>$$x_n=\frac{g_n}{u_{nn}}\ ,\ \ x_i=\frac{g_i-\sum_{j=i+1}^{n}u_{ij}x_j}{u_{ii}}\ ,\ \ i=n-1,\dots, 1$$</p>
<p>El segundo sistema, triangular inferior, aunque tambi&eacute;n se podr&iacute;a resolver de forma similar, podemos interpretarlo y resolverlo a trav&eacute;s de los multiplicadores que se han empleado durante el escalonamiento, ya que en realidad $g$ es el resultado de aplicar sobre $b_p$ las transformaciones del proceso de escalonamiento. Otra forma de verlo&nbsp; es a partir de&nbsp; la ecuaci&oacute;n $\ \ L\cdot&nbsp;g=b_p$, de donde se obtiene que $\ \ g=L^{-1}\cdot b_p\ \ $ y $L^{-1}=F$ la matriz de las transformaciones elementales fila . Podemos obtener recursivamente $g$ de la siguiente forma:</p>
<p>$$g=b_{p}^{(n)}, \text{para }{ b_{p}}_{j}^{(k+1)}={ b_{p}}_{j}^{(k)}-m_{jk} { b_{p}}_{k}^{(k)} , k=1,\dots , n-1, j=k+1,\dots , n$$</p>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 130px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">bU00100000k</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 130px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">j&nbsp;</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 130px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">&nbsp;bU00100000k</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 130px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">j U00100000mjkbU00100000k</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 130px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">k  k&nbsp;</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 130px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">&nbsp;     n U00100000   j&nbsp;</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 130px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">&nbsp;k       n</div>
<p>La funci&oacute;n <span style="color: #0000ff;">modld($L, b_p$)</span> modifica el vector $b_p$ del lado derecho, obteniendo el vector $g$.</p>
<p>La funci&oacute;n <span style="color: #0000ff;">sustre2(U, g)</span> devuelve la soluci&oacute;n $x$ del sistema. Esta funci&oacute;n es similar a sustre(U) con la &uacute;nica diferencia de que toma 2 par&aacute;metros por separado: la matriz U y el t&eacute;rmino de la derecha, el vector g, mientras que en la versi&oacute;n anterior <span style="color: #0000ff;">sustre( )</span> se tomaba la matriz ampliada $(U|g)$.</p>

︡a015a852-6e2a-4b53-b7cf-b03b52da9324︡{"html": "<h4><a name=\"sislin\"></a>Aplicaci&oacute;n de la descomposici&oacute;n $LU$ a la resoluci&oacute;n de sistemas lineales</h4>\n<p>Dado el sistema lineal $A\\cdot&nbsp;x=b$ y la descomposici&oacute;n $L\\cdot U=P\\cdot A$, obtenemos las siguientes relaciones:</p>\n<p>$P\\cdot&nbsp;A\\cdot&nbsp;x=P\\cdot&nbsp;b$ &nbsp;$\\longrightarrow$ $L\\cdot&nbsp;U\\cdot&nbsp;x=P\\cdot&nbsp;b=b_p\\ $, donde $b_p$ es una permutaci&oacute;n del vector $b$. Podemos ahora separar el sistema lineal en dos subsistemas:</p>\n<p style=\"text-align: center;\">$U\\cdot&nbsp;x=g\\ \\ $ &nbsp;y &nbsp;$\\ \\ L\\cdot&nbsp;g=b_p$</p>\n<p>El primer sistema es triangular superior y se resuelve por sustituci&oacute;n regresiva de las variables del vector $x$, quedando expresada la soluci&oacute;n como</p>\n<p>$$x_n=\\frac{g_n}{u_{nn}}\\ ,\\ \\ x_i=\\frac{g_i-\\sum_{j=i+1}^{n}u_{ij}x_j}{u_{ii}}\\ ,\\ \\ i=n-1,\\dots, 1$$</p>\n<p>El segundo sistema, triangular inferior, aunque tambi&eacute;n se podr&iacute;a resolver de forma similar, podemos interpretarlo y resolverlo a trav&eacute;s de los multiplicadores que se han empleado durante el escalonamiento, ya que en realidad $g$ es el resultado de aplicar sobre $b_p$ las transformaciones del proceso de escalonamiento. Otra forma de verlo&nbsp; es a partir de&nbsp; la ecuaci&oacute;n $\\ \\ L\\cdot&nbsp;g=b_p$, de donde se obtiene que $\\ \\ g=L^{-1}\\cdot b_p\\ \\ $ y $L^{-1}=F$ la matriz de las transformaciones elementales fila . Podemos obtener recursivamente $g$ de la siguiente forma:</p>\n<p>$$g=b_{p}^{(n)}, \\text{para }{ b_{p}}_{j}^{(k+1)}={ b_{p}}_{j}^{(k)}-m_{jk} { b_{p}}_{k}^{(k)} , k=1,\\dots , n-1, j=k+1,\\dots , n$$</p>\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 130px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">bU00100000k\u0003\u0004\u0002</div>\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 130px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">j&nbsp;</div>\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 130px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">&nbsp;bU00100000k\u0002</div>\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 130px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">j U00100000mjkbU00100000k\u0002</div>\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 130px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">k \u0002 k&nbsp;</div>\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 130px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">&nbsp;\u0005\u0002 \u0003 \u0003 \u0003 \u0002 n U00100000 \u0005 \u0002 j&nbsp;</div>\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 130px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">&nbsp;k \u000e \u0005\u0002 \u0003 \u0003 \u0003 \u0002 n\u0003</div>\n<p>La funci&oacute;n <span style=\"color: #0000ff;\">modld($L, b_p$)</span> modifica el vector $b_p$ del lado derecho, obteniendo el vector $g$.</p>\n<p>La funci&oacute;n <span style=\"color: #0000ff;\">sustre2(U, g)</span> devuelve la soluci&oacute;n $x$ del sistema. Esta funci&oacute;n es similar a sustre(U) con la &uacute;nica diferencia de que toma 2 par&aacute;metros por separado: la matriz U y el t&eacute;rmino de la derecha, el vector g, mientras que en la versi&oacute;n anterior <span style=\"color: #0000ff;\">sustre( )</span> se tomaba la matriz ampliada $(U|g)$.</p>"}︡
︠f8b4d62c-3596-4b64-8999-db90ee9605fca︠
%auto
def modld(L, b):
    g = matrix(b).transpose()
    n = g.nrows()
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
︡0d1cf221-159f-4046-85b9-1e395a0a8db0︡︡
︠0aa1209e-a938-4ba6-b66b-10281cc70b6ci︠
%html
<h4>Finalmente, la resoluci&oacute;n de un sistema lineal $A\cdot x=b$ puede quedar reducida a tres fases:</h4>
<p>1) Descomposici&oacute;n $LU$ de la matriz $A$; si se hacen intercambio de filas (matriz $P$), entonces hay que actualizar el vector $b$ sustituy&eacute;ndolo por el nuevo vector $b_p=P\cdot b$; en caso contrario, $b_p=b$.</p>
<p>2) Resoluci&oacute;n del&nbsp;<span style="text-decoration: underline;"> sistema auxiliar</span>&nbsp; $L\cdot g=b_p$, obteniendo el vector $g$. La resoluci&oacute;n puede hacerse directamente como fase de modificaci&oacute;n del lado derecho, de acuerdo a los multiplicadores empleados en las transformacioones elementales, con la funci&oacute;n <span style="color: #0000ff;">modld</span>.</p>
<p>3) Sustituci&oacute;n regresiva en el sistema $U\cdot x=g$, con la funci&oacute;n <span style="color: #0000ff;">sustre2</span>.</p>
<h4>Inter&eacute;s de la descomposici&oacute;n $LU$ para la resoluci&oacute;n de sistemas lineales:</h4>
<p>En ocasiones es preciso resolver sistemas lineales $Ax=b_i$ para una misma matriz $A$ y diferentes vectores $b_i$, con $i=1,2,...k$. No tiene sentido escalonar la matriz $A$ en cada caso sino que habr&aacute; que hacerlo una &uacute;nica vez y guardar el resultado para poder aplicarlo a cada vector $b_i$. Precisamente, la descomposici&oacute;n $LU$ o $PLU$, que solo depende de la matriz $A$, permite resolver los diferentes sistemas seg&uacute;n el esquema de tres pasos descrito anteriormente. Esto es necesario sobre todo para valores $k$ muy grandes (muchos sistemas) o cuando los posibles vectores $b_i$ no se conocen a priori.</p>

︡0a2dd4a1-45ef-4974-bdf7-7879e52a060b︡{"html": "<h4>Finalmente, la resoluci&oacute;n de un sistema lineal $A\\cdot x=b$ puede quedar reducida a tres fases:</h4>\n<p>1) Descomposici&oacute;n $LU$ de la matriz $A$; si se hacen intercambio de filas (matriz $P$), entonces hay que actualizar el vector $b$ sustituy&eacute;ndolo por el nuevo vector $b_p=P\\cdot b$; en caso contrario, $b_p=b$.</p>\n<p>2) Resoluci&oacute;n del&nbsp;<span style=\"text-decoration: underline;\"> sistema auxiliar</span>&nbsp; $L\\cdot g=b_p$, obteniendo el vector $g$. La resoluci&oacute;n puede hacerse directamente como fase de modificaci&oacute;n del lado derecho, de acuerdo a los multiplicadores empleados en las transformacioones elementales, con la funci&oacute;n <span style=\"color: #0000ff;\">modld</span>.</p>\n<p>3) Sustituci&oacute;n regresiva en el sistema $U\\cdot x=g$, con la funci&oacute;n <span style=\"color: #0000ff;\">sustre2</span>.</p>\n<h4>Inter&eacute;s de la descomposici&oacute;n $LU$ para la resoluci&oacute;n de sistemas lineales:</h4>\n<p>En ocasiones es preciso resolver sistemas lineales $Ax=b_i$ para una misma matriz $A$ y diferentes vectores $b_i$, con $i=1,2,...k$. No tiene sentido escalonar la matriz $A$ en cada caso sino que habr&aacute; que hacerlo una &uacute;nica vez y guardar el resultado para poder aplicarlo a cada vector $b_i$. Precisamente, la descomposici&oacute;n $LU$ o $PLU$, que solo depende de la matriz $A$, permite resolver los diferentes sistemas seg&uacute;n el esquema de tres pasos descrito anteriormente. Esto es necesario sobre todo para valores $k$ muy grandes (muchos sistemas) o cuando los posibles vectores $b_i$ no se conocen a priori.</p>"}︡
︠eb5e1b85-3c39-4af9-9500-7a2104fecbadi︠
%html
<h3><span style="color: #0000ff;">Ejemplo 9</span></h3>
<p>Resolver, con ayuda de la descomposici&oacute;n LU, los sistemas de ecuaciones $Ax=b_i$ para los siguientes valores:</p>
<p>$ A=\left(\begin{array}{rrrr} 1 &amp; 3 &amp; -2 \\ 2 &amp; -1 &amp; 1\\ -1 &amp; 2 &amp; 0 \end{array}\right) \ \ \ \ {\rm y} \ \ \ \ b_1=\left(\begin{array}{r}2 \\ 2\\ 1\end{array}\right),\ \ b_2=\left(\begin{array}{r}4 \\ -1\\ 3\end{array}\right),\ \ &nbsp;b_3=\left(\begin{array}{r}0 \\ 1\\ 1\end{array}\right)$</p>
<p>&nbsp;</p>

︡e3fed8ae-f921-4c78-a1d0-e6df52f2becf︡{"html": "<h3><span style=\"color: #0000ff;\">Ejemplo 9</span></h3>\r\n<p>Resolver, con ayuda de la descomposici&oacute;n LU, los sistemas de ecuaciones $Ax=b_i$ para los siguientes valores:</p>\r\n<p>$ A=\\left(\\begin{array}{rrrr} 1 &amp; 3 &amp; -2 \\\\ 2 &amp; -1 &amp; 1\\\\ -1 &amp; 2 &amp; 0 \\end{array}\\right) \\ \\ \\ \\ {\\rm y} \\ \\ \\ \\ b_1=\\left(\\begin{array}{r}2 \\\\ 2\\\\ 1\\end{array}\\right),\\ \\ b_2=\\left(\\begin{array}{r}4 \\\\ -1\\\\ 3\\end{array}\\right),\\ \\ &nbsp;b_3=\\left(\\begin{array}{r}0 \\\\ 1\\\\ 1\\end{array}\\right)$</p>\r\n<p>&nbsp;</p>"}︡
︠afb489c5-4251-4936-b8ec-113037c30c96︠
A = matrix(QQ, [[1, 3, -2], [2, -1, 1], [-1, 2, 0]]); show(A)
︡674f2fc7-0e79-43f6-821d-5088e6d43caa︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n1 & 3 & -2 \\\\\n2 & -1 & 1 \\\\\n-1 & 2 & 0\n\\end{array}\\right)", "display": true}}︡
︠14b2c0a1-facc-4387-a95f-1d3e86f1d0a7︠
b1 = vector(QQ, [2, 2, 1])
b2 = vector(QQ, [4, -1, 3])
b3 = vector(QQ, [0, 1, 1])
︡ab10f7a8-a951-4ecb-bbe9-f9f61d58bf03︡︡
︠147ddfb8-7ea8-445f-ac13-789f2ff1fe52︠
L, U = descompLU(A)
show(L)
show(U)
︡2db8d841-de6d-4505-9076-b56d65c4693c︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n1 & 0 & 0 \\\\\n2 & 1 & 0 \\\\\n-1 & -\\frac{5}{7} & 1\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n1 & 3 & -2 \\\\\n0 & -7 & 5 \\\\\n0 & 0 & \\frac{11}{7}\n\\end{array}\\right)", "display": true}}︡
︠ef8f9c82-aff6-4fbe-9160-52b748f26a8c︠
g1 = modld(L, b1); show(g1)  # obtenemos la solución del sistema auxiliar
︡1174110d-1970-440a-9dd5-2431dd19acb6︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{r}\n2 \\\\\n-2 \\\\\n\\frac{11}{7}\n\\end{array}\\right)", "display": true}}︡
︠b4aa5be6-45a3-4cd6-826d-149cd55f12ee︠
[j[0] for j in g1.rows()]
︡f7252ba7-ef5a-41b0-a952-83be68e85bfa︡{"stdout": "[2, -2, 11/7]"}︡
︠c419ac4b-3e1b-48be-a372-f74a6fe59d92︠
sustre2(U, g1)   # obtenemos la solución final por sustitución regresiva.
︡fffdd2e2-e489-4c12-9c38-30144545de55︡{"stdout": "[1]\n[1]\n[1]"}︡
︠54c1948c-62a4-40ac-8674-d64d882c7ae5︠
A \ b1  # comprobamos la solución
︡4ae8c8b2-3568-42d5-81fc-add1d9bced22︡{"stdout": "(1, 1, 1)"}︡
︠8c1e1225-bdb9-4051-8082-92fcd621f0cb︠
g2 = modld(L, b2); show(g2)  # repetimos el proceso para el segundo vector b2
︡5c0fce25-33f3-48ae-bdb8-22044c8a64fd︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{r}\n4 \\\\\n-9 \\\\\n\\frac{4}{7}\n\\end{array}\\right)", "display": true}}︡
︠2bc2da93-4517-4f52-b1ef-4269dbd58d38︠
sustre2(U, g2)
︡34928dec-cb3c-4c1b-b006-4ba8b1b83d32︡{"stdout": "[ 1/11]\n[17/11]\n[ 4/11]"}︡
︠334e7cf6-b5a5-4c12-be05-906240bca4a6︠
A \ b2  # comprobamos la solución
︡7c337cf9-bf9e-43c5-a0d1-14f1b8c743cc︡{"stdout": "(1/11, 17/11, 4/11)"}︡
︠4f94cb1f-9457-4a00-af47-17c610a4a716︠
g3 = modld(L,b3);show(g3)   # repetimos el proceso para el tercer vector b3
︡d2178ae4-b4e9-4aef-9573-46948e21ed7d︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{r}\n0 \\\\\n1 \\\\\n\\frac{12}{7}\n\\end{array}\\right)", "display": true}}︡
︠0a86cf93-595f-4c1e-92ad-9467c0be5edb︠
sustre2(U, g3)
︡0a3e92de-9ca1-4295-b909-0c3873c51887︡{"stdout": "[ 3/11]\n[ 7/11]\n[12/11]"}︡
︠ae1c8b46-9400-4fb1-b592-9838169aa7ea︠
A \ b3  # comprobamos la solución
︡626de0c9-8ae0-427e-9946-1deb9b1d9060︡{"stdout": "(3/11, 7/11, 12/11)"}︡
︠29cfcc7e-6174-4f35-9382-4cfc1a067dd7i︠
%html
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<h3 style="font-size: 1.17em;"><span style="color: #0000ff;">Ejemplo 10</span></h3>
<p>Resolver, con ayuda de la descomposici&oacute;n PLU, los sistemas de ecuaciones $Ax=b_i$ para los siguientes valores:</p>
<p>$ A=\left(\begin{array}{rrrr} 0 &amp; 1 &amp; -2 \\ 2 &amp; -1 &amp; 1\\ -1 &amp; 2 &amp; 0 \end{array}\right) \ \ \ \ {\rm y} \ \ \ \ b_1=\left(\begin{array}{r}2 \\ 1\\ 1\end{array}\right),\ \ b_2=\left(\begin{array}{r}4 \\ -1\\ 3\end{array}\right),\ \ &nbsp;b_3=\left(\begin{array}{r}-3 \\ 1\\ 1\end{array}\right)$</p>
</div>

︡c2ed5804-c477-4fe1-b5c2-c9b695a9ee8a︡{"html": "<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\r\n<h3 style=\"font-size: 1.17em;\"><span style=\"color: #0000ff;\">Ejemplo 10</span></h3>\r\n<p>Resolver, con ayuda de la descomposici&oacute;n PLU, los sistemas de ecuaciones $Ax=b_i$ para los siguientes valores:</p>\r\n<p>$ A=\\left(\\begin{array}{rrrr} 0 &amp; 1 &amp; -2 \\\\ 2 &amp; -1 &amp; 1\\\\ -1 &amp; 2 &amp; 0 \\end{array}\\right) \\ \\ \\ \\ {\\rm y} \\ \\ \\ \\ b_1=\\left(\\begin{array}{r}2 \\\\ 1\\\\ 1\\end{array}\\right),\\ \\ b_2=\\left(\\begin{array}{r}4 \\\\ -1\\\\ 3\\end{array}\\right),\\ \\ &nbsp;b_3=\\left(\\begin{array}{r}-3 \\\\ 1\\\\ 1\\end{array}\\right)$</p>\r\n</div>"}︡
︠0dca2f9a-edee-4ae7-8d27-0a8e3976bfd0︠
A=matrix(QQ, [[0, 1, -2], [2, -1, 1], [-1, 2, 0]]); show(A)
︡9499207a-b7ac-47a6-8ada-b82bfdfc7141︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n0 & 1 & -2 \\\\\n2 & -1 & 1 \\\\\n-1 & 2 & 0\n\\end{array}\\right)", "display": true}}︡
︠f604f662-b5ec-40ee-a111-86fc5996dc58︠
L, U = descompLU(A)  # primero vamos a probar si existe descomposición LU
︡059d4bab-a418-4acc-94c2-4461a80d4b38︡{"stdout": "La matriz no admite descomposici\u00f3n LU sin intercambio de filas"}︡
︠80c9d96d-1550-42fc-a174-381ffa76fb41︠
L*U == A
︡272ae3e6-fc64-40ae-8717-e85a71eaf2bf︡{"stdout": "False"}︡
︠799eee1e-1125-4212-ace5-97370307e720︠
P, L, U = descompPLU(A)
show(P)
show(L)
show(U)
︡ac72eaf6-b609-40ab-97b9-cc8c4cb2757d︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n0 & 1 & 0 \\\\\n0 & 0 & 1 \\\\\n1 & 0 & 0\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n1 & 0 & 0 \\\\\n-\\frac{1}{2} & 1 & 0 \\\\\n0 & \\frac{2}{3} & 1\n\\end{array}\\right)", "display": true}}︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n2 & -1 & 1 \\\\\n0 & \\frac{3}{2} & \\frac{1}{2} \\\\\n0 & 0 & -\\frac{7}{3}\n\\end{array}\\right)", "display": true}}︡
︠3635fee4-1d02-4605-9acb-7e7752160262︠
P*A == L*U
︡b9b74658-cb41-4fb0-8f7c-23ca6f0c947c︡{"stdout": "True"}︡
︠34aa35e6-07e2-46c4-89ed-1e0e375b776a︠
b1p = P*b1; b1p  # modificamos el vector b1 aplicando la permutación P
︡22a68e69-6b38-447b-b4e7-300805ac967e︡{"stdout": "(2, 1, 2)"}︡
︠7a19d413-1ae2-41bf-851a-592cab9a2021︠
g1 = modld(L, b1p); g1  # resolvemos el sistema auxiliar
︡d941b8fe-6220-470b-813d-8080223d4415︡{"stdout": "[  2]\n[  2]\n[2/3]"}︡
︠71c9f14e-6d73-4aa4-9b36-0768ac8df519︠
sustre2(U, g1)   #  obtenemos la solución final para el primer vector b1 propuesto
︡ab88caee-36d4-4ea0-ad58-9c3926e645f0︡{"stdout": "[13/7]\n[10/7]\n[-2/7]"}︡
︠c1ea0c05-75d2-4a9e-8a9e-853fd6975030︠
A.solve_right(b1)  #  comprobamos que todo ha ido bien y la solución es correcta
︡7db123be-c27d-4e86-926f-da0a700d999f︡{"stdout": "(13/7, 10/7, -2/7)"}︡
︠c4246776-ef0d-4926-8d56-b38633436387︠
b2p = P*b2; b2p  #  repetimos el proceso con el vector b2
︡b3df9694-2c55-4777-be7d-20f55b964c83︡{"stdout": "(-1, 3, 4)"}︡
︠115517f4-c689-4e6b-b9c1-f1560250183d︠
g2 = modld(L, b2p); g2
︡6d231b49-d030-45d9-a047-f190245552da︡{"stdout": "[ -1]\n[5/2]\n[7/3]"}︡
︠ab1def03-e08b-460b-aaa7-ab9431726b66︠
sustre2(U, g2)
︡11dd1044-7bfb-410c-96af-8d863affb1d7︡{"stdout": "[ 1]\n[ 2]\n[-1]"}︡
︠9f9d39a2-a641-4fe6-be22-1dafdf9b80c8︠
A.solve_right(b2)
︡38ebe9bd-f0b6-4c5a-82ff-47467368c167︡{"stdout": "(1, 2, -1)"}︡
︠2a409014-19aa-49d0-9791-c3d04a075550︠
b3p = P*b3; b3p  #  repetimos el proceso con el vector b3
︡38081ce4-4a93-43b1-9748-7f7c1be69d58︡{"stdout": "(1, 1, 0)"}︡
︠4dc3f86a-8c64-4b56-b16c-debbc1e32259︠
g3 = modld(L, b3p); g3
︡87c6bfc1-fbf9-422e-8097-6286b394645f︡{"stdout": "[  1]\n[3/2]\n[ -1]"}︡
︠14409f58-b024-4790-b3b7-40629bc88a55︠
sustre2(U, g3)
︡4e78ba64-4c38-42aa-b47a-b773fd459c31︡{"stdout": "[5/7]\n[6/7]\n[3/7]"}︡
︠344a0cb2-16d2-46dd-8c48-37c073d1eea0︠
A.solve_right(b3)
︡663f6618-0524-4f6c-badc-8a69bfefd858︡{"stdout": "(5/7, 6/7, 3/7)"}︡
︠40c8b5df-6494-4be9-91b8-68bb874ffc19i︠
%html
<h3>Matrices regulares y diagonalmente dominantes</h3>
<p>Se dice que una matriz cuadrada $A$&nbsp; es no singular, invertible o <strong>regular</strong> si tiene matriz inversa, esto es, existe otra matriz $A^{-1}$ tal que $AA^{-1}=A^{-1}A=I$.</p>
<p>Desde el punto de vista computacional, el m&eacute;todo de Gauss-Jordan es el m&aacute;s eficiente para hallar la inversa de una matriz dada. As&iacute;, una matriz es regular si y solo si su forma escalonada can&oacute;nica es la matriz unidad.</p>
<p>Hay ocasiones donde se puede garantizar que una matriz es regular con un coste computacional menor. Tal es el caso de las matrices diagonalmente dominantes. Se dice que una matriz es <strong>diagonalmente dominante</strong> por filas&nbsp; si el valor absoluto de cada elemento de la diagonal es mayor que la suma de los valores absolutos del resto de elementos de la misma fila. De manera similar, se define una matriz diagonalmente dominante por columnas.</p>
<p><strong>Teorema</strong></p>
<p>Toda matriz diagonalmente dominante por filas o por columnas es regular.</p>

︡f7f2eb2a-ad9b-47c3-b10d-b2d0742a3836︡{"html": "<h3>Matrices regulares y diagonalmente dominantes</h3>\n<p>Se dice que una matriz cuadrada $A$&nbsp; es no singular, invertible o <strong>regular</strong> si tiene matriz inversa, esto es, existe otra matriz $A^{-1}$ tal que $AA^{-1}=A^{-1}A=I$.</p>\n<p>Desde el punto de vista computacional, el m&eacute;todo de Gauss-Jordan es el m&aacute;s eficiente para hallar la inversa de una matriz dada. As&iacute;, una matriz es regular si y solo si su forma escalonada can&oacute;nica es la matriz unidad.</p>\n<p>Hay ocasiones donde se puede garantizar que una matriz es regular con un coste computacional menor. Tal es el caso de las matrices diagonalmente dominantes. Se dice que una matriz es <strong>diagonalmente dominante</strong> por filas&nbsp; si el valor absoluto de cada elemento de la diagonal es mayor que la suma de los valores absolutos del resto de elementos de la misma fila. De manera similar, se define una matriz diagonalmente dominante por columnas.</p>\n<p><strong>Teorema</strong></p>\n<p>Toda matriz diagonalmente dominante por filas o por columnas es regular.</p>"}︡
︠8cdcb764-f8a8-4518-a542-3547616488d9i︠
%html
<h3 style="font-size: 1.17em;"><span style="color: #0000ff;">Ejemplo 11</span></h3>
<p><span style="color: #0000ff;"><span style="color: #000000;">Comprobar que la siguiente matriz es diagonalmente dominante p<span style="color: #000000;">o</span></span><span style="color: #000000;">r</span><span style="color: #000000;"><span style="color: #000000;"> fila</span>s pero no lo es por columnas. Comprobar que es regular.</span><br /></span></p>

︡c2ec133f-23cc-4bc9-9ce2-30be9dcdd69c︡{"html": "<h3 style=\"font-size: 1.17em;\"><span style=\"color: #0000ff;\">Ejemplo 11</span></h3>\n<p><span style=\"color: #0000ff;\"><span style=\"color: #000000;\">Comprobar que la siguiente matriz es diagonalmente dominante p<span style=\"color: #000000;\">o</span></span><span style=\"color: #000000;\">r</span><span style=\"color: #000000;\"><span style=\"color: #000000;\"> fila</span>s pero no lo es por columnas. Comprobar que es regular.</span><br /></span></p>"}︡
︠466c4071-1965-43ce-89c3-53253cf796c5︠
A = matrix(QQ, [[4, 1, -2], [2, -5, 1], [-3, 2, 6]]); show(A)
︡bfac7759-0176-4a16-bc84-1fb485c2885e︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n4 & 1 & -2 \\\\\n2 & -5 & 1 \\\\\n-3 & 2 & 6\n\\end{array}\\right)", "display": true}}︡
︠ed6eb53e-6a5e-4a0a-8e62-a80f2d16dcc3︠
F, U = forma_escalonada(A, True) # la matriz A tendrá inversa si su forma escalonada canónica es I
︡5b1e116e-bb9a-4657-b56c-de8b76bb14f8︡{"stdout": "Forma escalonada can\u00f3nica:\n[1 0 0]\n[0 1 0]\n[0 0 1]"}︡
︠29c2846d-5863-4f2c-98b9-1022ce344a73i︠
%html
<p>En tal caso, la inversa de $A$ es $A^{-1}=F$.</p>

︡14eb7727-dbcf-43db-b8ce-df5caa9dd536︡{"html": "<p>En tal caso, la inversa de $A$ es $A^{-1}=F$.</p>"}︡
︠184a3b18-ea91-42ef-b660-a97911f636dc︠
show(F)
︡ea6aa696-d9bb-4ec1-9c52-2ca2ede4cd04︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n\\frac{32}{121} & \\frac{10}{121} & \\frac{9}{121} \\\\\n\\frac{15}{121} & -\\frac{18}{121} & \\frac{8}{121} \\\\\n\\frac{1}{11} & \\frac{1}{11} & \\frac{2}{11}\n\\end{array}\\right)", "display": true}}︡
︠d69fee89-4cff-4592-8b11-9bf870d4e343︠
F*A
︡e6312df7-f4b6-4891-817d-2eee8bd03031︡{"stdout": "[1 0 0]\n[0 1 0]\n[0 0 1]"}︡
︠74115b3f-fba5-4178-bf39-abf75a341430i︠
%html
<h3><a name="cholesky"></a>Matrices sim&eacute;tricas y descomposici&oacute;n de Cholesky</h3>
<h4>Definiciones</h4>
<p>Una matriz $A$ se dice &nbsp;<span style="color: #0000ff;">sim&eacute;trica&nbsp;<span style="color: #000000;">si verifica que $\ A=A^t$</span></span> , es decir, coincide con su matriz traspuesta.</p>
<p>Una matriz sim&eacute;trica se dice que es&nbsp;<span style="color: #0000ff;">definida positiva <span style="color: #000000;">si verifica que</span></span></p>
<p>$\ x^{t}Ax \geq 0$&nbsp; $&nbsp; \forall x \in R^n$&nbsp; y &nbsp;$\ x^{t}Ax = 0\ $&nbsp;si y s&oacute;lo si $x=\bar 0$ es el vector nulo.</p>
<p>&nbsp;</p>
<h4><span style="background-color: #ffffff;">Teorema</span></h4>
<p><span style="background-color: #ffffff;">Toda matriz sim&eacute;trica y definida positiva admite descomposici&oacute;n $LU$.</span></p>
<p>&nbsp;</p>
<p>En SAGE podemos comprobar si una matriz $A$ es sim&eacute;trica mediante el atributo&nbsp;<span style="color: #0000ff;">is_symmetric()</span></p>

︡f6cbb565-b85e-420a-ae32-bf016c358ca3︡{"html": "<h3><a name=\"cholesky\"></a>Matrices sim&eacute;tricas y descomposici&oacute;n de Cholesky</h3>\n<h4>Definiciones</h4>\n<p>Una matriz $A$ se dice &nbsp;<span style=\"color: #0000ff;\">sim&eacute;trica&nbsp;<span style=\"color: #000000;\">si verifica que $\\ A=A^t$</span></span> , es decir, coincide con su matriz traspuesta.</p>\n<p>Una matriz sim&eacute;trica se dice que es&nbsp;<span style=\"color: #0000ff;\">definida positiva <span style=\"color: #000000;\">si verifica que</span></span></p>\n<p>$\\ x^{t}Ax \\geq 0$&nbsp; $&nbsp; \\forall x \\in R^n$&nbsp; y &nbsp;$\\ x^{t}Ax = 0\\ $&nbsp;si y s&oacute;lo si $x=\\bar 0$ es el vector nulo.</p>\n<p>&nbsp;</p>\n<h4><span style=\"background-color: #ffffff;\">Teorema</span></h4>\n<p><span style=\"background-color: #ffffff;\">Toda matriz sim&eacute;trica y definida positiva admite descomposici&oacute;n $LU$.</span></p>\n<p>&nbsp;</p>\n<p>En SAGE podemos comprobar si una matriz $A$ es sim&eacute;trica mediante el atributo&nbsp;<span style=\"color: #0000ff;\">is_symmetric()</span></p>"}︡
︠4cf06594-3560-4ad7-8aa3-fb0b176b36ca︠
A = matrix(RDF, [[4, 2, 1], [2, 3, 0], [1, 0, 4]])
show(A)
︡30dfec0f-3e50-4d17-9aad-e91c13ee0df3︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n4.0 & 2.0 & 1.0 \\\\\n2.0 & 3.0 & 0.0 \\\\\n1.0 & 0.0 & 4.0\n\\end{array}\\right)", "display": true}}︡
︠3f1819ac-fa84-495d-8311-59823a8c8dfe︠
A.is_symmetric()
︡6de4ca85-2d29-4fdd-aa15-8ab48b2f2619︡{"stdout": "True"}︡
︠c95a0b53-fe6b-4525-a6a8-a866c12913f8i︠
%html
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<h4>Definici&oacute;n</h4>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">Se dice que una matriz $A$ sim\'{e}trica admite</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">descomposici\'{o}n de Choleski si existe una matriz $B=(b_{ij})$</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">triangular superior con $b_{ii} \neq 0, \ \ \forall i=1,\dots,n$</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">tal que $A=B^{*} B$.</div>
<p>Se dice que una matriz $A$ sim&eacute;trica admite&nbsp;<span style="color: #0000ff;">descomposici&oacute;n de Cholesky</span>&nbsp;si existe otra matriz $T=(t_{ij})$&nbsp;triangular superior con $t_{ii} \neq 0, \ \ \forall i=1,\dots,n\ $&nbsp;tal que $A=T^{t} T$.&nbsp;</p>
<h4><strong>Teorema</strong></h4>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">Sea $A=(a_{ij})$ una matriz sim\'{e}trica. Las</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">condiciones siguientes son equivalentes:</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">\begin{enumerate}</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">\item $A$ es definida positiva.</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">\item Si $A_k=(a_{kk}),\ \ \forall k=1,\dots, n$, se tiene que</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">$|A_k| &gt; 0, \ \forall k=1,\dots, n$.</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">\item $A$ admite descomposici\'{o}n de Choleski.Teorema</div>
<p>Sea $A$ una matriz sim&eacute;trica. Las&nbsp;condiciones siguientes son equivalentes:</p>
<ul>
<li>$A$ es definida positiva.</li>
<li>Los menores principales $A_k,\ \ \forall k=1,\dots, n$, son positivos.</li>
<li>$A$ admite descomposici&oacute;n de Cholesky.</li>
</ul>
<ul>
</ul>
<h4 style="font-size: 1em;">Relaci&oacute;n con la descomposici&oacute;n $LU$</h4>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">Por tratarse de una matriz herm\'{\i}tica y definida positiva, sabemos que admite</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">factorizaci\'{o}n $LU$. Sea</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">$A=\left(\begin{array}{cccc}1 &amp; 0 &amp; \cdots &amp; 0\\ l_{21} &amp; 1 &amp; \cdots &amp;</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">0\\ \vdots &amp; \vdots &amp; \ddots &amp; \vdots\\ l_{n1} &amp; l_{n2} &amp; \cdots &amp;</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">1\end{array}\right)\left(\begin{array}{cccc}u_{11} &amp; u_{12} &amp; \cdots &amp;</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">u_{1n}\\ 0 &amp; u_{22} &amp; \cdots &amp; u_{2n}\\ \vdots &amp; \vdots &amp; \ddots &amp; \vdots\\</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">0 &amp; 0 &amp; \cdots &amp; u_{nn}\end{array}\right)=$</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">$\hphantom{A}=\left(\!\!\begin{array}{cccc}1 &amp; 0 &amp; \cdots &amp; 0\\ l_{21} &amp; 1 &amp;</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">\cdots &amp; 0\\ \vdots &amp; \vdots &amp; \ddots &amp; \vdots\\ l_{n1} &amp; l_{n2} &amp; \cdots &amp;</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">1 \end{array}\!\!\right)\left(\!\!\begin{array}{cccc}u_{11} &amp; 0 &amp; \cdots &amp; 0\\ 0 &amp;</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">u_{22} &amp; \cdots &amp; 0\\ \vdots &amp; \vdots &amp; \ddots &amp; \vdots\\ 0 &amp; 0 &amp; \cdots &amp;</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">u_{nn} \end{array}\!\!\right)\left(\!\!\begin{array}{cccc}1\!\! &amp;</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">\nicfrac{u_{12}}{u_{11}}&amp; \!\!\cdots &amp; \!\!\nicfrac{u_{1n}}{u_{11}}</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">\\ 0\!\! &amp; 1 &amp; \!\!\cdots &amp; \!\!\nicfrac{u_{2n}}{u_{22}}\\</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">\vdots\!\! &amp; \vdots &amp; \!\!\ddots &amp; \!\!\vdots\\ 0\!\! &amp; 0 &amp; \!\!\cdots &amp; \!\!1</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">\end{array}\!\!\right)=$</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">$\D\hphantom{A}=L\left(\begin{array}{cccc}u_{11} &amp; 0 &amp; \cdots &amp; 0\\ 0 &amp;</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">u_{22} &amp; \cdots &amp; 0\\ \vdots &amp; \vdots &amp; \ddots &amp; \vdots\\ 0 &amp; 0 &amp; \cdots &amp;</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">u_{nn} \end{array}\right)V=$</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">$\D\hphantom{A}=L\left(\begin{array}{cccc}\sqrt{u_{11}} &amp; 0 &amp; \cdots &amp; 0\\ 0</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">&amp; \sqrt{u_{22}} &amp; \cdots &amp; 0\\ \vdots &amp; \vdots &amp; \ddots &amp; \vdots\\ 0 &amp; 0 &amp;</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">\cdots &amp; \sqrt{u_{nn}}\end{array}\right)\left(\begin{array}{cccc}</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">\sqrt{u_{11}} &amp; 0 &amp; \cdots &amp; 0 \\ 0 &amp; \sqrt{u_{22}} &amp; \cdots &amp; 0\\ \vdots &amp;</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">\vdots &amp; \ddots &amp; \vdots\\ 0 &amp; 0 &amp; \cdots &amp; \sqrt{u_{nn}} \end{array}\right)V</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">\Rightarrow$</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">$A=BR$</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">$B=L\left(\begin{array}{ccccc}\sqrt{u_{11}} &amp; 0 &amp; 0 &amp;</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">\cdots &amp; 0\\ 0 &amp; \sqrt{u_{22}} &amp; 0 &amp; \cdots &amp; 0\\ 0 &amp; 0 &amp; \sqrt{u_{33}} &amp;</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">\cdots &amp; 0\\ \vdots &amp; \vdots &amp; \vdots &amp; \ddots &amp; \vdots\\ 0 &amp; 0 &amp; 0 &amp; \cdots</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">&amp; \sqrt{u_{nn}} \end{array}\right)$ \ es triangular inferior.</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">$R=\left(\begin{array}{ccccc}\sqrt{u_{11}} &amp; 0 &amp; 0 &amp; \cdots &amp; 0\\ 0 &amp;</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">\sqrt{u_{22}} &amp; 0 &amp; \cdots &amp; 0\\ 0 &amp; 0 &amp; \sqrt{u_{33}} &amp; \cdots &amp; 0\\ \vdots</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">&amp; \vdots &amp; \vdots &amp; \ddots &amp; \vdots\\ 0 &amp; 0 &amp; 0 &amp; \cdots &amp; \sqrt{u_{nn}}</div>
<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;">\end{array}\right)V$ \ es triangular superior.</div>
<p>Por tratarse de una matriz sim&eacute;trica y definida positiva, sabemos que admite&nbsp;factorizaci&oacute;n $LU$.</p>
<p>Sea</p>
<p>$A=\left(\begin{array}{cccc}1 &amp; 0 &amp; \cdots &amp; 0\\ l_{21} &amp; 1 &amp; \cdots &amp;&nbsp;0\\ \vdots &amp; \vdots &amp; \ddots &amp; \vdots\\ l_{n1} &amp; l_{n2} &amp; \cdots &amp;&nbsp;1\end{array}\right)\left(\begin{array}{cccc}u_{11} &amp; u_{12} &amp; \cdots &amp;&nbsp;u_{1n}\\ 0 &amp; u_{22} &amp; \cdots &amp; u_{2n}\\ \vdots &amp; \vdots &amp; \ddots &amp; \vdots\\&nbsp;0 &amp; 0 &amp; \cdots &amp; u_{nn}\end{array}\right)=$</p>
<p>$\hphantom{A}=\left(\!\!\begin{array}{cccc}1 &amp; 0 &amp; \cdots &amp; 0\\ l_{21} &amp; 1 &amp;&nbsp;\cdots &amp; 0\\ \vdots &amp; \vdots &amp; \ddots &amp; \vdots\\ l_{n1} &amp; l_{n2} &amp; \cdots &amp;&nbsp;1 \end{array}\!\!\right)\left(\!\!\begin{array}{cccc}u_{11} &amp; 0 &amp; \cdots &amp; 0\\ 0 &amp;&nbsp;u_{22} &amp; \cdots &amp; 0\\ \vdots &amp; \vdots &amp; \ddots &amp; \vdots\\ 0 &amp; 0 &amp; \cdots &amp;&nbsp;u_{nn} \end{array}\!\!\right)\left(\!\!\begin{array}{cccc}1\!\! &amp;&nbsp;\frac{u_{12}}{u_{11}}&amp; \!\!\cdots &amp; \!\!\frac{u_{1n}}{u_{11}}&nbsp;\\ 0\!\! &amp; 1 &amp; \!\!\cdots &amp; \!\!\frac{u_{2n}}{u_{22}}\\&nbsp;\vdots\!\! &amp; \vdots &amp; \!\!\ddots &amp; \!\!\vdots\\ 0\!\! &amp; 0 &amp; \!\!\cdots &amp; \!\!1&nbsp;\end{array}\!\!\right)=$</p>
<p>$\hphantom{A}=L\left(\begin{array}{cccc}u_{11} &amp; 0 &amp; \cdots &amp; 0\\ 0 &amp;&nbsp;u_{22} &amp; \cdots &amp; 0\\ \vdots &amp; \vdots &amp; \ddots &amp; \vdots\\ 0 &amp; 0 &amp; \cdots &amp;&nbsp;u_{nn} \end{array}\right)V=$</p>
<p>$\hphantom{A}=L\left(\begin{array}{cccc}\sqrt{u_{11}} &amp; 0 &amp; \cdots &amp; 0\\ 0&nbsp;&amp; \sqrt{u_{22}} &amp; \cdots &amp; 0\\ \vdots &amp; \vdots &amp; \ddots &amp; \vdots\\ 0 &amp; 0 &amp;&nbsp;\cdots &amp; \sqrt{u_{nn}}\end{array}\right)\left(\begin{array}{cccc}&nbsp;\sqrt{u_{11}} &amp; 0 &amp; \cdots &amp; 0 \\ 0 &amp; \sqrt{u_{22}} &amp; \cdots &amp; 0\\ \vdots &amp;&nbsp;\vdots &amp; \ddots &amp; \vdots\\ 0 &amp; 0 &amp; \cdots &amp; \sqrt{u_{nn}} \end{array}\right)V=LDDV \Rightarrow$</p>
<p style="text-align: center;">$$A=BT$$</p>
<p style="text-align: left;">donde</p>
<p>$B=L\left(\begin{array}{ccccc}\sqrt{u_{11}} &amp; 0 &amp; 0 &amp;&nbsp;\cdots &amp; 0\\ 0 &amp; \sqrt{u_{22}} &amp; 0 &amp; \cdots &amp; 0\\ 0 &amp; 0 &amp; \sqrt{u_{33}} &amp;&nbsp;\cdots &amp; 0\\ \vdots &amp; \vdots &amp; \vdots &amp; \ddots &amp; \vdots\\ 0 &amp; 0 &amp; 0 &amp; \cdots&nbsp;&amp; \sqrt{u_{nn}} \end{array}\right)\ $ &nbsp;es triangular inferior.</p>
<p>$T=\left(\begin{array}{ccccc}\sqrt{u_{11}} &amp; 0 &amp; 0 &amp; \cdots &amp; 0\\ 0 &amp;&nbsp;\sqrt{u_{22}} &amp; 0 &amp; \cdots &amp; 0\\ 0 &amp; 0 &amp; \sqrt{u_{33}} &amp; \cdots &amp; 0\\ \vdots&nbsp;&amp; \vdots &amp; \vdots &amp; \ddots &amp; \vdots\\ 0 &amp; 0 &amp; 0 &amp; \cdots &amp; \sqrt{u_{nn}}&nbsp;\end{array}\right)V\ $ es triangular superior.</p>
<p>De la simetr&iacute;a de $A$ se deduce que $B=T^t$.&nbsp;</p>
<p>&nbsp;</p>
<h4 style="font-size: 1em;">C&aacute;lculo directo de la descomposici&oacute;n de Cholesky</h4>
<p>&nbsp;</p>
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<p>Partiendo de la descomposici&oacute;n $A=T^tT$, podemos plantear un sistema de ecuaciones con los elementos $t_{ij}$ como inc&oacute;gnitas:</p>
<p>$A=\left(\begin{array}{cccc}t_{11}&nbsp;&amp; 0 &amp; \cdots &amp; 0\\ t_{21} &amp; t_{22}&nbsp;&amp; \cdots &amp;&nbsp;0\\ \vdots &amp; \vdots &amp; \ddots &amp; \vdots\\ t_{n1} &amp; t_{n2} &amp; \cdots &amp; t_{nn}\end{array}\right)\left(\begin{array}{cccc}t_{11} &amp; t_{21} &amp; \cdots &amp;&nbsp;t_{n1}\\ 0 &amp; t_{22} &amp; \cdots &amp; t_{n2}\\ \vdots &amp; \vdots &amp; \ddots &amp; \vdots\\&nbsp;0 &amp; 0 &amp; \cdots &amp; t_{nn}\end{array}\right)$</p>
<p>resultando las siguientes ecuaciones</p>
<p>Para $i=1,2,\dots,n\ $ y&nbsp;para $\ j=1,2,\dots,i-1$</p>
<p><span style="white-space: pre;"> </span>$$t_{ii}=\sqrt{a_{ii}-\sum_{k=1}^{i-1}t_{ik}^2}$$</p>
<p>$$t_{ij}=\frac1{t_{jj}}\left(a_{ij}-\sum_{k=1}^{j-1}t_{ik}t_{jk}\right)$$</p>
<p>La siguiente funci&oacute;n <span style="color: #0000ff;">Cholesky(A)</span> proporciona la matriz $T$ de la descomposici&oacute;n de Cholesky $A=T^tT$, para una matriz $A$ sim&eacute;trica y definida positiva.</p>
</div>
<p>&nbsp;</p>
</div>

︡e24f78ee-cc3b-4260-be63-cc4571e79289︡{"html": "<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\r\n<h4>Definici&oacute;n</h4>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">Se dice que una matriz $A$ sim\\'{e}trica admite</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">descomposici\\'{o}n de Choleski si existe una matriz $B=(b_{ij})$</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">triangular superior con $b_{ii} \\neq 0, \\ \\ \\forall i=1,\\dots,n$</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">tal que $A=B^{*} B$.</div>\r\n<p>Se dice que una matriz $A$ sim&eacute;trica admite&nbsp;<span style=\"color: #0000ff;\">descomposici&oacute;n de Cholesky</span>&nbsp;si existe otra matriz $T=(t_{ij})$&nbsp;triangular superior con $t_{ii} \\neq 0, \\ \\ \\forall i=1,\\dots,n\\ $&nbsp;tal que $A=T^{t} T$.&nbsp;</p>\r\n<h4><strong>Teorema</strong></h4>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">Sea $A=(a_{ij})$ una matriz sim\\'{e}trica. Las</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">condiciones siguientes son equivalentes:</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">\\begin{enumerate}</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">\\item $A$ es definida positiva.</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">\\item Si $A_k=(a_{kk}),\\ \\ \\forall k=1,\\dots, n$, se tiene que</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">$|A_k| &gt; 0, \\ \\forall k=1,\\dots, n$.</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">\\item $A$ admite descomposici\\'{o}n de Choleski.Teorema</div>\r\n<p>Sea $A$ una matriz sim&eacute;trica. Las&nbsp;condiciones siguientes son equivalentes:</p>\r\n<ul>\r\n<li>$A$ es definida positiva.</li>\r\n<li>Los menores principales $A_k,\\ \\ \\forall k=1,\\dots, n$, son positivos.</li>\r\n<li>$A$ admite descomposici&oacute;n de Cholesky.</li>\r\n</ul>\r\n<ul>\r\n</ul>\r\n<h4 style=\"font-size: 1em;\">Relaci&oacute;n con la descomposici&oacute;n $LU$</h4>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">Por tratarse de una matriz herm\\'{\\i}tica y definida positiva, sabemos que admite</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">factorizaci\\'{o}n $LU$. Sea</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">$A=\\left(\\begin{array}{cccc}1 &amp; 0 &amp; \\cdots &amp; 0\\\\ l_{21} &amp; 1 &amp; \\cdots &amp;</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">0\\\\ \\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots\\\\ l_{n1} &amp; l_{n2} &amp; \\cdots &amp;</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">1\\end{array}\\right)\\left(\\begin{array}{cccc}u_{11} &amp; u_{12} &amp; \\cdots &amp;</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">u_{1n}\\\\ 0 &amp; u_{22} &amp; \\cdots &amp; u_{2n}\\\\ \\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots\\\\</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">0 &amp; 0 &amp; \\cdots &amp; u_{nn}\\end{array}\\right)=$</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">$\\hphantom{A}=\\left(\\!\\!\\begin{array}{cccc}1 &amp; 0 &amp; \\cdots &amp; 0\\\\ l_{21} &amp; 1 &amp;</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">\\cdots &amp; 0\\\\ \\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots\\\\ l_{n1} &amp; l_{n2} &amp; \\cdots &amp;</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">1 \\end{array}\\!\\!\\right)\\left(\\!\\!\\begin{array}{cccc}u_{11} &amp; 0 &amp; \\cdots &amp; 0\\\\ 0 &amp;</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">u_{22} &amp; \\cdots &amp; 0\\\\ \\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots\\\\ 0 &amp; 0 &amp; \\cdots &amp;</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">u_{nn} \\end{array}\\!\\!\\right)\\left(\\!\\!\\begin{array}{cccc}1\\!\\! &amp;</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">\\nicfrac{u_{12}}{u_{11}}&amp; \\!\\!\\cdots &amp; \\!\\!\\nicfrac{u_{1n}}{u_{11}}</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">\\\\ 0\\!\\! &amp; 1 &amp; \\!\\!\\cdots &amp; \\!\\!\\nicfrac{u_{2n}}{u_{22}}\\\\</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">\\vdots\\!\\! &amp; \\vdots &amp; \\!\\!\\ddots &amp; \\!\\!\\vdots\\\\ 0\\!\\! &amp; 0 &amp; \\!\\!\\cdots &amp; \\!\\!1</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">\\end{array}\\!\\!\\right)=$</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">$\\D\\hphantom{A}=L\\left(\\begin{array}{cccc}u_{11} &amp; 0 &amp; \\cdots &amp; 0\\\\ 0 &amp;</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">u_{22} &amp; \\cdots &amp; 0\\\\ \\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots\\\\ 0 &amp; 0 &amp; \\cdots &amp;</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">u_{nn} \\end{array}\\right)V=$</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">$\\D\\hphantom{A}=L\\left(\\begin{array}{cccc}\\sqrt{u_{11}} &amp; 0 &amp; \\cdots &amp; 0\\\\ 0</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">&amp; \\sqrt{u_{22}} &amp; \\cdots &amp; 0\\\\ \\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots\\\\ 0 &amp; 0 &amp;</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">\\cdots &amp; \\sqrt{u_{nn}}\\end{array}\\right)\\left(\\begin{array}{cccc}</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">\\sqrt{u_{11}} &amp; 0 &amp; \\cdots &amp; 0 \\\\ 0 &amp; \\sqrt{u_{22}} &amp; \\cdots &amp; 0\\\\ \\vdots &amp;</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">\\vdots &amp; \\ddots &amp; \\vdots\\\\ 0 &amp; 0 &amp; \\cdots &amp; \\sqrt{u_{nn}} \\end{array}\\right)V</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">\\Rightarrow$</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">$A=BR$</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">$B=L\\left(\\begin{array}{ccccc}\\sqrt{u_{11}} &amp; 0 &amp; 0 &amp;</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">\\cdots &amp; 0\\\\ 0 &amp; \\sqrt{u_{22}} &amp; 0 &amp; \\cdots &amp; 0\\\\ 0 &amp; 0 &amp; \\sqrt{u_{33}} &amp;</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">\\cdots &amp; 0\\\\ \\vdots &amp; \\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots\\\\ 0 &amp; 0 &amp; 0 &amp; \\cdots</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">&amp; \\sqrt{u_{nn}} \\end{array}\\right)$ \\ es triangular inferior.</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">$R=\\left(\\begin{array}{ccccc}\\sqrt{u_{11}} &amp; 0 &amp; 0 &amp; \\cdots &amp; 0\\\\ 0 &amp;</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">\\sqrt{u_{22}} &amp; 0 &amp; \\cdots &amp; 0\\\\ 0 &amp; 0 &amp; \\sqrt{u_{33}} &amp; \\cdots &amp; 0\\\\ \\vdots</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">&amp; \\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots\\\\ 0 &amp; 0 &amp; 0 &amp; \\cdots &amp; \\sqrt{u_{nn}}</div>\r\n<div id=\"_mcePaste\" style=\"position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow-x: hidden; overflow-y: hidden;\">\\end{array}\\right)V$ \\ es triangular superior.</div>\r\n<p>Por tratarse de una matriz sim&eacute;trica y definida positiva, sabemos que admite&nbsp;factorizaci&oacute;n $LU$.</p>\r\n<p>Sea</p>\r\n<p>$A=\\left(\\begin{array}{cccc}1 &amp; 0 &amp; \\cdots &amp; 0\\\\ l_{21} &amp; 1 &amp; \\cdots &amp;&nbsp;0\\\\ \\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots\\\\ l_{n1} &amp; l_{n2} &amp; \\cdots &amp;&nbsp;1\\end{array}\\right)\\left(\\begin{array}{cccc}u_{11} &amp; u_{12} &amp; \\cdots &amp;&nbsp;u_{1n}\\\\ 0 &amp; u_{22} &amp; \\cdots &amp; u_{2n}\\\\ \\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots\\\\&nbsp;0 &amp; 0 &amp; \\cdots &amp; u_{nn}\\end{array}\\right)=$</p>\r\n<p>$\\hphantom{A}=\\left(\\!\\!\\begin{array}{cccc}1 &amp; 0 &amp; \\cdots &amp; 0\\\\ l_{21} &amp; 1 &amp;&nbsp;\\cdots &amp; 0\\\\ \\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots\\\\ l_{n1} &amp; l_{n2} &amp; \\cdots &amp;&nbsp;1 \\end{array}\\!\\!\\right)\\left(\\!\\!\\begin{array}{cccc}u_{11} &amp; 0 &amp; \\cdots &amp; 0\\\\ 0 &amp;&nbsp;u_{22} &amp; \\cdots &amp; 0\\\\ \\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots\\\\ 0 &amp; 0 &amp; \\cdots &amp;&nbsp;u_{nn} \\end{array}\\!\\!\\right)\\left(\\!\\!\\begin{array}{cccc}1\\!\\! &amp;&nbsp;\\frac{u_{12}}{u_{11}}&amp; \\!\\!\\cdots &amp; \\!\\!\\frac{u_{1n}}{u_{11}}&nbsp;\\\\ 0\\!\\! &amp; 1 &amp; \\!\\!\\cdots &amp; \\!\\!\\frac{u_{2n}}{u_{22}}\\\\&nbsp;\\vdots\\!\\! &amp; \\vdots &amp; \\!\\!\\ddots &amp; \\!\\!\\vdots\\\\ 0\\!\\! &amp; 0 &amp; \\!\\!\\cdots &amp; \\!\\!1&nbsp;\\end{array}\\!\\!\\right)=$</p>\r\n<p>$\\hphantom{A}=L\\left(\\begin{array}{cccc}u_{11} &amp; 0 &amp; \\cdots &amp; 0\\\\ 0 &amp;&nbsp;u_{22} &amp; \\cdots &amp; 0\\\\ \\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots\\\\ 0 &amp; 0 &amp; \\cdots &amp;&nbsp;u_{nn} \\end{array}\\right)V=$</p>\r\n<p>$\\hphantom{A}=L\\left(\\begin{array}{cccc}\\sqrt{u_{11}} &amp; 0 &amp; \\cdots &amp; 0\\\\ 0&nbsp;&amp; \\sqrt{u_{22}} &amp; \\cdots &amp; 0\\\\ \\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots\\\\ 0 &amp; 0 &amp;&nbsp;\\cdots &amp; \\sqrt{u_{nn}}\\end{array}\\right)\\left(\\begin{array}{cccc}&nbsp;\\sqrt{u_{11}} &amp; 0 &amp; \\cdots &amp; 0 \\\\ 0 &amp; \\sqrt{u_{22}} &amp; \\cdots &amp; 0\\\\ \\vdots &amp;&nbsp;\\vdots &amp; \\ddots &amp; \\vdots\\\\ 0 &amp; 0 &amp; \\cdots &amp; \\sqrt{u_{nn}} \\end{array}\\right)V=LDDV \\Rightarrow$</p>\r\n<p style=\"text-align: center;\">$$A=BT$$</p>\r\n<p style=\"text-align: left;\">donde</p>\r\n<p>$B=L\\left(\\begin{array}{ccccc}\\sqrt{u_{11}} &amp; 0 &amp; 0 &amp;&nbsp;\\cdots &amp; 0\\\\ 0 &amp; \\sqrt{u_{22}} &amp; 0 &amp; \\cdots &amp; 0\\\\ 0 &amp; 0 &amp; \\sqrt{u_{33}} &amp;&nbsp;\\cdots &amp; 0\\\\ \\vdots &amp; \\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots\\\\ 0 &amp; 0 &amp; 0 &amp; \\cdots&nbsp;&amp; \\sqrt{u_{nn}} \\end{array}\\right)\\ $ &nbsp;es triangular inferior.</p>\r\n<p>$T=\\left(\\begin{array}{ccccc}\\sqrt{u_{11}} &amp; 0 &amp; 0 &amp; \\cdots &amp; 0\\\\ 0 &amp;&nbsp;\\sqrt{u_{22}} &amp; 0 &amp; \\cdots &amp; 0\\\\ 0 &amp; 0 &amp; \\sqrt{u_{33}} &amp; \\cdots &amp; 0\\\\ \\vdots&nbsp;&amp; \\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots\\\\ 0 &amp; 0 &amp; 0 &amp; \\cdots &amp; \\sqrt{u_{nn}}&nbsp;\\end{array}\\right)V\\ $ es triangular superior.</p>\r\n<p>De la simetr&iacute;a de $A$ se deduce que $B=T^t$.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4 style=\"font-size: 1em;\">C&aacute;lculo directo de la descomposici&oacute;n de Cholesky</h4>\r\n<p>&nbsp;</p>\r\n<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\r\n<p>Partiendo de la descomposici&oacute;n $A=T^tT$, podemos plantear un sistema de ecuaciones con los elementos $t_{ij}$ como inc&oacute;gnitas:</p>\r\n<p>$A=\\left(\\begin{array}{cccc}t_{11}&nbsp;&amp; 0 &amp; \\cdots &amp; 0\\\\ t_{21} &amp; t_{22}&nbsp;&amp; \\cdots &amp;&nbsp;0\\\\ \\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots\\\\ t_{n1} &amp; t_{n2} &amp; \\cdots &amp; t_{nn}\\end{array}\\right)\\left(\\begin{array}{cccc}t_{11} &amp; t_{21} &amp; \\cdots &amp;&nbsp;t_{n1}\\\\ 0 &amp; t_{22} &amp; \\cdots &amp; t_{n2}\\\\ \\vdots &amp; \\vdots &amp; \\ddots &amp; \\vdots\\\\&nbsp;0 &amp; 0 &amp; \\cdots &amp; t_{nn}\\end{array}\\right)$</p>\r\n<p>resultando las siguientes ecuaciones</p>\r\n<p>Para $i=1,2,\\dots,n\\ $ y&nbsp;para $\\ j=1,2,\\dots,i-1$</p>\r\n<p><span style=\"white-space: pre;\"> </span>$$t_{ii}=\\sqrt{a_{ii}-\\sum_{k=1}^{i-1}t_{ik}^2}$$</p>\r\n<p>$$t_{ij}=\\frac1{t_{jj}}\\left(a_{ij}-\\sum_{k=1}^{j-1}t_{ik}t_{jk}\\right)$$</p>\r\n<p>La siguiente funci&oacute;n <span style=\"color: #0000ff;\">Cholesky(A)</span> proporciona la matriz $T$ de la descomposici&oacute;n de Cholesky $A=T^tT$, para una matriz $A$ sim&eacute;trica y definida positiva.</p>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>"}︡
︠909c6c3b-8ec3-48b5-9d96-06a859b90834a︠
%auto
def Cholesky(M):
    A = copy(M)
    n = A.nrows()
    L = matrix(n, n, 0).change_ring(A.base_ring())
    if not A.is_symmetric():
        print 'La matriz no es simétrica.'
        return
    else:
        for i in range(n):
            for j in range(i):
                aux = 0
                for k in range(j):
                    aux = aux + L[i, k]*L[j, k]
                L[i, j] = 1/L[j, j]*(A[i, j] - aux)
            aux = 0
            for k in range(i):
                aux = aux + L[i, k]^2
            aux = A[i, i] - aux
            if aux < 0:
                print 'La matriz no es definida positiva.'
                break
            L[i, i] = sqrt(aux)
        return L.transpose()
︡3949abc5-bb3d-4496-9770-d5201cebe3c1︡︡
︠7b2fb179-5aa4-4822-9cc9-730f2958185bi︠
%html
<h3><span style="color: #0000ff;">Ejemplo 12</span></h3>
<p>Dada la siguiente matriz</p>
<p>$$A=\left(\begin{array}{ccc}4&nbsp;&amp; 2 &amp; 1\\2 &amp;3&nbsp;&amp;0\\\ 1 &amp; 0 &amp; 4\end{array}\right)$$</p>
<p>se pide:</p>
<p>a) comprobar que es sim&eacute;trica</p>
<p>b) demostrar que es definida positiva estudiando el signo de sus menores principales</p>
<p>c) demostrar que es definida positiva hallando su descomposici&oacute;n de Cholesky.</p>

︡ed730540-9370-4e99-811e-2dfda4ede9ca︡{"html": "<h3><span style=\"color: #0000ff;\">Ejemplo 12</span></h3>\n<p>Dada la siguiente matriz</p>\n<p>$$A=\\left(\\begin{array}{ccc}4&nbsp;&amp; 2 &amp; 1\\\\2 &amp;3&nbsp;&amp;0\\\\\\ 1 &amp; 0 &amp; 4\\end{array}\\right)$$</p>\n<p>se pide:</p>\n<p>a) comprobar que es sim&eacute;trica</p>\n<p>b) demostrar que es definida positiva estudiando el signo de sus menores principales</p>\n<p>c) demostrar que es definida positiva hallando su descomposici&oacute;n de Cholesky.</p>"}︡
︠f997688f-b082-49d5-a225-f966aa73acf7︠
### La matriz se elige de tipo SR (Symbolic Ring) para poder expresar 
### las raices cuadradas en el cálculo de la descomposición de Cholesky

A = matrix(SR, [[4, 2, 1], [2, 3, 0],[1, 0, 4]])  
show(A)
︡f97fbdbf-f0ce-4200-8ed8-33f082fad984︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n4 & 2 & 1 \\\\\n2 & 3 & 0 \\\\\n1 & 0 & 4\n\\end{array}\\right)", "display": true}}︡
︠9af602ef-8021-486d-b25b-f3a8085718a0i︠
%html
<p>a)</p>

︡a9423950-a320-4f0a-b36d-6d7c68315875︡{"html": "<p>a)</p>"}︡
︠75b55658-34e7-4b75-83d7-8fa307bc9052︠
A.is_symmetric()
︡fda1d01f-2d90-4365-8d70-c7a28d9f7c93︡{"stdout": "True"}︡
︠fee9077b-49c6-4b95-8b49-80e80d28811di︠
%html
<p>b)</p>

<p>El sguiente bucle va calculando los menores principales de la matriz $A$. Hay que elegir el orden adecuado de la matriz.</p>

︡efceaf9a-b0c4-468d-89c9-4ead282d838d︡{"html": "<p>b)</p>\n\n<p>El sguiente bucle va calculando los menores principales de la matriz $A$. Hay que elegir el orden adecuado de la matriz.</p>"}︡
︠2e5764a3-223c-48c2-a074-20daa4bec709︠
orden = 3  ### orden de la matriz

for i in range(orden):
    detmenor = A[0:i + 1, 0:i + 1].det()
    if detmenor > 0 :
        signo = ' positivo' 
    else:
        signo = ' negativo'
    print 'menor de orden ', i + 1, '=', detmenor, signo
︡1cc0556c-fcd5-4083-a8ab-88a887968d8a︡{"stdout": "menor de orden  1 = 4  positivo\nmenor de orden  2 = 8  positivo\nmenor de orden  3 = 29  positivo"}︡
︠8714847d-1a31-4acc-a5aa-e69637b10d96i︠
%html
<p>c)</p>

︡da0b9041-8d05-4d91-ab3d-29a34b770310︡{"html": "<p>c)</p>"}︡
︠d59c4df4-957f-47d3-947b-785c69f6b2bb︠
T = Cholesky(A)
show(T)
︡3192490b-d48e-420b-9aaf-861765e8be82︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n2 & 1 & \\frac{1}{2} \\\\\n0 & \\sqrt{2} & -\\frac{1}{4} \\, \\sqrt{2} \\\\\n0 & 0 & \\frac{1}{2} \\, \\sqrt{\\frac{29}{2}}\n\\end{array}\\right)", "display": true}}︡
︠2ccba7a1-4f19-4468-94ab-f35cf5da4b1d︠
T.transpose()*T == A
︡6298dc98-a888-4d4e-9cec-2f9d13b194aa︡{"stdout": "True"}︡
︠504c3be5-287f-495c-b2eb-5511fae24715︠
T.transpose()*T - A
︡e1ce2074-5117-4d16-bebf-2b0bcdbd3caf︡{"stdout": "[0 0 0]\n[0 0 0]\n[0 0 0]"}︡
︠a156dc9e-e585-4b03-b233-f9058f0c27e9i︠
%html
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<h4>Coste computacional de la descomposici&oacute;n de Cholesky</h4>
<p>El coste computacional es aproximadamente del orden&nbsp; $O(\frac 16 n^3)$ para la resoluci&oacute;n del sistema anterior&nbsp; en el caso de una matriz cuadrada de orden $n$, aunque se precisa calcular adem&aacute;s $n$ raices cuadradas. Para $n$ grande, el coste es casi la mitad que el asociado a la descomposici&oacute;n $LU$.</p>
</div>

︡e318e3cb-6ada-4ed6-b73d-373efdcfb233︡{"html": "<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\n<h4>Coste computacional de la descomposici&oacute;n de Cholesky</h4>\n<p>El coste computacional es aproximadamente del orden&nbsp; $O(\\frac 16 n^3)$ para la resoluci&oacute;n del sistema anterior&nbsp; en el caso de una matriz cuadrada de orden $n$, aunque se precisa calcular adem&aacute;s $n$ raices cuadradas. Para $n$ grande, el coste es casi la mitad que el asociado a la descomposici&oacute;n $LU$.</p>\n</div>"}︡
︠4fcebf62-0575-41ea-92e3-901791814891i︠
%html
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<h4>Aplicaci&oacute;n de la descomposici&oacute;n de Cholesky a la resoluci&oacute;n de sistemas lineales</h4>
<p>Tal como sucediera con la descomposici&oacute;n $A=LU$ podemos aplicar la misma t&eacute;cnica para la descomposici&oacute;n $A=T^tT$ en caso de que $A$ sea sim&eacute;trica y definida positiva, para resolver en dos etapas el sistema lineal $Ax=b$</p>
<p>Podemos ahora separar el sistema lineal en dos subsistemas:</p>
<p style="text-align: center;">$T\cdot&nbsp;x=g\ \ $ &nbsp;y &nbsp;$\ \ T^t\cdot&nbsp;g=b$</p>
<p>El primer sistema es triangular superior y se resuelve por <strong>sustituci&oacute;n regresiva</strong> de las variables del vector $x$. El segundo sistema es triangular inferior y se resuelve, de manera similar, por <strong>sustituci&oacute;n progresiva</strong>, El esquema es:</p>
<p>$$g_1=\frac{b_1}{t_{11}}\ ,\ \ g_i=\frac{b_i-\sum_{j=1}^{i-1}t_{ij}g_j}{t_{ii}}\ ,\ \ i=2,\dots, n$$</p>
<p>La siguiente funci&oacute;n&nbsp;<span style="color: #0000ff;">sustpr2(M,b)</span>&nbsp;resuelve un sistema lineal con matriz M triangular inferior mediante sustituci&oacute;n progresiva</p>
</div>

︡7591d0eb-2888-4087-9d1e-f43f26b16541︡{"html": "<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\r\n<h4>Aplicaci&oacute;n de la descomposici&oacute;n de Cholesky a la resoluci&oacute;n de sistemas lineales</h4>\r\n<p>Tal como sucediera con la descomposici&oacute;n $A=LU$ podemos aplicar la misma t&eacute;cnica para la descomposici&oacute;n $A=T^tT$ en caso de que $A$ sea sim&eacute;trica y definida positiva, para resolver en dos etapas el sistema lineal $Ax=b$</p>\r\n<p>Podemos ahora separar el sistema lineal en dos subsistemas:</p>\r\n<p style=\"text-align: center;\">$T\\cdot&nbsp;x=g\\ \\ $ &nbsp;y &nbsp;$\\ \\ T^t\\cdot&nbsp;g=b$</p>\r\n<p>El primer sistema es triangular superior y se resuelve por <strong>sustituci&oacute;n regresiva</strong> de las variables del vector $x$. El segundo sistema es triangular inferior y se resuelve, de manera similar, por <strong>sustituci&oacute;n progresiva</strong>, El esquema es:</p>\r\n<p>$$g_1=\\frac{b_1}{t_{11}}\\ ,\\ \\ g_i=\\frac{b_i-\\sum_{j=1}^{i-1}t_{ij}g_j}{t_{ii}}\\ ,\\ \\ i=2,\\dots, n$$</p>\r\n<p>La siguiente funci&oacute;n&nbsp;<span style=\"color: #0000ff;\">sustpr2(M,b)</span>&nbsp;resuelve un sistema lineal con matriz M triangular inferior mediante sustituci&oacute;n progresiva</p>\r\n</div>"}︡
︠097d118c-23a4-4c61-8ce0-261edf3b8231a︠
%auto
def sustpr2(U, g):
    n = U.ncols()
    x = copy(g)
    x[0] = g[0]/U[0, 0]
    for k in range(1, n):
        x[k] = (g[k] - sum(U[k, j]*x[j] for j in range(k)))/U[k, k]
    return x
︡4523242e-d5e1-42be-a1e5-9cf54d6eecad︡︡
︠4380d9de-a0e1-4c5e-97c5-8edcaa506e6di︠
%html
<div style="color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;">
<h3 style="font-size: 1.17em;"><span style="color: #0000ff;">Ejemplo 13</span></h3>
<p>A partir de la matriz del <strong>ejemplo anterior</strong>, resolver el sistema lineal $Ax=b$ utilizando la descomposici&oacute;n de Cholesky, para&nbsp;</p>
<p>$$b=\left(\begin{array}{c}1 \\ 0 \\ 1 \end{array}\right)$$</p>
<p>&nbsp;</p>
</div>

︡fc9b2891-8be8-4924-b737-dfac7f41e0bc︡{"html": "<div style=\"color: #000000; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #ffffff; background-position: initial initial; background-repeat: initial initial; margin: 8px;\">\n<h3 style=\"font-size: 1.17em;\"><span style=\"color: #0000ff;\">Ejemplo 13</span></h3>\n<p>A partir de la matriz del <strong>ejemplo anterior</strong>, resolver el sistema lineal $Ax=b$ utilizando la descomposici&oacute;n de Cholesky, para&nbsp;</p>\n<p>$$b=\\left(\\begin{array}{c}1 \\\\ 0 \\\\ 1 \\end{array}\\right)$$</p>\n<p>&nbsp;</p>\n</div>"}︡
︠298ca7a1-bfe4-43df-8374-9d350259e49d︠
A = matrix(SR, [[4, 2, 1], [2, 3, 0], [1, 0, 4]])
show(A)
︡2099f948-eebb-4fb2-885e-24827bb301d0︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n4 & 2 & 1 \\\\\n2 & 3 & 0 \\\\\n1 & 0 & 4\n\\end{array}\\right)", "display": true}}︡
︠789f90e1-8680-4a9d-90fb-67b360029a10︠
b = vector(SR, [1, 0, 1]); b
︡12521802-c658-44a9-b7c2-c351be58bddb︡{"stdout": "(1, 0, 1)"}︡
︠dbebe936-dca0-4692-b348-14f776306020︠
T = Cholesky(A)
show(T)
︡15aecffa-341c-4317-9efd-cd935b22806d︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\begin{array}{rrr}\n2 & 1 & \\frac{1}{2} \\\\\n0 & \\sqrt{2} & -\\frac{1}{4} \\, \\sqrt{2} \\\\\n0 & 0 & \\frac{1}{2} \\, \\sqrt{\\frac{29}{2}}\n\\end{array}\\right)", "display": true}}︡
︠e008ea46-5438-4a01-b94a-684eb8bfd371︠
g = sustpr2(T.transpose(), b); show(g)  # resolvemos el primer sistema auxiliar por sustitución progresiva
︡abca9b2d-8e65-4d66-a5c7-8bb305bc044c︡{"tex": {"tex": "\\newcommand{\\Bold}[1]{\\mathbf{#1}}\\left(\\frac{1}{2},\\,-\\frac{1}{4} \\, \\sqrt{2},\\,\\frac{5}{58} \\, \\sqrt{\\frac{29}{2}}\\right)", "display": true}}︡
︠23949cc8-fdab-4774-924a-0930f5d4b050︠
sustre2(T, g)  # resolvemos el segundo sistema por sustitución regresiva, obteniendo la solución final
︡cabe3554-85ad-41a1-99bc-554c4c1055bd︡{"stdout": "(9/29, -6/29, 5/29)"}︡
︠5dfada1a-82dc-482f-b393-c4ebf4e267b1︠
A.solve_right(b)  #  comprobamos si las soluciones coinciden
︡b391fc06-09df-4c28-a098-16fa87971970︡{"stdout": "(9/29, -6/29, 5/29)"}︡
︠85ad9d05-0d58-451a-b9c4-fa662e5c9fc0i︠
%html
<p><a name="cuestionario"></a></p>
<h3>CUESTIONARIO PARA EL ALUMNADO</h3>
<p><span id="cell_outer_0">Introduzca en la variable NUMERO_ALUMNO, que aparece m&aacute;s abajo, el n&uacute;mero correspondiente a su cuestionario y pulse el enlace&nbsp; <span style="color: #0000ff;"><span style="text-decoration: underline;">evaluate</span></span>&nbsp; o&nbsp;<span id="cell_outer_0"><span style="color: #0000ff;"><span style="text-decoration: underline;">evaluar</span></span></span> que&nbsp; aparecer&aacute; m&aacute;s abajo.</span> Acceder&aacute; a un cuestionario con respuestas tipo test que se entregar&aacute; cumplimentado al finalizar esta sesi&oacute;n pr&aacute;ctica, siguiendo un modelo impreso que entregar&aacute; el profesor.</p>

︡e8cff3c7-3626-48aa-b752-3a1a3007a501︡{"html": "<p><a name=\"cuestionario\"></a></p>\n<h3>CUESTIONARIO PARA EL ALUMNADO</h3>\n<p><span id=\"cell_outer_0\">Introduzca en la variable NUMERO_ALUMNO, que aparece m&aacute;s abajo, el n&uacute;mero correspondiente a su cuestionario y pulse el enlace&nbsp; <span style=\"color: #0000ff;\"><span style=\"text-decoration: underline;\">evaluate</span></span>&nbsp; o&nbsp;<span id=\"cell_outer_0\"><span style=\"color: #0000ff;\"><span style=\"text-decoration: underline;\">evaluar</span></span></span> que&nbsp; aparecer&aacute; m&aacute;s abajo.</span> Acceder&aacute; a un cuestionario con respuestas tipo test que se entregar&aacute; cumplimentado al finalizar esta sesi&oacute;n pr&aacute;ctica, siguiendo un modelo impreso que entregar&aacute; el profesor.</p>"}︡
︠4121b992-3ff1-4a59-9d99-618f59fd3db4︠
NUMERO_ALUMNO = 0


NOMBRE_FICHERO_EXAMEN = 'ALN_L2_t.htl'
load(DATA+'codigo_examinar_html.sage')
︡00ff19e0-f440-4b90-a77e-65054a39baf6︡︡
︠5ca21171-fc64-4997-a433-819e86d22d96i︠
%html
<h3>Ayuda para cargar datos del cuestionario</h3>
<p>Podemos seleccionar los datos matriciales de los enunciados del cuestionario y pegarlos en una nueva celda con objeto de cargar en memoria dichos datos. La forma de proceder es la siguiente:</p>
<p>Seleccionar con el rat&oacute;n todos los n&uacute;meros del interior de la matriz&nbsp; (observar que est&aacute;n separados por comas) y copiarlos&nbsp; pulsando Control + C.</p>
<p>En una celda ejecutable, pegarlos pulsando&nbsp; Control + V&nbsp; dentro de la siguiente instrucci&oacute;n:</p>
<p><span style="color: #3366ff; font-family: courier new,courier;">matrix(QQ, 4,&nbsp; [pegar aqu&iacute; la lista de n&uacute;meros]).transpose()</span></p>
<p>En este caso, habremos definido una matriz con n&uacute;meros en el anillo QQ, con 4 filas de n&uacute;meros, a partir de la lista pegada. Obviamente, podemos cambiar el anillo QQ&nbsp; por cualquier otro o elegir otra cantidad de filas, seg&uacute;n nos convenga,</p>

<h5></h5>

︡87b4f7ef-c46f-406b-a3c0-b3897c8c1305︡{"html": "<h3>Ayuda para cargar datos del cuestionario</h3>\n<p>Podemos seleccionar los datos matriciales de los enunciados del cuestionario y pegarlos en una nueva celda con objeto de cargar en memoria dichos datos. La forma de proceder es la siguiente:</p>\n<p>Seleccionar con el rat&oacute;n todos los n&uacute;meros del interior de la matriz&nbsp; (observar que est&aacute;n separados por comas) y copiarlos&nbsp; pulsando Control + C.</p>\n<p>En una celda ejecutable, pegarlos pulsando&nbsp; Control + V&nbsp; dentro de la siguiente instrucci&oacute;n:</p>\n<p><span style=\"color: #3366ff; font-family: courier new,courier;\">matrix(QQ, 4,&nbsp; [pegar aqu&iacute; la lista de n&uacute;meros]).transpose()</span></p>\n<p>En este caso, habremos definido una matriz con n&uacute;meros en el anillo QQ, con 4 filas de n&uacute;meros, a partir de la lista pegada. Obviamente, podemos cambiar el anillo QQ&nbsp; por cualquier otro o elegir otra cantidad de filas, seg&uacute;n nos convenga,</p>\n\n<h5></h5>"}︡
︠0ed73e0d-04fc-4589-bf6d-9f54faf78f13︠
AA = matrix(QQ, 5, [      ]).transpose()
show(AA)
︡f8c5f4c8-f59f-4256-9a54-2cbcf71b621c︡︡
