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
                
                <!-- ================= HEADER ================= -->
                
                <header class="header-pro">
                    
                    <div class="logo">SLOBBER'S</div>
                    
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
                
                <!-- ================= BANNER ================= -->
                
                <section class="banner">
                    
                    <!-- IMAGEN -->
                    <div class="banner-img" id="banner-img">
                        <h2 id="banner-title">SLOBBER'S</h2>
                    </div>
                    
                    <!-- INDICADORES -->
                    <div class="banner-controls">
                        <span onclick="cambiarCategoria(0)"></span>
                        <span onclick="cambiarCategoria(1)"></span>
                        <span onclick="cambiarCategoria(2)"></span>
                        <span onclick="cambiarCategoria(3)"></span>
                    </div>
                    
                    <!-- PREVIEW -->
                    <div class="preview" id="preview-container"></div>
                    
                </section>
                
                <!-- ================= SECCION EXCLUSIVAS ================= -->
                
                <section class="home-section">
                    
                    <div class="tabs">
                        <button class="tab active" onclick="cambiarTab('exclusivas')">Exclusivas para miembros</button>
                        <button class="tab" onclick="cambiarTab('novedades')">Novedades</button>
                        <button class="tab" onclick="cambiarTab('proximamente')">Próximamente</button>
                        
                        <a class="ver-todo">Ver todo</a>
                    </div>
                    
                    <!-- EXCLUSIVAS -->
                    <div id="exclusivas" class="tab-content activo">
                        <div class="home-grid">
                            
                            <div class="home-card">
                                <img src="img/zapatilla1.jpg"/>
                                <p class="precio">€ 110</p>
                                <p>Zapatilla Premium</p>
                            </div>
                            
                            <div class="home-card">
                                <img src="img/conjunto1.jpg"/>
                                <p class="precio">€ 70</p>
                                <p>Conjunto Running</p>
                            </div>
                            
                            <div class="home-card">
                                <img src="img/zapatilla2.jpg"/>
                                <p class="precio">€ 160</p>
                                <p>Humanrace Edition</p>
                            </div>
                            
                            <div class="home-card">
                                <img src="img/conjunto2.jpg"/>
                                <p class="precio">€ 120</p>
                                <p>Chaqueta Tech</p>
                            </div>
                            
                        </div>
                    </div>
                    
                    <!-- PROXIMAMENTE -->
                    <div id="proximamente" class="tab-content">
                        <div class="home-grid">
                            
                            <div class="home-card">
                                <img src="img/zapatilla3.jpg"/>
                                <p>MIÉRCOLES, 15 ABR</p>
                            </div>
                            
                            <div class="home-card">
                                <img src="img/zapatilla4.jpg"/>
                                <p>JUEVES, 30 ABR</p>
                            </div>
                            
                            <div class="home-card">
                                <img src="img/zapatilla5.jpg"/>
                                <p>JUEVES, 30 ABR</p>
                            </div>
                            
                            <div class="home-card">
                                <img src="img/run.jpg"/>
                                <p>DOMINGO, 31 MAY</p>
                            </div>
                            
                        </div>
                    </div>
                    
                </section>
                
                <!-- ================= APP SECTION PRO ================= -->
                
                <section class="app-section">
                    
                    <h2>DESCARGA NUESTRA APP</h2>
                    
                    <div class="app-grid">
                        
                        <!-- 📱 IZQUIERDA (IMAGEN) -->
                        <div class="app-left">
                            <img src="img/app-preview.png" alt="App"/>
                        </div>
                        
                        <!-- 📝 CENTRO (DESCRIPCIÓN) -->
                        <div class="app-center">
                            <h3>Slobber's App</h3>
                            
                            <p>
                                Descubre la mejor experiencia de compra. 
                                Accede a productos exclusivos, novedades y ofertas directamente desde tu móvil.
                            </p>
                            
                            <p>
                                Compra rápido, guarda favoritos y mantente al día con lo último en moda urbana.
                            </p>
                        </div>
                        
                        <!-- 📥 DERECHA (BOTONES) -->
                        <div class="app-right">
                            
                            <a href="https://play.google.com" target="_blank" class="store-btn">
                                <img src="img/google-play.png" alt="Google Play"/>
                            </a>
                            
                            <a href="https://www.apple.com/app-store/" target="_blank" class="store-btn">
                                <img src="img/app-store.png" alt="App Store"/>
                            </a>
                            
                        </div>
                        
                    </div>
                    
                </section>
                
                <!-- ================= SOBRE EL PROYECTO ================= -->
                
                <section class="about-section">
                    
                    <div class="about-container">
                        
                        <h2>
                            SLOBBER'S: ESTILO, TECNOLOGÍA Y EXPERIENCIA DIGITAL
                        </h2>
                        
                        <p>
                            Slobber's es un proyecto de tienda online diseñado para ofrecer una experiencia moderna, intuitiva y visualmente atractiva.
                            La plataforma combina diseño, funcionalidad y organización de datos mediante XML y XSLT, permitiendo mostrar productos de forma dinámica y estructurada.
                        </p>
                        
                        <p>
                            Este proyecto integra diferentes secciones como catálogo de productos, carrito de compra, sistema de usuario y navegación por categorías.
                            Todo ello pensado para simular una tienda real, con una interfaz limpia y adaptable a distintos dispositivos.
                        </p>
                        
                        <p>
                            Además, se han aplicado principios de diseño web actuales, priorizando la experiencia del usuario, la claridad visual y la facilidad de interacción.
                            Cada elemento ha sido diseñado para aportar coherencia y profesionalidad al conjunto del sitio.
                        </p>
                        
                        <p>
                            Slobber's representa la unión entre desarrollo web y creatividad, ofreciendo una base sólida para futuras mejoras como integración con bases de datos,
                            sistemas de pago o funcionalidades avanzadas propias de un ecommerce real.
                        </p>
                        
                    </div>
                    
                </section>
                
                <!-- ================= CARRITO ================= -->
                
                <div id="carrito">
                    
                    <div class="carrito-header">
                        <h2>🛒 Carrito</h2>
                        <span class="cerrar-carrito" onclick="toggleCart()">✕</span>
                    </div>
                    
                    <div id="user-box" style="margin-bottom:20px;"></div>
                    
                    <ul id="listaCarrito"></ul>
                    
                    <div class="carrito-footer">
                        <p id="total">Total: 0€</p>
                        <button class="checkout-btn" onclick="checkout()">FINALIZAR COMPRA</button>
                    </div>
                    
                </div>
                
                <!-- ================= FOOTER ================= -->
                
                <footer class="footer">
                    
                    <div class="footer-container">
                        
                        <!-- MARCA -->
                        <div class="footer-col">
                            <h3>SLOBBER'S</h3>
                        </div>
                        
                        <!-- NAVEGACIÓN -->
                        <div class="footer-col">
                            <h4>Navegación</h4>
                            <a href="index.xml">Inicio</a>
                            <a href="hombre.xml">Caballeros</a>
                            <a href="mujer.xml">Damas</a>
                            <a href="bisuteria.xml">Artículos</a>
                        </div>
                        
                        <!-- AYUDA -->
                        <div class="footer-col">
                            <h4>Ayuda</h4>
                            <a href="#">Contacto</a>
                            <a href="#">Envíos</a>
                            <a href="#">Devoluciones</a>
                        </div>
                        
                        <!-- REDES -->
                        <div class="footer-col">
                            <h4>Síguenos</h4>
                            <p>Instagram</p>
                            <p>Twitter</p>
                            <p>TikTok</p>
                        </div>
                        
                    </div>
                    
                    <!-- COPYRIGHT -->
                    <div class="footer-bottom">
                        <p>© 2026 Slobber's - Proyecto educativo</p>
                    </div>
                    
                </footer>
            </body>
            
        </html>
        
    </xsl:template>
</xsl:stylesheet>