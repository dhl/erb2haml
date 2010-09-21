About
=====
**erb2haml** is a simple rake script for Rails that converts all ERB files in `APP\_HOME/app/views/` that hasn't already been converted to haml.

It will leave all your origional ERB files alone, just to be sure.

To use it, make sure you are inside your Rails app, then do

    rake haml:convert\_erbs

Getting Started
===============
1. Put the script `haml.rake` inside `lib/script` of your Rails app.
2. Run `rake haml:convert\_erbs`
3. Watch your ERB files getting converted to haml.

And that's it!

Dependencies
============
This script depends, obviously, on Haml.

    gem install haml

and Also, please ensure that html2haml is in your path.

TODO
====
When I have more time, I'll package this up as a Rails plugin.

For the brave among us, having the option to delete converted ERBs might be nice, too.

License
=======
Copyright (c) 2010 David Leung

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

Credits
======
David Leung: david at davidslab dotcom
