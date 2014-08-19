;;; appearance.el --- Looks
;;; Commentary:
;;; Code:

(disable-theme 'zenburn)

(load-theme 'solarized-dark t)

(prelude-ensure-module-deps '(solarized-theme))

(global-linum-mode t)

(set-face-attribute 'default nil
                    :family "Monaco"
                    :height 140)

(setq ring-bell-function #'ignore)

;;; appearance.el ends here
