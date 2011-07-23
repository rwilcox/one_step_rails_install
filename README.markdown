Do you know how hard it is to get Rails 3 project up and running on a fresh machine?
========================

Have you ever thought about how hard it is to get Rails running on a fresh machine?

No? I have. There are (at least) 8 steps:

The steps are:

  1. Install [RVM](http://beginrescueend.com/)
  2. Complile a Ruby using RVM
  3. rvm use (compiled ruby)
  4. rvm gemset create NAME
  5. echo "rvm use (gemset name)@(compiled ruby) > .rvmrc
  6. active the gemset you created
  7. gem install bundler
  8. bundle install

Add at least two more steps to this (install Git, install Developer tools), and you someone who (at best) just wants to get the job done, instead of getting the job done right.

Why so many steps?
=============================

  1. Best practices in the Ruby community say RVM is a great idea. I find it incredible for running multiple Rails projects on my machine.
  
  2. We love [Bundler](http://gembundler.com/). It's better than what we had before
  
  3. As software grows in power, it grows in complexity. I expect additional steps in the next year or two to set up a generic Rails development machine.
  
Does it have to be so hard?
============================

No. Computers can be used to automate away the complexity.

Goal of this project
===========================

To restore the "one step Rails installation process". Or at least get it down to two steps:

  1. Step one: Download this shell script
  2. Step two: Run the shell script

Help out!
============================

Want to help? I'm just one guy, hacking on this as he discovers problems getting Rails set up for people.

**Your** help would be greatly appreciated. Know a designer that needs Rails on their machine? Use this shell script, and improve it when it doesn't work!

Buying a new machine, and need to get Rails up? Use this shell script instead of doing everything yourself!

License
===========================

License
(The MIT License)

Copyright (c) 2011 Ryan Wilcox

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.