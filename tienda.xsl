<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/">
        
        <html>
            <head>
                <title>Slobber's</title>
                <meta charset="UTF-8"/>
                <link rel="stylesheet" href="estilos.css"/>
                <script src="script.js"></script>
            </head>
            
            <body>
                
                <header class="header-pro">
                    <div class="logo">
                        <a href="index.xml">SLOBBER'S</a>
                    </div>
                    
                    <div class="header-right">
                        <nav class="nav-menu">
                            <a href="hombre.xml">CABALLEROS</a>
                            <a href="mujer.xml">DAMAS</a>
                        </nav>
                        
                        <div class="search-box">
                            <input type="text" id="buscador" placeholder="Buscar productos..."/>
                        </div>
                        
                        <div class="icono" onclick="toggleCart()">
                            🛒 <span id="cart-count">0</span>
                        </div>
                    </div>
                </header>
                
                <main>
                    
                    <!-- ================= CAMISAS ================= -->
                    <section class="categoria">
                        <h2>CAMISAS</h2>
                        
                        <div class="grid">
                            <xsl:for-each select="tienda/producto[position() &lt;= 4]">
                                
                                <article class="card-pro"
                                         onclick="verProducto('{nombre}', '{precio}', '{imagen}')">
                                    
                                    <figure class="card-img">
                                        <img src="{imagen}" alt="{nombre}"/>
                                    </figure>
                                    
                                    <div class="card-info">
                                        <p class="brand">SLOBBER'S</p>
                                        <h3><xsl:value-of select="nombre"/></h3>
                                        <p class="price">
                                            <xsl:value-of select="precio"/> €
                                        </p>
                                    </div>
                                    
                                </article>
                                
                            </xsl:for-each>
                        </div>
                    </section>
                    
                    <!-- ================= CHAQUETAS ================= -->
                    <section class="categoria">
                        <h2>CHAQUETAS</h2>
                        
                        <div class="grid">
                            <xsl:for-each select="tienda/producto[position() &gt; 4 and position() &lt;= 8]">
                                
                                <article class="card-pro"
                                         onclick="verProducto('{nombre}', '{precio}', '{imagen}')">
                                    
                                    <figure class="card-img">
                                        <img src="{imagen}" alt="{nombre}"/>
                                    </figure>
                                    
                                    <div class="card-info">
                                        <p class="brand">SLOBBER'S</p>
                                        <h3><xsl:value-of select="nombre"/></h3>
                                        <p class="price">
                                            <xsl:value-of select="precio"/> €
                                        </p>
                                    </div>
                                    
                                </article>
                                
                            </xsl:for-each>
                        </div>
                    </section>
                    
                    <!-- ================= PANTALONES ================= -->
                    <section class="categoria">
                        <h2>PANTALONES</h2>
                        
                        <div class="grid">
                            <xsl:for-each select="tienda/producto[position() &gt; 8 and position() &lt;= 12]">
                                
                                <article class="card-pro"
                                         onclick="verProducto('{nombre}', '{precio}', '{imagen}')">
                                    
                                    <figure class="card-img">
                                        <img src="{imagen}" alt="{nombre}"/>
                                    </figure>
                                    
                                    <div class="card-info">
                                        <p class="brand">SLOBBER'S</p>
                                        <h3><xsl:value-of select="nombre"/></h3>
                                        <p class="price">
                                            <xsl:value-of select="precio"/> €
                                        </p>
                                    </div>
                                    
                                </article>
                                
                            </xsl:for-each>
                        </div>
                    </section>
                    
                    <!-- ================= CALZADO ================= -->
                    <section class="categoria">
                        <h2>CALZADO</h2>
                        
                        <div class="grid">
                            <xsl:for-each select="tienda/producto[position() &gt; 12 and position() &lt;= 16]">
                                
                                <article class="card-pro"
                                         onclick="verProducto('{nombre}', '{precio}', '{imagen}')">
                                    
                                    <figure class="card-img">
                                        <img src="{imagen}" alt="{nombre}"/>
                                    </figure>
                                    
                                    <div class="card-info">
                                        <p class="brand">SLOBBER'S</p>
                                        <h3><xsl:value-of select="nombre"/></h3>
                                        <p class="price">
                                            <xsl:value-of select="precio"/> €
                                        </p>
                                    </div>
                                    
                                </article>
                                
                            </xsl:for-each>
                        </div>
                    </section>
                    
                    <!-- ================= ARTÍCULOS ================= -->
                    <section class="categoria" id="articulos">
                        <h2>ARTÍCULOS</h2>
                        
                        <div class="grid">
                            <xsl:for-each select="tienda/producto[position() &gt; 16 and position() &lt;= 20]">
                                
                                <article class="card-pro"
                                         onclick="verProducto('{nombre}', '{precio}', '{imagen}')">
                                    
                                    <figure class="card-img">
                                        <img src="{imagen}" alt="{nombre}"/>
                                    </figure>
                                    
                                    <div class="card-info">
                                        <p class="brand">SLOBBER'S</p>
                                        <h3><xsl:value-of select="nombre"/></h3>
                                        <p class="price">
                                            <xsl:value-of select="precio"/> €
                                        </p>
                                    </div>
                                    
                                </article>
                                
                            </xsl:for-each>
                        </div>
                    </section>

                </main>
                
                <aside id="carrito">
                    
                    <div class="carrito-header">
                        <h2>🛒 Carrito</h2>
                        <span onclick="toggleCart()">✕</span>
                    </div>
                    
                    <div id="user-box"></div>
                    <ul id="listaCarrito"></ul>
                    
                    <p id="total">Total: 0€</p>
                    <button class="checkout-btn" onclick="checkout()">
                        FINALIZAR COMPRA
                    </button>
                    
                </aside>
                
            <footer class="footer">

                <div class="footer-bottom">
                    <p>© 2026 Slobber's - Francisco De la Cruz</p>
                </div> 
                    
            </footer>
                
            </body>
        </html>
        
    </xsl:template>
</xsl:stylesheet>