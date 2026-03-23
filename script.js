/* ================= UTIL ================= */

function getUsuario(){
    return JSON.parse(localStorage.getItem("usuario"));
}

/* ================= STORAGE ================= */

function getKeys(){
    let usuario = getUsuario();
    return {
        carritoKey: usuario ? "carrito_" + usuario.email : "carrito_temp"
    };
}

function getCarrito(){
    let {carritoKey} = getKeys();
    return JSON.parse(localStorage.getItem(carritoKey)) || [];
}

function guardarCarrito(carrito){
    let {carritoKey} = getKeys();
    localStorage.setItem(carritoKey, JSON.stringify(carrito));
}

/* ================= CARRITO ================= */

function toggleCart(){
    const carrito = document.getElementById("carrito");

    if(!carrito) return;

    carrito.classList.toggle("mostrar");
}

function eliminar(i){
    let carrito = getCarrito();
    carrito.splice(i,1);
    guardarCarrito(carrito);
    render();
}

/* ================= CHECKOUT ================= */

function checkout(){
    let carrito = getCarrito();

    if(carrito.length === 0){
        alert("Carrito vacío");
        return;
    }

    alert("Compra realizada 🚀");

    guardarCarrito([]);
    render();
}

/* ================= USUARIO ================= */

function login(e){
    e.preventDefault();

    let email = document.getElementById("email").value;
    let pass = document.getElementById("pass").value;

    let usuarios = JSON.parse(localStorage.getItem("usuarios")) || [];

    let user = usuarios.find(u => u.email === email && u.pass === pass);

    if(!user){
        alert("Credenciales incorrectas");
        return;
    }

    localStorage.setItem("usuario", JSON.stringify(user));
    window.location.href = "index.xml";
}

function registro(e){
    e.preventDefault();

    let nombre = document.getElementById("nombre").value;
    let email = document.getElementById("email").value;
    let pass = document.getElementById("pass").value;

    let usuarios = JSON.parse(localStorage.getItem("usuarios")) || [];

    if(usuarios.find(u => u.email === email)){
        alert("Usuario ya existe");
        return;
    }

    usuarios.push({nombre, email, pass});
    localStorage.setItem("usuarios", JSON.stringify(usuarios));

    alert("Cuenta creada 🚀");
    window.location.href = "login.html";
}

function logout(){
    localStorage.removeItem("usuario");
    window.location.href = "index.xml";
}

/* ================= UI ================= */

function renderUsuario(){
    let box = document.getElementById("user-box");
    if(!box) return;

    let usuario = getUsuario();

    if(usuario){
        box.innerHTML = `
            <p>👤 ${usuario.nombre}</p>
            <button onclick="logout()">Cerrar sesión</button>
        `;
    } else {
        box.innerHTML = `
            <button onclick="window.location.href='login.html'">Iniciar sesión</button>
            <button onclick="window.location.href='registro.html'">Crear cuenta</button>
        `;
    }
}

/* ================= RENDER ================= */

function render(){
    let lista = document.getElementById("listaCarrito");
    let totalEl = document.getElementById("total");
    let countEl = document.getElementById("cart-count");

    let carrito = getCarrito();
    let total = 0;
    let totalItems = 0;

    if(lista){
        lista.innerHTML = "";

        carrito.forEach((item,i)=>{

            let cantidad = item.cantidad ? item.cantidad : 1;

            lista.innerHTML += `
                <li>
                    ${item.n} x${cantidad} - ${item.p}€
                    <button onclick="eliminar(${i})">✕</button>
                </li>
            `;

            total += item.p * cantidad;
            totalItems += cantidad;
        });
    }

    if(totalEl) totalEl.textContent = "Total: " + total + "€";
    if(countEl) countEl.textContent = totalItems;

    renderUsuario();
}

/* ================= PRODUCTO ================= */

function verProducto(nombre, precio, imagen){
    let producto = {nombre, precio, imagen};
    localStorage.setItem("productoSeleccionado", JSON.stringify(producto));
    window.location.href = "producto.html";
}

function añadirAlCarrito(producto, talla, cantidad){

    let usuario = getUsuario();

    if(!usuario){
        alert("Debes iniciar sesión");
        window.location.href = "login.html";
        return;
    }

    let carrito = getCarrito();

    // 🔥 SI YA EXISTE EL PRODUCTO → SUMA CANTIDAD
    let existente = carrito.find(p => 
        p.n === producto.nombre && p.talla === talla
    );

    if(existente){
        existente.cantidad += cantidad;
    } else {
        carrito.push({
            n: producto.nombre,
            p: parseFloat(producto.precio),
            talla,
            cantidad
        });
    }

    guardarCarrito(carrito);
    render();

    alert("Añadido al carrito 🔥");
}

/* ================= BANNER ================= */

const categorias = [
    { nombre:"SLOBBER'S FOR MEN", img:"img/hombre.jpg" },
    { nombre:"SLOBBER'S FOR WOMAN", img:"img/mujer.jpg" },
    { nombre:"SLOBBER'S FOOTWEAR", img:"img/calzado.jpg" },
    { nombre:"SLOBBER'S ACCESSORIES", img:"img/bisuteria.jpg" }
];

let categoriaActual = 0;
let intervalo;

function nextCategoria(){
    categoriaActual = (categoriaActual + 1) % categorias.length;
    renderBanner();
}

function renderBanner(){
    let banner = document.getElementById("banner-img");
    let title = document.getElementById("banner-title");

    if(!banner || !title) return;

    let cat = categorias[categoriaActual];

    banner.style.backgroundImage = `url(${cat.img})`;
    banner.style.backgroundSize = "cover";
    banner.style.backgroundPosition = "center";

    title.innerText = cat.nombre;
}

function iniciarAutoPlay(){
    intervalo = setInterval(nextCategoria, 4000);
}

/* ================= TABS ================= */

function cambiarTab(tab){

    // Oculta todos los contenidos
    document.querySelectorAll(".tab-content").forEach(el=>{
        el.classList.remove("activo");
    });

    // Quita clase activa a botones
    document.querySelectorAll(".tab").forEach(el=>{
        el.classList.remove("active");
    });

    // Activa el contenido correcto
    let contenido = document.getElementById(tab);
    if(contenido) contenido.classList.add("activo");

    // Activa el botón clicado
    if(event && event.target){
        event.target.classList.add("active");
    }
}

/* ================= INIT ================= */

window.onload = function(){
    render();

    if(document.getElementById("banner-img")){
        renderBanner();
        iniciarAutoPlay();
    }
};

/* ================= PRODUCTOS BASE (SIMULACIÓN DB) ================= */

const listaProductos = [
    {nombre:"Cyber Jacket", precio:120, imagen:"img/hombre.jpg"},
    {nombre:"Punk Hoodie", precio:80, imagen:"img/hombre.jpg"},
    {nombre:"Urban Tech Coat", precio:140, imagen:"img/hombre.jpg"},
    {nombre:"Dark Street Fit", precio:95, imagen:"img/hombre.jpg"},
    {nombre:"Future Pants", precio:70, imagen:"img/hombre.jpg"},
    {nombre:"Neo Sneakers", precio:110, imagen:"img/hombre.jpg"}
];

/* Guardar productos SOLO una vez */
if(!localStorage.getItem("productos")){
    localStorage.setItem("productos", JSON.stringify(listaProductos));
}

/* ================= MOBILE MENU ================= */

function toggleMenu(){
    let menu = document.getElementById("nav-menu");
    if(menu) menu.classList.toggle("activo");
}

/* ================= BUSCADOR ================= */

document.addEventListener("DOMContentLoaded", () => {

    const buscador = document.getElementById("buscador");

    if(!buscador) return;

    buscador.addEventListener("keyup", () => {

        const texto = buscador.value.toLowerCase();
        const productos = document.querySelectorAll(".card-pro");

        productos.forEach(p => {
            const nombre = p.innerText.toLowerCase();

            if(nombre.includes(texto)){
                p.style.display = "block";
            } else {
                p.style.display = "none";
            }
        });

    });

});

window.addEventListener("load", () => {

    const loader = document.getElementById("loader");

    setTimeout(() => {
        loader.classList.add("hidden");
    }, 800); // puedes ajustar tiempo

});

const imagenes = [
    "img/producto1.jpg",
    "img/producto2.jpg",
    "img/producto3.jpg"
];

let index = 0;

const imgPrincipal = document.getElementById("img-principal");
const contador = document.getElementById("contador");
const miniaturas = document.querySelectorAll(".miniaturas-pro img");

function actualizarGaleria(){
    imgPrincipal.src = imagenes[index];
    contador.textContent = `${index + 1}/${imagenes.length}`;

    miniaturas.forEach((img, i) => {
        img.classList.toggle("activa", i === index);
    });
}

function cambiarImagen(i){
    index = i;
    actualizarGaleria();
}

function nextImg(){
    index = (index + 1) % imagenes.length;
    actualizarGaleria();
}

function prevImg(){
    index = (index - 1 + imagenes.length) % imagenes.length;
    actualizarGaleria();
}

/* INICIALIZAR */
document.addEventListener("DOMContentLoaded", actualizarGaleria);