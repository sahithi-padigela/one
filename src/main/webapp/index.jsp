<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NexusShop | Modern Store</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Manrope:wght@600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
:root{
    --bg:#f7f5ff;
    --surface:#ffffff;
    --surface-2:#f0edff;
    --ink:#24213b;
    --muted:#77738e;
    --primary:#7567f8;
    --primary-dark:#5c4de0;
    --primary-soft:#e8e5ff;
    --pink:#f08abf;
    --green:#43b58a;
    --border:#e9e6f4;
    --shadow:0 10px 35px rgba(54,45,110,.08);
    --shadow-lg:0 20px 55px rgba(54,45,110,.13);
    --radius:24px;
    --container:1200px;
}

*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth}
body{
    font-family:'DM Sans',sans-serif;
    background:
        radial-gradient(circle at 10% 10%,rgba(117,103,248,.08),transparent 28%),
        radial-gradient(circle at 90% 35%,rgba(240,138,191,.07),transparent 25%),
        var(--bg);
    color:var(--ink);
    line-height:1.5;
}
a{text-decoration:none;color:inherit}
button,input{font:inherit}
button{border:0;cursor:pointer}
.container{width:min(var(--container),calc(100% - 40px));margin:auto}

.topbar{
    background:#25223b;color:#fff;text-align:center;
    padding:8px 15px;font-size:12px;letter-spacing:.3px
}
.topbar b{color:#dcd8ff}

header{
    position:sticky;top:0;z-index:50;
    background:rgba(247,245,255,.86);
    backdrop-filter:blur(18px);
    border-bottom:1px solid rgba(233,230,244,.8)
}
.nav{
    min-height:78px;display:flex;align-items:center;gap:24px
}
.logo{display:flex;align-items:center;gap:10px;min-width:max-content}
.logo-mark{
    width:42px;height:42px;border-radius:14px;
    display:grid;place-items:center;color:#fff;
    background:linear-gradient(135deg,var(--primary),#9a8fff);
    box-shadow:0 8px 18px rgba(117,103,248,.25)
}
.logo strong{font-family:Manrope;font-size:21px;letter-spacing:-.6px}
.logo span{color:var(--primary)}

.nav-links{display:flex;gap:4px;margin:auto}
.nav-links a{
    padding:10px 15px;border-radius:12px;color:var(--muted);
    font-size:14px;font-weight:600;transition:.2s
}
.nav-links a:hover,.nav-links a.active{background:#fff;color:var(--primary);box-shadow:var(--shadow)}

.nav-right{display:flex;align-items:center;gap:8px}
.search{
    width:205px;height:42px;background:#fff;border:1px solid var(--border);
    border-radius:14px;display:flex;align-items:center;padding:0 13px;
    transition:.2s
}
.search:focus-within{border-color:var(--primary);box-shadow:0 0 0 4px rgba(117,103,248,.10)}
.search i{color:#a29eb6;font-size:13px}
.search input{width:100%;border:0;outline:0;background:transparent;padding-left:9px;font-size:13px}
.icon-btn{
    width:42px;height:42px;border-radius:13px;background:#fff;
    border:1px solid var(--border);color:var(--muted);position:relative;
    transition:.2s
}
.icon-btn:hover{color:var(--primary);transform:translateY(-2px);box-shadow:var(--shadow)}
.cart-badge{
    position:absolute;right:-4px;top:-5px;background:var(--pink);color:#fff;
    width:18px;height:18px;border-radius:50%;font-size:10px;font-weight:700;
    display:grid;place-items:center;border:2px solid var(--bg)
}
.menu-btn{display:none}

.hero{padding:34px 0 24px}
.hero-card{
    min-height:475px;border-radius:32px;overflow:hidden;position:relative;
    display:flex;align-items:center;
    background:linear-gradient(115deg,#312c52 0%,#6258a0 54%,#8b80d7 100%);
    box-shadow:var(--shadow-lg)
}
.hero-card:after{
    content:"";position:absolute;inset:0;
    background:linear-gradient(90deg,rgba(35,31,59,.82),rgba(53,47,86,.30));
}
.hero-image{
    position:absolute;right:0;top:0;width:57%;height:100%;
    object-fit:cover;opacity:.82
}
.hero-content{position:relative;z-index:2;padding:60px;max-width:650px;color:#fff}
.pill{
    display:inline-flex;align-items:center;gap:7px;
    background:rgba(255,255,255,.13);border:1px solid rgba(255,255,255,.2);
    padding:8px 13px;border-radius:999px;font-size:12px;font-weight:700;
    margin-bottom:18px
}
.hero h1{
    font-family:Manrope;font-size:52px;line-height:1.06;
    letter-spacing:-2px;margin-bottom:18px
}
.hero h1 span{color:#dcd8ff}
.hero p{max-width:490px;color:rgba(255,255,255,.76);font-size:16px;margin-bottom:28px}
.hero-actions{display:flex;gap:12px;flex-wrap:wrap}
.btn{
    display:inline-flex;align-items:center;justify-content:center;gap:8px;
    padding:13px 21px;border-radius:14px;font-weight:700;font-size:14px;
    transition:.22s
}
.btn-primary{background:#fff;color:#4e45b5}
.btn-primary:hover{transform:translateY(-3px);box-shadow:0 12px 25px rgba(0,0,0,.18)}
.btn-light{background:rgba(255,255,255,.12);color:#fff;border:1px solid rgba(255,255,255,.22)}
.btn-light:hover{background:rgba(255,255,255,.2)}

.trust-row{
    display:grid;grid-template-columns:repeat(4,1fr);gap:14px;margin:22px 0
}
.trust{
    background:#fff;border:1px solid var(--border);border-radius:18px;
    padding:17px;display:flex;align-items:center;gap:13px;box-shadow:var(--shadow)
}
.trust .ti{
    width:40px;height:40px;border-radius:12px;background:var(--primary-soft);
    color:var(--primary);display:grid;place-items:center
}
.trust strong{display:block;font-size:13px}
.trust small{color:var(--muted);font-size:11px}

.section{padding:48px 0}
.section-head{display:flex;align-items:end;justify-content:space-between;margin-bottom:22px}
.kicker{font-size:11px;text-transform:uppercase;letter-spacing:1.5px;color:var(--primary);font-weight:800}
.section h2{font-family:Manrope;font-size:29px;letter-spacing:-.8px;margin-top:3px}
.section-head p{color:var(--muted);font-size:13px;margin-top:3px}
.view{color:var(--primary);font-size:13px;font-weight:700}

.categories{display:grid;grid-template-columns:repeat(6,1fr);gap:14px}
.category{
    background:#fff;border:1px solid var(--border);border-radius:20px;padding:20px 10px;
    text-align:center;cursor:pointer;transition:.22s;box-shadow:var(--shadow)
}
.category:hover{transform:translateY(-5px);border-color:#d7d1ff;box-shadow:var(--shadow-lg)}
.cat-icon{
    width:55px;height:55px;border-radius:17px;background:var(--surface-2);
    color:var(--primary);display:grid;place-items:center;margin:0 auto 11px;font-size:21px
}
.category h4{font-size:13px}
.category small{color:var(--muted);font-size:11px}

.products{display:grid;grid-template-columns:repeat(4,1fr);gap:18px}
.product{
    background:#fff;border:1px solid var(--border);border-radius:22px;
    overflow:hidden;box-shadow:var(--shadow);transition:.22s;position:relative
}
.product:hover{transform:translateY(-6px);box-shadow:var(--shadow-lg)}
.product-img{height:255px;background:#f0eef8;position:relative;overflow:hidden}
.product-img img{width:100%;height:100%;object-fit:cover;transition:.35s}
.product:hover .product-img img{transform:scale(1.055)}
.badge{
    position:absolute;left:12px;top:12px;padding:6px 10px;border-radius:9px;
    font-size:10px;font-weight:800;background:#fff;color:var(--primary);box-shadow:var(--shadow)
}
.badge.sale{color:#d05a8f;background:#fff0f7}
.wish{
    position:absolute;right:12px;top:12px;width:35px;height:35px;border-radius:11px;
    background:rgba(255,255,255,.92);color:#8c879e;transition:.2s
}
.wish:hover,.wish.liked{color:#ef6fae}
.product-info{padding:16px}
.category-name{font-size:10px;color:#aaa6b9;text-transform:uppercase;letter-spacing:1px;font-weight:700}
.product h3{font-size:15px;margin:4px 0 9px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}
.rating{font-size:11px;color:#f1ad55}
.rating span{color:#aaa6b9;margin-left:4px}
.price-row{display:flex;align-items:center;gap:8px;margin-top:11px}
.price{font-family:Manrope;font-size:18px}
.old{text-decoration:line-through;color:#aaa6b9;font-size:12px}
.add{
    width:100%;margin-top:14px;padding:11px;border-radius:12px;
    background:#f2efff;color:var(--primary);font-weight:800;font-size:12px;transition:.2s
}
.add:hover,.add.added{background:var(--primary);color:#fff}

.deal{
    display:grid;grid-template-columns:1fr 1fr;background:#fff;border:1px solid var(--border);
    border-radius:28px;overflow:hidden;box-shadow:var(--shadow-lg)
}
.deal-img{min-height:370px}
.deal-img img{width:100%;height:100%;object-fit:cover}
.deal-info{padding:48px;display:flex;justify-content:center;flex-direction:column}
.deal-tag{color:#d35b91;background:#fff0f7;padding:7px 11px;border-radius:9px;font-size:10px;font-weight:800;align-self:flex-start}
.deal-info h2{font-size:33px;margin:13px 0 7px}
.deal-info p{color:var(--muted);font-size:14px}
.deal-price{font-family:Manrope;font-size:34px;margin:17px 0 4px}
.deal-price del{font-family:'DM Sans';font-size:15px;color:#aaa6b9;margin-left:8px;font-weight:400}
.stock{font-size:12px!important}.stock b{color:#e2679c}
.timer{display:flex;gap:9px;margin:18px 0}
.time{background:#f3f1fb;border-radius:13px;min-width:62px;padding:9px;text-align:center}
.time b{font-family:Manrope;font-size:19px;display:block}.time small{font-size:9px;color:var(--muted)}

.reviews{display:grid;grid-template-columns:repeat(3,1fr);gap:16px}
.review{
    background:#fff;border:1px solid var(--border);border-radius:20px;padding:23px;box-shadow:var(--shadow)
}
.review .stars{color:#f1ad55;font-size:13px;letter-spacing:2px}
.review blockquote{font-size:13px;line-height:1.7;margin:12px 0 18px;color:#514d65}
.author{display:flex;align-items:center;gap:10px}
.avatar{width:39px;height:39px;border-radius:50%;object-fit:cover}
.author strong{font-size:12px;display:block}.author small{color:var(--muted);font-size:10px}

.newsletter{
    background:linear-gradient(135deg,#302b4e,#655ca1);color:#fff;border-radius:28px;
    padding:42px;display:flex;align-items:center;justify-content:space-between;gap:25px
}
.newsletter h2{font-size:26px;font-family:Manrope}
.newsletter p{opacity:.72;font-size:13px;margin-top:4px}
.news-form{display:flex;gap:8px;width:min(460px,100%)}
.news-form input{flex:1;border:0;outline:0;border-radius:13px;padding:13px 15px;background:rgba(255,255,255,.13);color:#fff}
.news-form input::placeholder{color:rgba(255,255,255,.55)}
.news-form button{background:#fff;color:#5147b7;border-radius:13px;padding:0 18px;font-weight:800}

footer{padding:45px 0 25px}
.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:35px}
.footer-grid h4{font-size:12px;margin-bottom:12px}
.footer-grid ul{list-style:none;display:grid;gap:7px}
.footer-grid li a{font-size:12px;color:var(--muted)}
.footer-brand p{max-width:280px;color:var(--muted);font-size:12px;margin-top:10px}
.social{display:flex;gap:8px;margin-top:15px}
.social a{width:34px;height:34px;border-radius:10px;background:#fff;border:1px solid var(--border);display:grid;place-items:center;color:var(--muted)}
.copyright{text-align:center;border-top:1px solid var(--border);padding-top:20px;margin-top:30px;color:#aaa6b9;font-size:11px}

.toast{
    position:fixed;right:22px;bottom:22px;z-index:100;
    background:#27233e;color:#fff;padding:13px 17px;border-radius:13px;
    box-shadow:var(--shadow-lg);font-size:12px;transform:translateY(100px);opacity:0;
    transition:.3s;pointer-events:none
}
.toast.show{transform:translateY(0);opacity:1}

.cart-panel{
    position:fixed;right:0;top:0;height:100%;width:min(390px,92vw);background:#fff;
    z-index:80;box-shadow:-20px 0 60px rgba(30,25,70,.18);
    transform:translateX(105%);transition:.3s;padding:22px;display:flex;flex-direction:column
}
.cart-panel.open{transform:translateX(0)}
.cart-head{display:flex;justify-content:space-between;align-items:center;padding-bottom:16px;border-bottom:1px solid var(--border)}
.cart-head h3{font-family:Manrope}
.cart-items{flex:1;overflow:auto;padding:14px 0}
.cart-item{display:flex;gap:11px;padding:12px 0;border-bottom:1px solid #f0eef5}
.cart-item img{width:58px;height:58px;object-fit:cover;border-radius:12px}
.cart-item h4{font-size:12px}.cart-item p{font-size:11px;color:var(--muted)}
.remove{margin-left:auto;color:#c0bccb;font-size:12px}
.cart-total{border-top:1px solid var(--border);padding-top:17px}
.total-row{display:flex;justify-content:space-between;font-family:Manrope;font-size:18px;margin-bottom:13px}
.checkout{width:100%;background:var(--primary);color:#fff;border-radius:13px;padding:13px;font-weight:800}

.overlay{position:fixed;inset:0;background:rgba(30,25,55,.28);z-index:70;display:none}
.overlay.show{display:block}

@media(max-width:1050px){
    .nav-links{display:none}
    .menu-btn{display:block}
    .hero h1{font-size:43px}
    .categories{grid-template-columns:repeat(3,1fr)}
    .products{grid-template-columns:repeat(3,1fr)}
}
@media(max-width:760px){
    .container{width:min(100% - 24px,var(--container))}
    .topbar{font-size:10px}
    .nav{min-height:68px;gap:8px}.logo strong{font-size:17px}.logo-mark{width:37px;height:37px}
    .search{width:145px}.nav-right .icon-btn:nth-of-type(1){display:none}
    .hero-card{min-height:530px}.hero-image{width:100%;opacity:.35}.hero-content{padding:32px}
    .hero h1{font-size:37px;letter-spacing:-1.5px}
    .trust-row{grid-template-columns:repeat(2,1fr)}
    .section{padding:35px 0}.section h2{font-size:24px}
    .products{grid-template-columns:repeat(2,1fr);gap:12px}.product-img{height:205px}
    .deal{grid-template-columns:1fr}.deal-img{min-height:250px}.deal-info{padding:28px}
    .reviews{grid-template-columns:1fr}
    .newsletter{padding:28px;display:block}.news-form{margin-top:18px}
    .footer-grid{grid-template-columns:1fr 1fr}
}
@media(max-width:480px){
    .search{width:125px}.search input{font-size:11px}
    .hero-content{padding:25px}.hero h1{font-size:31px}
    .trust{padding:12px}.trust small{font-size:9px}
    .categories{grid-template-columns:repeat(2,1fr)}
    .product-img{height:175px}.product-info{padding:12px}.product h3{font-size:13px}
    .price{font-size:15px}.add{padding:9px;font-size:11px}
    .deal-price{font-size:29px}.timer{gap:5px}.time{min-width:53px}
    .news-form{display:grid}.news-form button{padding:12px}
    .footer-grid{grid-template-columns:1fr}
}
</style>
</head>

<body>
<div class="topbar">✨ Welcome to NexusShop — <b>Free shipping</b> on orders over $50</div>

<header>
<div class="container nav">
    <button class="icon-btn menu-btn" id="menuBtn"><i class="fas fa-bars"></i></button>

    <a href="#" class="logo">
        <div class="logo-mark"><i class="fas fa-bag-shopping"></i></div>
        <strong>Nexus<span>Shop</span></strong>
    </a>

    <nav class="nav-links">
        <a href="#" class="active">Home</a>
        <a href="#categories">Categories</a>
        <a href="#products">Shop</a>
        <a href="#deals">Deals</a>
        <a href="#reviews">Reviews</a>
    </nav>

    <div class="nav-right">
        <div class="search">
            <i class="fas fa-search"></i>
            <input id="searchInput" type="search" placeholder="Search products...">
        </div>
        <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
        <button class="icon-btn" id="cartBtn" title="Shopping cart">
            <i class="fas fa-bag-shopping"></i><span class="cart-badge" id="cartCount">0</span>
        </button>
    </div>
</div>
</header>

<main>
<section class="hero">
<div class="container">
<div class="hero-card">
    <img class="hero-image" src="https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1200&q=85" alt="Modern shopping collection">
    <div class="hero-content">
        <div class="pill"><i class="fas fa-sparkles"></i> New collection 2026</div>
        <h1>Everything you love,<br><span>in one place.</span></h1>
        <p>Discover stylish fashion, smart technology and everyday essentials — thoughtfully selected for modern living.</p>
        <div class="hero-actions">
            <button class="btn btn-primary" id="shopNow">Explore collection <i class="fas fa-arrow-right"></i></button>
            <button class="btn btn-light" id="dealNow">View today's deal</button>
        </div>
    </div>
</div>
</div>
</section>

<div class="container">
<div class="trust-row">
    <div class="trust"><div class="ti"><i class="fas fa-truck-fast"></i></div><div><strong>Fast delivery</strong><small>Quick & reliable</small></div></div>
    <div class="trust"><div class="ti"><i class="fas fa-shield-heart"></i></div><div><strong>Secure payment</strong><small>100% protected</small></div></div>
    <div class="trust"><div class="ti"><i class="fas fa-rotate-left"></i></div><div><strong>Easy returns</strong><small>30-day returns</small></div></div>
    <div class="trust"><div class="ti"><i class="fas fa-headset"></i></div><div><strong>Friendly support</strong><small>Here to help</small></div></div>
</div>
</div>

<section class="section" id="categories">
<div class="container">
<div class="section-head">
<div><div class="kicker">Shop your way</div><h2>Browse categories</h2><p>Find something perfect for you</p></div>
<a href="#products" class="view">View all <i class="fas fa-arrow-right"></i></a>
</div>
<div class="categories" id="categoriesGrid"></div>
</div>
</section>

<section class="section" id="products">
<div class="container">
<div class="section-head">
<div><div class="kicker">Popular right now</div><h2>Trending products</h2><p>Our community's current favorites</p></div>
</div>
<div class="products" id="productsGrid"></div>
</div>
</section>

<section class="section" id="deals">
<div class="container">
<div class="section-head">
<div><div class="kicker">Don't miss out</div><h2>Today's special deal</h2><p>A premium pick at a better price</p></div>
</div>
<div class="deal">
<div class="deal-img"><img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=85" alt="MacBook Air"></div>
<div class="deal-info">
<span class="deal-tag"><i class="fas fa-bolt"></i> Limited offer</span>
<h2>MacBook Air M2</h2>
<p>Thin, light and incredibly powerful. A beautiful everyday laptop built for performance.</p>
<div class="deal-price">$999 <del>$1,199</del></div>
<p class="stock">Only <b>12 items</b> left — order soon.</p>
<div class="timer">
<div class="time"><b id="days">0</b><small>DAYS</small></div>
<div class="time"><b id="hours">00</b><small>HOURS</small></div>
<div class="time"><b id="minutes">00</b><small>MINS</small></div>
<div class="time"><b id="seconds">00</b><small>SECS</small></div>
</div>
<button class="btn" style="background:var(--primary);color:#fff;align-self:flex-start" id="buyDeal"><i class="fas fa-cart-plus"></i> Add deal to cart</button>
</div>
</div>
</div>
</section>

<section class="section" id="reviews">
<div class="container">
<div class="section-head">
<div><div class="kicker">Loved by shoppers</div><h2>What customers say</h2><p>Real experiences from our community</p></div>
</div>
<div class="reviews" id="reviewsGrid"></div>
</div>
</section>

<section class="section">
<div class="container">
<div class="newsletter">
<div><h2>Stay in the loop</h2><p>New arrivals, exclusive offers and early access — straight to your inbox.</p></div>
<form class="news-form" id="newsForm">
<input type="email" id="email" placeholder="Your email address" required>
<button type="submit">Subscribe</button>
</form>
</div>
</div>
</section>
</main>

<footer>
<div class="container">
<div class="footer-grid">
<div class="footer-brand">
<a href="#" class="logo"><div class="logo-mark"><i class="fas fa-bag-shopping"></i></div><strong>Nexus<span>Shop</span></strong></a>
<p>A modern e-commerce experience built around simple shopping, beautiful products and helpful service.</p>
<div class="social"><a href="#"><i class="fab fa-instagram"></i></a><a href="#"><i class="fab fa-facebook-f"></i></a><a href="#"><i class="fab fa-x-twitter"></i></a><a href="#"><i class="fab fa-youtube"></i></a></div>
</div>
<div><h4>Shop</h4><ul><li><a href="#products">Trending</a></li><li><a href="#categories">Categories</a></li><li><a href="#deals">Special deals</a></li><li><a href="#">New arrivals</a></li></ul></div>
<div><h4>Help</h4><ul><li><a href="#">Help center</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li><li><a href="#">Contact us</a></li></ul></div>
<div><h4>Company</h4><ul><li><a href="#">About us</a></li><li><a href="#">Careers</a></li><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li></ul></div>
</div>
<div class="copyright">© <span id="year"></span> NexusShop. All rights reserved.</div>
</div>
</footer>

<div class="overlay" id="overlay"></div>
<aside class="cart-panel" id="cartPanel">
<div class="cart-head"><h3>Your cart</h3><button class="icon-btn" id="closeCart"><i class="fas fa-xmark"></i></button></div>
<div class="cart-items" id="cartItems"></div>
<div class="cart-total">
<div class="total-row"><span>Total</span><span id="cartTotal">$0</span></div>
<button class="checkout" id="checkout">Continue to checkout</button>
</div>
</aside>

<div class="toast" id="toast"></div>

<script>
const CATEGORIES=[
{id:'phones',name:'Smartphones',icon:'fa-mobile-screen-button',count:24},
{id:'laptops',name:'Laptops',icon:'fa-laptop',count:18},
{id:'clothing',name:'Clothing',icon:'fa-shirt',count:42},
{id:'gadgets',name:'Gadgets',icon:'fa-headphones',count:31},
{id:'footwear',name:'Footwear',icon:'fa-shoe-prints',count:27},
{id:'accessories',name:'Accessories',icon:'fa-watch',count:39}
];

const PRODUCTS=[
{id:1,title:'iPhone 14 Pro Max',price:1099,oldPrice:1199,rating:5,reviews:128,badge:'New',category:'Smartphones',img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85'},
{id:2,title:'MacBook Pro 14"',price:1999,rating:4,reviews:86,badge:'',category:'Laptops',img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85'},
{id:3,title:'Apple Watch Series 8',price:349,oldPrice:399,rating:5,reviews:214,badge:'Sale',category:'Accessories',img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=85'},
{id:4,title:'Nike Air Max 270',price:150,rating:4,reviews:53,badge:'',category:'Footwear',img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=700&q=85'},
{id:5,title:'Sony A7 IV Camera',price:2499,rating:5,reviews:42,badge:'New',category:'Gadgets',img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85'},
{id:6,title:'Chanel No. 5',price:120,rating:5,reviews:189,badge:'',category:'Accessories',img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85'},
{id:7,title:'Travel Backpack',price:79,oldPrice:99,rating:4,reviews:67,badge:'Sale',category:'Accessories',img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=700&q=85'},
{id:8,title:'Sony WH-1000XM5',price:399,rating:5,reviews:156,badge:'',category:'Gadgets',img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=700&q=85'}
];

const REVIEWS=[
{name:'Ava Martin',role:'Verified buyer',stars:5,text:'Fast shipping and excellent support. The product exceeded my expectations!',avatar:'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80'},
{name:'Michael Lee',role:'Frequent shopper',stars:4,text:'Great selection and a very smooth checkout experience. Will definitely shop again.',avatar:'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=100&q=80'},
{name:'Sophia Chen',role:'Designer',stars:5,text:'Love the quality and packaging. Everything arrived in perfect condition.',avatar:'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=100&q=80'}
];

let cart=[];

const $=id=>document.getElementById(id);
const money=n=>'$'+n.toLocaleString();

function toast(message){
    const t=$('toast');t.textContent=message;t.classList.add('show');
    clearTimeout(window.toastTimer);window.toastTimer=setTimeout(()=>t.classList.remove('show'),2200);
}

function renderCategories(){
    $('categoriesGrid').innerHTML=CATEGORIES.map(c=>`
        <div class="category" onclick="filterCategory('${c.name}')">
            <div class="cat-icon"><i class="fas ${c.icon}"></i></div>
            <h4>${c.name}</h4><small>${c.count} items</small>
        </div>`).join('');
}

function renderProducts(list=PRODUCTS){
    if(!list.length){
        $('productsGrid').innerHTML='<div style="grid-column:1/-1;text-align:center;padding:50px;color:var(--muted)">No products found. Try another search.</div>';
        return;
    }
    $('productsGrid').innerHTML=list.map(p=>`
        <article class="product">
            <div class="product-img">
                <img src="${p.img}" alt="${p.title}" loading="lazy">
                ${p.badge?`<span class="badge ${p.badge==='Sale'?'sale':''}">${p.badge}</span>`:''}
                <button class="wish" onclick="toggleWish(this)"><i class="far fa-heart"></i></button>
            </div>
            <div class="product-info">
                <div class="category-name">${p.category}</div>
                <h3 title="${p.title}">${p.title}</h3>
                <div class="rating">${'★'.repeat(p.rating)}${'☆'.repeat(5-p.rating)} <span>(${p.reviews})</span></div>
                <div class="price-row"><span class="price">${money(p.price)}</span>${p.oldPrice?`<span class="old">${money(p.oldPrice)}</span>`:''}</div>
                <button class="add" onclick="addToCart(${p.id},this)"><i class="fas fa-plus"></i> Add to cart</button>
            </div>
        </article>`).join('');
}

function renderReviews(){
    $('reviewsGrid').innerHTML=REVIEWS.map(r=>`
        <article class="review">
            <div class="stars">${'★'.repeat(r.stars)}${'☆'.repeat(5-r.stars)}</div>
            <blockquote>“${r.text}”</blockquote>
            <div class="author"><img class="avatar" src="${r.avatar}" alt="${r.name}"><div><strong>${r.name}</strong><small>${r.role}</small></div></div>
        </article>`).join('');
}

function addToCart(id,button){
    const p=PRODUCTS.find(x=>x.id===id);
    const existing=cart.find(x=>x.id===id);
    if(existing) existing.qty++; else cart.push({...p,qty:1});
    updateCart();
    button.classList.add('added');
    button.innerHTML='<i class="fas fa-check"></i> Added';
    setTimeout(()=>{button.classList.remove('added');button.innerHTML='<i class="fas fa-plus"></i> Add to cart'},1200);
    toast(p.title+' added to your cart');
}

function updateCart(){
    const count=cart.reduce((s,p)=>s+p.qty,0);
    $('cartCount').textContent=count;
    $('cartItems').innerHTML=cart.length?cart.map(p=>`
        <div class="cart-item">
            <img src="${p.img}" alt="${p.title}">
            <div><h4>${p.title}</h4><p>${money(p.price)} × ${p.qty}</p></div>
            <button class="remove" onclick="removeItem(${p.id})"><i class="fas fa-trash"></i></button>
        </div>`).join(''):'<div style="text-align:center;padding:60px 10px;color:var(--muted)"><i class="fas fa-bag-shopping" style="font-size:35px;margin-bottom:15px;color:#d0cbea"></i><p>Your cart is empty.</p></div>';
    $('cartTotal').textContent=money(cart.reduce((s,p)=>s+p.price*p.qty,0));
}

function removeItem(id){cart=cart.filter(p=>p.id!==id);updateCart();toast('Item removed from cart')}

function openCart(){$('cartPanel').classList.add('open');$('overlay').classList.add('show')}
function closeCart(){$('cartPanel').classList.remove('open');$('overlay').classList.remove('show')}

function filterCategory(category){
    $('searchInput').value=category;
    renderProducts(PRODUCTS.filter(p=>p.category.toLowerCase()===category.toLowerCase()));
    $('products').scrollIntoView({behavior:'smooth'});
}

function search(){
    const q=$('searchInput').value.toLowerCase().trim();
    renderProducts(!q?PRODUCTS:PRODUCTS.filter(p=>(p.title+' '+p.category).toLowerCase().includes(q)));
}

function toggleWish(btn){
    btn.classList.toggle('liked');
    btn.innerHTML=btn.classList.contains('liked')?'<i class="fas fa-heart"></i>':'<i class="far fa-heart"></i>';
    toast(btn.classList.contains('liked')?'Added to wishlist':'Removed from wishlist');
}

$('searchInput').addEventListener('input',search);
$('cartBtn').onclick=openCart;
$('closeCart').onclick=closeCart;
$('overlay').onclick=closeCart;
$('shopNow').onclick=()=>$('products').scrollIntoView({behavior:'smooth'});
$('dealNow').onclick=()=>$('deals').scrollIntoView({behavior:'smooth'});
$('menuBtn').onclick=()=>{document.querySelector('.nav-links').style.display=document.querySelector('.nav-links').style.display==='flex'?'none':'flex'};

$('buyDeal').onclick=()=>{
    const p={id:999,title:'MacBook Air M2',price:999,category:'Laptops',img:'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=85'};
    const existing=cart.find(x=>x.id===999);if(existing)existing.qty++;else cart.push({...p,qty:1});
    updateCart();toast('MacBook Air M2 added to your cart');openCart();
};

$('checkout').onclick=()=>toast(cart.length?'Checkout is ready for the next step.':'Your cart is empty');

$('newsForm').addEventListener('submit',e=>{
    e.preventDefault();toast('Thanks for subscribing! ✨');$('email').value='';
});

let end=Date.now()+24*60*60*1000+36*60*1000;
function timer(){
    const d=Math.max(0,end-Date.now());
    $('days').textContent=Math.floor(d/86400000);
    $('hours').textContent=String(Math.floor(d/3600000)%24).padStart(2,'0');
    $('minutes').textContent=String(Math.floor(d/60000)%60).padStart(2,'0');
    $('seconds').textContent=String(Math.floor(d/1000)%60).padStart(2,'0');
}
setInterval(timer,1000);timer();

$('year').textContent=new Date().getFullYear();
renderCategories();renderProducts();renderReviews();updateCart();
</script>
</body>
</html>
