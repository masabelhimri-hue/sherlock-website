$outputDir = 'c:\Users\masab\OneDrive\Real Estate Transactions\Listing Photos'

$cities = @(
  @{slug='seattle';city='Seattle';county='King County'},
  @{slug='bellevue';city='Bellevue';county='King County'},
  @{slug='kirkland';city='Kirkland';county='King County'},
  @{slug='redmond';city='Redmond';county='King County'},
  @{slug='renton';city='Renton';county='King County'},
  @{slug='kent';city='Kent';county='King County'},
  @{slug='auburn';city='Auburn';county='King County'},
  @{slug='federal-way';city='Federal Way';county='King County'},
  @{slug='tukwila';city='Tukwila';county='King County'},
  @{slug='issaquah';city='Issaquah';county='King County'},
  @{slug='sammamish';city='Sammamish';county='King County'},
  @{slug='burien';city='Burien';county='King County'},
  @{slug='shoreline';city='Shoreline';county='King County'},
  @{slug='seatac';city='SeaTac';county='King County'},
  @{slug='maple-valley';city='Maple Valley';county='King County'},
  @{slug='kenmore';city='Kenmore';county='King County'},
  @{slug='bothell';city='Bothell';county='King County'},
  @{slug='woodinville';city='Woodinville';county='King County'},
  @{slug='tacoma';city='Tacoma';county='Pierce County'},
  @{slug='puyallup';city='Puyallup';county='Pierce County'},
  @{slug='lakewood';city='Lakewood';county='Pierce County'},
  @{slug='gig-harbor';city='Gig Harbor';county='Pierce County'},
  @{slug='bonney-lake';city='Bonney Lake';county='Pierce County'},
  @{slug='university-place';city='University Place';county='Pierce County'},
  @{slug='sumner';city='Sumner';county='Pierce County'},
  @{slug='everett';city='Everett';county='Snohomish County'},
  @{slug='marysville';city='Marysville';county='Snohomish County'},
  @{slug='lynnwood';city='Lynnwood';county='Snohomish County'},
  @{slug='mukilteo';city='Mukilteo';county='Snohomish County'},
  @{slug='edmonds';city='Edmonds';county='Snohomish County'},
  @{slug='mill-creek';city='Mill Creek';county='Snohomish County'},
  @{slug='snohomish';city='Snohomish';county='Snohomish County'},
  @{slug='monroe';city='Monroe';county='Snohomish County'},
  @{slug='olympia';city='Olympia';county='Thurston County'},
  @{slug='lacey';city='Lacey';county='Thurston County'},
  @{slug='tumwater';city='Tumwater';county='Thurston County'},
  @{slug='yelm';city='Yelm';county='Thurston County'},
  @{slug='bremerton';city='Bremerton';county='Kitsap County'},
  @{slug='silverdale';city='Silverdale';county='Kitsap County'},
  @{slug='poulsbo';city='Poulsbo';county='Kitsap County'},
  @{slug='port-orchard';city='Port Orchard';county='Kitsap County'},
  @{slug='bainbridge-island';city='Bainbridge Island';county='Kitsap County'},
  @{slug='mount-vernon';city='Mount Vernon';county='Skagit County'},
  @{slug='burlington';city='Burlington';county='Skagit County'},
  @{slug='anacortes';city='Anacortes';county='Skagit County'},
  @{slug='sedro-woolley';city='Sedro-Woolley';county='Skagit County'},
  @{slug='chehalis';city='Chehalis';county='Lewis County'},
  @{slug='centralia';city='Centralia';county='Lewis County'}
)

$blurbs = @{}
$blurbs['seattle'] = "Seattle's housing stock ranges from century-old Craftsman bungalows in Capitol Hill and Fremont to mid-century ramblers in Rainier Valley and newer condos downtown. The wet climate accelerates roof wear, wood rot, and moisture intrusion in crawl spaces  -  making a thorough inspection especially important. We know what to look for in Seattle homes and make sure you do too before you close."
$blurbs['bellevue'] = "Bellevue's rapid growth has produced a mix of tear-down rebuilds, luxury new construction, and older ranch-style homes from the 1960s and 70s. Newer builds can still have construction defects, and older homes in areas like Factoria and Crossroads often have aging electrical panels and outdated plumbing. We inspect every system regardless of the home's age or price tag."
$blurbs['kirkland'] = "Kirkland's lakeside neighborhoods feature a wide mix of older waterfront cottages and newer high-end builds. Proximity to Lake Washington means moisture management is critical  -  we pay close attention to drainage, crawl space conditions, and any signs of water intrusion. Homes near the water deserve extra scrutiny, and that's exactly what we provide."
$blurbs['redmond'] = "Redmond is home to a mix of tech-era construction from the 1980s and 90s alongside newer developments pushing into the Sammamish Plateau. While many homes look well-maintained on the surface, aging HVAC systems, original windows, and deferred roof maintenance are common findings. We give every Redmond home the same careful eye regardless of curb appeal."
$blurbs['renton'] = "Renton spans a wide range of housing  -  older post-war homes near downtown to newer builds in the Highlands and Talbot Hill areas. The hilly terrain and proximity to the Cedar River means drainage and moisture issues come up frequently in inspections. Our inspectors are well-acquainted with Renton's housing stock and know where to look."
$blurbs['kent'] = "Kent has one of King County's most diverse housing markets, with older single-family homes sitting alongside newer construction in East Hill. Crawl space moisture, aging electrical, and older plumbing are among the most common findings in Kent inspections. We make sure you have the full picture before committing to any home here."
$blurbs['auburn'] = "Auburn's real estate market includes a large number of homes built in the 1960s through 1990s, many of which have original electrical panels, single-pane windows, and aging rooflines. The valley floor can also mean drainage challenges for some properties. We know Auburn's housing well and inspect with those local factors in mind."
$blurbs['federal-way'] = "Much of Federal Way's housing was built between the 1970s and 1990s, and many of those homes are now approaching the age where major systems need evaluation or replacement. Roof condition, furnace age, and crawl space moisture are among our most frequent findings here. A thorough inspection protects buyers from inheriting deferred maintenance."
$blurbs['tukwila'] = "Tukwila is a compact city with a mix of older residential neighborhoods and commercial corridors. Many homes date to the mid-20th century, and older electrical wiring, aging plumbing, and limited insulation are common inspection findings. Age does not mean a bad buy  -  but it does mean you need to know exactly what you're getting."
$blurbs['issaquah'] = "Issaquah blends a charming older downtown with newer hillside developments in areas like Issaquah Highlands. Hillside properties can present drainage and slope stability considerations, while older homes near downtown often have aging systems worth evaluating. Whether you're buying a brand-new build or a 1970s rambler, we give you a clear picture of the home's condition."
$blurbs['sammamish'] = "Sammamish is one of the fastest-growing cities in Washington, with a large portion of its housing stock built in the 1990s and 2000s. While newer homes often have fewer deferred maintenance issues, construction defects, roof wear, and HVAC aging are still real concerns. We inspect every system thoroughly so newer does not mean assumed-perfect."
$blurbs['burien'] = "Burien is known for its mid-century homes, many of which were built in the 1950s and 60s. These properties often have original electrical panels, galvanized plumbing, and roofs that have been patched over the years. Our inspectors are experienced with this era of construction and know what wear patterns to expect and document."
$blurbs['shoreline'] = "Shoreline is a densely populated suburb with a large concentration of post-war housing. Many homes here are well-maintained but approaching the age where key systems require attention or replacement. Electrical updates, roof condition, and crawl space health are among the most common topics in Shoreline inspections."
$blurbs['seatac'] = "SeaTac's housing market is largely made up of older single-family homes from the mid-20th century. These homes often have original systems that are well past their expected service life. We take a thorough, practical approach to every inspection here  -  helping buyers understand what's functional, what needs attention soon, and what can wait."
$blurbs['maple-valley'] = "Maple Valley has grown significantly over the past two decades, with many newer subdivisions built across forested hillsides. While newer construction is generally in better shape, drainage on sloped lots, early roof wear, and builder-grade systems are topics we frequently address here. We help buyers understand what came with the home and what may need attention down the road."
$blurbs['kenmore'] = "Kenmore sits along the north shore of Lake Washington and features a mix of older waterfront and near-water properties alongside newer inland development. Moisture management is always a key concern near the lake, and we pay close attention to crawl spaces, drainage systems, and any signs of recurring water intrusion in Kenmore homes."
$blurbs['bothell'] = "Bothell straddles King and Snohomish counties and has seen significant development in recent years. The city has a wide range of housing  -  older ramblers near downtown to newer construction in Canyon Park and North Creek. We inspect every home in Bothell with the same care, helping buyers understand exactly what condition they're buying into."
$blurbs['woodinville'] = "Woodinville is known for its wine country character and a mix of rural properties, acreages, and newer suburban developments. Properties with wells, septic systems, or outbuildings require additional attention during inspections. Our team is equipped to evaluate these features and give you a complete picture of any Woodinville property."
$blurbs['tacoma'] = "Tacoma is one of Pierce County's most active real estate markets, with a rich inventory of historic Craftsman bungalows, Victorian-era homes, and mid-century properties in neighborhoods like the North End, Proctor, and Stadium District. Older homes here often have original electrical panels, cast iron plumbing, and crawl spaces that deserve careful evaluation. We know Tacoma's housing stock well and inspect every home with the detail it deserves."
$blurbs['puyallup'] = "Puyallup's real estate market includes a mix of older valley-floor homes and newer construction spreading into the surrounding hillsides. The valley's agricultural roots mean some properties have older drainage infrastructure, and homes near natural features can show moisture-related wear over time. We inspect every system carefully so Puyallup buyers can move forward with confidence."
$blurbs['lakewood'] = "Lakewood has a large number of homes built during and after World War II, many developed to support the nearby military community at JBLM. These older homes frequently have aging electrical, original plumbing, and roofs that have seen multiple repair cycles. We give every Lakewood home a thorough evaluation and help buyers understand what the findings mean in practical terms."
$blurbs['gig-harbor'] = "Gig Harbor is one of the most desirable communities on the Kitsap Peninsula, with waterfront properties, custom homes, and a growing new construction market. Waterfront and near-water homes require particular attention to moisture, drainage, and exterior conditions. Whether you're buying a view property or a neighborhood home, we inspect with the same thoroughness every time."
$blurbs['bonney-lake'] = "Bonney Lake has expanded rapidly over the past two decades, with much of its housing stock built in the 1990s through 2010s. While newer homes are generally in better condition, we still frequently find issues with drainage on sloped lots, aging roofs, and builder-grade systems approaching the end of their service life. A thorough inspection ensures there are no surprises after closing."
$blurbs['university-place'] = "University Place is a well-established community with a mix of mid-century homes and newer developments, many with views toward the Puget Sound and Narrows Bridge. The area's older housing stock often presents findings related to original electrical, aging HVAC, and crawl space conditions. We approach every UP inspection with the care the community's homeowners expect."
$blurbs['sumner'] = "Sumner is a small city with deep roots and a mix of older downtown-area homes and newer suburban development on its edges. Many of Sumner's older properties have original systems that are functional but aging, and the valley location means drainage is always worth evaluating carefully. We give every Sumner home a complete, honest inspection."
$blurbs['everett'] = "Everett is Snohomish County's largest city and home to a wide range of housing  -  historic homes near the waterfront to post-war neighborhoods and newer construction in the south end. Homes near the water require close attention to moisture and exterior conditions, while the city's older neighborhoods often have aging systems worth documenting. We inspect every Everett home thoroughly and communicate our findings clearly."
$blurbs['marysville'] = "Marysville has grown significantly in recent decades and now features a large number of homes built in the 1990s through 2010s. Many buyers assume newer means trouble-free, but we regularly find issues with drainage, roof wear, and aging systems in homes of this era. A thorough inspection gives Marysville buyers the confidence to make informed decisions."
$blurbs['lynnwood'] = "Lynnwood is a dense suburb with a large concentration of mid-century and 1970s-era housing. These homes frequently have aging electrical panels, single-pane windows, and plumbing that warrants evaluation. With light rail expanding nearby, Lynnwood's real estate market is more competitive than ever  -  and a thorough inspection protects buyers in fast-moving markets."
$blurbs['mukilteo'] = "Mukilteo is a small waterfront city known for the ferry to Whidbey Island and a tight-knit community feel. Its housing mix includes older homes with views and newer inland developments. Waterside properties require careful attention to moisture, siding condition, and crawl spaces, and our inspectors bring that local awareness to every job in Mukilteo."
$blurbs['edmonds'] = "Edmonds is one of Snohomish County's most charming cities, with a walkable downtown, ferry access, and a strong mix of older character homes and newer construction. Waterfront and hillside properties here can present unique drainage and moisture considerations. Our inspectors know Edmonds well and bring that familiarity to every inspection."
$blurbs['mill-creek'] = "Mill Creek is a planned community developed largely in the 1980s and 90s, featuring well-maintained neighborhoods and a strong homeowner culture. While homes here are generally in good shape, systems built during that era are now reaching the age where evaluation matters  -  roofs, HVAC, and electrical panels especially. We help Mill Creek buyers understand exactly what they're buying."
$blurbs['snohomish'] = "The City of Snohomish has one of the best-preserved historic downtowns in Western Washington, and its housing reflects that history. Many properties here date to the early-to-mid 20th century, with original character and sometimes original systems intact. Older electrical, plumbing, and structural elements are common findings, and we document them thoroughly so buyers know exactly what they're stepping into."
$blurbs['monroe'] = "Monroe sits at the gateway to the Skykomish Valley and features a mix of older in-town homes, newer suburban developments, and rural properties. Homes on larger lots or with outbuildings often have additional inspection considerations, and the area's older housing stock warrants careful evaluation of key systems. We bring the same thoroughness to every Monroe inspection."
$blurbs['olympia'] = "Olympia is Washington's state capital and home to a rich mix of historic homes, mid-century neighborhoods, and newer development on its outskirts. Older homes in the west side neighborhoods often have original electrical, aging roofs, and crawl spaces that show the effects of the region's wet climate. We inspect every Olympia home with the care it deserves and help buyers understand findings in plain language."
$blurbs['lacey'] = "Lacey has grown rapidly over the past few decades and features a large number of homes built in the 1980s through 2000s. While this era of construction is generally more modern, aging roofs, HVAC systems, and drainage issues on flat lots are common findings. A thorough inspection gives Lacey buyers the full picture before they commit."
$blurbs['tumwater'] = "Tumwater is one of Washington's oldest cities and features a mix of historic homes near the Deschutes River and newer construction further out. Older properties in Tumwater often have aging systems and character-rich features that deserve careful documentation. We inspect every home thoroughly and help buyers understand the difference between cosmetic charm and real concerns."
$blurbs['yelm'] = "Yelm is a growing community on Thurston County's eastern edge, with a large number of homes on private well and septic systems. Well inspection and water quality testing are especially important here, and our team includes inspectors with specific well system expertise. If you're buying in Yelm, make sure your inspection covers the full picture  -  including what's underground."
$blurbs['bremerton'] = "Bremerton is Kitsap County's largest city and home to a Naval base that has shaped its housing history. Many properties here were built in the mid-20th century and have original systems that are aging but often still functional. Proximity to the Puget Sound also means moisture and exterior conditions are always worth a careful look. We inspect every Bremerton home with the detail buyers deserve."
$blurbs['silverdale'] = "Silverdale is Kitsap County's commercial hub and has seen steady residential growth over the past few decades. Its housing mix includes older neighborhoods near the waterfront and newer developments further inland. We regularly inspect homes throughout Silverdale and bring local knowledge to every job  -  helping buyers understand what's typical for the area and what stands out as a concern."
$blurbs['poulsbo'] = "Poulsbo's Scandinavian heritage and waterfront setting make it one of Kitsap's most distinctive communities. Its housing ranges from older cottages near Liberty Bay to newer custom builds on the surrounding hillsides. Waterfront proximity always warrants extra attention to moisture and exterior conditions, and our inspectors bring that awareness to every Poulsbo inspection."
$blurbs['port-orchard'] = "Port Orchard is Kitsap County's seat and features a mix of historic downtown properties and newer suburban development. Many older homes here have been through multiple owners and repair cycles, and we document current conditions carefully so buyers understand exactly what they're inheriting. We inspect every Port Orchard home with honesty and thoroughness."
$blurbs['bainbridge-island'] = "Bainbridge Island is one of the most sought-after communities in the Puget Sound region, with a strong ferry-commuter culture and a mix of older waterfront homes, custom builds, and newer construction. Properties on the island often include wells, septic systems, and outbuildings that require additional inspection consideration. We bring the attention to detail that Bainbridge Island properties demand."
$blurbs['mount-vernon'] = "Mount Vernon is Skagit County's largest city and features a mix of older downtown-area homes and newer developments on the valley edges. The agricultural valley setting means some properties have older drainage infrastructure, and homes near the Skagit River warrant careful evaluation for moisture and flood history. We inspect every Mount Vernon home thoroughly and communicate our findings clearly."
$blurbs['burlington'] = "Burlington is a fast-growing community with a mix of older in-town neighborhoods and newer residential development near I-5. Many buyers are drawn here for relative affordability, but older homes in Burlington often have aging systems that warrant careful evaluation. We make sure every Burlington buyer walks away knowing exactly what condition their home is in."
$blurbs['anacortes'] = "Anacortes is a gateway to the San Juan Islands and features a charming older downtown surrounded by waterfront and hillside neighborhoods. Saltwater proximity accelerates exterior wear on siding, roofing, and decks, making thorough inspection especially valuable here. Our inspectors know what coastal exposure does to homes over time and document those findings carefully."
$blurbs['sedro-woolley'] = "Sedro-Woolley is a small city with deep agricultural roots and a large inventory of older homes at accessible price points. Many properties here have original or minimally-updated systems, and buyers should go in with clear eyes about deferred maintenance. We give every Sedro-Woolley home a complete, honest inspection so there are no surprises after closing."
$blurbs['chehalis'] = "Chehalis is a small Lewis County city with a large stock of older homes that attract buyers looking for value and character. Many properties here have original systems  -  electrical, plumbing, and HVAC  -  that are aging but often still in serviceable condition. We inspect every Chehalis home thoroughly and help buyers understand what they're buying before they sign."
$blurbs['centralia'] = "Centralia is one of Lewis County's most historically rich cities, with a downtown full of century-old architecture and surrounding neighborhoods dating to the early and mid-20th century. Older homes here often have original or partially-updated systems, and the region's wet climate means crawl space and roof conditions deserve careful attention. We bring thorough, experienced inspection to every Centralia home."

$googleMapsUrl = 'https://www.google.com/maps/place/Sherlock+Home+Inspector+LLC/data=!4m2!3m1!1s0x0:0xd9a62551a5cbea01'
$googleSvg = '<svg width="13" height="13" viewBox="0 0 24 24" fill="none" aria-label="Google review"><path d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z" fill="#4285F4"/><path d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z" fill="#34A853"/><path d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l3.66-2.84z" fill="#FBBC05"/><path d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z" fill="#EA4335"/></svg>'
$googleSvgLg = '<svg width="32" height="32" viewBox="0 0 24 24" fill="none" aria-hidden="true"><path d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z" fill="#4285F4"/><path d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z" fill="#34A853"/><path d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l3.66-2.84z" fill="#FBBC05"/><path d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z" fill="#EA4335"/></svg>'
$googleSvgMd = '<svg width="16" height="16" viewBox="0 0 24 24" fill="none" aria-hidden="true"><path d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z" fill="#4285F4"/><path d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z" fill="#34A853"/><path d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l3.66-2.84z" fill="#FBBC05"/><path d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z" fill="#EA4335"/></svg>'

foreach ($c in $cities) {
  $slug = $c.slug
  $city = $c.city
  $county = $c.county
  $blurb = $blurbs[$slug]

$html = @"
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home Inspector in $city, WA | Sherlock Home Inspector</title>
<meta name="description" content="Thorough, honest home inspections in $city, WA. Sherlock Home Inspector serves $city and all of $county. Same-week availability, report in 24 hours.">
<link rel="canonical" href="https://www.sherlockhomeinspector.com/$slug">
<link rel="stylesheet" href="style.css">
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "LocalBusiness",
  "name": "Sherlock Home Inspector",
  "description": "Professional home inspection services in $city, WA and throughout $county.",
  "url": "https://www.sherlockhomeinspector.com/$slug",
  "telephone": "+12532345065",
  "email": "info@sherlockhomeinspector.com",
  "areaServed": {
    "@type": "City",
    "name": "$city",
    "containedInPlace": {
      "@type": "AdministrativeArea",
      "name": "$county, Washington"
    }
  },
  "openingHours": ["Mo-Fr 08:00-18:00", "Sa 09:00-14:00"],
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingValue": "5",
    "reviewCount": "47"
  }
}
</script>
<style>
  .hero {
    background: var(--navy);
    color: var(--white);
    padding: 5rem 2rem 0;
    overflow: hidden;
    position: relative;
  }
  .hero-pattern {
    position: absolute;
    inset: 0;
    background: radial-gradient(circle at 70% 50%, rgba(201,168,76,0.08) 0%, transparent 60%);
    pointer-events: none;
  }
  .hero-inner {
    max-width: 1100px;
    margin: 0 auto;
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 3rem;
    align-items: end;
  }
  .hero-badge {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    background: rgba(201,168,76,0.15);
    border: 1px solid rgba(201,168,76,0.4);
    color: var(--gold-light);
    font-size: 12px;
    font-weight: 500;
    letter-spacing: 0.12em;
    text-transform: uppercase;
    padding: 6px 14px;
    border-radius: 100px;
    margin-bottom: 1.5rem;
  }
  .hero-badge::before {
    content: '';
    display: block;
    width: 6px;
    height: 6px;
    background: var(--gold);
    border-radius: 50%;
  }
  .hero h1 {
    font-family: 'Playfair Display', serif;
    font-size: clamp(2.4rem, 4vw, 3.5rem);
    font-weight: 900;
    line-height: 1.12;
    color: var(--white);
    margin-bottom: 1.25rem;
  }
  .hero h1 em { font-style: normal; color: var(--gold); }
  .hero-sub {
    font-size: 16px;
    color: rgba(255,255,255,0.65);
    max-width: 440px;
    line-height: 1.75;
    margin-bottom: 2rem;
  }
  .hero-actions { display: flex; gap: 1rem; align-items: center; flex-wrap: wrap; }
  .btn-ghost {
    color: rgba(255,255,255,0.8);
    font-size: 14px;
    text-decoration: none;
    display: inline-flex;
    align-items: center;
    gap: 6px;
    border-bottom: 1px solid rgba(255,255,255,0.3);
    padding-bottom: 1px;
    transition: color 0.2s, border-color 0.2s;
  }
  .btn-ghost:hover { color: var(--gold-light); border-color: var(--gold); }
  .hero-visual {
    align-self: end;
    background: rgba(255,255,255,0.06);
    border: 1px solid rgba(255,255,255,0.12);
    border-bottom: none;
    border-radius: 12px 12px 0 0;
    padding: 2rem 1.75rem 0;
    min-height: 320px;
  }
  .hero-card { background: var(--cream); border-radius: 8px 8px 0 0; padding: 1.25rem; }
  .hero-card-header {
    display: flex;
    align-items: center;
    gap: 10px;
    margin-bottom: 1rem;
    padding-bottom: 1rem;
    border-bottom: 1px solid var(--cream-dark);
  }
  .hero-card-icon {
    width: 40px; height: 40px;
    background: var(--navy);
    border-radius: 8px;
    display: flex; align-items: center; justify-content: center;
    font-size: 20px; flex-shrink: 0;
  }
  .hero-card-title { font-family: 'Playfair Display', serif; font-size: 15px; font-weight: 700; color: var(--text-dark); }
  .hero-card-sub { font-size: 12px; color: var(--text-light); }
  .checklist { list-style: none; display: flex; flex-direction: column; gap: 8px; }
  .checklist li { display: flex; align-items: center; gap: 10px; font-size: 13px; color: var(--text-mid); }
  .check {
    width: 18px; height: 18px;
    background: var(--navy);
    border-radius: 50%;
    display: flex; align-items: center; justify-content: center;
    flex-shrink: 0; color: var(--gold); font-size: 10px; font-weight: 700;
  }
  .stats { background: var(--white); padding: 3rem 2rem; border-bottom: 1px solid var(--cream-dark); }
  .stats-inner {
    max-width: 1100px; margin: 0 auto;
    display: grid; grid-template-columns: repeat(4, 1fr);
    gap: 1px; background: var(--cream-dark);
    border: 1px solid var(--cream-dark); border-radius: 10px; overflow: hidden;
  }
  .stat { background: var(--white); padding: 2rem 1.5rem; text-align: center; }
  .stat-num { font-family: 'Playfair Display', serif; font-size: 2.5rem; font-weight: 700; color: var(--navy); line-height: 1; margin-bottom: 0.4rem; }
  .stat-num span { color: var(--gold); }
  .stat-label { font-size: 13px; color: var(--text-light); }
  .services { padding: 5rem 2rem; background: var(--cream); }
  .services-inner { max-width: 1100px; margin: 0 auto; }
  .services-grid { display: grid; grid-template-columns: repeat(4, 1fr); gap: 1.25rem; }
  .service-card {
    background: var(--white); border: 1px solid var(--cream-dark);
    border-radius: 10px; padding: 1.75rem;
    transition: border-color 0.2s, transform 0.2s;
  }
  .service-card:hover { border-color: var(--gold); transform: translateY(-3px); }
  .service-icon { font-size: 28px; margin-bottom: 1rem; display: block; }
  .service-name { font-family: 'Playfair Display', serif; font-size: 17px; font-weight: 700; color: var(--navy); margin-bottom: 0.5rem; }
  .service-desc { font-size: 14px; color: var(--text-mid); line-height: 1.65; }
  .why { background: var(--navy); color: var(--white); padding: 5rem 2rem; }
  .why-inner { max-width: 1100px; margin: 0 auto; display: grid; grid-template-columns: 1fr 1fr; gap: 4rem; align-items: center; }
  .why .section-title { color: var(--white); }
  .why .section-sub { color: rgba(255,255,255,0.6); }
  .why-features { display: flex; flex-direction: column; gap: 1.5rem; }
  .why-feature { display: flex; gap: 1rem; align-items: flex-start; }
  .why-feature-dot {
    width: 36px; height: 36px; border-radius: 50%;
    background: rgba(201,168,76,0.15); border: 1px solid rgba(201,168,76,0.4);
    display: flex; align-items: center; justify-content: center;
    flex-shrink: 0; font-size: 16px; margin-top: 2px;
  }
  .why-feature-text h4 { font-weight: 500; font-size: 15px; color: var(--white); margin-bottom: 4px; }
  .why-feature-text p { font-size: 13px; color: rgba(255,255,255,0.55); line-height: 1.6; }
  .testimonials { padding: 5rem 2rem; background: var(--cream); }
  .testimonials-inner { max-width: 1100px; margin: 0 auto; }
  .testimonials-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 1.25rem; margin-top: 3rem; }
  .testimonial-card { background: var(--white); border: 1px solid var(--cream-dark); border-radius: 10px; padding: 1.75rem; }
  .stars { color: var(--gold); font-size: 14px; margin-bottom: 0.75rem; letter-spacing: 2px; }
  .testimonial-text { font-size: 14px; color: var(--text-mid); line-height: 1.7; margin-bottom: 1.25rem; font-style: italic; }
  .testimonial-author { display: flex; align-items: center; gap: 10px; }
  .author-avatar {
    width: 36px; height: 36px; border-radius: 50%; background: var(--navy);
    display: flex; align-items: center; justify-content: center;
    font-size: 13px; font-weight: 500; color: var(--gold); flex-shrink: 0;
  }
  .author-name { font-size: 13px; font-weight: 500; color: var(--text-dark); }
  .author-loc { font-size: 12px; color: var(--text-light); }
  @media (max-width: 768px) {
    .hero-inner { grid-template-columns: 1fr; }
    .hero-visual { display: none; }
    .stats-inner { grid-template-columns: repeat(2, 1fr); }
    .services-grid { grid-template-columns: 1fr 1fr; }
    .why-inner { grid-template-columns: 1fr; gap: 2rem; }
    .testimonials-grid { grid-template-columns: 1fr; }
  }
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

<section class="hero">
  <div class="hero-pattern"></div>
  <div class="hero-inner">
    <div class="hero-content">
      <div class="hero-badge">Serving $city, WA</div>
      <h1>Home Inspector<br>in <em>$city.</em></h1>
      <p class="hero-sub">Thorough, honest home inspections in $city and throughout $county. We examine every major system so you can make confident decisions.</p>
      <div class="hero-actions">
        <a href="contact.html" class="btn-primary">Open a Case</a>
        <a href="services.html" class="btn-ghost">Learn what we inspect &rarr;</a>
      </div>
    </div>
    <div class="hero-visual">
      <div class="hero-card">
        <div class="hero-card-header">
          <div class="hero-card-icon">&#127968;</div>
          <div>
            <div class="hero-card-title">Sample Inspection Report</div>
            <div class="hero-card-sub">Delivered within 24 hours</div>
          </div>
        </div>
        <ul class="checklist">
          <li><span class="check">&#10003;</span> Roof &amp; Attic</li>
          <li><span class="check">&#10003;</span> Foundation &amp; Structure</li>
          <li><span class="check">&#10003;</span> Electrical Systems</li>
          <li><span class="check">&#10003;</span> Plumbing</li>
          <li><span class="check">&#10003;</span> HVAC Components</li>
          <li><span class="check">&#10003;</span> Crawl Space</li>
        </ul>
      </div>
    </div>
  </div>
</section>

<div class="area-strip">
  <p>Proudly serving <strong>King &middot; Pierce &middot; Snohomish &middot; Skagit &middot; Thurston &middot; Lewis &middot; Kitsap</strong> Counties</p>
</div>

<section class="stats">
  <div class="stats-inner">
    <div class="stat"><div class="stat-num">1,500<span>+</span></div><div class="stat-label">Inspections Completed</div></div>
    <div class="stat"><div class="stat-num">7</div><div class="stat-label">Counties Served</div></div>
    <div class="stat"><div class="stat-num">24<span>hr</span></div><div class="stat-label">Report Turnaround</div></div>
    <div class="stat"><a href="$googleMapsUrl" target="_blank" rel="noopener" style="text-decoration:none;display:block;"><div class="stat-num">5<span>&#9733;</span></div><div class="stat-label">Google Rating</div></a></div>
  </div>
</section>

<section style="padding:4rem 2rem;background:var(--white);border-bottom:1px solid var(--cream-dark);">
  <div style="max-width:900px;margin:0 auto;display:grid;grid-template-columns:1fr 2fr;gap:3rem;align-items:center;">
    <div>
      <div style="font-size:11px;font-weight:500;letter-spacing:0.15em;text-transform:uppercase;color:var(--gold);margin-bottom:0.5rem;">Local Knowledge</div>
      <div style="font-family:'Playfair Display',serif;font-size:1.5rem;font-weight:700;color:var(--navy);line-height:1.3;">Inspecting $city homes every week</div>
    </div>
    <p style="font-size:15px;color:var(--text-mid);line-height:1.8;margin:0;">$blurb</p>
  </div>
</section>

<section class="services">
  <div class="services-inner">
    <div class="section-label">What we offer</div>
    <div class="section-title">Every Service You Need,<br>Under One Roof</div>
    <p class="section-sub">From full home inspections to specialized environmental testing &mdash; we handle it all so you can buy with confidence.</p>
    <div class="services-grid">
      <div class="service-card">
        <span class="service-icon">&#127968;</span>
        <div class="service-name">Full Home Inspection</div>
        <p class="service-desc">A complete examination of every major system &mdash; roof to foundation, attic to crawl space. Our most thorough offering.</p>
      </div>
      <div class="service-card">
        <span class="service-icon">&#128297;</span>
        <div class="service-name">Major Components Inspection</div>
        <p class="service-desc">Focused assessment of the home's key systems &mdash; structure, electrical, plumbing, and HVAC &mdash; for a targeted, efficient review.</p>
      </div>
      <div class="service-card">
        <span class="service-icon">&#128701;</span>
        <div class="service-name">Sewer Scope</div>
        <p class="service-desc">Camera inspection of the main sewer line to identify blockages, root intrusion, cracks, and other costly hidden issues.</p>
      </div>
      <div class="service-card">
        <span class="service-icon">&#129507;</span>
        <div class="service-name">Well Inspection</div>
        <p class="service-desc">Complete evaluation of private well systems including water flow, pressure, and condition &mdash; essential for any home on well water.</p>
      </div>
      <div class="service-card">
        <span class="service-icon">&#128167;</span>
        <div class="service-name">Water Sampling</div>
        <p class="service-desc">Lab-tested water samples to detect contaminants, bacteria, heavy metals, and other quality concerns in your water supply.</p>
      </div>
      <div class="service-card">
        <span class="service-icon">&#127782;&#65039;</span>
        <div class="service-name">Air Quality (Mold)</div>
        <p class="service-desc">Air and surface sampling to detect mold spores and assess indoor air quality &mdash; especially important in the Pacific Northwest climate.</p>
      </div>
      <div class="service-card">
        <span class="service-icon">&#128300;</span>
        <div class="service-name">Asbestos Testing</div>
        <p class="service-desc">Material sampling and lab analysis to identify asbestos in older homes before renovation or purchase &mdash; critical for pre-1980s properties.</p>
      </div>
      <div class="service-card">
        <span class="service-icon">&#127912;</span>
        <div class="service-name">Lead Testing</div>
        <p class="service-desc">Paint and surface testing for lead hazards, particularly in homes built before 1978. Safe, fast, and lab-verified results.</p>
      </div>
    </div>
  </div>
</section>

<section class="why">
  <div class="why-inner">
    <div>
      <div class="section-label">Why Sherlock</div>
      <div class="section-title">We don't just find problems. We explain them.</div>
      <p class="section-sub">Buying a home is one of the biggest investments of your life. We make sure you walk away with clarity, not just a report.</p>
      <a href="about.html" class="btn-outline-light">Meet the team &rarr;</a>
    </div>
    <div class="why-features">
      <div class="why-feature"><div class="why-feature-dot">&#128269;</div><div class="why-feature-text"><h4>Advanced inspection tools</h4><p>We use professional-grade equipment to find what the naked eye can't see.</p></div></div>
      <div class="why-feature"><div class="why-feature-dot">&#128222;</div><div class="why-feature-text"><h4>We stay available after</h4><p>Have questions after your report? We're here. Your peace of mind doesn't expire at delivery.</p></div></div>
      <div class="why-feature"><div class="why-feature-dot">&#129309;</div><div class="why-feature-text"><h4>Honest, not alarming</h4><p>We give you accurate information &mdash; not a scare tactic to justify the invoice.</p></div></div>
      <div class="why-feature"><div class="why-feature-dot">&#9889;</div><div class="why-feature-text"><h4>Fast report turnaround</h4><p>Your full, detailed report arrives within 24 hours so you can move fast in a competitive market.</p></div></div>
    </div>
  </div>
</section>

<section class="testimonials">
  <div class="testimonials-inner">
    <div class="section-label">What clients say</div>
    <div class="section-title" style="display:flex;align-items:center;justify-content:space-between;flex-wrap:wrap;gap:1rem;">
      <span>5 Stars on Google</span>
      <a href="$googleMapsUrl" target="_blank" rel="noopener" class="google-all-reviews-link">
        $googleSvgMd
        See all reviews
      </a>
    </div>
    <div class="testimonials-grid">
      <div class="testimonial-card">
        <div class="testimonial-card-top">
          <div class="stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
          <div class="google-source">$googleSvg Google Review</div>
        </div>
        <p class="testimonial-text">"Used them for the inspection of my home in northeast Tacoma, very thorough, great at explaining things and overall a great experience. Highly recommend them for anyone who wants a honest, swift, and educational experience!!!"</p>
        <div class="testimonial-author"><div class="author-avatar">DE</div><div><div class="author-name">Danny E.</div><div class="author-loc">Tacoma, WA</div></div></div>
      </div>
      <div class="testimonial-card">
        <div class="testimonial-card-top">
          <div class="stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
          <div class="google-source">$googleSvg Google Review</div>
        </div>
        <p class="testimonial-text">"We recently used Sherlock home inspector and couldn't be happier. Masab was professional, friendly, thorough, and took the time to explain everything in clear, simple terms. The report was detailed, easy to understand, and delivered promptly. Highly recommend to anyone looking for a reliable and trustworthy inspection service!"</p>
        <div class="testimonial-author"><div class="author-avatar">MP</div><div><div class="author-name">Mparallel</div><div class="author-loc">Pierce County, WA</div></div></div>
      </div>
      <div class="testimonial-card">
        <div class="testimonial-card-top">
          <div class="stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
          <div class="google-source">$googleSvg Google Review</div>
        </div>
        <p class="testimonial-text">"I had a roof leak at my house &mdash; he came out with his meter and was able to pinpoint where the leak was and gave me advice on how to proceed with my roof. 100 percent recommend him. He is very knowledgeable and super helpful. Thank you!!"</p>
        <div class="testimonial-author"><div class="author-avatar">W</div><div><div class="author-name">Wendy</div><div class="author-loc">Renton, WA</div></div></div>
      </div>
    </div>
  </div>
</section>

<div class="google-reviews-banner">
  <div class="google-reviews-banner-inner">
    <div class="google-reviews-left">
      $googleSvgLg
      <div>
        <div class="google-reviews-rating">
          <span class="google-reviews-score">5.0</span>
          <span class="google-reviews-stars">&#9733;&#9733;&#9733;&#9733;&#9733;</span>
        </div>
        <div class="google-reviews-sub">Rated 5 stars on Google</div>
      </div>
    </div>
    <div class="google-reviews-divider"></div>
    <p class="google-reviews-quote">"Thorough, professional, and communicative from start to finish. Best inspection company in the area."</p>
    <a href="$googleMapsUrl" target="_blank" rel="noopener" class="google-reviews-cta">
      Read our Google reviews &rarr;
    </a>
  </div>
</div>

<section class="cta-section">
  <div class="section-label" style="color:var(--gold-light);">Ready to investigate?</div>
  <div class="section-title" style="color:var(--white);">Book your $city inspection today</div>
  <p>Fast scheduling, same-week availability, and a report you'll actually understand.</p>
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
"@

  $filepath = Join-Path $outputDir ($slug + '.html')
  [System.IO.File]::WriteAllText($filepath, $html, [System.Text.Encoding]::UTF8)
  Write-Host "Created: $slug.html"
}

Write-Host "Done! Generated $($cities.Count) city pages."
