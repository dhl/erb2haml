# erb2haml

**erb2haml** gives your Rails app rake tasks to convert or replace all
ERB view templates to [Haml](http://haml.info/).

## Getting Started

### Enabling the rake tasks

Add `gem "erb2haml"` to the development group in your `Gemfile`. You can
do this by adding the line

    `gem "erb2haml", :group => :development`
    
_or_ if you prefer the block syntax

    group :development do 
      # ... 
      gem "erb2haml"            # Add this line 
      # ... 
    end

### ERB-to-Haml Template Conversion

After enabling the rake tasks, you can convert your ERB templates to
Haml in two ways, depending on whether you would like to keep the
original ERB templates or not.

| Keep the original ERBs? | Rake task to run         |
| :---------------------: | ------------------------ |
|           Yes           | `rake haml:convert_erbs` |
|           No            | `rake haml:replace_erbs` |

## License

Copyright (c) 2011-2013 David Leung and [contributors](https://github.com/dhl/erb2haml/contributors). See LICENSE for further details.
