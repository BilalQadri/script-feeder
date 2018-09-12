(defun hov ()
  (interactive)
  
  (message "h")
  (buffer-substring-no-properties (mark) (point)))

(defun evali (in)
  
  (message in)
  (cadr (slime-eval `(swank:eval-and-grab-output ,in))))



(defun selct ()
  (interactive)
  (backward-up-list)
  (mark-sexp)
  (evali (concat "(echo:send (ps " (hov) ") \"" (substring (buffer-name) 0 -6) "\")")))



(define-key lisp-mode-map [remap isearch-forward] 'selct)


;(substring "script0" 0 -1)
