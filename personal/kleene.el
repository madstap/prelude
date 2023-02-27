(use-package parseedn :ensure t)
(require 'parseedn)

(use-package f :ensure t)
(require 'f)

(defun kleene-mfa ()
  (interactive)
  (let ((token (parseedn-read-str
                (f-read-text "~/.kleene/tmp/aws-mfa-token.edn"))))
    (setenv "AWS_SECRET_ACCESS_KEY" (gethash ':secret-access-key token))
    (setenv "AWS_ACCESS_KEY_ID" (gethash ':access-key-id token))
    (setenv "AWS_SESSION_TOKEN" (gethash ':session-token token))))

(defun kleene-remote-repl ()
  (interactive)
  (let ((shell-out (shell-command-to-string "bhs remote-repl --cider")))
    (let ((config (split-string shell-out ":")))
      (let ((host (car config))
            (port (cadr config))
            (dir (caddr config)))
        (cider-connect `(:host ,host :port ,port :project-dir ,dir))))))
