;;; nox-theme.el --- A medium-contrast frozen cyberpunk theme.
;;; Commentary:
;;; Code:

(deftheme nox "A medium-contrast frozen cyberpunk theme.")
(let ((class '((class color) (min-colors 89)))

      ;; base colors
      ;; -----------

      (bg                "#24283b")     ; default background
      (active-bg         "#292e42")     ; active element - mode-line, line, etc.
      (active-bg-hl      "#414868")     ; highlight on top of an active element - show-paren-match
      (alt-bg            "#1f2335")     ; secondary background on top of the default - (inactive) mode-line, popup menus, etc.

      (fg                "#a9b1d6")     ; default foreground
      (active-fg         "#c0caf5")     ; active element
      (dim-fg            "#292e42")     ; interface elements that are subtly visible - ui borders & dividers
      (inactive-fg       "#565f89")     ; inactive elements that are visible when not in use - comments, unselected tabs, etc.
      (muted-fg          "#313750")     ; inactive elements that are nearly hidden when not in use - unselected line numbers

      ;; diagnostics & popups
      ;; --------------------

      (info-bg           "#273644")
      (info-bg-hl        "#4c9e8a")
      (info-fg           "#4c9e8a")
      (info-fg-hl        "#11221e")

      (alt-info-bg       "#192a4d")
      (alt-info-bg-hl    "#7aa2f7")
      (alt-info-fg       "#7aa2f7")
      (alt-info-fg-hl    "#031130")

      (warning-bg        "#37363f")
      (warning-bg-hl     "#e0af68")
      (warning-fg        "#e0af68")
      (warning-fg-hl     "#2a1d09")

      (error-bg          "#342c3c")
      (error-bg-hl       "#f7768e")
      (error-fg          "#f7768e")
      (error-fg-hl       "#30030b")

      ;; accent palette
      ;; --------------

      (change            "#7aa2f7")     ; functions
      (calm              "#7892bf")     ; constants, numbers, strings
      (structural        "#bb9af7")     ; keywords
      (critical          "#f7768e")
      (live              "#73daca")     ; object/struct properties, variables
      (qualifier         "#2ac3de")     ; types
      (risky             "#e0af68")     ; change, warnings
      (special           "#ea9a97")     ; escape sequences, unusual elements
      )

  (custom-theme-set-faces
   'nox

   ;; builtin faces
   ;; -------------

   `(bold ((,class (:weight bold))))
   `(bold-italic ((,class (:weight bold :slant italic))))
   `(button ((,class (:inherit link))))
   `(completions-common-part ((,class (:inherit region))))
   `(cursor ((,class (:background ,active-fg :foreground ,alt-bg))))
   `(default ((,class (:background ,bg :foreground ,fg))))
   `(error ((,class (:foreground ,error-fg))))
   `(escape-glyph ((,class (:foreground ,special))))
   `(fixed-pitch ((,class (:family "monospace"))))
   `(fixed-pitch-serif ((,class (:family "monospace serif"))))
   `(fringe ((,class (:background ,alt-bg))))
   `(glyphless-char ((,class (:foreground ,special))))
   `(highlight ((,class (:background ,active-bg))))
   `(homoglyph ((,class (:foreground ,live))))
   `(italic ((,class (:slant italic))))
   `(link ((,class (:foreground ,live))))
   `(link-visited ((,class (:foreground ,structural))))
   `(minibuffer-prompt ((,class (:foreground ,change))))
   `(mouse ((,class (:inherit default))))
   `(nobreak-hyphen ((,class (:foreground ,special))))
   `(nobreak-space ((,class (:foreground ,special))))
   `(read-multiple-choice-face ((,class (:background ,active-bg :foreground ,active-fg))))
   `(region ((,class (:background ,info-bg :foreground ,info-fg))))
   `(scroll-bar ((,class (:background ,bg :foreground ,muted-fg))))
   `(secondary-selection ((,class (:background ,alt-info-bg :foreground ,alt-info-fg))))
   `(shadow ((,class (:foreground ,inactive-fg))))
   `(success ((,class (:foreground ,info-fg))))
   `(tool-tips ((,class (:inherit highlight))))
   `(trailing-whitespace ((,class (:background ,error-bg-hl :foreground ,error-fg-hl))))
   `(underline ((,class (:underline t))))
   `(variable-pitch ((,class (:family "sans serif"))))
   `(variable-pitch-text ((,class (:family "sans serif"))))
   `(warning ((,class (:foreground ,warning-fg))))
   `(hl-line ((,class (:inherit highlight))))
   `(line-number ((,class (:foreground ,muted-fg))))
   `(line-number-current-line ((,class (:inherit highlight :foreground ,active-fg))))
   `(line-number-major-tick ((,class (:inherit highlight :foreground ,inactive-fg))))
   `(line-number-minor-tick ((,class (:inherit line-number-major-tick))))
   `(border ((,class (:foreground ,dim-fg))))
   `(child-frame-border ((,class (:inherit border))))
   `(fill-column-indicator ((,class (:inherit border))))
   `(internal-border ((,class (:inherit border))))
   `(vertical-border ((,class (:inherit border))))
   `(isearch ((,class (:background ,info-bg-hl :foreground ,info-fg-hl))))
   `(isearch-fail ((,class (:background ,error-bg-hl :foreground ,error-fg-hl))))
   `(lazy-highlight ((,class (:background ,info-bg :foreground ,info-fg))))
   `(match ((,class (:inherit isearch))))
   `(show-paren-match ((,class (:background ,active-bg-hl :foreground ,active-fg))))
   `(show-paren-match-expression ((,class (:inherit show-paren-match))))
   `(show-paren-mismatch ((,class (:background ,error-bg-hl :foreground ,error-fg-hl))))
   `(header-line ((,class (:inherit mode-line))))
   `(header-line-highlight ((,class (:inherit mode-line-highlight))))
   `(menu ((,class (:background ,alt-bg :foreground ,fg))))
   `(mode-line ((,class (:inherit menu))))
   `(mode-line-active ((,class (:inherit (highlight mode-line) :foreground ,active-fg))))
   `(mode-line-buffer-id ((,class (:weight bold))))
   `(mode-line-buffer-id-inactive ((,class (:inherit mode-line-buffer-id))))
   `(mode-line-emphasis ((,class (:weight bold))))
   `(mode-line-highlight ((,class (:background ,active-bg-hl :foreground ,active-fg))))
   `(mode-line-inactive ((,class (:inherit mode-line :foreground ,inactive-fg))))
   `(tab-bar ((,class (:inherit menu))))
   `(tab-line ((,class (:inherit menu))))
   `(tool-bar ((,class (:inherit menu))))
   `(tty-menu-disabled-face ((,class (:inherit menu :foreground ,muted-fg))))
   `(tty-menu-enabled-face ((,class (:inherit menu))))
   `(tty-menu-selected-face ((,class (:inherit (highlight menu) :foreground ,active-fg))))

   ;; dired
   `(dired-broken-symlink ((,class (:inherit error))))
   `(dired-header ((,class (:foreground ,change))))
   `(dired-warning ((,class (:inherit warning :background ,warning-bg))))

   ;; flymake
   `(flymake-error ((,class (:inherit error :background ,error-bg))))
   `(flymake-error-echo ((,class (:inherit flymake-error))))
   `(flymake-error-echo-at-eol ((,class (:inherit flymake-error-echo))))
   `(flymake-note ((,class (:inherit success :background ,info-bg))))
   `(flymake-note-echo ((,class (:inherit flymake-note))))
   `(flymake-note-echo-at-eol ((,class (:inherit flymake-note-echo))))
   `(flymake-warning ((,class (:inherit warning :background ,warning-bg))))
   `(flymake-warning-echo ((,class (:inherit flymake-warning))))
   `(flymake-warning-echo-at-eol ((,class (:inherit flymake-warning-echo))))

   ;; org
   `(outline-1 ((,class (:foreground ,change))))
   `(outline-2 ((,class (:foreground ,calm))))
   `(outline-3 ((,class (:foreground ,live))))
   `(outline-4 ((,class (:foreground ,structural))))
   `(outline-5 ((,class (:foreground ,qualifier))))
   `(outline-6 ((,class (:foreground ,risky))))
   `(outline-7 ((,class (:foreground ,critical))))
   `(outline-8 ((,class (:foreground ,special))))

   `(org-agenda-column-dateline ((,class (:inherit menu))))
   `(org-agenda-date ((,class (:inherit shadow))))
   `(org-agenda-date-today ((,class (:foreground ,active-fg))))
   `(org-agenda-dimmed-todo-face ((,class (:inherit shadow))))
   `(org-agenda-done ((,class (:inherit shadow))))
   `(org-agenda-restriction-lock ((,class (:inherit menu))))
   `(org-agenda-structure ((,class (:foreground ,change))))
   `(org-agenda-structure-filter ((,class (:inherit lazy-highlight))))
   `(org-archived ((,class (:inherit shadow))))
   `(org-block ((,class (:background ,alt-bg :foreground ,fg))))
   `(org-checkbox ((,class (:inherit highlight :foreground ,active-fg))))
   `(org-clock-overlay ((,class (:inherit secondary-selection))))
   `(org-column ((,class (:background ,alt-bg :foreground ,fg))))
   `(org-column-title ((,class (:inherit org-column :weight bold))))
   `(org-date ((,class (:foreground ,live))))
   `(org-date-selected ((,class (:background ,alt-info-bg-hl :foreground ,alt-info-fg-hl))))
   `(org-dispatcher-highlight ((,class (:inherit lazy-highlight))))
   `(org-document-info ((,class (:foreground ,calm))))
   `(org-document-title ((,class (:foreground ,calm :weight bold))))
   `(org-done ((,class (:inherit shadow))))
   `(org-drawer ((,class (:inherit shadow))))
   `(org-ellipsis ((,class (:foreground ,special))))
   `(org-footnote ((,class (:foreground ,qualifier))))
   `(org-formula ((,class (:foreground ,special))))
   `(org-habit-alert-face ((,class (:background ,warning-bg :foreground ,warning-fg))))
   `(org-habit-alert-future-face ((,class (:inherit org-habit-alert))))
   `(org-habit-clear-face ((,class (:background ,alt-info-bg :foreground ,alt-info-fg))))
   `(org-habit-clear-future-face ((,class (:inherit org-habit-clear-face))))
   `(org-habit-overdue-face ((,class (:background ,error-bg :foreground ,error-fg))))
   `(org-habit-overdue-future-face ((,class (:inherit org-habit-overdue-face))))
   `(org-habit-ready-face ((,class (:background ,info-bg :foreground ,info-fg))))
   `(org-habit-ready-future-face ((,class (:inherit org-habit-ready-face))))
   `(org-headline-done ((,class (:inherit org-done))))
   `(org-headline-todo ((,class (:inherit org-todo))))
   `(org-latex-and-related ((,class (:foreground ,special))))
   `(org-meta-line ((,class (:inherit (shadow menu)))))
   `(org-mode-line-clock-overrun ((,class (:background ,error-bg-hl :foreground ,error-fg-hl))))
   `(org-priority ((,class (:foreground ,qualifier))))
   `(org-scheduled ((,class (:foreground ,info-fg))))
   `(org-scheduled-previously ((,class (:inherit warning))))
   `(org-scheduled-today ((,class (:background ,info-bg-hl :foreground ,info-fg-hl))))
   `(org-sexp-date ((,class (:foreground ,qualifier))))
   `(org-special-keyword ((,class (:inherit font-lock-keyword-face))))
   `(org-table ((,class (:foreground ,inactive-fg))))
   `(org-table-header ((,class (:inherit menu))))
   `(org-time-grid ((,class (:inherit org-table))))
   `(org-todo ((,class (:inherit warning))))
   `(org-upcoming-deadline ((,class (:inherit warning))))

   ;; syntax highlighting
   `(font-lock-builtin-face ((,class (:foreground ,change))))
   `(font-lock-comment-face ((,class (:foreground ,inactive-fg))))
   `(font-lock-constant-face ((,class (:foreground ,calm))))
   `(font-lock-doc-face ((,class (:inherit font-lock-comment-face))))
   `(font-lock-function-call-face ((,class (:foreground ,change))))
   `(font-lock-function-name-face ((,class (:inherit font-lock-function-call-face))))
   `(font-lock-keyword-face ((,class (:foreground ,structural))))
   `(font-lock-negation-char-face ((,class (:foreground ,critical))))
   `(font-lock-number-face ((,class (:foreground ,calm))))
   `(font-lock-operator-face ((,class (:inherit font-lock-function-call-face))))
   `(font-lock-property-name-face ((,class (:foreground ,live))))
   `(font-lock-property-use-face ((,class (:foreground ,live))))
   `(font-lock-string-face ((,class (:foreground ,calm))))
   `(font-lock-type-face ((,class (:foreground ,qualifier))))
   `(font-lock-variable-name-face ((,class (:foreground ,live))))
   `(font-lock-variable-use-face ((,class (:foreground ,live))))
   `(font-lock-warning-face ((,class (:inherit warning))))

   ;; external packages
   ;; -----------------

   ;; ace-window
   `(aw-background-face ((,class (:foreground ,muted-fg))))
   `(aw-leading-char-face ((,class (:inherit success :weight bold))))
   `(aw-minibuffer-leading-char-face ((,class (:inherit aw-leading-char-face))))

   ;; avy
   `(avy-goto-char-timer-face ((,class (:inherit lazy-highlight))))
   `(avy-lead-face ((,class (:inherit isearch))))
   `(avy-lead-face-0 ((,class (:background ,warning-bg-hl :foreground ,warning-fg-hl))))
   `(avy-lead-face-1 ((,class (:background ,error-bg-hl :foreground ,error-fg-hl))))
   `(avy-lead-face-2 ((,class (:background ,alt-info-bg-hl :foreground ,alt-info-fg-hl))))

   ;; centaur-tabs
   `(centaur-tabs-jump-identifier-selected ((,class (:inherit centaur-tabs-selected :foreground ,info-fg))))
   `(centaur-tabs-jump-identifier-unselected ((,class (:inherit centaur-tabs-unselected :foreground ,info-fg))))
   `(centaur-tabs-selected ((,class (:inherit (highlight tab-line) :foreground ,active-fg))))
   `(centaur-tabs-selected-modified ((,class (:inherit (warning centaur-tabs-selected) :background ,warning-bg))))
   `(centaur-tabs-unselected ((,class (:inherit tab-line :foreground ,inactive-fg))))
   `(centaur-tabs-unselected-modified ((,class (:inherit (warning centaur-tabs-unselected)))))

   ;; company
   `(company-echo-common ((,class (:inherit success))))
   `(company-template-field ((,class (:background ,active-bg :foreground ,active-fg))))
   `(company-tooltip ((,class (:background ,alt-bg))))
   `(company-tooltip-annotation ((,class (:foreground ,qualifier))))
   `(company-tooltip-common ((,class (:inherit lazy-highlight))))
   `(company-tooltip-scrollbar-thumb ((,class (:background ,muted-fg))))
   `(company-tooltip-scrollbar-track ((,class (:inherit company-tooltip))))
   `(company-tooltip-selection ((,class (:inherit highlight))))

   ;; diff-hl
   `(diff-hl-change ((,class (:background ,warning-bg-hl :foreground ,warning-bg-hl))))
   `(diff-hl-delete ((,class (:background ,error-bg-hl :foreground ,error-bg-hl))))
   `(diff-hl-insert ((,class (:background ,info-bg-hl :foreground ,info-bg-hl))))

   ;; magit
   `(magit-branch-local ((,class (:foreground ,change))))
   `(magit-branch-remote ((,class (:foreground ,structural))))
   `(magit-diff-added ((,class (:inherit magit-diff-context))))
   `(magit-diff-added-highlight ((,class (:background ,info-bg :foreground ,info-fg))))
   `(magit-diff-context ((,class (:inherit shadow :background ,bg))))
   `(magit-diff-context-highlight ((,class (:background ,active-bg :foreground ,fg))))
   `(magit-diff-file-heading ((,class (:inherit shadow :background ,bg))))
   `(magit-diff-file-heading-highlight ((,class (:background ,active-bg :foreground ,active-fg))))
   `(magit-diff-hunk-heading ((,class (:inherit shadow :background ,bg))))
   `(magit-diff-hunk-heading-highlight ((,class (:background ,active-bg :foreground ,active-fg))))
   `(magit-diff-hunk-region ((,class (:background ,warning-bg :foreground ,warning-fg))))
   `(magit-diff-lines-heading ((,class (:inherit shadow :background ,bg))))
   `(magit-diff-removed ((,class (:inherit magit-diff-context))))
   `(magit-diff-removed-highlight ((,class (:background ,error-bg :foreground ,error-fg))))
   `(magit-diff-whitespace-warning ((,class ())))
   `(magit-item-highlight ((,class (:inherit highlight))))
   `(magit-section-heading ((,class (:foreground ,change))))
   `(magit-section-highlight ((,class (:background ,active-bg :foreground ,active-fg))))

   ;; marginalia
   `(marginalia-file-priv-dir ((,class (:foreground ,qualifier))))
   `(marginalia-file-priv-link ((,class (:foreground ,qualifier))))
   `(marginalia-key ((,class (:foreground ,qualifier))))

   ;; tree-sitter
   `(tree-sitter-hl-face:comment ((,class (:inherit font-lock-comment-face))))
   `(tree-sitter-hl-face:constant ((,class (:inherit font-lock-constant-face))))
   `(tree-sitter-hl-face:constant.builtin ((,class (:inherit font-lock-constant-face))))
   `(tree-sitter-hl-face:constructor ((,class (:inherit font-lock-function-call-face))))
   `(tree-sitter-hl-face:doc ((,class (:inherit font-lock-doc-face))))
   `(tree-sitter-hl-face:function ((,class (:inherit font-lock-function-call-face))))
   `(tree-sitter-hl-face:function.builtin ((,class (:inherit font-lock-builtin-face))))
   `(tree-sitter-hl-face:function.call ((,class (:inherit font-lock-function-call-face))))
   `(tree-sitter-hl-face:function.macro ((,class (:inherit font-lock-function-call-face))))
   `(tree-sitter-hl-face:function.special ((,class (:inherit font-lock-function-call-face))))
   `(tree-sitter-hl-face:keyword ((,class (:inherit font-lock-keyword-face))))
   `(tree-sitter-hl-face:method ((,class (:inherit font-lock-function-call-face))))
   `(tree-sitter-hl-face:method.call ((,class (:inherit font-lock-function-call-face))))
   `(tree-sitter-hl-face:number ((,class (:inherit font-lock-number-face))))
   `(tree-sitter-hl-face:operator ((,class (:inherit font-lock-operator-face))))
   `(tree-sitter-hl-face:property ((,class (:inherit font-lock-property-use-face))))
   `(tree-sitter-hl-face:property.definition ((,class (:inherit font-lock-property-name-face))))
   `(tree-sitter-hl-face:punctuation.special ((,class (:foreground ,special))))
   `(tree-sitter-hl-face:string ((,class (:inherit font-lock-string-face))))
   `(tree-sitter-hl-face:string.special ((,class (:inherit font-lock-string-face))))
   `(tree-sitter-hl-face:type ((,class (:inherit font-lock-type-face))))
   `(tree-sitter-hl-face:type.argument ((,class (:inherit font-lock-type-face))))
   `(tree-sitter-hl-face:type.builtin ((,class (:inherit font-lock-type-face))))
   `(tree-sitter-hl-face:type.parameter ((,class (:inherit font-lock-type-face))))
   `(tree-sitter-hl-face:type.super ((,class (:inherit font-lock-type-face))))
   `(tree-sitter-hl-face:variable ((,class (:inherit font-lock-variable-name-face))))
   `(tree-sitter-hl-face:variable.builtin ((,class (:inherit font-lock-variable-name-face))))
   `(tree-sitter-hl-face:variable.parameter ((,class (:inherit font-lock-variable-name-face))))
   `(tree-sitter-hl-face:variable.special ((,class (:inherit font-lock-variable-name-face))))
   ))

(provide-theme 'nox)

;;; nox-theme.el ends here
