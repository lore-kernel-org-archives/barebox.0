Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwlXy-0007wq-A3
 for barebox@lists.infradead.org; Thu, 21 Feb 2019 10:25:43 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu, 21 Feb 2019 11:25:30 +0100
Message-Id: <20190221102531.25291-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] imd: create new helper macro to add data from oftree to
 image meta data
To: barebox@lists.infradead.org
Cc: "Thorsten K . Scherer" <t.scherer@eckelmann.de>

U2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4KLS0tCiBpbmNsdWRlL2ltYWdlLW1ldGFkYXRhLmggfCA0ICsrKysKIHNjcmlwdHMv
Z2VuLWR0Yi1zICAgICAgICB8IDQgKystLQogMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9pbWFnZS1tZXRhZGF0YS5o
IGIvaW5jbHVkZS9pbWFnZS1tZXRhZGF0YS5oCmluZGV4IDg3MzliZmZiOTJlMS4uNTkwNGQ5NWFj
ZDM3IDEwMDY0NAotLS0gYS9pbmNsdWRlL2ltYWdlLW1ldGFkYXRhLmgKKysrIGIvaW5jbHVkZS9p
bWFnZS1tZXRhZGF0YS5oCkBAIC0xMTgsNiArMTE4LDEwIEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBp
bWRfdXNlZChjb25zdCB2b2lkICp1bnVzZWQpCiAKICNkZWZpbmUgSU1EX1VTRUQoX25hbWUpIFwK
IAlpbWRfdXNlZCgmX19iYXJlYm94X2ltZF8jI19uYW1lKQorI2RlZmluZSBJTURfVVNFRF9PRihf
bmFtZSkgKHsgXAorCWV4dGVybiBjaGFyIF9fYmFyZWJveF9pbWRfT0ZfICMjIF9uYW1lW107IFwK
KwlpbWRfdXNlZCgmX19iYXJlYm94X2ltZF9PRl8gIyMgX25hbWUpOyBcCisJfSkKIAogI2VuZGlm
IC8qIF9fQkFSRUJPWF9fICovCiAKZGlmZiAtLWdpdCBhL3NjcmlwdHMvZ2VuLWR0Yi1zIGIvc2Ny
aXB0cy9nZW4tZHRiLXMKaW5kZXggMmI0NGZmYjM2MWViLi5jMzE0NGRmODUxYmYgMTAwNzU1Ci0t
LSBhL3NjcmlwdHMvZ2VuLWR0Yi1zCisrKyBiL3NjcmlwdHMvZ2VuLWR0Yi1zCkBAIC0xOCw4ICsx
OCw4IEBAIEZEVEdFVD1zY3JpcHRzL2R0Yy9mZHRnZXQKIAogaWYgWyAiJGltZCIgPSAieSIgXTsg
dGhlbgogCWVjaG8gIi5zZWN0aW9uIC5iYXJlYm94X2ltZF8wLiR7bmFtZX0sXCJhXCIiCi0JZWNo
byAiLmdsb2JhbCBfX2ltZF8ke25hbWV9X3N0YXJ0IgotCWVjaG8gIl9faW1kXyR7bmFtZX1fc3Rh
cnQ6IgorCWVjaG8gIi5nbG9iYWwgX19iYXJlYm94X2ltZF9PRl8ke25hbWV9IgorCWVjaG8gIl9f
YmFyZWJveF9pbWRfT0ZfJHtuYW1lfToiCiAKIAljb21wYXQ9JCgkRkRUR0VUIC1kIG5vdGZvdW5k
IC10IGJpICIkZHRiIiAvIGNvbXBhdGlibGUgfCBzZWQgInNeIF4sXmciKQogCWlmIFsgIiRjb21w
YXQiICE9ICJub3Rmb3VuZCIgXTsgdGhlbgotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJv
eEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vYmFyZWJveAo=
