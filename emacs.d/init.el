;; Set up packages
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	    '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Bootstrap 'use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-term-color-vector
   [unspecified "#20201d" "#d73737" "#60ac39" "#ae9513" "#6684e1" "#b854d4" "#6684e1" "#a6a28c"] t)
 '(custom-safe-themes
   (quote
    ("a19265ef7ecc16ac4579abb1635fd4e3e1185dcacbc01b7a43cf7ad107c27ced" "cc71cf67745d023dd2e81f69172888e5e9298a80a2684cbf6d340973dd0e9b75" "c614d2423075491e6b7f38a4b7ea1c68f31764b9b815e35c9741e9490119efc0" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "0961d780bd14561c505986166d167606239af3e2c3117265c9377e9b8204bf96" "16dd114a84d0aeccc5ad6fd64752a11ea2e841e3853234f19dc02a7b91f5d661" "065efdd71e6d1502877fd5621b984cded01717930639ded0e569e1724d058af8" "a61109d38200252de49997a49d84045c726fa8d0f4dd637fce0b8affaa5c8620" default)))
 '(fci-rule-color "#3E4451")
 '(fringe-mode 6 nil (fringe))
 '(linum-format (quote dynamic))
 '(package-selected-packages
   (quote
    (spacemacs-theme helm-tramp org-pdfview pdf-tools beacon mark-multiple switch-window anti-zenburn-theme color-theme-modern flatui-theme flycheck company hungry-delete expand-region markdown-mode auctex org-bullets ace-window which-key cyberpunk-theme base16-theme use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 2.5)))))
(put 'narrow-to-region 'disabled nil)
