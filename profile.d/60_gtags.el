(require 'gtags)
(require 'anything-gtags)
(setq gtags-suggested-key-mapping);http://d.hatena.ne.jp/Nos/20120723/1343204409
(setq gtags-auto-update t);タグファイルの自動更新

(defun ncaq-gtags ()
  (local-set-key (kbd "C-.")	'anything-gtags-select)
  (local-set-key (kbd "C->")	'gtags-find-symbol)
  (local-set-key (kbd "C-M-.")	'gtags-find-with-grep)
  (local-set-key (kbd "M-.")	'gtags-pop-stack))
(add-hook 'gtags-mode-hook 'ncaq-gtags)

(defvar c-mode-common-hook)
(add-hook 'c-mode-common-hook 'gtags-mode)
