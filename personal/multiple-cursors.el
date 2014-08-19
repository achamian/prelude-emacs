;;; multiple-cursors.el ---
;;; Commentary:
;;; Code:


(prelude-ensure-module-deps '(multiple-cursors))

(global-set-key (kbd "C-.") 'mc/mark-next-like-this)
(global-set-key (kbd "C-,") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-!") 'mc/mark-all-like-this)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

;;; multiple-cursors.el ends here
