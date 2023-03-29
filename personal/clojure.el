(setq cider-save-file-on-load nil)

(setq clojure-toplevel-inside-comment-form t)

(eval-after-load 'clojure-mode
  '(define-clojure-indent
     (train-n 3)
     (for-all 1)
     (fdef 1)
     (mlet 1)
     (alet 1)
     ;; (async 1)

     (defapi '(2 nil nil (1)))
     (server 2)
     (sniptest 1)
     (reg-event-db 1)
     (reg-sub 1)
     (reg-sub-raw 1)
     (reg-event-fx 1)
     (reg-fx 1)
     (reg-cofx 1)
     (at-media 1)
     (GET 2)
     (not-join 1)
     (recursive-path 2)
     (wcar 1)))
