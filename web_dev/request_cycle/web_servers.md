# 1. Linux design philosophies
Minimalist, modular software. Sounds like good coding practices
for OOL. Each program should do one thing well, portability is more 
important than efficiency. There's more of a preference to simplicity than perfection.
Lots of peopel have written articles or rules on the philosophies, but this seems to be the overarching theme. 

# 2. VPS? huh?
VPS is a Virtual Private Server. Basically a bit of space on some server or computer somewhere that when activated with whatever scripts becomes a web server. It's nice for running tests or brief, short lived sites / web apps. If you have a really light server load
it could be the way to go, or if you need a temporary place for your site to live but it can get expensive.

# 3. Bonus. Why is it bad to run programs as root user on Linux?
I would guess that leaving root opens up for brute force attacks and the like. 
Then they could change your site from being a place to buy used tennis rackets to
a site about why used tennis rackets are a waste of money. Not cool.