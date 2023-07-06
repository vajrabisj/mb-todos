;; Copyright (c) 2023 Michael Bi <shunjie.bi@gmail.com>
;; All rights reserved.
;;
;; Redistribution and use in source and binary forms, with or without
;; modification, are permitted provided that the following conditions
;; are met:
;;
;;  1. Redistributions of source code must retain the above copyright
;;     notice, this list of conditions and the following disclaimer
;;     in this position and unchanged.
;;  2. Redistributions in binary form must reproduce the above copyright
;;     notice, this list of conditions and the following disclaimer in the
;;     documentation and/or other materials provided with the distribution.
;;
;; THIS SOFTWARE IS PROVIDED BY THE AUTHOR(S) ``AS IS'' AND ANY EXPRESS OR
;; IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
;; OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
;; IN NO EVENT SHALL THE AUTHOR(S) BE LIABLE FOR ANY DIRECT, INDIRECT,
;; INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
;; NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
;; DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
;; THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
;; (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
;; THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

(defpackage :-system
  (:use :cl :asdf))
(in-package :-system)

(defsystem ""
  :name ""
  :long-name "mb-todos"
  :description "Michael's Todo REST Api"
  :version "0.1.0"
  :author "Michael Bi <shunjie.bi@gmail.com>"
  :maintainer "Michael Bi <shunjie.bi@gmail.com>"
  :license "BSD 2-Clause"
  :long-description #.(uiop:read-file-string
                       (uiop:subpathname *load-pathname* "README.org"))
  :homepage "https://github.com/vajrabisj/"
  :bug-tracker "https://github.com/vajrabisj/"
  :source-control "https://github.com/vajrabisj/"
  :depends-on (:cl-reexport)
  :components ((:module "core"
                :pathname #P"src/"
                :components ((:file "core")))
               (:module "client-package"
                :pathname #P"src/"
                :depends-on ("core")
                :components ((:file "package"))))
  :in-order-to ((test-op (test-op ".test"))))
