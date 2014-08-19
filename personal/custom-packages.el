;;; custom-packages.el --- Melpa packages to load
;;; Commentary:
;;; Code:

(defvar my-packages
  '(markdown-mode+
    protobuf-mode
    rspec-mode
    wgrep))

(prelude-require-packages my-packages)

;;; custom-packages.el ends here
