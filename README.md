Candy Chain
===========

Candy Chain is a colourful and subtle colour theme for Emacsen. It's supposed
to highlight what matters to you, while toning down less important things.

![](http://dl.dropbox.com/u/4429200/candy-chain.png)


Installation
------------

You first need to get the [color-theme][] package. If it's not available on
your package manager, just build it from the releases:

    $ wget http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz
    $ tar -xzf color-theme*.tar.gz
    $ cd color-theme*
    $ sudo make install
    
Then, get the theme's source:

    $ cd ~/.emacs.d/vendor
    $ git clone git://github.com/killdream/candy-chain.git
    
And install it on your emacs config file:

    (add-to-list 'load-path "~/.emacs.d/vendor/candy-chain")
    (require 'color-theme)
    (require 'candy-chain)
    
    (color-theme-initialize)
    (color-theme-candy-chain)
    

Licence
-------

This theme is released under GPL v2. See COPYING for `less` information:

    $ cd ~/.emacs.d/vendor/candy-chain
    $ less COPYING

(Of course, given you've already cloned the source...)
