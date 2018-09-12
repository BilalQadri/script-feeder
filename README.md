# script-feeder
It may be used to send Parenscript code snippet (translated to JavaScript) from Emacs to browser for immediate evaluation.


Proper procedure is followed to make all pieces work together:

-  Put mark.el file into .emacs.d folder and paste the following code into .emacs and evaluate it.
```

(load-file "PATH/.emacs.d/mark.el")
 
```
- Load CLWS and Parenscript packages from quicklisp into the Lisp image.
- Load [https://github.com/BilalQadri/echo](Echo) in your common lisp image.

- Put index.js in your HTML file.

- Put cursor at opening of the parenthesis and press CTRL + s, your code will be translated and evaluated in the browser.


##### It can used for browser extensions. Please use background0.lisp and script0.lisp names for script files.



## TODO

- Make a repl in comint mode for easy evaluation.
