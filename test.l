(with-open-file (out "test.dat" :direction :output)
                (dotimes (x 10) (print x out)))

; => nil

(with-open-file (in "test.dat" :direction :input)
                (let (num)
                  (while (setq num (read in nil)) (print num))))
; 0
; 1
; ...
; 10
; => nil


