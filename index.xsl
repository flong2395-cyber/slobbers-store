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
                
                <!-- ================= LOADER ================= -->
                <div id="loader">
                    
                    <div class="loader-content">
                        <h1>SLOBBER'S</h1>
                        <div class="spinner"></div>
                    </div>
                    
                </div>
                
                <!-- ================= HEADER ================= -->
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
                
                <!-- ================= MAIN ================= -->
                <main>
                    
                    <!-- ================= BANNER ================= -->
                    <section class="banner">
                        
                        <div class="banner-img" id="banner-img">
                            <h2 id="banner-title">SLOBBER'S</h2>
                        </div>
                        
                        <div class="banner-controls">
                            <span onclick="cambiarCategoria(0)"></span>
                            <span onclick="cambiarCategoria(1)"></span>
                            <span onclick="cambiarCategoria(2)"></span>
                            <span onclick="cambiarCategoria(3)"></span>
                        </div>
                        
                        <div class="preview" id="preview-container"></div>
                        
                    </section>
                    
                    <!-- ================= SECCIÓN HOME ================= -->
                    <section class="home-section">
                        
                        <div class="tabs">
                            <button class="tab active" onclick="cambiarTab('exclusivas')">
                                Exclusivas para miembros
                            </button>
                            
                            <button class="tab" onclick="cambiarTab('novedades')">
                                Novedades
                            </button>
                            
                            <button class="tab" onclick="cambiarTab('proximamente')">
                                Próximamente
                            </button>
                            
                            <a class="ver-todo">Ver todo</a>
                        </div>
                        
                        <!-- EXCLUSIVAS -->
                        <div id="exclusivas" class="tab-content activo">
                            <div class="home-grid">
                                
                                <article class="home-card">
                                    <img src="img/zapatilla1.jpg" alt="Zapatilla Premium"/>
                                    <p class="precio">€ 110</p>
                                    <p>Zapatilla Premium</p>
                                </article>
                                
                                <article class="home-card">
                                    <img src="img/conjunto1.jpg" alt="Conjunto Running"/>
                                    <p class="precio">€ 70</p>
                                    <p>Conjunto Running</p>
                                </article>
                                
                                <article class="home-card">
                                    <img src="img/conjunto2.jpg" alt="Humanrace Edition"/>
                                    <p class="precio">€ 160</p>
                                    <p>Humanrace Edition</p>
                                </article>
                                
                                <article class="home-card">
                                    <img src="img/conjunto3.jpg" alt="Chaqueta Tech"/>
                                    <p class="precio">€ 120</p>
                                    <p>Chaqueta Tech</p>
                                </article>
                                
                            </div>
                        </div>
                        
                        <!-- PROXIMAMENTE -->
                        <div id="proximamente" class="tab-content">
                            <div class="home-grid">
                                
                                <article class="home-card">
                                    <img src="img/zapatilla3.jpg" alt="Próximo lanzamiento"/>
                                    <p>MIÉRCOLES, 15 ABR</p>
                                </article>
                                
                                <article class="home-card">
                                    <img src="img/zapatilla4.jpg" alt="Próximo lanzamiento"/>
                                    <p>JUEVES, 30 ABR</p>
                                </article>
                                
                                <article class="home-card">
                                    <img src="img/zapatilla5.jpg" alt="Próximo lanzamiento"/>
                                    <p>JUEVES, 30 ABR</p>
                                </article>
                                
                                <article class="home-card">
                                    <img src="img/run.jpg" alt="Evento running"/>
                                    <p>DOMINGO, 31 MAY</p>
                                </article>
                                
                            </div>
                        </div>
                        
                    </section>
                    
                    <!-- ================= APP SECTION ================= -->
                    <section class="app-section">
                        
                        <h2>DESCARGA NUESTRA APP</h2>
                        
                        <div class="app-grid">
                            
                            <div class="app-left">
                                <img src="img/app-preview.png" alt="App Slobber's"/>
                            </div>
                            
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
                    
                    <!-- ================= ABOUT ================= -->
                    <section class="about-section">
                        
                        <div class="about-container">
                            
                            <h2>
                                SLOBBER'S: ESTILO, TECNOLOGÍA Y EXPERIENCIA DIGITAL
                            </h2>
                            
                            <p>
                                Slobber's es un proyecto de tienda online diseñado para ofrecer una experiencia moderna, intuitiva y visualmente atractiva. La plataforma combina diseño, funcionalidad y organización de datos mediante XML y XSLT, permitiendo mostrar productos de forma dinámica y estructurada.
                            </p>
                            
                            <p>
                                Este proyecto integra diferentes secciones como catálogo de productos, carrito de compra, sistema de usuario y navegación por categorías. Todo ello pensado para simular una tienda real, con una interfaz limpia y adaptable a distintos dispositivos.
                            </p>
                            
                            <p>
                                Además, se han aplicado principios de diseño web actuales, priorizando la experiencia del usuario, la claridad visual y la facilidad de interacción. Cada elemento ha sido diseñado para aportar coherencia y profesionalidad al conjunto del sitio.
                            </p>
                            
                            <p>
                                Slobber's representa la unión entre desarrollo web y creatividad, ofreciendo una base sólida para futuras mejoras como integración con bases de datos, sistemas de pago o funcionalidades avanzadas propias de un ecommerce real.
                            </p>
                            
                        </div>
                        
                    </section>
                    
                </main>
                
                <!-- ================= CARRITO ================= -->
                <aside id="carrito">
                    
                    <div class="carrito-header">
                        <h2>🛒 Carrito</h2>
                        <span onclick="toggleCart()">✕</span>
                    </div>
                    
                    <div id="user-box" style="margin-bottom:20px;"></div>
                    
                    <ul id="listaCarrito"></ul>
                    
                    <div class="carrito-footer">
                        <p id="total">Total: 0€</p>
                        <button class="checkout-btn" onclick="checkout()">
                            FINALIZAR COMPRA
                        </button>
                    </div>
                    
                </aside>
                
                <!-- ================= FOOTER ================= -->
                <footer class="footer">
                    
                    <div class="footer-container">
                        
                        <div class="footer-col">
                            <h3>SLOBBER'S</h3>
                        </div>
                        
                        <div class="footer-col">
                            <h4>Navegación</h4>
                            <a href="index.xml">Inicio</a>
                            <a href="hombre.xml">Caballeros</a>
                            <a href="mujer.xml">Damas</a>
                            <a href="bisuteria.xml">Artículos</a>
                        </div>
                        
                        <div class="footer-col">
                            <h4>Ayuda</h4>
                            <a href="#">Contacto</a>
                            <a href="#">Envíos</a>
                            <a href="#">Devoluciones</a>
                        </div>
                        
                        <div class="footer-col">
                            <h4>Síguenos</h4>
                            <p>Instagram</p>
                            <p>Twitter</p>
                            <p>TikTok</p>
                        </div>
                        
                    </div>
                    
                    <div class="footer-bottom">
                        <p>© 2026 Slobber's - Francisco De la Cruz</p>
                    </div>
                    
                </footer>
                
            </body>
            
        </html>
        
    </xsl:template>
</xsl:stylesheet>