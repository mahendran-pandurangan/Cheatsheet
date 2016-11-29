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
    val imagesPage = scenario("Simulate Images Page").exec(http("ctrl").get("/images"))   
   
      
    
     setUp(
         homePage.inject(rampUsersPerSec(2) to(25) during(30 minutes)).protocols(httpConf),
         ctrlPage.inject(rampUsersPerSec(1) to(5) during(30 minutes)).protocols(httpConf),
        
         )
  }
