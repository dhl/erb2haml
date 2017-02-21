# erb2haml

**erb2haml** gives your Rails app rake tasks to convert or replace all
ERB view templates to [Haml](http://haml.info/).

## Getting Started

### Enabling the rake tasks

Add `gem "erb2haml"` to the development group in your `Gemfile`. You can
do this by adding to your Gemfile the line

```ruby
gem "erb2haml", :group => :development
```
    
_or_ if you prefer the block syntax

```ruby
group :development do 
  # ... 
  gem "erb2haml"            # Add this line 
  # ... 
end
```

If you use haml version 4.0 or over (>= 4.0), you need to add `html2haml` as well

    `gem "html2haml", :group => :development`


### Converting ERB Templates to Haml

After enabling the rake tasks, you can convert your ERB templates to
Haml in two ways, depending on whether you would like to keep the
original ERB templates or not.

| Keep the original ERBs? | Rake task to run         |
| :---------------------: | ------------------------ |
|           Yes           | `rake haml:convert_erbs` |
|           No            | `rake haml:replace_erbs` |

## License

Copyright (c) 2011-2013 David Leung and [contributors](https://github.com/dhl/erb2haml/contributors). See LICENSE for further details.
