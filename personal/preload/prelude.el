(defmacro comment (&rest body)
  "Comment out one or more s-expressions."
  nil)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)
