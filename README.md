# Fibonacci

Generage framegraph
```bash
ruby flamegraph.rb
```

the html file will be generated on `./dist/index.html`. You can open it directly or start webserver with `./bin/server.sh`. Run `./bin/setup.sh` if you don't have http-server npm package installed.


Start interactive ruby with `Fibonacci` class
```bash
irb -r ./fibonacci.rb
```


### Example of code using Array

```ruby
@cache = [0,1]

def fib(n)
  return @cache[n] if @cache[n]

  @cache[n] = fib(n-1) + fib(n-2)
end
```
