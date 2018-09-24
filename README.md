# README
WULO Limited Artificial Intelligence

This is a limited A.I. assistant and oracle built on Ruby on Rails which extends it's usability via command-line / terminal execution of external programs. 

It has a built-in Tarot program and a journaling feature meant to capture the thoughts of a cyberdeck's user. This creates a database of information that can be used to extend WULO's usefulness in the future, and also encourages the user to *pay attention* to the events of each day. Between cultivated news, advice generated via randomized divination, journaling and practical functions, WULO as an limited intelligence will serve as the primary User Interface of these cyberdecks. 

**Important Notes** 

Wulo is currently built on a Raspberry Pi 3+ and the Raspbian operating system. Currently running Bootsnap generates errors and prevents Rails from operating correctly; remove it from the Gemfile and also comment out the call to start Bootsnap in the Config file in the Config directory of the application. 


