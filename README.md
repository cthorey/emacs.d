Emacs Configuration file 
========================

This emacs conf. file is based on Cask & Pallet.
You can follow the instruction on [cask](http://cask.readthedocs.org/en/latest/) to install Cask properly.

Once that done,  you have to make  sure the first line  of the init.el
file pointed to  the right **cask.el** file.  When  using **brew** for
the installation, a symlink of this file should be located in:

- ``/usr/local/share/emacs/site-lisp/cask/cask.el``

If it is not the case, go to

-``/usr/local/share/emacs/site-lisp/``

From here, you can create a  ``cask`` directory if it does not already
exist.   Then you  need  to symlink  the ``cask.el``  as  well as  the
``cask-bootstrap.el``  files  of  the installation  folder  into  that
directory. For  instance, using  brew on  mac OS X  gives once  in the
``cask``directory:

- ``ln -s //usr/local/Cellar/cask/0.7.2/share/emacs/site-lisp/cask-bootstrap.el
  cask-bootstrap.el``
- ``ln -s //usr/local/Cellar/cask/0.7.2/share/emacs/site-lisp/cask.el cask.el``

You can also  simply change the first line of  the ``init.el`` file to
point to right ``cask.el``file on your machine.

Setting up autopep8
-------------------

Another thing  to make sure is  that autopep8 is correctly  install on
your machine. Just tape

```
autopep8
```

in a terminal. If not installed, you can install it with pip

``` 
pip install autopep8
```

Then, you  have to  point out  the right path  to **autopep8**  in the
different place  in the **autopep.el**  file in the setting  folder of
the .emacs.d/ folder. 

