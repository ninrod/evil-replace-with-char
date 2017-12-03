(setq files '("evil-replace-with-char.el"))
(setq byte-compile--use-old-handlers nil)
(mapc #'byte-compile-file files)


