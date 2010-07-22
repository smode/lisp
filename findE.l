(defun findandoutE incsv outcsv
  (while (setq line (read incsv))
    (cond (string-match "^E" line) (write line outcsv))))

(with-open-file (erlog "E.log" :direction :input)
                (with-open-file (outcsv "out.log" :direction :output)
                                (findandoutE erlog outcsv)))

