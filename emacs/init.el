(require 'package)
(add-to-list 'package-archives
 '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (package-initialize)
  (unless (package-installed-p 'scala-mode2)
  (package-refresh-contents) (package-install 'scala-mode2))
 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("a041a61c0387c57bb65150f002862ebcfe41135a3e3425268de24200b82d6ec9" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

 ;; Set default font
 (set-face-attribute 'default nil
                    :family "Consolas"
                    :height 110
                    :weight 'normal
                    :width 'normal)
 )


(when (equal system-type 'darwin)
  (setenv "PATH" (concat "/opt/local/bin:/usr/local/bin:" (getenv "PATH")))
  (push "/opt/local/bin" exec-path)
  (push "/Users/dpetyus/Development/apps/scala/bin" exec-path)
  )

;;(require 'scala-mode2)
;;(add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))
;;(add-to-list 'load-path "~/.emacs.d/ensime/elisp/")
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(add-to-list 'load-path "~/.emacs.d/elpa")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
