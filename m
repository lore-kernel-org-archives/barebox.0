Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bomrQ-0007jW-0t
 for barebox@lists.infradead.org; Tue, 27 Sep 2016 07:31:29 +0000
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
Date: Tue, 27 Sep 2016 09:30:58 +0200
Message-Id: <20160927073058.20476-1-u.oelmann@pengutronix.de>
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
Subject: [PATCH] blspec: fix return value of entry_is_of_compatible()
To: Barebox List <barebox@lists.infradead.org>

VGhlIGZ1bmN0aW9uIHJldHVybnMgYSBib29sZWFuIGFuZCBub3QgYW4gaW50ZWdlci4gSGVuY2Ug
dGhlIGZvcm1lcgpleHBsaWNpdC9pbXBsaWNpdCBjYXN0IG9mIGFuIEVSUl9QVFIgdG8gYSBib29s
ZWFuIGhhcyBsZWQgdG8gYSByZXR1cm4gdmFsdWUgb2YKdHJ1ZSBhbHRob3VnaCBhIGJvb3RzcGVj
IGVudHJ5IHdpdGggYSBmYXVsdHkgZGV2aWNldHJlZSBpcyBub3QgY29tcGF0aWJsZS4KClNpZ25l
ZC1vZmYtYnk6IFVscmljaCDDlmxtYW5uIDx1Lm9lbG1hbm5AcGVuZ3V0cm9uaXguZGU+Ci0tLQog
Y29tbW9uL2Jsc3BlYy5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvY29tbW9uL2Jsc3BlYy5jIGIvY29tbW9uL2Jsc3Bl
Yy5jCmluZGV4IGMyMDVkNDgxYzkxMS4uNDBkNDU0NmQyODgwIDEwMDY0NAotLS0gYS9jb21tb24v
YmxzcGVjLmMKKysrIGIvY29tbW9uL2Jsc3BlYy5jCkBAIC0zOTgsNyArMzk4LDcgQEAgc3RhdGlj
IGJvb2wgZW50cnlfaXNfb2ZfY29tcGF0aWJsZShzdHJ1Y3QgYmxzcGVjX2VudHJ5ICplbnRyeSkK
IAogCXJvb3QgPSBvZl91bmZsYXR0ZW5fZHRiKGZkdCk7CiAJaWYgKElTX0VSUihyb290KSkgewot
CQlyZXQgPSBQVFJfRVJSKHJvb3QpOworCQlyZXQgPSBmYWxzZTsKIAkJcm9vdCA9IE5VTEw7CiAJ
CWdvdG8gb3V0OwogCX0KLS0gCjIuOS4zCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFy
ZWJveAo=
