erb2haml
========
**erb2haml** adds a simple rake task to your Rails app to converts all ERb HTML files in `APP_HOME/app/views/` to Haml.

Existing Haml files are untouched.

Getting Started
---------------

1. Add `gem "erb2haml"` to the development group in your Gemfile.

    Either add the line `gem "erb2haml", :group => :development` to your `Gemfile`, or    
        group :development do
          ...
          gem "erb2haml"         # Add this line
          ...
        end

2. Run `rake haml:convert_erbs`
3. Watch your ERB files getting converted to haml.

And that's it!

Copyright
---------
Copyright (c) 2011 David Leung. See LICENSE for further details.

