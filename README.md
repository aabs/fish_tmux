# Fish Tmux
> A plugin to manage tmux sessions easily

Fish Tmux is a plugin allowing simplified command to enter and leave tmux
sessions.  It uses fzf to choose between sessions and allows the easy return to
previous sessions.

![](header.png)

## Installation

Fisher:

```sh
fisher add aabs/fish_tmux
```

## Usage example

list available sessions

```shell
$ tm ls

anzograph
dotfiles
f2n
fd2
fdg2
fso
hi
mapi
p2
rdf
rdfutil
tq
```

open a session

```shell
$ tm open

  tq
  rdfutil
  rdf
  p2
  mapi
  hi
  fso
  fdg2
  fd2
  f2n
  dotfiles
> anzograph
  12/12
```

Other commands:

```shell
$ tm

Command Usage for tm
--------------------
fishdots plugin for using tmux

tm <command> [options] [args]

tm help Display help for command tm
tm set  set current TMUX session
tm new  <session_name> create a new TMUX session
tm detach       disconnect from the current session
tm goto <name> change tmux sessions
tm home got to the current home tmux session
tm ls   list all available tmuxers
tm open open from list dialog
tm session      display the current session name
```


## Release History

* 1.0.0
    * CHANGE: Initial Creation

## Meta

Andrew Matthews – [@aabs](https://twitter.com/aabs) – industrial.inference@gmail.com

Distributed under the GPL3 license. See ``LICENSE`` for more information.

[https://github.com/aabs/fish_tmux](https://github.com/aabs/fish_tmux)

## Contributing

1. Fork it (<https://github.com/yourname/yourproject/fork>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request

<!-- Markdown link & img dfn's -->
[npm-image]: https://img.shields.io/npm/v/datadog-metrics.svg?style=flat-square
[npm-url]: https://npmjs.org/package/datadog-metrics
[npm-downloads]: https://img.shields.io/npm/dm/datadog-metrics.svg?style=flat-square
[travis-image]: https://img.shields.io/travis/dbader/node-datadog-metrics/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/dbader/node-datadog-metrics
[wiki]: https://github.com/yourname/yourproject/wiki

<!--
 vim: set ts=2 sw=2 tw=80 et foldmethod=syntax foldlevelstart=20 : 
 -->
