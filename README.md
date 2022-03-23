# School Anti-Block
This is a very small batch (.bat) program, designed for Windows, to continuously kill school filter and monitoring software.
This right now only includes LightSpeed Systems, but I have plans in the future to add more such as Dyknow.
I also plan to add a user interface and make it overall more user-friendly.
I suggest you change the name of the batch file in case your administrators get suspicious and check your computer files.

How to install:

1. Go to releases on this Github page.
2. Download the latest School_Anti-Block.bat file onto your school computer.
3. Open up the folder you saved it to and double-click it.
4. Follow any and all instructions in the command prompt.

Faqs:

Why does it say "Error Access Denied"?
This is likely because your IT department for your school district has not given your user the privileges to end processes. I am currently working and testing on a fix for this.

Is this a virus?
This is not a virus, if you don't believe me then you can check the source code yourself, as this project is open source. Aswell I'm sure there would be numerous articles about this software if it was a virus as someone who previously looked at the source code would have found out.

Why does it say "Windows protected your PC"?
The reason you may get a popup saying "Windows protected your PC" is that this program is not registered/signed by a Microsoft verified publisher, it may also be since Batch (.bat) files in their nature can be very destructive to your PC and can contain a virus, this program, however, does not. If you trust this program and wish to bypass this prompt simply click "More info" then click "Run anyway".

Why does the program instantly close out when I open it?
This is likely due to a tactic used by your school's IT department that anytime they detect a cmd process opened they have it immediately closed, preventing you from being able to use it. I am currently working and testing on a fix for this.
