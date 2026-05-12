import os

output_dir = r"c:\Users\masab\OneDrive\Real Estate Transactions\Listing Photos"

cities = [
    # King County
    ("seattle", "Seattle", "King County"),
    ("bellevue", "Bellevue", "King County"),
    ("kirkland", "Kirkland", "King County"),
    ("redmond", "Redmond", "King County"),
    ("renton", "Renton", "King County"),
    ("kent", "Kent", "King County"),
    ("auburn", "Auburn", "King County"),
    ("federal-way", "Federal Way", "King County"),
    ("tukwila", "Tukwila", "King County"),
    ("issaquah", "Issaquah", "King County"),
    ("sammamish", "Sammamish", "King County"),
    ("burien", "Burien", "King County"),
    ("shoreline", "Shoreline", "King County"),
    ("seatac", "SeaTac", "King County"),
    ("maple-valley", "Maple Valley", "King County"),
    ("kenmore", "Kenmore", "King County"),
    ("bothell", "Bothell", "King County"),
    ("woodinville", "Woodinville", "King County"),
    # Pierce County
    ("tacoma", "Tacoma", "Pierce County"),
    ("puyallup", "Puyallup", "Pierce County"),
    ("lakewood", "Lakewood", "Pierce County"),
    ("gig-harbor", "Gig Harbor", "Pierce County"),
    ("bonney-lake", "Bonney Lake", "Pierce County"),
    ("university-place", "University Place", "Pierce County"),
    ("sumner", "Sumner", "Pierce County"),
    # Snohomish County
    ("everett", "Everett", "Snohomish County"),
    ("marysville", "Marysville", "Snohomish County"),
    ("lynnwood", "Lynnwood", "Snohomish County"),
    ("mukilteo", "Mukilteo", "Snohomish County"),
    ("edmonds", "Edmonds", "Snohomish County"),
    ("mill-creek", "Mill Creek", "Snohomish County"),
    ("snohomish", "Snohomish", "Snohomish County"),
    ("monroe", "Monroe", "Snohomish County"),
    # Thurston County
    ("olympia", "Olympia", "Thurston County"),
    ("lacey", "Lacey", "Thurston County"),
    ("tumwater", "Tumwater", "Thurston County"),
    ("yelm", "Yelm", "Thurston County"),
    # Kitsap County
    ("bremerton", "Bremerton", "Kitsap County"),
    ("silverdale", "Silverdale", "Kitsap County"),
    ("poulsbo", "Poulsbo", "Kitsap County"),
    ("port-orchard", "Port Orchard", "Kitsap County"),
    ("bainbridge-island", "Bainbridge Island", "Kitsap County"),
    # Skagit County
    ("mount-vernon", "Mount Vernon", "Skagit County"),
    ("burlington", "Burlington", "Skagit County"),
    ("anacortes", "Anacortes", "Skagit County"),
    ("sedro-woolley", "Sedro-Woolley", "Skagit County"),
    # Lewis County
    ("chehalis", "Chehalis", "Lewis County"),
    ("centralia", "Centralia", "Lewis County"),
]

template = '''<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home Inspector in {city}, WA | Sherlock Home Inspector</title>
<meta name="description" content="Professional home inspection services in {city}, Washington. Sherlock Home Inspector serves {city} and all of {county}. Same-week availability. Report in 24 hours.">
<link rel="canonical" href="https://www.sherlockhomeinspector.com/{slug}">
<link rel="stylesheet" href="style.css">
<script type="application/ld+json">
{{
  "@context": "https://schema.org",
  "@type": "LocalBusiness",
  "name": "Sherlock Home Inspector",
  "description": "Professional home inspection services in {city}, WA and throughout {county}.",
  "url": "https://www.sherlockhomeinspector.com/{slug}",
  "telephone": "+12532345065",
  "email": "info@sherlockhomeinspector.com",
  "areaServed": {{
    "@type": "City",
    "name": "{city}",
    "containedInPlace": {{
      "@type": "AdministrativeArea",
      "name": "{county}, Washington"
    }}
  }},
  "openingHours": ["Mo-Fr 08:00-18:00", "Sa 09:00-14:00"],
  "priceRange": "$$",
  "aggregateRating": {{
    "@type": "AggregateRating",
    "ratingValue": "5",
    "reviewCount": "47"
  }}
}}
</script>
<style>
  .city-hero {{ background: var(--navy); padding: 5rem 2rem 4rem; text-align: center; }}
  .city-hero .section-label {{ color: var(--gold); }}
  .city-hero h1 {{ font-family: "Playfair Display", serif; font-size: clamp(2rem, 5vw, 3rem); color: var(--white); margin: 0.5rem 0 1rem; }}
  .city-hero p {{ color: rgba(255,255,255,0.7); font-size: 16px; max-width: 560px; margin: 0 auto 2rem; line-height: 1.7; }}
  .city-hero .btn-primary {{ font-size: 16px; padding: 14px 36px; }}
  .city-features {{ padding: 5rem 2rem; background: var(--cream); }}
  .city-features-inner {{ max-width: 900px; margin: 0 auto; }}
  .city-feature-grid {{ display: grid; grid-template-columns: repeat(auto-fit, minmax(240px, 1fr)); gap: 1.5rem; margin-top: 2.5rem; }}
  .city-feature-card {{ background: var(--white); border: 1px solid var(--cream-dark); border-radius: 10px; padding: 1.5rem; }}
  .city-feature-icon {{ font-size: 2rem; margin-bottom: 0.75rem; }}
  .city-feature-card h3 {{ font-size: 15px; font-weight: 600; color: var(--navy); margin-bottom: 0.5rem; }}
  .city-feature-card p {{ font-size: 13px; color: var(--text-mid); line-height: 1.65; }}
  .city-services {{ padding: 5rem 2rem; background: var(--white); }}
  .city-services-inner {{ max-width: 900px; margin: 0 auto; text-align: center; }}
  .city-services-list {{ display: flex; flex-wrap: wrap; gap: 0.75rem; justify-content: center; margin-top: 2rem; }}
  .city-service-pill {{ background: var(--cream); border: 1px solid var(--cream-dark); border-radius: 100px; padding: 8px 20px; font-size: 14px; color: var(--navy); font-weight: 500; }}
  .city-cta {{ background: var(--navy); padding: 5rem 2rem; text-align: center; }}
  .city-cta .section-title {{ color: var(--white); }}
  .city-cta p {{ color: rgba(255,255,255,0.7); font-size: 15px; max-width: 500px; margin: 1rem auto 2rem; }}
</style>
</head>
<body>

<nav>
  <a href="index.html" class="nav-logo">
    <img src="logo.png" alt="Sherlock Home Inspector" class="nav-logo-img">
  </a>
  <ul class="nav-links">
    <li><a href="index.html">Home</a></li>
    <li><a href="services.html">Services</a></li>
    <li><a href="about.html">About</a></li>
    <li><a href="faq.html">FAQ</a></li>
    <li><a href="contact.html">Contact</a></li>
    <li><a href="contact.html" class="nav-cta">Open a Case</a></li>
  </ul>
  <button class="nav-hamburger" aria-label="Open menu" aria-expanded="false">
    <span></span><span></span><span></span>
  </button>
</nav>
<div class="nav-mobile-menu">
  <a href="index.html">Home</a>
  <a href="services.html">Services</a>
  <a href="about.html">About</a>
  <a href="faq.html">FAQ</a>
  <a href="contact.html">Contact</a>
  <a href="contact.html" class="mobile-menu-cta">Open a Case</a>
</div>

<div class="city-hero">
  <div class="section-label">Serving {city}, WA</div>
  <h1>Home Inspector in {city}</h1>
  <p>Professional, thorough home inspections in {city} and throughout {county}. Same-week availability. Full report delivered within 24 hours.</p>
  <a href="contact.html" class="btn-primary">Open a Case &rarr;</a>
</div>

<section class="city-features">
  <div class="city-features-inner">
    <div class="section-label">Why Sherlock</div>
    <div class="section-title">{city} homebuyers trust us</div>
    <div class="city-feature-grid">
      <div class="city-feature-card">
        <div class="city-feature-icon">&#128269;</div>
        <h3>Thorough & Detailed</h3>
        <p>We inspect every accessible system and component &mdash; roof to foundation &mdash; and document everything with photos.</p>
      </div>
      <div class="city-feature-card">
        <div class="city-feature-icon">&#128203;</div>
        <h3>Report in 24 Hours</h3>
        <p>Your full written report with photos and findings is delivered the same evening or within 24 hours of inspection.</p>
      </div>
      <div class="city-feature-card">
        <div class="city-feature-icon">&#11088;</div>
        <h3>5-Star Rated</h3>
        <p>Consistently rated 5 stars by {city} homebuyers and real estate agents across the greater Puget Sound.</p>
      </div>
      <div class="city-feature-card">
        <div class="city-feature-icon">&#128222;</div>
        <h3>Always Reachable</h3>
        <p>Questions after the report? We stay available. Your peace of mind doesn&apos;t end when the report lands in your inbox.</p>
      </div>
    </div>
  </div>
</section>

<section class="city-services">
  <div class="city-services-inner">
    <div class="section-label">What we inspect</div>
    <div class="section-title">Services available in {city}</div>
    <div class="city-services-list">
      <span class="city-service-pill">Full Home Inspection</span>
      <span class="city-service-pill">Major Components Inspection</span>
      <span class="city-service-pill">Sewer Scope</span>
      <span class="city-service-pill">Water Sampling</span>
      <span class="city-service-pill">Air Quality (Mold)</span>
      <span class="city-service-pill">Asbestos Testing</span>
      <span class="city-service-pill">Lead Testing</span>
      <span class="city-service-pill">Warranty Inspection</span>
    </div>
    <p style="margin-top:2rem;font-size:14px;color:var(--text-mid);">
      <a href="services.html" style="color:var(--gold);font-weight:500;">View full service details &rarr;</a>
    </p>
  </div>
</section>

<section class="city-cta">
  <div class="section-label" style="color:var(--gold-light);">Ready to get started?</div>
  <div class="section-title">Book your {city} inspection</div>
  <p>Reach out today and Victoria will confirm availability and get you on the calendar &mdash; usually within the same week.</p>
  <a href="contact.html" class="btn-primary" style="font-size:16px;padding:15px 36px;">Open a Case &rarr;</a>
</section>

<footer>
  <div class="footer-inner">
    <span class="footer-copy">&copy; 2025 Sherlock Home Inspector &middot; sherlockhomeinspector.com</span>
    <ul class="footer-links">
      <li><a href="index.html">Home</a></li>
      <li><a href="services.html">Services</a></li>
      <li><a href="about.html">About</a></li>
      <li><a href="faq.html">FAQ</a></li>
      <li><a href="contact.html">Contact</a></li>
    </ul>
  </div>
</footer>

<script src="script.js"></script>
</body>
</html>
'''

count = 0
for slug, city, county in cities:
    html = template.format(slug=slug, city=city, county=county)
    filepath = os.path.join(output_dir, slug + ".html")
    with open(filepath, "w", encoding="utf-8") as f:
        f.write(html)
    count += 1
    print(f"Created: {slug}.html")

print(f"\nDone! Generated {count} city pages.")
