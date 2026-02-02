(require 'package)
(message "INIT LOADED")
;; Package repositories
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu"   . "https://elpa.gnu.org/packages/")))

(package-initialize)

;; Refresh package list if needed
(unless package-archive-contents
  (package-refresh-contents))

;; Install evil if not installed
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(setq evil-want-keybinding nil) ;; set before evil-mode if using evil-collection later
(evil-mode 1)
