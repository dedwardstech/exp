# Binary Expression Tree

[![godoc reference](https://godoc.org/github.com/dedwardstech/exp?status.svg)](https://godoc.org/github.com/dedwardstech/exp)

(This package is a fork of https://github.com/alexkappa/exp)


Package exp implements a binary expression tree which can be used to evaluate
arbitrary binary expressions. You can use this package to build your own
expressions however a few expressions are provided out of the box.

## Installation

```
$ go get github.com/dedwardstech/exp/...
```

## Usage

```Go
import "github.com/dedwardstech/exp"

fmt.Printf("%t\n", exp.Or(exp.And(exp.True, exp.Or(exp.True, exp.False)), exp.Not(exp.False)).Eval(nil)) // true
```

It is also possible to use text to describe expressions. **Warning** this feature is not battle tested so use with caution.

```Go
import "github.com/dedwardstech/exp"

x, err := exp.Parse(`(foo >= 100.00)`)
if err != nil {
	// handle error
}
x.Eval(exp.Map{"foo": "150.00"}) // true
```

Currently, only the following operators are supported.

|Operator|Symbol|Data Type|
|-|-|-|
|`And`|`&&`||
|`Or`|<code>&#124;&#124;</code>||
|`Equal`, `Eq`|`==`|`string`, `float64`|
|`NotEqual`, `Neq`|`!=`|`string`, `float64`|
|`GreaterThan `, `Gt`|`>`|`string`, `float64`|
|`GreaterThanEqual `, `Gte`|`>=`|`string`, `float64`|
|`LessThan `, `Lt`|`<`|`string`, `float64`|
|`LessThanEqual `, `Lte`|`<=`|`string`, `float64`|

## Documentation

API documentation is available at [godoc](https://godoc.org/github.com/dedwardstech/exp).
