;;; packages.el --- dotfiles Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(setq dotfiles-packages
    '(
      ;; package dotfiless go here
      magit
      ))

;; List of packages to exclude.
(setq dotfiles-excluded-packages '())

;; For each package, define a function dotfiles/init-<package-dotfiles>
;;
(defun dotfiles/init-magit()
  "Initialize my package"
  (use-package magit
    :defer t
    :init
    (add-hook 'magit-blame-mode-hook
              (lambda ()
                (evil-leader/set-key-for-mode 'magit-blame-mode "h" 'magit-show-commit)))
    )
  )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
