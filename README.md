# thor-bug-example

simply `bundle install`, then run command: `bin/example subdir all your_name --statement "HI GEE DANG" --say-hi` and then in the `pry` session, type `options`. you'll notice that you get this output:
```ruby
{"statement"=>"Bye", "say_hi"=>true}
```

As you can see, the default statement is used instead of the one set in the CLI, but the boolean value actually changes.