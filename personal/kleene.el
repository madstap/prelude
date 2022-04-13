(use-package parseedn :ensure t)
(require 'parseedn)

(use-package f :ensure t)
(require 'f)

(defun kleene_mfa ()
  (interactive)
  (let ((token (parseedn-read-str
                (f-read-text "~/.kleene/tmp/aws-mfa-token.edn"))))
    (setenv "AWS_SECRET_ACCESS_KEY" (gethash ':secret-access-key token))
    (setenv "AWS_ACCESS_KEY_ID" (gethash ':access-key-id token))
    (setenv "AWS_SESSION_TOKEN" (gethash ':session-token token))))
