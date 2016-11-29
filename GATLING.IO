Check Versions Before Running : 
mvn -version

java -version

echo $JAVA_HOME

Set JDK PATH : 

export JAVA_HOME=/app/jdk1.8.0_91
export PATH=$PATH:$JAVA_HOME/bin

Goto .m2 folder : 
cd ~/.m2
Set MAVEN PATH: 

export M2_HOME=/app/apache-maven-3.3.9

export PATH=$PATH:$M2_HOME/bin


Execute GATLING TEST : 
mvn gatling:execute -Dgatling.simulationClass=<packageName>.<ClassName>


To uncompress tar file : 

tar -vxf jdk-8u91-linux-x64.tar.gz

Sudo Access : 

sudo -su root
sudo -su app

Force Remove/Delete file : 

rm -rf filename (deletes the file)

rm -rf * (Removes everything)

rm -rf *.log (Removes all files with .log extension)

Scala commands
setUp(
  scn.inject(
    nothingFor(4 seconds), // 1
    atOnceUsers(10), // 2
    rampUsers(10) over(5 seconds), // 3
    constantUsersPerSec(20) during(15 seconds), // 4
    constantUsersPerSec(20) during(15 seconds) randomized, // 5
    rampUsersPerSec(10) to(20) during(10 minutes), // 6
    rampUsersPerSec(10) to(20) during(10 minutes) randomized, // 7
    splitUsers(1000) into(rampUsers(10) over(10 seconds)) separatedBy(10 seconds), // 8
    splitUsers(1000) into(rampUsers(10) over(10 seconds)) separatedBy(atOnceUsers(30)), // 9
    heavisideUsers(1000) over(20 seconds) // 10
    ).protocols(httpConf)
  )

http://gatling.io/docs/2.0.0-RC2/general/simulation_setup.html#simulation-setup


#mutiple scenario
    val httpConf = http.baseURL("https://google.com") 
                       .proxy(Proxy("<PROXY>", <PORT>))


    val homePage = scenario("Simulate HomePage").exec(http("home").get("/"))    
    val ctrlPage = scenario("Simulate Control Page").exec(http("ctrl").get("/ctrl"))   
    val pricingPage = scenario("Simulate Pricing Page").exec(http("pricing").get("/pricing"))  
    val oaPage = scenario("Simulate OA Page").exec(http("OA").get("/oa/promos/limited-time-offer-sign-in/"))  
    val accReportsPage = scenario("Simulate Accounting Reports Page").exec(http("OA").get("/accounting-reports/"))     
    val businessStartUpPage = scenario("Simulate Business Startup Page").exec(http("OA").get("/business-type/starting-up/"))      
    val payrollServicePage = scenario("Simulate Payroll Service Page").exec(http("OA").get("/payroll-service/"))      
    val qbdtPremierPage = scenario("Simulate QBDT Premier Page").exec(http("OA").get("/premier/"))     
    val qbAccountantPage = scenario("Simulate QB Accountant Page").exec(http("OA").get("/accountants/quickbooks-accountant/"))  
    val nonProfitPage = scenario("Simulate Business Non Profit Page").exec(http("OA").get("/business-type/non-profit/"))  
    val onlinePage = scenario("Simulate Online Page").exec(http("OA").get("/online/"))      
    val clientDiscountsPage = scenario("Simulate Accountants Client Discounts Page").exec(http("OA").get("/accountants/client-discounts/"))      
    val prodAdvisorPage = scenario("Simulate Pro-Advisor Page").exec(http("OA").get("/start/proadvisor_signup/"))      
    val onlineComparePage = scenario("Simulate Online Compare Page").exec(http("OA").get("/online/compare/"))      
    val intuitAccountantsPage = scenario("Simulate Intuit Accountants Page").exec(http("OA").get("/accountants/intuitaccountants/"))      
    val productsPage = scenario("Simulate Products Page").exec(http("OA").get("/products/"))     
    val accountantsPage = scenario("Simulate Accountants Page").exec(http("OA").get("/accountants/"))     
    val searchPage = scenario("Simulate Search Page").exec(http("OA").get("/search/"))     
      
    
     setUp(
         homePage.inject(rampUsersPerSec(2) to(25) during(30 minutes)).protocols(httpConf),
         ctrlPage.inject(rampUsersPerSec(1) to(5) during(30 minutes)).protocols(httpConf),
         pricingPage.inject(rampUsersPerSec(1) to(3) during(30 minutes)).protocols(httpConf),
         oaPage.inject(rampUsersPerSec(1) to(3) during(30 minutes)).protocols(httpConf),
         accReportsPage.inject(rampUsersPerSec(1) to(1) during(30 minutes)).protocols(httpConf),
         businessStartUpPage.inject(rampUsersPerSec(1) to(1) during(30 minutes)).protocols(httpConf),
         payrollServicePage.inject(rampUsersPerSec(1) to(1) during(30 minutes)).protocols(httpConf),
         qbdtPremierPage.inject(rampUsersPerSec(1) to(1) during(30 minutes)).protocols(httpConf),
         qbAccountantPage.inject(rampUsersPerSec(1) to(1) during(30 minutes)).protocols(httpConf),
         nonProfitPage.inject(rampUsersPerSec(1) to(1) during(30 minutes)).protocols(httpConf),
         onlinePage.inject(rampUsersPerSec(1) to(1) during(30 minutes)).protocols(httpConf),
         clientDiscountsPage.inject(rampUsersPerSec(1) to(1) during(30 minutes)).protocols(httpConf),
         prodAdvisorPage.inject(rampUsersPerSec(1) to(1) during(30 minutes)).protocols(httpConf),
         onlineComparePage.inject(rampUsersPerSec(1) to(1) during(30 minutes)).protocols(httpConf),
         intuitAccountantsPage.inject(rampUsersPerSec(1) to(1) during(30 minutes)).protocols(httpConf),
         productsPage.inject(rampUsersPerSec(1) to(1) during(30 minutes)).protocols(httpConf),
         accountantsPage.inject(rampUsersPerSec(1) to(1) during(30 minutes)).protocols(httpConf),
         searchPage.inject(rampUsersPerSec(1) to(1) during(30 minutes)).protocols(httpConf) 
         )
  }
