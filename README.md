Emacs Configuration file 
========================

This emacs conf. file is based on Cask & Pallet.
You can follow the instruction on [cask](http://cask.readthedocs.org/en/latest/) to install Cask properly.
Once that  done, you have  to make  sure the  first line  of the
init.el file pointed to the right **cask.el** file.

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

