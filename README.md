Michael's Maven Archetypes
==========================

What is this?
-------------
Just some Maven Archetypes created by and for Michael Righi, but you know, you can use them too.*


Should I use this?*
------------------
Probably not.  

These archetypes were initially written for personal use, and as a result there's some me-specific stuff in them.
For example, I hope you like the Java package name "com.michaelrighi" because that's hard-coded in all the archetypes. :-)

One day I hope to get around to making these more suitable for general use, but in the meantime I decided to make this
public to share with a couple of friends, and I figured maybe a few strangers could benefit from this too.

Until I make these more suitable for general uses, I think you should probably be using one of the archetypes
at http://docs.codehaus.org/display/MAVENUSER/Archetypes+List


How do I install these Maven archetypes?
----------------------------------------
You've got a Mac or Linux machine, right?  Cool.  Maven is already installed, right? ( http://maven.apache.org/download.html ) Cool.

Open a terminal window and run the following:

	git clone git@github.com:righi/maven-archetypes.git

	cd maven-archetypes

	./install-archetypes.sh
	
Note: You can delete the maven-archetypes folder at this point if you'd like, because Maven will have installed the archetypes under
your ~/.m2, or something like that.  (Unless you're using Eclipse.  See below.)


How do I use one of these archetypes to build a new project from a terminal?
----------------------------------------------------------------------------
Again, in a terminal window:

	mkdir MyKickAssProject
	
	cd MyKickcAssProject
	
	mvn archetype:generate                                        \
	  -DarchetypeGroupId=com.michaelrighi.archetypes              \
	  -DarchetypeArtifactId=[the archetype id, such as java-1_6]  \
	  -DarchetypeVersion=0.1                                      \
	  -DgroupId=[your project's group id]                         \
	  -DartifactId=[your project's artifact id]
	
	
For example:

	mvn archetype:generate -DarchetypeGroupId=com.michaelrighi.archetypes -DarchetypeArtifactId=java-1_6 -DarchetypeVersion=0.1 -DgroupId=com.example -DartifactId=MyKickAssProject
	
The archetypes included in this project are:

* java-1_6
* java-1_6-spring3
* jee-5
* jee-5-spring3-mvc

See http://maven.apache.org/guides/getting-started/index.html for more detail.


How do I use one of these archetypes to build a new project from Eclipse?
-------------------------------------------------------------------------
First, you need to tell Eclipse that these archetypes exist by creating a new local archetype catalog.  This is a one-time process:

1. Install m2eclipse ( http://eclipse.org/m2e/ ) if you don't already have it, but I bet you already have it.

2. Go into your Eclipse Preferences.

3. Choose Maven > Archetypes

4. Click on the "Add Local Catalog" button.

5. Navigate to the folder you downloaded the archetypes to, and choose "archetype-catalog.xml".

6. For the description, enter "Michael's Maven Archetypes".

---------------------------------------
Going forward, when you want to create a new project that uses one of the archetypes just do this (in Eclipse):

1. File > New > Other...

2. Maven > Maven Project

3. Ensure that "Create a simple project" is *not* selected.  Click Next.

4. In the Catalog dropdown, select "Michael's Maven Archetypes".

5. Select the archetype you want to use, such as "jee-5-spring3-mvc".  Click Next.

6. Enter the Group Id, Artifact Id, Version, and Package for the project you are creating.  Click Finish.
