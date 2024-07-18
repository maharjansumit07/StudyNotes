--Maven--

required: java, maven and java homepath.

-- To setup first, We need to download maven binary files. 

Website: https://maven.apache.org/download.cgi  

download the binary tar.gz.
-- https://dlcdn.apache.org/maven/maven-3/3.9.8/binaries/apache-maven-3.9.8-bin.tar.gz



select best location, for practical we are using /opt/
$ cd /opt/

use tar to extract the download file. 
$ tar -xzvf apache-maven-3.9.8-bin.tar.gz

then try to rename for easy folder name . 
-- mv apache-maven-3.9.8-bin maven

We need to adjust the path as well, because when you use mvn command, it requests to install maven. 
for Temporary :
$ export PATH=$PATH:/opt/maven/bin
for persistant way we need to edit it .bashrc at user. 

Installing Apache Maven
The installation of Apache Maven is a simple process of extracting the archive and adding the bin directory with the mvn command to the PATH.

Detailed steps are:

Have a JDK installation on your system. Either set the JAVA_HOME environment variable pointing to your JDK installation or have the java executable on your PATH.

Extract distribution archive in any directory

unzip apache-maven-3.9.8-bin.zip
or

tar xzvf apache-maven-3.9.8-bin.tar.gz
Alternatively use your preferred archive extraction tool.

Add the bin directory of the created directory apache-maven-3.9.8 to the PATH environment variable

Confirm with mvn -v in a new shell. The result should look similar to

Apache Maven 3.9.8 (36645f6c9b5079805ea5009217e36f2cffd34256)
Maven home: /opt/apache-maven-3.9.8
Java version: 1.8.0_45, vendor: Oracle Corporation
Java home: /Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home/jre
Default locale: en_US, platform encoding: UTF-8
OS name: "mac os x", version: "10.8.5", arch: "x86_64", family: "mac"

to build or create new maven project, we only chane for DgroupId and FactID and interactive mode to false or true depending on needs. 
mvn archetype:generate -DgroupId=Devops -DartifactId=Training -DarchetypeArtifactId= maven-archetype-quickstart -DinteractiveMode=false


This wil build the maven and will display out the hello world application, with new foldername with Artifactid name on same location. 
 


