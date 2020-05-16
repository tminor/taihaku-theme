;;; taihaku-theme.el --- A more comprehensive cherry-blossom theme
;;
;; Copyright (C) 2020 Thomas Minor <minort@gmail.com>
;;
;; This file is not part of GNU Emacs.
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 3, or (at
;; your option) any later version.
;;
;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:
;;
;; A more comprehensive theme based on `cherry-blossom'.

;;; Code:

(defun taihaku-theme-lighten-hex (hex percent)
  "Lightens HEX color by PERCENT.

PERCENT should be a float from 0.0 to 1.0 and HEX should be a
string representing a hexidecimal color.  Returns a string
representing a lightened version of HEX."
  (interactive))

(defun taihaku-theme-darken-hex (hex percent)
  "Darkens HEX color by PERCENT.

PERCENT should be a float from 0.0 to 1.0 and HEX should be a
string representing a hexidecimal color.  Returns a string
representing a darkened version of HEX."
  (interactive))

(defun taihaku-theme-color (name)
  "Read the color NAME (e.g. color5) from the X resources."
  (x-get-resource name ""))

(deftheme taihaku "A theme based on the original
cherry-blossom theme.")

(let* ((foreground "#EAEAEA")
       (background "#000000")
       (cod-gray "#1f1f1f")
       (razzmataz "#DD0B53")
       (green "#0F0")
       (golden-glow "#FEDA98")
       (dull-lavendar "#9A99E7")
       (purple-heart "#742FD1")
       (turquoise "#3EDAD4")
       (mine-shaft "#3D3D3D")
       (waikawa-gray "#606A92")
       (cotton-candy "#FFB5D8")
       (wisteria "#A069AA")
       (yellow "#FF0")
       (brilliant-rose "#F94FA0")
       (plum "#A044A0")
       (mulled-wine "#514B6C")
       (white "#FFFFFF")
       (selection "#65A7E2"))
  (custom-theme-set-faces
   'taihaku

   ;; Built-in
   ;; basic coloring
   `(button                   ((t (:underline t :foreground ,dull-lavendar))))
   `(link                     ((t (:foreground ,plum :underline t :weight bold))))
   `(link-visited             ((t (:foreground ,wisteria :underline t
                                   :weight normal))))
   `(default                  ((t (:foreground ,foreground :background ,background))))
   `(cursor                   ((t (:foreground ,green :background ,green
			           :box (:line-width -1 :style released-button)))))
   `(escape-glyph             ((t (:foreground ,yellow :bold t))))
   `(fringe                   ((t (:foreground ,foreground :background ,background))))
   `(header-line              ((t (:foreground ,golden-glow
                                   :background ,background
                                   :box (:line-width -1 :style released-button)))))
   `(highlight                ((t (:background ,background))))
   `(success                  ((t (:foreground ,green :weight bold))))
   `(warning                  ((t (:foreground ,razzmataz :weight bold))))

   `(mode-line                ((((class color) (min-colors 88))
                                (:background "#222222" :foreground "#8c86e4"))
                               (t (:background "#2b283d" :box nil
                                   :foreground "#8c86e4" :height 85))))
   `(mode-line-inactive       ((((class color) (min-colors 88))
                                (:background "#111111"
                                 :foreground "#000000"))
			       (t (:weight light :box nil
			           :background "#202339" :foreground "#000000"
			           :inherit (mode-line)))))
   '(mode-line-emphasis       ((t (:weight bold))))
   '(mode-line-highlight      ((t (:box nil (t (:inherit (highlight)))))))
   '(mode-line-buffer-id      ((t (:weight bold :box nil))))

   `(line-number ((t (:foreground ,mine-shaft))))
   `(line-number-current-line ((t (:bold t))))
   `(tooltip                  ((t (:inherit default
				   :background ,waikawa-gray
				   :foreground ,foreground))))

   ;; compilation
   `(compilation-column-face ((t (:foreground ,golden-glow))))
   `(compilation-enter-directory-face ((t
					(:foreground ,purple-heart))))
   `(compilation-error-face ((t (:foreground ,razzmataz
				 :weight bold :underline t))))
   `(compilation-face ((t (:foreground ,foreground))))
   `(compilation-info-face ((t (:foreground ,dull-lavendar))))
   `(compilation-info ((t (:foreground ,green :underline t))))
   `(compilation-leave-directory-face ((t (:foreground ,green))))
   `(compilation-line-face ((t (:foreground ,golden-glow))))
   `(compilation-line-number ((t (:foreground ,golden-glow))))
   `(compilation-message-face ((t (:foreground ,dull-lavendar))))
   `(compilation-warning-face ((t (:foreground ,razzmataz
				   :weight bold :underline t))))
   `(compilation-mode-line-exit ((t (:foreground ,green
				     :weight bold))))
   `(compilation-mode-line-fail ((t (:foreground ,razzmataz
				     :weight bold))))
   `(compilation-mode-line-run ((t (:foreground ,golden-glow
				    :weight bold))))

   ;; grep
   `(grep-context-face ((t (:foreground ,foreground))))
   `(grep-error-face ((t (:foreground ,razzmataz :weight bold
			  :underline t))))
   `(grep-hit-face ((t (:foreground ,dull-lavendar))))
   `(grep-match-face ((t (:foreground ,razzmataz :weight bold))))
   `(match ((t (:background ,background :foreground ,razzmataz
		:weight bold))))

   ;; isearch
   `(isearch ((t (:foreground ,golden-glow :weight bold
		  :background ,background))))
   `(isearch-fail ((t (:foreground ,foreground
		       :background ,razzmataz))))
   `(lazy-highlight ((t (:foreground ,golden-glow :weight bold
			 :background ,background))))

   `(menu ((t (:foreground ,foreground :background ,background))))
   `(minibuffer-prompt ((t (:foreground ,dull-lavendar))))
   `(region ((t (:background ,dull-lavendar))
             (t :inverse-video t)))
   `(secondary-selection ((t (:background ,background))))
   `(trailing-whitespace ((t (:background ,razzmataz))))
   `(vertical-border ((t (:foreground ,foreground))))

   ;; font lock
   `(font-lock-builtin-face ((t (:foreground ,dull-lavendar
				 :weight bold))))
   `(font-lock-comment-face ((t (:foreground ,waikawa-gray))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,mine-shaft))))
   `(font-lock-constant-face ((t (:foreground ,turquoise))))
   `(font-lock-doc-face ((t (:foreground ,waikawa-gray))))
   `(font-lock-function-name-face ((t (:foreground ,brilliant-rose))))
   `(font-lock-keyword-face ((t (:foreground ,purple-heart
				 :weight bold))))
   `(font-lock-negation-char-face ((t (:foreground ,green
				       :weight bold))))
   `(font-lock-preprocessor-face ((t (:foreground ,dull-lavendar))))
   `(font-lock-regexp-grouping-construct ((t
					   (:foreground ,brilliant-rose
					    :weight bold))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,wisteria
					      :weight bold))))
   `(font-lock-string-face ((t (:foreground ,cotton-candy))))
   `(font-lock-type-face ((t (:foreground ,razzmataz))))
   `(font-lock-variable-name-face ((t (:foreground ,golden-glow))))
   `(font-lock-warning-face ((t (:foreground ,yellow :weight bold))))
   `(c-annotation-face ((t (:inherit font-lock-constant-face))))

   ;; which-function-mode
   `(which-func ((t (:foreground ,dull-lavendar))))

;;; Third-party

   ;; ace-jump
   `(ace-jump-face-background
     ((t (:foreground ,foreground :background ,background :inverse-video nil))))
   `(ace-jump-face-foreground
     ((t (:foreground ,green :background ,background :inverse-video nil))))

   ;; auctex
   `(font-latex-bold-face ((t (:inherit bold))))
   `(font-latex-warning-face ((t (:foreground nil :inherit font-lock-warning-face))))
   `(font-latex-sectioning-5-face ((t (:foreground ,razzmataz :weight bold ))))
   `(font-latex-sedate-face ((t (:foreground ,golden-glow))))
   `(font-latex-italic-face ((t (:foreground ,turquoise :slant italic))))
   `(font-latex-string-face ((t (:inherit ,font-lock-string-face))))
   `(font-latex-math-face ((t (:foreground ,razzmataz))))

   ;; auto-complete
   `(ac-candidate-face ((t (:background ,foreground :foreground ,background))))
   `(ac-selection-face ((t (:background ,dull-lavendar :foreground ,foreground))))
   `(popup-tip-face ((t (:background ,golden-glow :foreground ,background))))
   `(popup-scroll-waikawa-gray-foreground-face ((t (:background ,dull-lavendar))))
   `(popup-scroll-waikawa-gray-background-face ((t (:background ,background))))
   `(popup-isearch-match ((t (:background ,background :foreground ,foreground))))

   `(cfw:face-sunday ((t (:background ,cod-gray :foreground ,brilliant-rose
			  :weight bold))))
   `(cfw:face-today-title ((t (:background ,mulled-wine :foreground ,golden-glow
			       :weight bold))))
   `(cfw:face-holiday ((t (:foreground ,purple-heart :background ,cod-gray
			   :weight bold))))
   `(cfw:face-default-day ((t (:foreground ,dull-lavendar :background ,cod-gray
			       :weight bold))))
   `(cfw:face-select ((t (:background ,golden-glow :foreground ,background))))
   `(cfw:face-day-title ((t (:background ,cod-gray))))
   `(cfw:face-header ((t (:foreground ,purple-heart :weight black))))
   `(cfw:face-title ((t (:height 2.0 :weight bold :foreground ,brilliant-rose))))
   `(cfw:face-toolbar ((t (:foreground ,cod-gray :background ,cod-gray))))
   `(cfw:face-toolbar-button-off ((t (:foreground ,turquoise :weight bold
				      :background ,mine-shaft
				      :box (:line-width -1
					    :style released-button)))))
   `(cfw:face-toolbar-button-on ((t (:foreground ,turquoise
				     :background ,cod-gray
				     :box (:line-width -1
					   :style pressed-button)))))
   `(cfw:face-grid ((t (:foreground ,foreground))))

   ;; company-mode
   `(company-tooltip ((t (:foreground ,foreground :background ,mine-shaft))))
   `(company-tooltip-selection ((t (:foreground ,background :background ,waikawa-gray))))
   `(company-tooltip-mouse ((t (:background ,mine-shaft))))
   `(company-tooltip-common ((t (:foreground ,dull-lavendar))))
   `(company-tooltip-common-selection ((t (:foreground ,brilliant-rose))))
   `(company-scrollbar-fg ((t (:background ,plum))))
   `(company-scrollbar-bg ((t (:background ,mulled-wine))))
   `(company-preview ((t (:background ,mulled-wine))))
   `(company-preview-common ((t (:foreground ,mulled-wine :background ,background))))
   `(company-tooltip-annotation ((t (:foreground ,turquoise))))
   `(company-tooltip-annotation-selection ((t (:foreground ,turquoise))))

   ;; clojure-test-mode
   `(clojure-test-failure-face ((t (:foreground ,razzmataz :weight bold :underline t))))
   `(clojure-test-error-face ((t (:foreground ,razzmataz :weight bold :underline t))))
   `(clojure-test-success-face ((t (:foreground ,green :weight bold :underline t))))

   ;; cperl-mode
   `(cperl-array-face ((t (:foreground ,golden-glow))))
   `(cperl-hash-face ((t (:foreground ,turquoise))))
   `(cperl-nonoverridable-face ((t (:foreground ,plum))))

   ;; diff
   `(diff-added ((t (:foreground ,green :background nil))
                 (t (:foreground ,green :background nil))))
   `(diff-changed ((t (:foreground ,golden-glow))))
   `(diff-removed ((t (:foreground ,razzmataz :background nil))
                   (t (:foreground ,razzmataz :background nil))))
   `(diff-refine-added ((t (:inherit diff-added :weight bold))))
   `(diff-refine-change ((t (:inherit diff-changed :weight bold))))
   `(diff-refine-removed ((t (:inherit diff-removed :weight bold))))
   `(diff-header ((t (:background ,background))
                  (t (:background ,foreground :foreground ,background))))
   `(diff-file-header
     ((t (:background ,background :foreground ,foreground :bold t))
      (t (:background ,foreground :foreground ,background :bold t))))

   ;; diff-hl
   `(diff-hl-change ((t (:foreground ,dull-lavendar :background ,background))))
   `(diff-hl-delete ((t (:foreground ,razzmataz :background ,background))))
   `(diff-hl-insert ((t (:foreground ,green :background ,background))))
   `(diff-hl-unknown ((t (:foreground ,golden-glow :background ,background))))

   ;; dired+
   `(diredp-display-msg ((t (:foreground ,dull-lavendar))))
   `(diredp-compressed-file-suffix ((t (:foreground ,razzmataz))))
   `(diredp-date-time ((t (:foreground ,purple-heart))))
   `(diredp-deletion ((t (:foreground ,golden-glow))))
   `(diredp-deletion-file-name ((t (:foreground ,razzmataz))))
   `(diredp-dir-heading ((t (:foreground ,dull-lavendar :background ,background))))
   `(diredp-dir-priv ((t (:foreground ,turquoise))))
   `(diredp-exec-priv ((t (:foreground ,razzmataz))))
   `(diredp-executable-tag ((t (:foreground ,green))))
   `(diredp-file-name ((t (:foreground ,dull-lavendar))))
   `(diredp-file-suffix ((t (:foreground ,green))))
   `(diredp-flag-mark ((t (:foreground ,golden-glow))))
   `(diredp-flag-mark-line ((t (:foreground ,razzmataz))))
   `(diredp-ignored-file-name ((t (:foreground ,razzmataz))))
   `(diredp-link-priv ((t (:foreground ,golden-glow))))
   `(diredp-mode-line-flagged ((t (:foreground ,golden-glow))))
   `(diredp-mode-line-marked ((t (:foreground ,razzmataz))))
   `(diredp-no-priv ((t (:foreground ,foreground))))
   `(diredp-number ((t (:foreground ,green))))
   `(diredp-other-priv ((t (:foreground ,golden-glow))))
   `(diredp-rare-priv ((t (:foreground ,razzmataz))))
   `(diredp-read-priv ((t (:foreground ,green))))
   `(diredp-symlink ((t (:foreground ,golden-glow))))
   `(diredp-write-priv ((t (:foreground ,purple-heart))))

   ;; doom-modeline
   `(doom-modeline-bar ((t (:background ,cod-gray))))
   `(doom-modeline-buffer-file ((t (:inherit mode-line
				    :weight black
				    :foreground ,brilliant-rose))))

   ;; enh-ruby-mode
   `(enh-ruby-string-delimiter-face ((t (:foreground ,dull-lavendar))))
   `(enh-ruby-op-face ((t (:foreground ,plum))))
   `(enh-ruby-regexp-delimiter-face ((t (:foreground ,purple-heart))))

   ;; ediff
   `(ediff-current-diff-A ((t (:background "#2F0000"))))
   `(ediff-current-diff-Ancestor ((t (:foreground ,foreground :background ,razzmataz))))
   `(ediff-current-diff-B ((t (:background "#182C25"))))
   `(ediff-current-diff-C ((t (:foreground ,foreground :background ,dull-lavendar))))
   `(ediff-even-diff-A ((t (:background ,background))))
   `(ediff-even-diff-Ancestor ((t (:background ,background))))
   `(ediff-even-diff-B ((t (:background ,background))))
   `(ediff-even-diff-C ((t (:background ,background))))
   `(ediff-fine-diff-A ((t (:foreground ,razzmataz :background "#2F0000" :weight bold))))
   `(ediff-fine-diff-Ancestor ((t (:foreground ,foreground :background ,razzmataz weight bold))))
   `(ediff-fine-diff-B ((t (:foreground ,green :background "#182C25" :weight bold))))
   `(ediff-fine-diff-C ((t (:foreground ,foreground :background ,dull-lavendar :weight bold ))))
   `(ediff-odd-diff-A ((t (:background ,background))))
   `(ediff-odd-diff-Ancestor ((t (:background ,background))))
   `(ediff-odd-diff-B ((t (:background ,background))))
   `(ediff-odd-diff-C ((t (:background ,background))))

   ;; erc
   `(erc-action-face ((t (:inherit erc-default-face))))
   `(erc-bold-face ((t (:weight bold))))
   `(erc-current-nick-face ((t (:foreground ,dull-lavendar :weight bold))))
   `(erc-dangerous-host-face ((t (:inherit font-lock-warning-face))))
   `(erc-default-face ((t (:foreground ,foreground))))
   `(erc-direct-msg-face ((t (:inherit erc-default))))
   `(erc-error-face ((t (:inherit font-lock-warning-face))))
   `(erc-mine-shaftl-face ((t (:inherit erc-default))))
   `(erc-highlight-face ((t (:inherit hover-highlight))))
   `(erc-input-face ((t (:foreground ,golden-glow))))
   `(erc-keyword-face ((t (:foreground ,dull-lavendar :weight bold))))
   `(erc-nick-default-face ((t (:foreground ,golden-glow :weight bold))))
   `(erc-my-nick-face ((t (:foreground ,razzmataz :weight bold))))
   `(erc-nick-msg-face ((t (:inherit erc-default))))
   `(erc-notice-face ((t (:foreground ,green))))
   `(erc-pal-face ((t (:foreground ,razzmataz :weight bold))))
   `(erc-prompt-face ((t (:foreground ,razzmataz :background ,background :weight bold))))
   `(erc-timestamp-face ((t (:foreground ,green))))
   `(erc-underline-face ((t (:underline t))))

   ;; ert
   `(ert-test-result-expected ((t (:foreground ,green :background ,background))))
   `(ert-test-result-unexpected ((t (:foreground ,razzmataz :background ,background))))

   ;; eshell
   `(eshell-prompt ((t (:foreground ,waikawa-gray :weight bold))))
   `(eshell-ls-archive ((t (:foreground ,razzmataz :weight bold))))
   `(eshell-ls-backup ((t (:inherit font-lock-comment-face))))
   `(eshell-ls-clutter ((t (:inherit font-lock-comment-face))))
   `(eshell-ls-directory ((t (:foreground ,purple-heart :weight bold))))
   `(eshell-ls-executable ((t (:foreground ,green :weight bold))))
   `(eshell-ls-unreadable ((t (:foreground ,foreground))))
   `(eshell-ls-missing ((t (:inherit font-lock-warning-face))))
   `(eshell-ls-product ((t (:inherit font-lock-doc-face))))
   `(eshell-ls-special ((t (:foreground ,golden-glow :weight bold))))
   `(eshell-ls-symlink ((t (:foreground ,turquoise :weight bold))))

   ;; eshell-egp
   `(egp-symbol-face ((t (:foreground ,brilliant-rose))))
   `(egp-dir-face ((t (:foreground ,dull-lavendar))))
   `(egp-root-face ((t (:foreground ,razzmataz))))
   `(egp-remote-face ((t (:foreground ,golden-glow))))

   ;; eshell-fringe-status
   `(eshell-fringe-status-success ((t (:foreground ,green))))
   `(eshell-fringe-status-failure ((t (:foreground ,razzmataz))))

   ;; flycheck
   `(flycheck-error
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,razzmataz) :inherit unspecified))
      (t (:foreground ,razzmataz :weight bold :underline t))))
   `(flycheck-warning
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,cotton-candy) :inherit unspecified))
      (t (:foreground ,cotton-candy :weight bold :underline t))))
   `(flycheck-info
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,green) :inherit unspecified))
      (t (:foreground ,green :weight bold :underline t))))
   `(flycheck-fringe-error ((t (:foreground ,razzmataz :weight bold))))
   `(flycheck-fringe-warning ((t (:foreground ,cotton-candy :weight bold))))
   `(flycheck-fringe-info ((t (:foreground ,green :weight bold))))

   ;; git-rebase-mode
   `(git-rebase-hash ((t (:foreground ,razzmataz))))

   ;; Gnus
   `(gnus-cite-1 ((t (:inherit font-lock-comment-face))))
   `(gnus-cite-2 ((t (:foreground ,cotton-candy))))
   `(gnus-cite-3 ((t (:foreground ,golden-glow))))
   `(gnus-group-mail-1 ((t (:foreground ,dull-lavendar :weight bold))))
   `(gnus-group-mail-1-empty ((t (:foreground ,dull-lavendar))))
   `(gnus-group-mail-3 ((t (:foreground ,dull-lavendar :weight bold))))
   `(gnus-group-mail-3-empty ((t (:foreground ,dull-lavendar))))
   `(gnus-header-content ((t (:foreground ,cotton-candy))))
   `(gnus-header-from ((t (:foreground ,foreground))))
   `(gnus-header-name ((t (:foreground ,razzmataz :weight bold))))
   `(gnus-header-subject ((t (:foreground ,dull-lavendar))))
   `(gnus-group-mail-low-empty ((t (:inherit gnus-group-mail-1-empty))))
   `(gnus-group-mail-low ((t (:inherit gnus-group-mail-1))))
   `(gnus-summary-normal-unread ((t (:foreground ,dull-lavendar))))
   `(gnus-summary-normal-read ((t (:foreground ,green))))

   ;; helm
   `(helm-header
     ((t (:foreground ,green
          :background ,background
          :underline nil
          :box nil))))
   `(helm-source-header
     ((t (:foreground ,golden-glow
          :background ,background
          :underline nil
          :weight bold
          :box (:line-width -1 :style released-button)))))
   `(helm-selection ((t (:background ,selection :foreground ,background))))
   `(helm-selection-line ((t (:background ,background))))
   `(helm-visible-mark ((t (:foreground ,background :background ,golden-glow))))
   `(helm-candidate-number ((t (:foreground ,green :background ,background))))
   `(helm-separator ((t (:foreground ,razzmataz :background ,background))))
   `(helm-time-zone-current ((t (:foreground ,green :background ,background))))
   `(helm-time-zone-home ((t (:foreground ,razzmataz :background ,background))))
   `(helm-bookmark-addressbook ((t (:foreground ,razzmataz :background ,background))))
   `(helm-bookmark-directory ((t (:foreground nil :background nil :inherit helm-ff-directory))))
   `(helm-bookmark-file ((t (:foreground nil :background nil :inherit helm-ff-file))))
   `(helm-bookmark-gnus ((t (:foreground ,purple-heart :background ,background))))
   `(helm-bookmark-info ((t (:foreground ,green :background ,background))))
   `(helm-bookmark-man ((t (:foreground ,golden-glow :background ,background))))
   `(helm-bookmark-w3m ((t (:foreground ,purple-heart :background ,background))))
   `(helm-buffer-not-saved ((t (:foreground ,razzmataz :background ,background))))
   `(helm-buffer-process ((t (:foreground ,turquoise :background ,background))))
   `(helm-buffer-saved-out ((t (:foreground ,foreground :background ,background))))
   `(helm-buffer-size ((t (:foreground ,foreground :background ,background))))
   `(helm-ff-directory ((t (:foreground ,turquoise :background ,background :weight bold))))
   `(helm-ff-file ((t (:foreground ,foreground :background ,background :weight normal))))
   `(helm-ff-executable ((t (:foreground ,green :background ,background :weight normal))))
   `(helm-ff-invalid-symlink ((t (:foreground ,razzmataz :background ,background :weight bold))))
   `(helm-ff-symlink ((t (:foreground ,golden-glow :background ,background :weight bold))))
   `(helm-ff-prefix ((t (:foreground ,background :background ,golden-glow :weight normal))))
   `(helm-grep-cmd-line ((t (:foreground ,turquoise :background ,background))))
   `(helm-grep-file ((t (:foreground ,foreground :background ,background))))
   `(helm-grep-finish ((t (:foreground ,green :background ,background))))
   `(helm-grep-lineno ((t (:foreground ,foreground :background ,background))))
   `(helm-grep-match ((t (:foreground nil :background nil :inherit helm-match))))
   `(helm-grep-running ((t (:foreground ,razzmataz :background ,background))))
   `(helm-moccur-buffer ((t (:foreground ,turquoise :background ,background))))
   `(helm-mu-contacts-address-face ((t (:foreground ,foreground :background ,background))))
   `(helm-mu-contacts-name-face ((t (:foreground ,foreground :background ,background))))

   ;; hi-foo faces
   `(hi-yellow ((t (:weight bold))))

   ;; hl-line-mode
   `(hl-line-face ((t (:background ,background))
                   (t :weight bold)))
   `(hl-line ((t (:background ,background)) ; old emacsen
              (t :weight bold)))

   ;; ido-mode
   `(ido-first-match ((t (:foreground ,golden-glow :weight bold))))
   `(ido-only-match ((t (:foreground ,razzmataz :weight bold))))
   `(ido-subdir ((t (:foreground ,golden-glow))))
   `(ido-indicator ((t (:foreground ,golden-glow :background ,razzmataz))))

   ;; js2-mode
   `(js2-warning ((t (:underline ,razzmataz))))
   `(js2-error ((t (:foreground ,razzmataz :weight bold))))
   `(js2-jsdoc-tag ((t (:foreground ,green))))
   `(js2-jsdoc-type ((t (:foreground ,green))))
   `(js2-jsdoc-value ((t (:foreground ,green))))
   `(js2-function-param ((t (:foreground, green))))
   `(js2-external-variable ((t (:foreground ,razzmataz))))

   ;; linum-mode
   `(linum ((t (:foreground ,green :background ,background))))

   ;; magit
   `(magit-item-highlight ((t (:background ,background))))
   `(magit-section-title ((t (:foreground ,golden-glow :weight bold))))
   `(magit-process-ok ((t (:foreground ,green :weight bold))))
   `(magit-process-ng ((t (:foreground ,razzmataz :weight bold))))
   `(magit-branch ((t (:foreground ,dull-lavendar :weight bold))))
   `(magit-log-author ((t (:foreground ,razzmataz))))
   `(magit-log-sha1 ((t (:foreground, razzmataz))))

   ;; notmuch
   `(notmuch-search-unread-face
     ((t (:weight black :background ,cod-gray))))
   `(notmuch-search-date ((t (:foreground ,dull-lavendar))))
   `(notmuch-search-matching-authors ((t (:foreground ,golden-glow))))
   `(notmuch-search-count ((t (:foreground ,waikawa-gray))))
   `(notmuch-tag-unread ((t (:foreground ,brilliant-rose))))
   `(notmuch-tag-face ((t (:foreground ,purple-heart :weight bold))))
   `(notmuch-tree-match-author-face
     ((t (:inherit notmuch-search-matching-authors))))
   `(notmuch-tree-match-date-face ((t (:inherit notmuch-search-date))))
   `(notmuch-tree-match-tag-face ((t (:inherit notmuch-tag-face))))
   `(notmuch-tree-no-match-face ((t (:foreground ,waikawa-gray))))
   `(notmuch-tree-no-match-date-face
     ((t (:inherit notmuch-tree-no-match-face))))
   `(notmuch-tree-no-match-tag-face
     ((t (:inherit notmuch-tree-no-match-face))))
   `(notmuch-tree-no-match-author-face
     ((t (:inherit notmuch-tree-no-match-face))))
   `(notmuch-tree-no-match-date-face
     ((t (:inherit notmuch-tree-no-match-face))))
   `(notmuch-tree-no-match-tree-face
     ((t (:inherit notmuch-tree-no-match-face))))

   ;; notmuch-hello-mode
   `(notmuch-hello-logo-background ((t (:background ,waikawa-gray))))

   ;; notmuch-message-mode
   `(message-cited-text ((t (:inherit font-lock-comment-face))))
   `(message-header-name ((t (:foreground ,razzmataz :weight bold))))
   `(message-header-subject ((t (:foreground ,dull-lavendar))))
   `(message-header-to ((t (:foreground ,cotton-candy))))
   `(notmuch-message-summary-face ((t (:background ,cod-gray))))
   `(message-header-cc ((t (:inherit message-header-to-face))))
   `(message-separator ((t (:foreground ,turquoise))))
   `(message-mml ((t (:foreground ,waikawa-gray))))

   ;; org-mode
   `(org-agenda-date-today
     ((t (:foreground ,foreground :weight black :height 1.2
	  :box (:line-width -1
		:style released-button))))
     t)
   `(org-agenda-date
     ((t (:foreground ,foreground
	  :box (:line-width -1
		:style released-button)))))
   `(org-agenda-current-time ((t (:foreground ,dull-lavendar
				  :background ,mine-shaft
				  :weight bold
				  :box (:line-width -1
					:style released-button)))))
   `(org-agenda-structure
     ((t (:foreground ,brilliant-rose :underline t
	  :background ,cod-gray :height 1.2))))
   `(org-agenda-calendar-event ((t (:foreground ,dull-lavendar
				    :background ,cod-gray))))
   `(org-time-grid ((t (:foreground ,waikawa-gray))))
   `(org-archived ((t (:foreground ,foreground :weight bold))))
   `(org-checkbox ((t (:background ,background :foreground ,foreground
                       :box (:line-width 1 :style released-button)))))
   `(org-date ((t (:foreground ,dull-lavendar :underline t))))
   `(org-deadline-announce ((t (:foreground ,razzmataz))))
   `(org-done ((t (:bold t :weight bold :foreground ,green))))
   `(org-drawer ((t (:foreground ,mulled-wine))))
   `(org-formula ((t (:foreground ,golden-glow))))
   `(org-headline-done ((t (:foreground ,green))))
   `(org-hide ((t (:foreground ,background))))
   `(org-level-1
     ((t (:foreground ,brilliant-rose :weight bold :underline t
	  :height 1.4))))
   `(org-level-2
     ((t (:foreground ,golden-glow :weight bold :height 1.2))))
   `(org-level-3 ((t (:foreground ,purple-heart :weight bold))))
   `(org-level-4 ((t (:foreground ,plum :weight bold :slant oblique))))
   `(org-level-5
     ((t (:foreground ,turquoise :weight bold :slant oblique))))
   `(org-level-6 ((t (:foreground ,waikawa-gray :slant oblique))))
   `(org-level-7 ((t (:foreground ,dull-lavendar :slant oblique))))
   `(org-level-8 ((t (:foreground ,wisteria :slant oblique))))
   `(org-link ((t (:foreground ,purple-heart :underline t :weight bold))))
   `(org-scheduled ((t (:foreground ,green))))
   `(org-scheduled-previously ((t (:foreground ,razzmataz))))
   `(org-scheduled-today ((t (:foreground ,dull-lavendar))))
   `(org-sexp-date ((t (:foreground ,dull-lavendar :underline t))))
   `(org-special-keyword ((t (:inherit font-lock-comment-face))))
   `(org-table ((t (:foreground ,green))))
   `(org-tag ((t (:bold t :weight bold :background ,mine-shaft
		  :box (:line-width -1
			:style released-button)))))
   `(org-todo ((t (:bold t :foreground ,razzmataz :weight bold))))
   `(org-upcoming-deadline ((t (:inherit font-lock-keyword-face))))
   `(org-warning
     ((t (:bold t :foreground ,razzmataz :weight bold
	  :underline nil))))
   `(org-column ((t (:background ,background))))
   `(org-column-title
     ((t (:background ,background :underline t :weight bold))))
   `(org-mode-line-clock
     ((t (:foreground ,dull-lavendar :background ,cod-gray
	  :box (:color ,razzmataz)))))
   `(org-mode-line-clock-overrun
     ((t (:foreground ,razzmataz :background ,background
	  :box (:style released-button :line-width -5)))))
   `(org-ellipsis ((t (:foreground ,golden-glow :underline t))))
   `(org-footnote ((t (:foreground ,turquoise :underline t))))
   `(org-block ((t (:background ,cod-gray))))
   `(org-meta-line
     ((t :foreground ,waikawa-gray)))
   `(org-verbatim ((t (:background ,cod-gray))))
   `(org-code ((t (:inherit org-verbatim))))

   ;; org-habit
   `(org-habit-alert-face ((t (:background ,golden-glow
			       :box (:style released-button)))))
   `(org-habit-alert-future-face ((t (:inherit org-habit-alert-face))))
   `(org-habit-clear-face ((t (:background ,purple-heart
			       :box (:style released-button)))))
   `(org-habit-clear-future-face ((t (:background ,purple-heart))))
   `(org-habit-overdue-face ((t (:background ,razzmataz
				 :box (:style released-button)))))
   `(org-habit-overdue-future-face ((t (:background ,razzmataz))))
   `(org-habit-ready-face ((t (:background ,green
			       :box (:style released-button)))))
   `(org-habit-ready-future-face ((t (:background ,green))))

   ;; org-pomodoro
   `(org-pomodoro-mode-line ((t (:foreground ,razzmataz :weight bold))))
   `(org-pomodoro-mode-line-overtime ((t (:background ,razzmataz
					  :foreground ,background
					  :weight bold))))
   `(org-pomodoro-mode-line-break ((t (:foreground ,green
				       :weight bold))))

   ;; outline
   `(outline-1 ((t (:foreground ,razzmataz))))
   `(outline-2 ((t (:foreground ,green))))
   `(outline-3 ((t (:foreground ,dull-lavendar))))
   `(outline-4 ((t (:foreground ,golden-glow))))
   `(outline-5 ((t (:foreground ,turquoise))))
   `(outline-6 ((t (:foreground ,green))))
   `(outline-7 ((t (:foreground ,razzmataz))))
   `(outline-8 ((t (:foreground ,dull-lavendar))))

   ;; powerline
   `(powerline-active1 ((t (:background ,background
			    :inherit mode-line))))
   `(powerline-active2 ((t (:background ,background
			    :inherit mode-line))))
   `(powerline-inactive1 ((t (:background ,background
			      :inherit mode-line-inactive))))
   `(powerline-inactive2 ((t (:background ,background
			      :inherit mode-line-inactive))))

   ;; Rainbow delimiters
   '(rainbow-delimiters-depth-1-face ((t (:foreground "#B2519C"))))
   '(rainbow-delimiters-depth-2-face ((t (:foreground "#CAA2CD"))))
   '(rainbow-delimiters-depth-3-face ((t (:foreground "#9B85AE"))))
   '(rainbow-delimiters-depth-4-face ((t (:foreground "#9192BA"))))
   '(rainbow-delimiters-depth-5-face ((t (:foreground "#B5BEDB"))))
   '(rainbow-delimiters-depth-6-face ((t (:foreground "#7DD3CE"))))
   '(rainbow-delimiters-depth-7-face ((t (:foreground "#97CC85"))))
   '(rainbow-delimiters-depth-8-face ((t (:foreground "#ECEF7A"))))
   '(rainbow-delimiters-depth-9-face ((t (:foreground "#EEB37D"))))
   '(rainbow-delimiters-unmatched-face ((t (:foreground "#F00"))))

   ;; sh-mode
   `(sh-heredoc     ((t (:foreground ,golden-glow :bold t))))
   `(sh-quoted-exec ((t (:foreground ,razzmataz))))

   ;; smartparens
   `(sp-show-pair-mismatch-face ((t (:foreground ,razzmataz
				     :background ,background
				     :weight bold))))
   `(sp-show-pair-match-face ((t (:background ,background
				  :weight bold))))

   ;; widget
   `(widget-button ((t (:foreground ,dull-lavendar :weight black))))
   `(widget-field ((t (:foreground ,cotton-candy
		       :background ,mine-shaft))))
   `(widget-single-line-field ((t (:foreground ,cotton-candy
				   :background ,mine-shaft))))
   `(widget-documentation ((t (:foreground ,golden-glow))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide-theme 'taihaku)

;;; taihaku-theme.el ends here
