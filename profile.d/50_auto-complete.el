(add-to-list 'load-path "~/.emacs.d/bigprogram.d/popup-el/");popup.elが必要

;;http://cx4a.org/software/auto-complete/manual.ja.html
(add-to-list 'load-path "~/.emacs.d/bigprogram.d/auto-complete/");ここにインストールしてるのでー

(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)

;;自動で補完画面を出すならt。補完キーを押すまで補完画面を出さないならnil
(setq ac-auto-start nil)

;;ヘルプを即表示
(setq ac-quick-help-delay 0)

;; 大文字・小文字を区別しない
(setq ac-ignore-case t)

;;補完キー指定
(ac-set-trigger-key "TAB")
(define-key ac-mode-map (kbd "C-,") 'auto-complete)
(setq ac-use-menu-map t)

;;なんか崩れるから最適化しない
(setq popup-use-optimized-column-computation nil)

