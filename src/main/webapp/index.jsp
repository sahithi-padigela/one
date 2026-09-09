<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NexusShop | Modern Store</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <style>
        @import url('https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@500;600;700&display=swap');

        :root{
            --ink:#1f1c1a;
            --muted:#756f69;
            --cream:#f8f4ee;
            --paper:#fffdf9;
            --line:rgba(53,45,38,.10);
            --sage:#71806d;
            --sage-dark:#536250;
            --peach:#e8b39b;
            --rose:#d8897d;
            --gold:#c69b5a;
            --shadow:0 24px 70px rgba(56,45,35,.10);
            --radius:24px;
        }

        *{box-sizing:border-box;margin:0;padding:0}
        html{scroll-behavior:smooth}
        body{
            font-family:"DM Sans",sans-serif;
            color:var(--ink);
            background:
                radial-gradient(circle at 8% 8%,rgba(232,179,155,.18),transparent 25%),
                radial-gradient(circle at 92% 25%,rgba(113,128,109,.13),transparent 27%),
                var(--cream);
            line-height:1.6;
        }
        body:before{
            content:"";
            position:fixed;
            inset:0;
            pointer-events:none;
            opacity:.22;
            background-image:radial-gradient(rgba(31,28,26,.13) .6px,transparent .6px);
            background-size:6px 6px;
            mask-image:linear-gradient(to bottom,rgba(0,0,0,.5),transparent 75%);
        }
        a{text-decoration:none;color:inherit}
        button,input{font:inherit}
        button{cursor:pointer;border:0}
        .container{width:min(1180px,92%);margin:auto}

        .topbar{
            background:var(--ink);
            color:#fffaf3;
            padding:8px 0;
            font-size:11px;
            letter-spacing:.25px;
        }
        .topbar-inner{display:flex;justify-content:space-between;gap:20px}
        .topbar span{opacity:.82}

        header{
            position:sticky;
            top:0;
            z-index:1000;
            background:rgba(248,244,238,.80);
            backdrop-filter:blur(20px);
            border-bottom:1px solid var(--line);
        }
        .navbar{
            min-height:78px;
            display:flex;
            align-items:center;
            justify-content:space-between;
            gap:24px;
        }
        .logo{
            display:flex;
            align-items:center;
            gap:10px;
            font-size:21px;
            font-weight:700;
            letter-spacing:-.5px;
        }
        .logo-icon{
            width:42px;height:42px;
            display:grid;place-items:center;
            color:#fff;
            background:linear-gradient(145deg,var(--sage),#94a08d);
            border-radius:14px;
            box-shadow:0 10px 25px rgba(83,98,80,.20);
        }
        .logo em{font-style:normal;color:var(--sage-dark)}

        .nav-links{display:flex;align-items:center;gap:30px;font-size:13px;font-weight:600}
        .nav-links a{color:#625d57;position:relative;padding:8px 0}
        .nav-links a:after{
            content:"";
            position:absolute;left:0;bottom:2px;width:0;height:1.5px;
            background:var(--sage);transition:.25s;
        }
        .nav-links a:hover{color:var(--ink)}
        .nav-links a:hover:after{width:100%}

        .nav-actions{display:flex;align-items:center;gap:8px}
        .icon-btn{
            width:41px;height:41px;border-radius:50%;
            background:rgba(255,253,249,.75);
            color:#403b36;
            border:1px solid var(--line);
            position:relative;
            transition:.25s;
        }
        .icon-btn:hover{background:var(--ink);color:#fff;transform:translateY(-2px)}
        .cart-badge{
            position:absolute;right:-3px;top:-4px;min-width:18px;height:18px;
            padding:0 4px;display:grid;place-items:center;border-radius:20px;
            background:var(--rose);color:#fff;font-size:9px;font-weight:800;
            border:2px solid var(--cream);
        }
        .menu-btn{display:none}

        .hero{padding:78px 0 78px;position:relative;overflow:hidden}
        .hero-grid{display:grid;grid-template-columns:1fr .9fr;align-items:center;gap:70px}
        .eyebrow{
            display:inline-flex;align-items:center;gap:8px;
            padding:8px 13px;border:1px solid rgba(113,128,109,.20);
            border-radius:30px;background:rgba(255,253,249,.72);
            color:var(--sage-dark);font-size:10px;font-weight:800;
            text-transform:uppercase;letter-spacing:1.2px;margin-bottom:20px;
        }
        .hero h1{
            font-family:"Playfair Display",serif;
            font-size:clamp(48px,6vw,82px);
            line-height:.98;letter-spacing:-3.5px;margin-bottom:22px;
            font-weight:600;
        }
        .hero h1 span{
            color:var(--sage-dark);
            font-style:italic;
            font-weight:500;
        }
        .hero p{max-width:560px;color:var(--muted);font-size:16px;margin-bottom:30px}
        .hero-buttons{display:flex;gap:11px;flex-wrap:wrap}
        .btn{
            display:inline-flex;align-items:center;justify-content:center;gap:9px;
            min-height:48px;padding:0 21px;border-radius:13px;font-weight:700;
            font-size:13px;transition:.25s;
        }
        .btn-primary{
            background:var(--ink);color:#fff;
            box-shadow:0 12px 28px rgba(31,28,26,.16);
        }
        .btn-primary:hover{background:var(--sage-dark);transform:translateY(-2px)}
        .btn-light{
            background:rgba(255,253,249,.72);border:1px solid var(--line);color:var(--ink)
        }
        .btn-light:hover{border-color:var(--sage);transform:translateY(-2px)}
        .hero-note{display:flex;gap:25px;margin-top:25px;color:#77716b;font-size:12px}
        .hero-note i{color:var(--sage);margin-right:5px}

        .hero-visual{position:relative;padding:10px}
        .hero-card{
            background:rgba(255,253,249,.68);
            border:1px solid rgba(255,255,255,.8);
            border-radius:34px;
            padding:12px;
            box-shadow:var(--shadow);
            transform:rotate(2deg);
        }
        .hero-image{
            width:100%;height:455px;object-fit:cover;border-radius:25px;display:block;
            filter:saturate(.86) contrast(.96);
        }
        .floating-card{
            position:absolute;left:-20px;bottom:28px;
            display:flex;align-items:center;gap:12px;padding:13px 16px;
            background:rgba(255,253,249,.91);backdrop-filter:blur(12px);
            border:1px solid rgba(255,255,255,.8);border-radius:16px;
            box-shadow:var(--shadow);font-size:12px;font-weight:700;
        }
        .floating-icon{
            width:38px;height:38px;display:grid;place-items:center;
            background:#e8eee5;color:var(--sage-dark);border-radius:11px;
        }

        .search-area{margin-top:-28px;position:relative;z-index:3}
        .search-box{
            background:rgba(255,253,249,.9);padding:8px;
            border:1px solid rgba(53,45,38,.08);box-shadow:var(--shadow);
            border-radius:17px;display:flex;max-width:780px;margin:auto;
            backdrop-filter:blur(16px);
        }
        .search-box i{color:#9a938b;align-self:center;margin:0 6px 0 13px}
        .search-box input{border:0;outline:0;flex:1;min-width:0;padding:10px;color:var(--ink);background:transparent}
        .search-box button{padding:0 21px;border-radius:11px;background:var(--sage-dark);color:#fff;font-weight:700;font-size:12px}

        .section{padding:78px 0}
        .section-head{display:flex;justify-content:space-between;align-items:end;gap:20px;margin-bottom:30px}
        .section-title h2{font-family:"Playfair Display",serif;font-size:36px;letter-spacing:-1px;font-weight:600}
        .section-title p{color:var(--muted);font-size:13px;margin-top:3px}
        .view-all{color:var(--sage-dark);font-size:13px;font-weight:800}

        .category-grid{display:grid;grid-template-columns:repeat(6,1fr);gap:13px}
        .category{
            background:rgba(255,253,249,.72);border:1px solid var(--line);
            border-radius:22px;padding:24px 12px;text-align:center;
            transition:.25s;cursor:pointer;backdrop-filter:blur(8px);
        }
        .category:hover{transform:translateY(-6px);box-shadow:var(--shadow);background:var(--paper)}
        .category-icon{
            width:57px;height:57px;display:grid;place-items:center;margin:0 auto 13px;
            background:#edf0ea;color:var(--sage-dark);border-radius:18px;font-size:20px;
        }
        .category h3{font-size:13px;margin-bottom:3px}
        .category small{color:var(--muted);font-size:10px}

        .product-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:18px}
        .product{
            background:rgba(255,253,249,.82);border:1px solid var(--line);
            border-radius:22px;overflow:hidden;transition:.28s;
            box-shadow:0 8px 25px rgba(56,45,35,.035);
        }
        .product:hover{transform:translateY(-7px);box-shadow:var(--shadow)}
        .product-img{position:relative;background:#eeebe5;overflow:hidden}
        .product-img img{
            width:100%;height:245px;object-fit:cover;display:block;
            transition:.4s;filter:saturate(.84);
        }
        .product:hover img{transform:scale(1.05)}
        .tag{
            position:absolute;left:12px;top:12px;padding:6px 9px;
            background:var(--ink);color:#fff;border-radius:8px;font-size:9px;
            font-weight:800;letter-spacing:.4px;text-transform:uppercase;
        }
        .tag.sale{background:var(--rose)}
        .heart{
            position:absolute;right:12px;top:12px;width:36px;height:36px;
            display:grid;place-items:center;background:rgba(255,253,249,.94);
            color:#706a63;border-radius:50%;box-shadow:0 5px 18px rgba(0,0,0,.10);
        }
        .heart.active{color:var(--rose)}
        .product-body{padding:17px}
        .product-cat{color:var(--sage-dark);font-size:9px;font-weight:800;text-transform:uppercase;letter-spacing:1px}
        .product h3{font-size:14px;margin:5px 0 8px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}
        .rating{font-size:11px;color:var(--gold)}
        .rating span{color:#99928b;margin-left:4px}
        .price-row{display:flex;align-items:center;gap:8px;margin:10px 0 13px}
        .price{font-size:18px;font-weight:800}
        .old{font-size:11px;color:#aaa39c;text-decoration:line-through}
        .add-cart{
            width:100%;min-height:42px;border-radius:11px;
            background:#edf0ea;color:var(--sage-dark);font-weight:800;font-size:12px;transition:.22s;
        }
        .add-cart:hover,.add-cart.added{background:var(--sage-dark);color:#fff}

        .deal{
            background:var(--ink);color:#fff;border-radius:30px;overflow:hidden;
            position:relative;box-shadow:0 25px 70px rgba(31,28,26,.18);
        }
        .deal-grid{display:grid;grid-template-columns:1fr 1fr;align-items:center}
        .deal-content{padding:55px}
        .deal-label{color:#c8d1c2;font-size:10px;font-weight:800;text-transform:uppercase;letter-spacing:1.5px}
        .deal h2{font-family:"Playfair Display",serif;font-size:43px;line-height:1.1;margin:10px 0 13px;font-weight:600}
        .deal p{color:#bdb8b2;font-size:13px;margin-bottom:26px}
        .timer{display:flex;gap:8px;margin-bottom:28px}
        .time{min-width:62px;padding:10px 7px;background:#2c2a27;border:1px solid rgba(255,255,255,.06);border-radius:11px;text-align:center}
        .time strong{display:block;font-size:19px}
        .time small{font-size:8px;color:#99938d;text-transform:uppercase;letter-spacing:.6px}
        .deal-image{height:100%;min-height:370px;width:100%;object-fit:cover;opacity:.82;filter:saturate(.72)}

        .benefits{display:grid;grid-template-columns:repeat(3,1fr);gap:15px}
        .benefit{
            background:rgba(255,253,249,.75);border:1px solid var(--line);border-radius:21px;
            padding:22px;display:flex;gap:14px;backdrop-filter:blur(8px)
        }
        .benefit i{
            color:var(--sage-dark);font-size:19px;width:45px;height:45px;
            display:grid;place-items:center;background:#edf0ea;border-radius:13px;flex:none
        }
        .benefit h3{font-size:13px}.benefit p{color:var(--muted);font-size:11px;margin-top:2px}

        .newsletter{
            background:
                radial-gradient(circle at 90% 15%,rgba(113,128,109,.22),transparent 30%),
                linear-gradient(135deg,#f1e8df,#e9eee5);
            border:1px solid rgba(53,45,38,.07);border-radius:28px;padding:45px;
            display:flex;justify-content:space-between;align-items:center;gap:30px;
        }
        .newsletter h2{font-family:"Playfair Display",serif;font-size:31px}
        .newsletter p{color:var(--muted);font-size:12px}
        .newsletter-form{display:flex;gap:8px;min-width:min(100%,430px)}
        .newsletter-form input{
            min-width:0;flex:1;border:1px solid var(--line);outline:0;padding:0 15px;
            height:46px;border-radius:11px;background:rgba(255,253,249,.92)
        }
        #message{font-size:11px;margin-top:7px}

        footer{background:#201e1c;color:#fff;padding:58px 0 23px}
        .footer-grid{display:grid;grid-template-columns:1.7fr 1fr 1fr 1fr;gap:35px}
        .footer-logo{font-family:"Playfair Display",serif;font-size:23px;font-weight:600;margin-bottom:12px}
        .footer-logo span{color:#b8c3b1}
        .footer-about{color:#9d9994;font-size:12px;max-width:310px}
        .socials{display:flex;gap:8px;margin-top:18px}
        .socials a{width:35px;height:35px;display:grid;place-items:center;border-radius:10px;background:#2b2926;color:#c8c3bd}
        footer h4{font-size:12px;margin-bottom:15px}
        footer ul{list-style:none}
        footer li{margin:9px 0}
        footer li a{color:#99948e;font-size:11px}
        footer li a:hover{color:#fff}
        .footer-bottom{
            border-top:1px solid #37332f;margin-top:38px;padding-top:18px;color:#76716b;
            font-size:10px;display:flex;justify-content:space-between
        }

        .toast{
            position:fixed;right:22px;bottom:22px;background:var(--ink);color:#fff;
            padding:13px 17px;border-radius:12px;box-shadow:0 15px 40px rgba(0,0,0,.2);
            transform:translateY(90px);opacity:0;transition:.3s;z-index:2000;font-size:12px
        }
        .toast.show{transform:translateY(0);opacity:1}

        @media(max-width:950px){
            .nav-links{display:none}.menu-btn{display:block}
            .hero-grid{grid-template-columns:1fr}.hero-visual{max-width:650px;margin:auto}
            .category-grid{grid-template-columns:repeat(3,1fr)}
            .product-grid{grid-template-columns:repeat(2,1fr)}
            .deal-grid{grid-template-columns:1fr}.deal-image{max-height:320px}
            .benefits{grid-template-columns:1fr}.newsletter{display:block}
            .newsletter-form{margin-top:20px}
        }
        @media(max-width:600px){
            .topbar{display:none}.navbar{min-height:66px}
            .hero{padding:52px 0}.hero h1{letter-spacing:-2px}
            .hero p{font-size:14px}.hero-image{height:315px}.floating-card{left:8px}
            .section{padding:55px 0}.section-title h2{font-size:29px}
            .category-grid{grid-template-columns:repeat(2,1fr)}
            .product-grid{grid-template-columns:1fr 1fr;gap:10px}
            .product-img img{height:175px}.product-body{padding:12px}
            .product h3{font-size:12px}.price{font-size:15px}
            .deal-content{padding:31px 23px}.deal h2{font-size:31px}
            .deal-image{min-height:230px}.newsletter{padding:30px 22px}
            .newsletter-form{display:block}.newsletter-form button{width:100%;margin-top:8px}
            .footer-grid{grid-template-columns:1fr 1fr}.footer-grid .brand-block{grid-column:1/-1}
            .footer-bottom{display:block}.footer-bottom span{display:block;margin-top:5px}
        }
    </style>
</head>

<body>
<div aria-hidden="true" style="position:fixed;z-index:-1;top:10%;right:-120px;width:300px;height:300px;border-radius:50%;background:rgba(232,179,155,.16);filter:blur(20px);"></div>

<div class="topbar">
    <div class="container topbar-inner">
        <span><i class="fa-solid fa-truck-fast"></i> Free delivery on orders over $50</span>
        <span>Secure payments · Easy returns · 24/7 support</span>
    </div>
</div>

<header>
    <div class="container navbar">
        <a href="#" class="logo">
            <span class="logo-icon"><i class="fa-solid fa-bag-shopping"></i></span>
            Nexus<em>Shop</em>
        </a>

        <nav class="nav-links">
            <a href="#home">Home</a>
            <a href="#categories">Categories</a>
            <a href="#products">Products</a>
            <a href="#deals">Deals</a>
            <a href="#contact">Contact</a>
        </nav>

        <div class="nav-actions">
            <button class="icon-btn" onclick="focusSearch()" aria-label="Search">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>
            <button class="icon-btn" onclick="showWishlist()" aria-label="Wishlist">
                <i class="fa-regular fa-heart"></i>
            </button>
            <button class="icon-btn" id="cartBtn" onclick="showCart()" aria-label="Cart">
                <i class="fa-solid fa-cart-shopping"></i>
                <span class="cart-badge" id="cartCount">0</span>
            </button>
            <button class="icon-btn menu-btn" onclick="toggleMenu()" aria-label="Menu">
                <i class="fa-solid fa-bars" id="menuIcon"></i>
            </button>
        </div>
    </div>

    <div id="mobileNav" style="display:none;background:#fff;border-top:1px solid var(--border);">
        <div class="container" style="padding:15px 0;">
            <a href="#home" onclick="closeMenu()" style="display:block;padding:9px 0;">Home</a>
            <a href="#categories" onclick="closeMenu()" style="display:block;padding:9px 0;">Categories</a>
            <a href="#products" onclick="closeMenu()" style="display:block;padding:9px 0;">Products</a>
            <a href="#deals" onclick="closeMenu()" style="display:block;padding:9px 0;">Deals</a>
            <a href="#contact" onclick="closeMenu()" style="display:block;padding:9px 0;">Contact</a>
        </div>
    </div>
</header>

<main id="home">

<section class="hero">
    <div class="container hero-grid">
        <div>
            <div class="eyebrow"><i class="fa-solid fa-sparkles"></i> New season collection</div>
            <h1>Shop smarter.<br><span>Live better.</span></h1>
            <p>
                Discover carefully selected tech, fashion and everyday essentials
                with a clean shopping experience designed around you.
            </p>

            <div class="hero-buttons">
                <a href="#products" class="btn btn-primary">Explore products <i class="fa-solid fa-arrow-right"></i></a>
                <a href="#deals" class="btn btn-light">Today's deals</a>
            </div>

            <div class="hero-note">
                <span><i class="fa-solid fa-circle-check"></i> Quality checked</span>
                <span><i class="fa-solid fa-circle-check"></i> Easy returns</span>
            </div>
        </div>

        <div class="hero-visual">
            <div class="hero-card">
                <img class="hero-image"
                     src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=900&q=85"
                     alt="Featured smartwatch">
            </div>
            <div class="floating-card">
                <div class="floating-icon"><i class="fa-solid fa-star"></i></div>
                <div>4.9/5 customer rating<br><small style="color:#8b8f9f;font-weight:500;">Loved by thousands of shoppers</small></div>
            </div>
        </div>
    </div>
</section>

<div class="search-area">
    <div class="container">
        <div class="search-box">
            <i class="fa-solid fa-magnifying-glass"></i>
            <input id="searchInput" type="search" placeholder="Search products, categories..." oninput="liveSearch()">
            <button onclick="liveSearch()">Search</button>
        </div>
    </div>
</div>

<section class="section" id="categories">
    <div class="container">
        <div class="section-head">
            <div class="section-title">
                <h2>Shop by category</h2>
                <p>Find what you need faster</p>
            </div>
        </div>
        <div class="category-grid" id="categoryGrid"></div>
    </div>
</section>

<section class="section" id="products" style="padding-top:10px;">
    <div class="container">
        <div class="section-head">
            <div class="section-title">
                <h2>Popular picks</h2>
                <p id="productSubtitle">Trending products customers love</p>
            </div>
            <button class="view-all" onclick="resetProducts()">View all</button>
        </div>
        <div class="product-grid" id="productGrid"></div>
    </div>
</section>

<section class="section" id="deals" style="padding-top:20px;">
    <div class="container">
        <div class="deal">
            <div class="deal-grid">
                <div class="deal-content">
                    <div class="deal-label">Limited-time offer</div>
                    <h2>Upgrade your everyday essentials.</h2>
                    <p>Save more on selected products before the timer runs out.</p>

                    <div class="timer">
                        <div class="time"><strong id="days">01</strong><small>Days</small></div>
                        <div class="time"><strong id="hours">08</strong><small>Hours</small></div>
                        <div class="time"><strong id="minutes">42</strong><small>Minutes</small></div>
                        <div class="time"><strong id="seconds">00</strong><small>Seconds</small></div>
                    </div>

                    <button class="btn btn-primary" onclick="addDeal()">Shop the deal <i class="fa-solid fa-arrow-right"></i></button>
                </div>

                <img class="deal-image"
                     src="https://images.unsplash.com/photo-1607082349566-187342175e2f?auto=format&fit=crop&w=900&q=85"
                     alt="Shopping collection">
            </div>
        </div>
    </div>
</section>

<section class="section" style="padding-top:20px;">
    <div class="container">
        <div class="section-head">
            <div class="section-title">
                <h2>Why shop with us?</h2>
                <p>A simple experience from discovery to delivery</p>
            </div>
        </div>

        <div class="benefits">
            <div class="benefit">
                <i class="fa-solid fa-truck-fast"></i>
                <div><h3>Fast delivery</h3><p>Reliable delivery with live order updates.</p></div>
            </div>
            <div class="benefit">
                <i class="fa-solid fa-shield-halved"></i>
                <div><h3>Secure checkout</h3><p>Your shopping experience stays protected.</p></div>
            </div>
            <div class="benefit">
                <i class="fa-solid fa-headset"></i>
                <div><h3>Helpful support</h3><p>We're here whenever you need assistance.</p></div>
            </div>
        </div>
    </div>
</section>

<section class="section" id="contact">
    <div class="container">
        <div class="newsletter">
            <div>
                <h2>Stay in the loop</h2>
                <p>Get new arrivals, useful updates and exclusive offers.</p>
            </div>

            <div style="min-width:min(100%,430px);">
                <form class="newsletter-form" onsubmit="subscribe(event)">
                    <input id="email" type="email" placeholder="Enter your email" required>
                    <button class="btn btn-primary" type="submit">Subscribe</button>
                </form>
                <div id="message"></div>
            </div>
        </div>
    </div>
</section>

</main>

<footer>
    <div class="container">
        <div class="footer-grid">
            <div class="brand-block">
                <div class="footer-logo">Nexus<span>Shop</span></div>
                <p class="footer-about">A modern e-commerce interface built for simple discovery, easy shopping and a better customer experience.</p>
                <div class="socials">
                    <a href="#" aria-label="Facebook"><i class="fa-brands fa-facebook-f"></i></a>
                    <a href="#" aria-label="Instagram"><i class="fa-brands fa-instagram"></i></a>
                    <a href="#" aria-label="X"><i class="fa-brands fa-x-twitter"></i></a>
                    <a href="#" aria-label="YouTube"><i class="fa-brands fa-youtube"></i></a>
                </div>
            </div>

            <div>
                <h4>Explore</h4>
                <ul>
                    <li><a href="#products">Products</a></li>
                    <li><a href="#categories">Categories</a></li>
                    <li><a href="#deals">Deals</a></li>
                </ul>
            </div>

            <div>
                <h4>Support</h4>
                <ul>
                    <li><a href="#">Help center</a></li>
                    <li><a href="#">Shipping</a></li>
                    <li><a href="#">Returns</a></li>
                </ul>
            </div>

            <div>
                <h4>Company</h4>
                <ul>
                    <li><a href="#">About us</a></li>
                    <li><a href="#">Privacy</a></li>
                    <li><a href="#">Terms</a></li>
                </ul>
            </div>
        </div>

        <div class="footer-bottom">
            <span>© <span id="year"></span> NexusShop. All rights reserved.</span>
            <span>Designed for a better shopping experience.</span>
        </div>
    </div>
</footer>

<div class="toast" id="toast"></div>

<script>
    const products = [
        {
            id:1, name:"iPhone 14 Pro Max", category:"Smartphones",
            price:1099, old:1199, rating:5, reviews:128, tag:"New",
            image:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"
        },
        {
            id:2, name:'MacBook Pro 14"', category:"Laptops",
            price:1999, old:null, rating:4, reviews:86, tag:"",
            image:"https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"
        },
        {
            id:3, name:"Apple Watch Series 8", category:"Accessories",
            price:349, old:399, rating:5, reviews:214, tag:"Sale",
            image:"https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85"
        },
        {
            id:4, name:"Nike Air Max", category:"Footwear",
            price:150, old:null, rating:4, reviews:53, tag:"",
            image:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
        },
        {
            id:5, name:"Sony Camera", category:"Gadgets",
            price:2499, old:null, rating:5, reviews:42, tag:"New",
            image:"https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85"
        },
        {
            id:6, name:"Premium Perfume", category:"Beauty",
            price:120, old:null, rating:5, reviews:189, tag:"",
            image:"https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85"
        },
        {
            id:7, name:"Travel Backpack", category:"Accessories",
            price:79, old:99, rating:4, reviews:67, tag:"Sale",
            image:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
        },
        {
            id:8, name:"Wireless Headphones", category:"Gadgets",
            price:399, old:null, rating:5, reviews:156, tag:"",
            image:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"
        }
    ];

    const categories = [
        ["Smartphones","fa-mobile-screen-button"],
        ["Laptops","fa-laptop"],
        ["Gadgets","fa-headphones"],
        ["Footwear","fa-shoe-prints"],
        ["Accessories","fa-watch"],
        ["Beauty","fa-wand-magic-sparkles"]
    ];

    let cart = 0;
    let wishlist = new Set();

    const categoryGrid = document.getElementById("categoryGrid");
    const productGrid = document.getElementById("productGrid");
    const searchInput = document.getElementById("searchInput");

    function renderCategories(){
        categoryGrid.innerHTML = categories.map(([name,icon]) => `
            <div class="category" onclick="filterCategory('${name}')">
                <div class="category-icon"><i class="fa-solid ${icon}"></i></div>
                <h3>${name}</h3>
                <small>Explore collection</small>
            </div>
        `).join("");
    }

    function stars(rating){
        return "★".repeat(rating) + "☆".repeat(5-rating);
    }

    function renderProducts(list){
        if(!list.length){
            productGrid.innerHTML = `
                <div style="grid-column:1/-1;text-align:center;padding:55px 20px;background:#fff;border:1px solid var(--border);border-radius:18px;">
                    <i class="fa-solid fa-box-open" style="font-size:35px;color:#aaa;margin-bottom:12px;"></i>
                    <h3>No products found</h3>
                    <p style="color:var(--muted);font-size:13px;margin:5px 0 15px;">Try another search term.</p>
                    <button class="btn btn-primary" onclick="resetProducts()">Show all products</button>
                </div>`;
            return;
        }

        productGrid.innerHTML = list.map(p => `
            <article class="product">
                <div class="product-img">
                    <img src="${p.image}" alt="${p.name}" loading="lazy">
                    ${p.tag ? `<span class="tag ${p.tag === "Sale" ? "sale" : ""}">${p.tag}</span>` : ""}
                    <button class="heart ${wishlist.has(p.id) ? "active" : ""}" onclick="toggleWish(${p.id})" aria-label="Wishlist">
                        <i class="${wishlist.has(p.id) ? "fa-solid" : "fa-regular"} fa-heart"></i>
                    </button>
                </div>

                <div class="product-body">
                    <div class="product-cat">${p.category}</div>
                    <h3>${p.name}</h3>
                    <div class="rating">${stars(p.rating)} <span>(${p.reviews})</span></div>
                    <div class="price-row">
                        <span class="price">$${p.price.toLocaleString()}</span>
                        ${p.old ? `<span class="old">$${p.old.toLocaleString()}</span>` : ""}
                    </div>
                    <button class="add-cart" onclick="addToCart(${p.id}, this)">
                        <i class="fa-solid fa-cart-plus"></i> Add to cart
                    </button>
                </div>
            </article>
        `).join("");
    }

    function addToCart(id, button){
        const product = products.find(p => p.id === id);
        if(!product) return;

        cart++;
        document.getElementById("cartCount").textContent = cart;

        const original = button.innerHTML;
        button.classList.add("added");
        button.innerHTML = '<i class="fa-solid fa-check"></i> Added';
        showToast(product.name + " added to cart");

        setTimeout(() => {
            button.classList.remove("added");
            button.innerHTML = original;
        }, 1200);
    }

    function addDeal(){
        cart++;
        document.getElementById("cartCount").textContent = cart;
        showToast("Deal added to your cart!");
    }

    function toggleWish(id){
        if(wishlist.has(id)){
            wishlist.delete(id);
            showToast("Removed from wishlist");
        }else{
            wishlist.add(id);
            showToast("Added to wishlist");
        }
        renderProducts(getFilteredProducts());
    }

    function showWishlist(){
        showToast("Wishlist: " + wishlist.size + " item" + (wishlist.size === 1 ? "" : "s"));
    }

    function showCart(){
        showToast("Your cart has " + cart + " item" + (cart === 1 ? "" : "s"));
    }

    function getFilteredProducts(){
        const q = searchInput.value.trim().toLowerCase();
        if(!q) return products;
        return products.filter(p =>
            p.name.toLowerCase().includes(q) ||
            p.category.toLowerCase().includes(q)
        );
    }

    function liveSearch(){
        const list = getFilteredProducts();
        renderProducts(list);
        document.getElementById("productSubtitle").textContent =
            searchInput.value.trim() ? list.length + " result(s) found" : "Trending products customers love";
    }

    function filterCategory(category){
        searchInput.value = category;
        liveSearch();
        document.getElementById("products").scrollIntoView({behavior:"smooth"});
    }

    function resetProducts(){
        searchInput.value = "";
        renderProducts(products);
        document.getElementById("productSubtitle").textContent = "Trending products customers love";
    }

    function focusSearch(){
        searchInput.focus();
        window.scrollTo({top:0,behavior:"smooth"});
    }

    function toggleMenu(){
        const nav = document.getElementById("mobileNav");
        const icon = document.getElementById("menuIcon");
        const open = nav.style.display === "block";
        nav.style.display = open ? "none" : "block";
        icon.className = open ? "fa-solid fa-bars" : "fa-solid fa-xmark";
    }

    function closeMenu(){
        document.getElementById("mobileNav").style.display = "none";
        document.getElementById("menuIcon").className = "fa-solid fa-bars";
    }

    function showToast(message){
        const toast = document.getElementById("toast");
        toast.textContent = message;
        toast.classList.add("show");
        clearTimeout(window.toastTimer);
        window.toastTimer = setTimeout(() => toast.classList.remove("show"), 2200);
    }

    function subscribe(event){
        event.preventDefault();
        const email = document.getElementById("email").value.trim();
        const message = document.getElementById("message");

        if(!email){
            message.textContent = "Please enter your email.";
            message.style.color = "#d63031";
            return;
        }

        message.textContent = "✓ Thanks for subscribing!";
        message.style.color = "#008f70";
        event.target.reset();
    }

    /* Deal countdown */
    let dealEnd = Date.now() + (1 * 24 * 60 * 60 * 1000) + (8 * 60 * 60 * 1000) + (42 * 60 * 1000);

    function updateTimer(){
        const diff = Math.max(0, dealEnd - Date.now());
        const totalSeconds = Math.floor(diff / 1000);

        const days = Math.floor(totalSeconds / 86400);
        const hours = Math.floor((totalSeconds % 86400) / 3600);
        const minutes = Math.floor((totalSeconds % 3600) / 60);
        const seconds = totalSeconds % 60;

        document.getElementById("days").textContent = String(days).padStart(2,"0");
        document.getElementById("hours").textContent = String(hours).padStart(2,"0");
        document.getElementById("minutes").textContent = String(minutes).padStart(2,"0");
        document.getElementById("seconds").textContent = String(seconds).padStart(2,"0");
    }

    renderCategories();
    renderProducts(products);
    updateTimer();
    setInterval(updateTimer,1000);

    document.getElementById("year").textContent = new Date().getFullYear();

    window.addEventListener("resize", () => {
        if(window.innerWidth > 950) closeMenu();
    });
</script>

</body>
</html>
