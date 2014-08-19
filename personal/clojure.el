;;; clojure.el -- Extension to prelude-clojure
;;; Commentary:
;;; Code:

(require 'prelude-clojure)
(require 'prelude-key-chord)

(prelude-ensure-module-deps '(clj-refactor
                              clojure-test-mode
                              company-cider
                              key-chord))

(eval-after-load 'company '(add-to-list 'company-backends 'company-cider))

(add-hook 'clojure-mode-hook (lambda ()
                               (clj-refactor-mode 1)
                               (clojure-test-mode 1)
                               (cljr-add-keybindings-with-prefix "C-c C-m")))

(prelude-ensure-module-deps '(cider))
(setq cider-repl-wrap-history t)
(setq cider-repl-history-size 1000)
(setq cider-repl-history-file "~/.nrepl-history")

(eval-after-load 'clojure-mode
  '(progn
     (define-key clojure-mode-map (kbd "C->") 'cljr-thread)
     (define-key clojure-mode-map (kbd "C-<") 'cljr-unwind)
     (define-key clojure-mode-map (kbd "M-C->") 'cljr-thread-first-all)
     (define-key clojure-mode-map (kbd "M-C-?") 'cljr-thread-last-all)))

(eval-after-load 'key-chord-mode
  '(progn
     (key-chord-define-global "c[" 'cljr-cycle-coll)
     (key-chord-define-global "i[" 'cljr-cycle-if)
     (key-chord-define-global "p[" 'cljr-cycle-privacy)
     (key-chord-define-global "s[" 'cljr-cycle-stringlike)
     (key-chord-define-global "ww" 'wgrep-change-to-wgrep-mode)
     ;; (key-chord-define-global "xx" 'gui-diff-last-failure)
     ))

;;; clojure.el ends here
