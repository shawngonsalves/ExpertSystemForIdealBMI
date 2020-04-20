
# Instruction manual to use the Expert System for Predicting the regimen for an Ideal BMI

 by

 Nihal Nihalani and Shawn Gonsalves

 Academic Advisor: Dr. Shuan Inn Wu

 Fall 2019

 Expert: Prathamesh Adivarekar.


## For Windows:

step1: Download SWI-prolog from the following website:
[http://www.swi-prolog.org/Download.html](http://www.swi-prolog.org/Download.html)
step2: Make sure you have the code on your Desktop. To access the code double click on
SWI-prolog.
Step 3: Click on file-edit, then choose the AI_Project.pl a new window will pop-up.
Step 4: In this new window click on Compile then select Make. Then go back to SWI-Prolog.
Step 5: Click on File-Consult and select the code.
Step 6: press ” start.” It will ask for the user’s details. Enter each detail with a full stop and
then hit enter.
Step7: Once all the details are entered the system will give its conclusions based on the facts
entered by the user. This conclusion will consist of the user’s BMI, status, exercises to be
followed, how much water to intake per day, calorie_intake per day and the diet that needs to
be followed.


## Installing Swi prolog on Mac OS using the terminal

● Homebrew​ provides stable version. The command below installs the latest ​ _stable_
version of SWI-Prolog:
**brew install swi-prolog**
● The latest git version of SWI-Prolog can be installed with this command:
**brew install swi-prolog --HEAD
Running Prolog on a Personal Machine**
SWI Prolog is available for Windows, Mac, and Linux. Here's the download page:
[http://www.swi-prolog.org/Download.html​.](http://www.swi-prolog.org/Download.html​.)
A few additional Macintosh hints: if you use the Finder and double-click on SWI Prolog in
Applications, depending on your security settings, you may get an error. If you do, try
right-clicking (or control-clicking) on the application instead, and say “run it anyway”. You
can also run it from the command line using the swipl executable in
/Applications/SWI-Prolog.app/Contents/MacOS, assuming you installed it in the default
location. To use the graphical debugger, install ​xquartz​ (X11), then open a X11 terminal, and
run Prolog from there.
**Basic Prolog Commands**
A few essential commands:
halt.
exit Prolog (short form: control-d)
consult(filename).
load the file named filename.pl (note the added .pl extension). If you need some more
complex name (for example with a path), put it in single quotes, for example
consult('/Users/schmertzkopf/squid.pl').
[filename].
shorthand for consult
help(topic) or apropos(topic).
Brings up the relevant section of the manual in a separate window (so requires X for
linux/Mac).
**Editing Prolog Code**
Prepare source files using any convenient editor. The standard file extension for Prolog files
is .pl


If you want to use emacs, include this in your .emacs file in your home directory:
(setq auto-mode-alist
(cons (cons "\\.pl" 'prolog-mode)
auto-mode-alist))
(Without this, emacs is going to think you're writing in perl.)
There are other versions of emacs Prolog mode if you want to try one - see e.g. ​Using
SWI-Prolog with GNU-Emacs​. However, the default mode should be fine for 341.
**Debugging**
SWI Prolog provides two interfaces to the debugger: a text-based and a graphical interface:
● Overview of the debugger
● The graphical debugger
The graphical debugger doesn't seem to be installed with the version of Prolog on the Lab
linux machines, unfortunately. It is on the Lab Windows machines, though.
For old-school debugging use the write goal. For example, here it is in the body of a rule:
notworkingyet(A) :-
complicated(A),
write('the result after calling complicated is: \n'), write(A),
yetmorecomplicated(A).


For running the expert system on MAC OS steps.

1. Open command line terminal enter command swipl.
2. Enter command ?- ['/users/profile/path of the expert system/Ai_Project.pl'].
3. Enter the details asked by the system.
4. Follow the regime provided by the system and after 30 days use it again to know
    the changes going through your body.


