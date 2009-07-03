#!/usr/bin/ruby

require 'test/unit'
require File.dirname(__FILE__)+'/../lib/libcraigscrape'
require File.dirname(__FILE__)+'/libcraigscrape_test_helpers'

class CraigslistGeolistingTest < Test::Unit::TestCase
  include LibcraigscrapeTestHelpers
  
  def test_pukes
    assert_raise(CraigScrape::Scraper::ParseError) do
      CraigScrape::GeoListings.new( relative_uri_for('google.html') ).sites
    end
  end
  
  def test_geo_listings
    geo_listing_us070209 = CraigScrape::GeoListings.new relative_uri_for(
      'geolisting_samples/geo_listing_us070209.html'
    )
    assert_equal 'united states', geo_listing_us070209.location
    assert_equal 326, geo_listing_us070209.sites.length
    assert_equal "http://sfbay.craigslist.org/", geo_listing_us070209.sites["SF bay area"]
    assert_equal "http://abilene.craigslist.org/", geo_listing_us070209.sites["abilene"]
    assert_equal "http://akroncanton.craigslist.org/", geo_listing_us070209.sites["akron / canton"]
    assert_equal "http://anchorage.craigslist.org/", geo_listing_us070209.sites["alaska"]
    assert_equal "http://albany.craigslist.org/", geo_listing_us070209.sites["albany"]
    assert_equal "http://albuquerque.craigslist.org/", geo_listing_us070209.sites["albuquerque"]
    assert_equal "http://altoona.craigslist.org/", geo_listing_us070209.sites["altoona-johnstown"]
    assert_equal "http://amarillo.craigslist.org/", geo_listing_us070209.sites["amarillo"]
    assert_equal "http://ames.craigslist.org/", geo_listing_us070209.sites["ames, IA"]
    assert_equal "http://annarbor.craigslist.org/", geo_listing_us070209.sites["ann arbor"]
    assert_equal "http://annapolis.craigslist.org/", geo_listing_us070209.sites["annapolis"]
    assert_equal "http://appleton.craigslist.org/", geo_listing_us070209.sites["appleton-oshkosh-FDL"]
    assert_equal "http://asheville.craigslist.org/", geo_listing_us070209.sites["asheville"]
    assert_equal "http://athensga.craigslist.org/", geo_listing_us070209.sites["athens, GA"]
    assert_equal "http://athensohio.craigslist.org/", geo_listing_us070209.sites["athens, OH"]
    assert_equal "http://atlanta.craigslist.org/", geo_listing_us070209.sites["atlanta"]
    assert_equal "http://auburn.craigslist.org/", geo_listing_us070209.sites["auburn"]
    assert_equal "http://augusta.craigslist.org/", geo_listing_us070209.sites["augusta"]
    assert_equal "http://austin.craigslist.org/", geo_listing_us070209.sites["austin"]
    assert_equal "http://bakersfield.craigslist.org/", geo_listing_us070209.sites["bakersfield"]
    assert_equal "http://baltimore.craigslist.org/", geo_listing_us070209.sites["baltimore"]
    assert_equal "http://batonrouge.craigslist.org/", geo_listing_us070209.sites["baton rouge"]
    assert_equal "http://beaumont.craigslist.org/", geo_listing_us070209.sites["beaumont / port arthur"]
    assert_equal "http://bellingham.craigslist.org/", geo_listing_us070209.sites["bellingham"]
    assert_equal "http://bend.craigslist.org/", geo_listing_us070209.sites["bend"]
    assert_equal "http://binghamton.craigslist.org/", geo_listing_us070209.sites["binghamton"]
    assert_equal "http://bham.craigslist.org/", geo_listing_us070209.sites["birmingham, AL"]
    assert_equal "http://blacksburg.craigslist.org/", geo_listing_us070209.sites["blacksburg"]
    assert_equal "http://bloomington.craigslist.org/", geo_listing_us070209.sites["bloomington"]
    assert_equal "http://bn.craigslist.org/", geo_listing_us070209.sites["bloomington-normal"]
    assert_equal "http://boise.craigslist.org/", geo_listing_us070209.sites["boise"]
    assert_equal "http://boone.craigslist.org/", geo_listing_us070209.sites["boone"]
    assert_equal "http://boston.craigslist.org/", geo_listing_us070209.sites["boston"]
    assert_equal "http://boulder.craigslist.org/", geo_listing_us070209.sites["boulder"]
    assert_equal "http://bgky.craigslist.org/", geo_listing_us070209.sites["bowling green"]
    assert_equal "http://brownsville.craigslist.org/", geo_listing_us070209.sites["brownsville"]
    assert_equal "http://brunswick.craigslist.org/", geo_listing_us070209.sites["brunswick, GA"]
    assert_equal "http://buffalo.craigslist.org/", geo_listing_us070209.sites["buffalo"]
    assert_equal "http://capecod.craigslist.org/", geo_listing_us070209.sites["cape cod / islands"]
    assert_equal "http://carbondale.craigslist.org/", geo_listing_us070209.sites["carbondale"]
    assert_equal "http://catskills.craigslist.org/", geo_listing_us070209.sites["catskills"]
    assert_equal "http://cedarrapids.craigslist.org/", geo_listing_us070209.sites["cedar rapids"]
    assert_equal "http://cnj.craigslist.org/", geo_listing_us070209.sites["central NJ"]
    assert_equal "http://centralmich.craigslist.org/", geo_listing_us070209.sites["central michigan"]
    assert_equal "http://chambana.craigslist.org/", geo_listing_us070209.sites["champaign urbana"]
    assert_equal "http://charleston.craigslist.org/", geo_listing_us070209.sites["charleston, SC"]
    assert_equal "http://charlestonwv.craigslist.org/", geo_listing_us070209.sites["charleston, WV"]
    assert_equal "http://charlotte.craigslist.org/", geo_listing_us070209.sites["charlotte"]
    assert_equal "http://charlottesville.craigslist.org/", geo_listing_us070209.sites["charlottesville"]
    assert_equal "http://chattanooga.craigslist.org/", geo_listing_us070209.sites["chattanooga"]
    assert_equal "http://chautauqua.craigslist.org/", geo_listing_us070209.sites["chautauqua"]
    assert_equal "http://chicago.craigslist.org/", geo_listing_us070209.sites["chicago"]
    assert_equal "http://chico.craigslist.org/", geo_listing_us070209.sites["chico"]
    assert_equal "http://cincinnati.craigslist.org/", geo_listing_us070209.sites["cincinnati, OH"]
    assert_equal "http://clarksville.craigslist.org/", geo_listing_us070209.sites["clarksville, TN"]
    assert_equal "http://cleveland.craigslist.org/", geo_listing_us070209.sites["cleveland"]
    assert_equal "http://collegestation.craigslist.org/", geo_listing_us070209.sites["college station"]
    assert_equal "http://cosprings.craigslist.org/", geo_listing_us070209.sites["colorado springs"]
    assert_equal "http://columbiamo.craigslist.org/", geo_listing_us070209.sites["columbia / jeff city"]
    assert_equal "http://columbia.craigslist.org/", geo_listing_us070209.sites["columbia, SC"]
    assert_equal "http://columbus.craigslist.org/", geo_listing_us070209.sites["columbus"]
    assert_equal "http://columbusga.craigslist.org/", geo_listing_us070209.sites["columbus, GA"]
    assert_equal "http://corpuschristi.craigslist.org/", geo_listing_us070209.sites["corpus christi"]
    assert_equal "http://corvallis.craigslist.org/", geo_listing_us070209.sites["corvallis/albany"]
    assert_equal "http://dallas.craigslist.org/", geo_listing_us070209.sites["dallas / fort worth"]
    assert_equal "http://danville.craigslist.org/", geo_listing_us070209.sites["danville"]
    assert_equal "http://dayton.craigslist.org/", geo_listing_us070209.sites["dayton / springfield"]
    assert_equal "http://daytona.craigslist.org/", geo_listing_us070209.sites["daytona beach"]
    assert_equal "http://decatur.craigslist.org/", geo_listing_us070209.sites["decatur, IL"]
    assert_equal "http://delaware.craigslist.org/", geo_listing_us070209.sites["delaware"]
    assert_equal "http://denver.craigslist.org/", geo_listing_us070209.sites["denver"]
    assert_equal "http://desmoines.craigslist.org/", geo_listing_us070209.sites["des moines"]
    assert_equal "http://detroit.craigslist.org/", geo_listing_us070209.sites["detroit metro"]
    assert_equal "http://dothan.craigslist.org/", geo_listing_us070209.sites["dothan, AL"]
    assert_equal "http://dubuque.craigslist.org/", geo_listing_us070209.sites["dubuque"]
    assert_equal "http://duluth.craigslist.org/", geo_listing_us070209.sites["duluth / superior"]
    assert_equal "http://eastidaho.craigslist.org/", geo_listing_us070209.sites["east idaho"]
    assert_equal "http://eastoregon.craigslist.org/", geo_listing_us070209.sites["east oregon"]
    assert_equal "http://newlondon.craigslist.org/", geo_listing_us070209.sites["eastern CT"]
    assert_equal "http://eastnc.craigslist.org/", geo_listing_us070209.sites["eastern NC"]
    assert_equal "http://easternshore.craigslist.org/", geo_listing_us070209.sites["eastern shore"]
    assert_equal "http://eauclaire.craigslist.org/", geo_listing_us070209.sites["eau claire"]
    assert_equal "http://elpaso.craigslist.org/", geo_listing_us070209.sites["el paso"]
    assert_equal "http://elmira.craigslist.org/", geo_listing_us070209.sites["elmira-corning"]
    assert_equal "http://erie.craigslist.org/", geo_listing_us070209.sites["erie, PA"]
    assert_equal "http://eugene.craigslist.org/", geo_listing_us070209.sites["eugene"]
    assert_equal "http://evansville.craigslist.org/", geo_listing_us070209.sites["evansville"]
    assert_equal "http://fargo.craigslist.org/", geo_listing_us070209.sites["fargo / moorhead"]
    assert_equal "http://farmington.craigslist.org/", geo_listing_us070209.sites["farmington, NM"]
    assert_equal "http://fayetteville.craigslist.org/", geo_listing_us070209.sites["fayetteville"]
    assert_equal "http://fayar.craigslist.org/", geo_listing_us070209.sites["fayetteville, AR"]
    assert_equal "http://flagstaff.craigslist.org/", geo_listing_us070209.sites["flagstaff / sedona"]
    assert_equal "http://flint.craigslist.org/", geo_listing_us070209.sites["flint"]
    assert_equal "http://shoals.craigslist.org/", geo_listing_us070209.sites["florence / muscle shoals"]
    assert_equal "http://florencesc.craigslist.org/", geo_listing_us070209.sites["florence, SC"]
    assert_equal "http://keys.craigslist.org/", geo_listing_us070209.sites["florida keys"]
    assert_equal "http://fortcollins.craigslist.org/", geo_listing_us070209.sites["fort collins / north CO"]
    assert_equal "http://fortsmith.craigslist.org/", geo_listing_us070209.sites["fort smith, AR"]
    assert_equal "http://fortwayne.craigslist.org/", geo_listing_us070209.sites["fort wayne"]
    assert_equal "http://fredericksburg.craigslist.org/", geo_listing_us070209.sites["fredericksburg"]
    assert_equal "http://fresno.craigslist.org/", geo_listing_us070209.sites["fresno"]
    assert_equal "http://fortmyers.craigslist.org/", geo_listing_us070209.sites["ft myers / SW florida"]
    assert_equal "http://gadsden.craigslist.org/", geo_listing_us070209.sites["gadsden-anniston"]
    assert_equal "http://gainesville.craigslist.org/", geo_listing_us070209.sites["gainesville"]
    assert_equal "http://galveston.craigslist.org/", geo_listing_us070209.sites["galveston"]
    assert_equal "http://goldcountry.craigslist.org/", geo_listing_us070209.sites["gold country"]
    assert_equal "http://grandisland.craigslist.org/", geo_listing_us070209.sites["grand island"]
    assert_equal "http://grandrapids.craigslist.org/", geo_listing_us070209.sites["grand rapids"]
    assert_equal "http://greenbay.craigslist.org/", geo_listing_us070209.sites["green bay"]
    assert_equal "http://greensboro.craigslist.org/", geo_listing_us070209.sites["greensboro"]
    assert_equal "http://greenville.craigslist.org/", geo_listing_us070209.sites["greenville / upstate"]
    assert_equal "http://gulfport.craigslist.org/", geo_listing_us070209.sites["gulfport / biloxi"]
    assert_equal "http://norfolk.craigslist.org/", geo_listing_us070209.sites["hampton roads"]
    assert_equal "http://harrisburg.craigslist.org/", geo_listing_us070209.sites["harrisburg"]
    assert_equal "http://harrisonburg.craigslist.org/", geo_listing_us070209.sites["harrisonburg"]
    assert_equal "http://hartford.craigslist.org/", geo_listing_us070209.sites["hartford"]
    assert_equal "http://hattiesburg.craigslist.org/", geo_listing_us070209.sites["hattiesburg"]
    assert_equal "http://honolulu.craigslist.org/", geo_listing_us070209.sites["hawaii"]
    assert_equal "http://hickory.craigslist.org/", geo_listing_us070209.sites["hickory / lenoir"]
    assert_equal "http://hiltonhead.craigslist.org/", geo_listing_us070209.sites["hilton head"]
    assert_equal "http://houston.craigslist.org/", geo_listing_us070209.sites["houston"]
    assert_equal "http://hudsonvalley.craigslist.org/", geo_listing_us070209.sites["hudson valley"]
    assert_equal "http://humboldt.craigslist.org/", geo_listing_us070209.sites["humboldt county"]
    assert_equal "http://huntington.craigslist.org/", geo_listing_us070209.sites["huntington-ashland"]
    assert_equal "http://huntsville.craigslist.org/", geo_listing_us070209.sites["huntsville"]
    assert_equal "http://imperial.craigslist.org/", geo_listing_us070209.sites["imperial county"]
    assert_equal "http://indianapolis.craigslist.org/", geo_listing_us070209.sites["indianapolis"]
    assert_equal "http://inlandempire.craigslist.org/", geo_listing_us070209.sites["inland empire"]
    assert_equal "http://iowacity.craigslist.org/", geo_listing_us070209.sites["iowa city"]
    assert_equal "http://ithaca.craigslist.org/", geo_listing_us070209.sites["ithaca"]
    assert_equal "http://jxn.craigslist.org/", geo_listing_us070209.sites["jackson, MI"]
    assert_equal "http://jackson.craigslist.org/", geo_listing_us070209.sites["jackson, MS"]
    assert_equal "http://jacksontn.craigslist.org/", geo_listing_us070209.sites["jackson, TN"]
    assert_equal "http://jacksonville.craigslist.org/", geo_listing_us070209.sites["jacksonville"]
    assert_equal "http://janesville.craigslist.org/", geo_listing_us070209.sites["janesville"]
    assert_equal "http://jerseyshore.craigslist.org/", geo_listing_us070209.sites["jersey shore"]
    assert_equal "http://jonesboro.craigslist.org/", geo_listing_us070209.sites["jonesboro"]
    assert_equal "http://joplin.craigslist.org/", geo_listing_us070209.sites["joplin"]
    assert_equal "http://kalamazoo.craigslist.org/", geo_listing_us070209.sites["kalamazoo"]
    assert_equal "http://kansascity.craigslist.org/", geo_listing_us070209.sites["kansas city, MO"]
    assert_equal "http://kpr.craigslist.org/", geo_listing_us070209.sites["kennewick-pasco-richland"]
    assert_equal "http://racine.craigslist.org/", geo_listing_us070209.sites["kenosha-racine"]
    assert_equal "http://killeen.craigslist.org/", geo_listing_us070209.sites["killeen / temple / ft hood"]
    assert_equal "http://knoxville.craigslist.org/", geo_listing_us070209.sites["knoxville"]
    assert_equal "http://lacrosse.craigslist.org/", geo_listing_us070209.sites["la crosse"]
    assert_equal "http://lafayette.craigslist.org/", geo_listing_us070209.sites["lafayette"]
    assert_equal "http://tippecanoe.craigslist.org/", geo_listing_us070209.sites["lafayette / west lafayette"]
    assert_equal "http://lakecharles.craigslist.org/", geo_listing_us070209.sites["lake charles"]
    assert_equal "http://lakeland.craigslist.org/", geo_listing_us070209.sites["lakeland"]
    assert_equal "http://lancaster.craigslist.org/", geo_listing_us070209.sites["lancaster, PA"]
    assert_equal "http://lansing.craigslist.org/", geo_listing_us070209.sites["lansing"]
    assert_equal "http://laredo.craigslist.org/", geo_listing_us070209.sites["laredo"]
    assert_equal "http://lascruces.craigslist.org/", geo_listing_us070209.sites["las cruces"]
    assert_equal "http://lasvegas.craigslist.org/", geo_listing_us070209.sites["las vegas"]
    assert_equal "http://lawrence.craigslist.org/", geo_listing_us070209.sites["lawrence"]
    assert_equal "http://lawton.craigslist.org/", geo_listing_us070209.sites["lawton"]
    assert_equal "http://allentown.craigslist.org/", geo_listing_us070209.sites["lehigh valley"]
    assert_equal "http://lexington.craigslist.org/", geo_listing_us070209.sites["lexington, KY"]
    assert_equal "http://limaohio.craigslist.org/", geo_listing_us070209.sites["lima / findlay"]
    assert_equal "http://lincoln.craigslist.org/", geo_listing_us070209.sites["lincoln"]
    assert_equal "http://littlerock.craigslist.org/", geo_listing_us070209.sites["little rock"]
    assert_equal "http://logan.craigslist.org/", geo_listing_us070209.sites["logan"]
    assert_equal "http://longisland.craigslist.org/", geo_listing_us070209.sites["long island"]
    assert_equal "http://losangeles.craigslist.org/", geo_listing_us070209.sites["los angeles"]
    assert_equal "http://louisville.craigslist.org/", geo_listing_us070209.sites["louisville"]
    assert_equal "http://lubbock.craigslist.org/", geo_listing_us070209.sites["lubbock"]
    assert_equal "http://lynchburg.craigslist.org/", geo_listing_us070209.sites["lynchburg"]
    assert_equal "http://macon.craigslist.org/", geo_listing_us070209.sites["macon"]
    assert_equal "http://madison.craigslist.org/", geo_listing_us070209.sites["madison"]
    assert_equal "http://maine.craigslist.org/", geo_listing_us070209.sites["maine"]
    assert_equal "http://ksu.craigslist.org/", geo_listing_us070209.sites["manhattan, KS"]
    assert_equal "http://mankato.craigslist.org/", geo_listing_us070209.sites["mankato"]
    assert_equal "http://mansfield.craigslist.org/", geo_listing_us070209.sites["mansfield"]
    assert_equal "http://martinsburg.craigslist.org/", geo_listing_us070209.sites["martinsburg"]
    assert_equal "http://mcallen.craigslist.org/", geo_listing_us070209.sites["mcallen / edinburg"]
    assert_equal "http://medford.craigslist.org/", geo_listing_us070209.sites["medford-ashland-klamath"]
    assert_equal "http://memphis.craigslist.org/", geo_listing_us070209.sites["memphis, TN"]
    assert_equal "http://mendocino.craigslist.org/", geo_listing_us070209.sites["mendocino county"]
    assert_equal "http://merced.craigslist.org/", geo_listing_us070209.sites["merced"]
    assert_equal "http://milwaukee.craigslist.org/", geo_listing_us070209.sites["milwaukee"]
    assert_equal "http://minneapolis.craigslist.org/", geo_listing_us070209.sites["minneapolis / st paul"]
    assert_equal "http://mobile.craigslist.org/", geo_listing_us070209.sites["mobile"]
    assert_equal "http://modesto.craigslist.org/", geo_listing_us070209.sites["modesto"]
    assert_equal "http://mohave.craigslist.org/", geo_listing_us070209.sites["mohave county"]
    assert_equal "http://monroe.craigslist.org/", geo_listing_us070209.sites["monroe, LA"]
    assert_equal "http://montana.craigslist.org/", geo_listing_us070209.sites["montana"]
    assert_equal "http://monterey.craigslist.org/", geo_listing_us070209.sites["monterey bay"]
    assert_equal "http://montgomery.craigslist.org/", geo_listing_us070209.sites["montgomery"]
    assert_equal "http://morgantown.craigslist.org/", geo_listing_us070209.sites["morgantown"]
    assert_equal "http://muncie.craigslist.org/", geo_listing_us070209.sites["muncie / anderson"]
    assert_equal "http://muskegon.craigslist.org/", geo_listing_us070209.sites["muskegon"]
    assert_equal "http://myrtlebeach.craigslist.org/", geo_listing_us070209.sites["myrtle beach"]
    assert_equal "http://nashville.craigslist.org/", geo_listing_us070209.sites["nashville"]
    assert_equal "http://nh.craigslist.org/", geo_listing_us070209.sites["new hampshire"]
    assert_equal "http://newhaven.craigslist.org/", geo_listing_us070209.sites["new haven"]
    assert_equal "http://neworleans.craigslist.org/", geo_listing_us070209.sites["new orleans"]
    assert_equal "http://newyork.craigslist.org/", geo_listing_us070209.sites["new york city"]
    assert_equal "http://nd.craigslist.org/", geo_listing_us070209.sites["north dakota"]
    assert_equal "http://newjersey.craigslist.org/", geo_listing_us070209.sites["north jersey"]
    assert_equal "http://northmiss.craigslist.org/", geo_listing_us070209.sites["north mississippi"]
    assert_equal "http://nmi.craigslist.org/", geo_listing_us070209.sites["northern michigan"]
    assert_equal "http://nwct.craigslist.org/", geo_listing_us070209.sites["northwest CT"]
    assert_equal "http://ocala.craigslist.org/", geo_listing_us070209.sites["ocala"]
    assert_equal "http://odessa.craigslist.org/", geo_listing_us070209.sites["odessa / midland"]
    assert_equal "http://ogden.craigslist.org/", geo_listing_us070209.sites["ogden-clearfield"]
    assert_equal "http://oklahomacity.craigslist.org/", geo_listing_us070209.sites["oklahoma city"]
    assert_equal "http://olympic.craigslist.org/", geo_listing_us070209.sites["olympic peninsula"]
    assert_equal "http://omaha.craigslist.org/", geo_listing_us070209.sites["omaha / council bluffs"]
    assert_equal "http://orangecounty.craigslist.org/", geo_listing_us070209.sites["orange county"]
    assert_equal "http://oregoncoast.craigslist.org/", geo_listing_us070209.sites["oregon coast"]
    assert_equal "http://orlando.craigslist.org/", geo_listing_us070209.sites["orlando"]
    assert_equal "http://outerbanks.craigslist.org/", geo_listing_us070209.sites["outer banks"]
    assert_equal "http://palmsprings.craigslist.org/", geo_listing_us070209.sites["palm springs, CA"]
    assert_equal "http://panamacity.craigslist.org/", geo_listing_us070209.sites["panama city, FL"]
    assert_equal "http://parkersburg.craigslist.org/", geo_listing_us070209.sites["parkersburg-marietta"]
    assert_equal "http://pensacola.craigslist.org/", geo_listing_us070209.sites["pensacola / panhandle"]
    assert_equal "http://peoria.craigslist.org/", geo_listing_us070209.sites["peoria"]
    assert_equal "http://philadelphia.craigslist.org/", geo_listing_us070209.sites["philadelphia"]
    assert_equal "http://phoenix.craigslist.org/", geo_listing_us070209.sites["phoenix"]
    assert_equal "http://pittsburgh.craigslist.org/", geo_listing_us070209.sites["pittsburgh"]
    assert_equal "http://plattsburgh.craigslist.org/", geo_listing_us070209.sites["plattsburgh-adirondacks"]
    assert_equal "http://poconos.craigslist.org/", geo_listing_us070209.sites["poconos"]
    assert_equal "http://porthuron.craigslist.org/", geo_listing_us070209.sites["port huron"]
    assert_equal "http://portland.craigslist.org/", geo_listing_us070209.sites["portland, OR"]
    assert_equal "http://prescott.craigslist.org/", geo_listing_us070209.sites["prescott"]
    assert_equal "http://provo.craigslist.org/", geo_listing_us070209.sites["provo / orem"]
    assert_equal "http://pueblo.craigslist.org/", geo_listing_us070209.sites["pueblo"]
    assert_equal "http://pullman.craigslist.org/", geo_listing_us070209.sites["pullman / moscow"]
    assert_equal "http://quadcities.craigslist.org/", geo_listing_us070209.sites["quad cities, IA/IL"]
    assert_equal "http://raleigh.craigslist.org/", geo_listing_us070209.sites["raleigh / durham / CH"]
    assert_equal "http://reading.craigslist.org/", geo_listing_us070209.sites["reading"]
    assert_equal "http://redding.craigslist.org/", geo_listing_us070209.sites["redding"]
    assert_equal "http://reno.craigslist.org/", geo_listing_us070209.sites["reno / tahoe"]
    assert_equal "http://providence.craigslist.org/", geo_listing_us070209.sites["rhode island"]
    assert_equal "http://richmond.craigslist.org/", geo_listing_us070209.sites["richmond"]
    assert_equal "http://roanoke.craigslist.org/", geo_listing_us070209.sites["roanoke"]
    assert_equal "http://rmn.craigslist.org/", geo_listing_us070209.sites["rochester, MN"]
    assert_equal "http://rochester.craigslist.org/", geo_listing_us070209.sites["rochester, NY"]
    assert_equal "http://rockford.craigslist.org/", geo_listing_us070209.sites["rockford"]
    assert_equal "http://rockies.craigslist.org/", geo_listing_us070209.sites["rocky mountains"]
    assert_equal "http://roseburg.craigslist.org/", geo_listing_us070209.sites["roseburg"]
    assert_equal "http://roswell.craigslist.org/", geo_listing_us070209.sites["roswell / carlsbad"]
    assert_equal "http://sacramento.craigslist.org/", geo_listing_us070209.sites["sacramento"]
    assert_equal "http://saginaw.craigslist.org/", geo_listing_us070209.sites["saginaw-midland-baycity"]
    assert_equal "http://salem.craigslist.org/", geo_listing_us070209.sites["salem, OR"]
    assert_equal "http://saltlakecity.craigslist.org/", geo_listing_us070209.sites["salt lake city"]
    assert_equal "http://sanantonio.craigslist.org/", geo_listing_us070209.sites["san antonio"]
    assert_equal "http://sandiego.craigslist.org/", geo_listing_us070209.sites["san diego"]
    assert_equal "http://slo.craigslist.org/", geo_listing_us070209.sites["san luis obispo"]
    assert_equal "http://sanmarcos.craigslist.org/", geo_listing_us070209.sites["san marcos"]
    assert_equal "http://sandusky.craigslist.org/", geo_listing_us070209.sites["sandusky"]
    assert_equal "http://santabarbara.craigslist.org/", geo_listing_us070209.sites["santa barbara"]
    assert_equal "http://santafe.craigslist.org/", geo_listing_us070209.sites["santa fe / taos"]
    assert_equal "http://sarasota.craigslist.org/", geo_listing_us070209.sites["sarasota-bradenton"]
    assert_equal "http://savannah.craigslist.org/", geo_listing_us070209.sites["savannah"]
    assert_equal "http://scranton.craigslist.org/", geo_listing_us070209.sites["scranton / wilkes-barre"]
    assert_equal "http://seattle.craigslist.org/", geo_listing_us070209.sites["seattle-tacoma"]
    assert_equal "http://sheboygan.craigslist.org/", geo_listing_us070209.sites["sheboygan, WI"]
    assert_equal "http://shreveport.craigslist.org/", geo_listing_us070209.sites["shreveport"]
    assert_equal "http://sierravista.craigslist.org/", geo_listing_us070209.sites["sierra vista"]
    assert_equal "http://siouxcity.craigslist.org/", geo_listing_us070209.sites["sioux city, IA"]
    assert_equal "http://skagit.craigslist.org/", geo_listing_us070209.sites["skagit / island / SJI"]
    assert_equal "http://southbend.craigslist.org/", geo_listing_us070209.sites["south bend / michiana"]
    assert_equal "http://southcoast.craigslist.org/", geo_listing_us070209.sites["south coast"]
    assert_equal "http://sd.craigslist.org/", geo_listing_us070209.sites["south dakota"]
    assert_equal "http://miami.craigslist.org/", geo_listing_us070209.sites["south florida"]
    assert_equal "http://southjersey.craigslist.org/", geo_listing_us070209.sites["south jersey"]
    assert_equal "http://semo.craigslist.org/", geo_listing_us070209.sites["southeast missouri"]
    assert_equal "http://smd.craigslist.org/", geo_listing_us070209.sites["southern maryland"]
    assert_equal "http://swmi.craigslist.org/", geo_listing_us070209.sites["southwest michigan"]
    assert_equal "http://spacecoast.craigslist.org/", geo_listing_us070209.sites["space coast"]
    assert_equal "http://spokane.craigslist.org/", geo_listing_us070209.sites["spokane / coeur d'alene"]
    assert_equal "http://springfieldil.craigslist.org/", geo_listing_us070209.sites["springfield, IL"]
    assert_equal "http://springfield.craigslist.org/", geo_listing_us070209.sites["springfield, MO"]
    assert_equal "http://staugustine.craigslist.org/", geo_listing_us070209.sites["st augustine"]
    assert_equal "http://stcloud.craigslist.org/", geo_listing_us070209.sites["st cloud"]
    assert_equal "http://stgeorge.craigslist.org/", geo_listing_us070209.sites["st george"]
    assert_equal "http://stlouis.craigslist.org/", geo_listing_us070209.sites["st louis, MO"]
    assert_equal "http://pennstate.craigslist.org/", geo_listing_us070209.sites["state college"]
    assert_equal "http://stillwater.craigslist.org/", geo_listing_us070209.sites["stillwater"]
    assert_equal "http://stockton.craigslist.org/", geo_listing_us070209.sites["stockton"]
    assert_equal "http://syracuse.craigslist.org/", geo_listing_us070209.sites["syracuse"]
    assert_equal "http://tallahassee.craigslist.org/", geo_listing_us070209.sites["tallahassee"]
    assert_equal "http://tampa.craigslist.org/", geo_listing_us070209.sites["tampa bay area"]
    assert_equal "http://terrahaute.craigslist.org/", geo_listing_us070209.sites["terre haute"]
    assert_equal "http://texarkana.craigslist.org/", geo_listing_us070209.sites["texarkana"]
    assert_equal "http://toledo.craigslist.org/", geo_listing_us070209.sites["toledo"]
    assert_equal "http://topeka.craigslist.org/", geo_listing_us070209.sites["topeka"]
    assert_equal "http://treasure.craigslist.org/", geo_listing_us070209.sites["treasure coast"]
    assert_equal "http://tricities.craigslist.org/", geo_listing_us070209.sites["tri-cities, TN"]
    assert_equal "http://tucson.craigslist.org/", geo_listing_us070209.sites["tucson"]
    assert_equal "http://tulsa.craigslist.org/", geo_listing_us070209.sites["tulsa"]
    assert_equal "http://tuscaloosa.craigslist.org/", geo_listing_us070209.sites["tuscaloosa"]
    assert_equal "http://twinfalls.craigslist.org/", geo_listing_us070209.sites["twin falls"]
    assert_equal "http://easttexas.craigslist.org/", geo_listing_us070209.sites["tyler / east TX"]
    assert_equal "http://up.craigslist.org/", geo_listing_us070209.sites["upper peninsula"]
    assert_equal "http://utica.craigslist.org/", geo_listing_us070209.sites["utica"]
    assert_equal "http://valdosta.craigslist.org/", geo_listing_us070209.sites["valdosta"]
    assert_equal "http://ventura.craigslist.org/", geo_listing_us070209.sites["ventura county"]
    assert_equal "http://burlington.craigslist.org/", geo_listing_us070209.sites["vermont"]
    assert_equal "http://victoriatx.craigslist.org/", geo_listing_us070209.sites["victoria, TX"]
    assert_equal "http://visalia.craigslist.org/", geo_listing_us070209.sites["visalia-tulare"]
    assert_equal "http://waco.craigslist.org/", geo_listing_us070209.sites["waco"]
    assert_equal "http://washingtondc.craigslist.org/", geo_listing_us070209.sites["washington, DC"]
    assert_equal "http://waterloo.craigslist.org/", geo_listing_us070209.sites["waterloo / cedar falls"]
    assert_equal "http://watertown.craigslist.org/", geo_listing_us070209.sites["watertown"]
    assert_equal "http://wausau.craigslist.org/", geo_listing_us070209.sites["wausau"]
    assert_equal "http://wenatchee.craigslist.org/", geo_listing_us070209.sites["wenatchee"]
    assert_equal "http://wv.craigslist.org/", geo_listing_us070209.sites["west virginia (old)"]
    assert_equal "http://westky.craigslist.org/", geo_listing_us070209.sites["western KY"]
    assert_equal "http://westmd.craigslist.org/", geo_listing_us070209.sites["western maryland"]
    assert_equal "http://westernmass.craigslist.org/", geo_listing_us070209.sites["western massachusetts"]
    assert_equal "http://westslope.craigslist.org/", geo_listing_us070209.sites["western slope"]
    assert_equal "http://wheeling.craigslist.org/", geo_listing_us070209.sites["wheeling, WV"]
    assert_equal "http://wichita.craigslist.org/", geo_listing_us070209.sites["wichita"]
    assert_equal "http://wichitafalls.craigslist.org/", geo_listing_us070209.sites["wichita falls"]
    assert_equal "http://williamsport.craigslist.org/", geo_listing_us070209.sites["williamsport"]
    assert_equal "http://wilmington.craigslist.org/", geo_listing_us070209.sites["wilmington, NC"]
    assert_equal "http://winstonsalem.craigslist.org/", geo_listing_us070209.sites["winston-salem"]
    assert_equal "http://worcester.craigslist.org/", geo_listing_us070209.sites["worcester / central MA"]
    assert_equal "http://wyoming.craigslist.org/", geo_listing_us070209.sites["wyoming"]
    assert_equal "http://yakima.craigslist.org/", geo_listing_us070209.sites["yakima"]
    assert_equal "http://york.craigslist.org/", geo_listing_us070209.sites["york, PA"]
    assert_equal "http://youngstown.craigslist.org/", geo_listing_us070209.sites["youngstown"]
    assert_equal "http://yubasutter.craigslist.org/", geo_listing_us070209.sites["yuba-sutter"]
    assert_equal "http://yuma.craigslist.org/", geo_listing_us070209.sites["yuma"]
    
    geo_listing_cn070209 = CraigScrape::GeoListings.new relative_uri_for(
      'geolisting_samples/geo_listing_cn070209.html'
    )     
    assert_equal "china", geo_listing_cn070209.location
    assert_equal 6, geo_listing_cn070209.sites.length
    assert_equal "http://beijing.craigslist.com.cn/", geo_listing_cn070209.sites["beijing"]
    assert_equal "http://guangzhou.craigslist.com.cn/", geo_listing_cn070209.sites["guangzhou"]
    assert_equal "http://hangzhou.craigslist.org/", geo_listing_cn070209.sites["hangzhou"]
    assert_equal "http://hongkong.craigslist.org/", geo_listing_cn070209.sites["hong kong"]
    assert_equal "http://shanghai.craigslist.com.cn/", geo_listing_cn070209.sites["shanghai"]
    assert_equal "http://shenzhen.craigslist.org/", geo_listing_cn070209.sites["shenzhen"]
    
    geo_listing_ca070209 = CraigScrape::GeoListings.new relative_uri_for(
      'geolisting_samples/geo_listing_ca070209.html'
    )     
    assert_equal "canada", geo_listing_ca070209.location
    assert_equal 47, geo_listing_ca070209.sites.length
    assert_equal "http://barrie.craigslist.ca/", geo_listing_ca070209.sites["barrie"]
    assert_equal "http://belleville.craigslist.ca/", geo_listing_ca070209.sites["belleville, ON"]
    assert_equal "http://calgary.craigslist.ca/", geo_listing_ca070209.sites["calgary"]
    assert_equal "http://chatham.craigslist.ca/", geo_listing_ca070209.sites["chatham-kent"]
    assert_equal "http://comoxvalley.craigslist.ca/", geo_listing_ca070209.sites["comox valley"]
    assert_equal "http://cornwall.craigslist.ca/", geo_listing_ca070209.sites["cornwall, ON"]
    assert_equal "http://cranbrook.craigslist.ca/", geo_listing_ca070209.sites["cranbrook, BC"]
    assert_equal "http://edmonton.craigslist.ca/", geo_listing_ca070209.sites["edmonton"]
    assert_equal "http://abbotsford.craigslist.ca/", geo_listing_ca070209.sites["fraser valley"]
    assert_equal "http://ftmcmurray.craigslist.ca/", geo_listing_ca070209.sites["ft mcmurray"]
    assert_equal "http://guelph.craigslist.ca/", geo_listing_ca070209.sites["guelph"]
    assert_equal "http://halifax.craigslist.ca/", geo_listing_ca070209.sites["halifax"]
    assert_equal "http://hamilton.craigslist.ca/", geo_listing_ca070209.sites["hamilton-burlington"]
    assert_equal "http://kamloops.craigslist.ca/", geo_listing_ca070209.sites["kamloops"]
    assert_equal "http://kelowna.craigslist.ca/", geo_listing_ca070209.sites["kelowna"]
    assert_equal "http://kingston.craigslist.ca/", geo_listing_ca070209.sites["kingston, ON"]
    assert_equal "http://kitchener.craigslist.ca/", geo_listing_ca070209.sites["kitchener-waterloo-cambridge"]
    assert_equal "http://lethbridge.craigslist.ca/", geo_listing_ca070209.sites["lethbridge"]
    assert_equal "http://londonon.craigslist.ca/", geo_listing_ca070209.sites["london, ON"]
    assert_equal "http://montreal.craigslist.ca/", geo_listing_ca070209.sites["montreal"]
    assert_equal "http://nanaimo.craigslist.ca/", geo_listing_ca070209.sites["nanaimo"]
    assert_equal "http://newbrunswick.craigslist.ca/", geo_listing_ca070209.sites["new brunswick"]
    assert_equal "http://newfoundland.craigslist.ca/", geo_listing_ca070209.sites["newfoundland / labrador"]
    assert_equal "http://niagara.craigslist.ca/", geo_listing_ca070209.sites["niagara region"]
    assert_equal "http://ottawa.craigslist.ca/", geo_listing_ca070209.sites["ottawa-hull-gatineau"]
    assert_equal "http://owensound.craigslist.ca/", geo_listing_ca070209.sites["owen sound"]
    assert_equal "http://peterborough.craigslist.ca/", geo_listing_ca070209.sites["peterborough"]
    assert_equal "http://pei.craigslist.ca/", geo_listing_ca070209.sites["prince edward island"]
    assert_equal "http://princegeorge.craigslist.ca/", geo_listing_ca070209.sites["prince george"]
    assert_equal "http://quebec.craigslist.ca/", geo_listing_ca070209.sites["quebec city"]
    assert_equal "http://reddeer.craigslist.ca/", geo_listing_ca070209.sites["red deer"]
    assert_equal "http://regina.craigslist.ca/", geo_listing_ca070209.sites["regina"]
    assert_equal "http://saguenay.craigslist.ca/", geo_listing_ca070209.sites["saguenay"]
    assert_equal "http://sarnia.craigslist.ca/", geo_listing_ca070209.sites["sarnia"]
    assert_equal "http://saskatoon.craigslist.ca/", geo_listing_ca070209.sites["saskatoon"]
    assert_equal "http://soo.craigslist.ca/", geo_listing_ca070209.sites["sault ste marie, ON"]
    assert_equal "http://sherbrooke.craigslist.ca/", geo_listing_ca070209.sites["sherbrooke"]
    assert_equal "http://sudbury.craigslist.ca/", geo_listing_ca070209.sites["sudbury"]
    assert_equal "http://territories.craigslist.ca/", geo_listing_ca070209.sites["territories"]
    assert_equal "http://thunderbay.craigslist.ca/", geo_listing_ca070209.sites["thunder bay"]
    assert_equal "http://toronto.craigslist.ca/", geo_listing_ca070209.sites["toronto"]
    assert_equal "http://troisrivieres.craigslist.ca/", geo_listing_ca070209.sites["trois-rivieres"]
    assert_equal "http://vancouver.craigslist.ca/", geo_listing_ca070209.sites["vancouver, BC"]
    assert_equal "http://victoria.craigslist.ca/", geo_listing_ca070209.sites["victoria"]
    assert_equal "http://whistler.craigslist.ca/", geo_listing_ca070209.sites["whistler, BC"]
    assert_equal "http://windsor.craigslist.ca/", geo_listing_ca070209.sites["windsor"]
    assert_equal "http://winnipeg.craigslist.ca/", geo_listing_ca070209.sites["winnipeg"]
    
    geo_listing_ca_sk07020 = CraigScrape::GeoListings.new relative_uri_for(
      'geolisting_samples/geo_listing_ca_sk070209.html'
    )     
    assert_equal "canada", geo_listing_ca_sk07020.location
    assert_equal( 
      { "saskatoon" => "http://saskatoon.craigslist.ca/", "regina" => "http://regina.craigslist.ca/" }, 
      geo_listing_ca_sk07020.sites
    )

  end

end