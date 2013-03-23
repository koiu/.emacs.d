;;http://www.kanasansoft.com/weblab/2011/07/htmlize-and-browse.html
(defun htmlize-and-browse ()
  (interactive)
  (defcustom
    htmlize-and-browse-directory-path temporary-file-directory
    "htmlize-and-browse-temporary-file-directory"
    :type 'string
    :group 'htmlize-and-browse)
  (setq htmlize-and-browse-buffer-file-name (concat "htmlize-and-browse-" (format-time-string "%Y%m%d%H%M%S" (current-time)) ".html"))
  (setq htmlize-and-browse-buffer-file-path (concat htmlize-and-browse-directory-path htmlize-and-browse-buffer-file-name))
  (with-current-buffer (htmlize-buffer)
    (write-file htmlize-and-browse-buffer-file-path)
    (set-buffer-modified-p nil)
    (kill-buffer htmlize-and-browse-buffer-file-name)
    (shell-command (concat "gnome-open " htmlize-and-browse-buffer-file-path))
    ))
