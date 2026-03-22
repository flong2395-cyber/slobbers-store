<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/">
        
        <html>
            <head>
                <title>Slobber's</title>
                <link rel="stylesheet" href="estilos.css"/>
                <script src="script.js"></script>
            </head>
            
            <body>
                
                <header class="header-pro">
                    <div class="logo">
                        <a href="index.xml">SLOBBER'S</a>
                    </div>
                    
                    <div class="menu-toggle" onclick="toggleMenu()">☰</div>
                    
                    <nav class="nav-menu" id="nav-menu">
                        <a href="hombre.xml">CABALLEROS</a>
                        <a href="mujer.xml">DAMAS</a>
                        <a href="bisuteria.xml">ARTÍCULOS</a>
                    </nav>
                    
                    <div class="header-actions">
                        <div class="icono" onclick="toggleCart()">
                            🛒 <span id="cart-count">0</span>
                        </div>
                    </div>
                </header>
                
                <section class="grid">
                    
                    <xsl:for-each select="tienda/producto">
                        
                        <div class="card-pro"
                             onclick="verProducto('{nombre}', '{precio}', '{imagen}')">
                            
                            <div class="card-img">
                                <img src="{imagen}" />
                            </div>
                            
                            <div class="card-info">
                                <p class="brand">SLOBBER'S</p>
                                <h3><xsl:value-of select="nombre"/></h3>
                                <p class="price"><xsl:value-of select="precio"/> €</p>
                            </div>
                            
                        </div>
                        
                    </xsl:for-each>
                    
                </section>
                
                <div id="carrito">
                    
                    <div class="carrito-header">
                        <h2>🛒 Carrito</h2>
                        <span onclick="toggleCart()">✕</span>
                    </div>
                    
                    <div id="user-box"></div>
                    <ul id="listaCarrito"></ul>
                    
                    <p id="total">Total: 0€</p>
                    <button onclick="checkout()">FINALIZAR COMPRA</button>
                    
                </div>
                
            </body>
        </html>
        
    </xsl:template>
</xsl:stylesheet>