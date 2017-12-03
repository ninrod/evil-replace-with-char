(require 'ert)
(require 'evil)
(require 'evil-test-helpers)
(require 'evil-replace-with-char)

(ert-deftest evil-replace-with-char-test ()
  (ert-info ("basic evil move test")
    (evil-test-buffer
      "[A]B"
      ("l")
      "A[B]"))
  (ert-info ("basic zx test")
    (evil-test-buffer
      "| ----------|"
      ("zxi|-")
      "|-----------|"))
  (ert-info ("basic zx test")
    (evil-test-buffer
      "|           |"
      ("zxi|-")
      "|-----------|"))
  (ert-info ("basic zx test")
    (evil-test-buffer
      "|4jgkjg[y]lkej|"
      ("zxi|-")
      "|[-]----------|")))