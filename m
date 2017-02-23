Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ch0wt-0001MV-6E
 for barebox@lists.infradead.org; Thu, 23 Feb 2017 21:29:17 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu, 23 Feb 2017 22:28:41 +0100
Message-Id: <20170223212841.12846-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] lseek: ensure errno is set on failure and return -1
To: barebox@lists.infradead.org

QWxsIGVycm9yIHBhdGhzIGJlZm9yZSBjYWxsaW5nIHRoZSBkcml2ZXIncyBsc2VlayBjYWxsYmFj
ayByZXR1cm4gLTEgYW5kCnNldCBlcnJuby4gRG8gdGhlIHNhbWUgaWYgdGhlIGNhbGxiYWNrIHJl
dHVybnMgYW4gZXJyb3IuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVp
bmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIGZzL2ZzLmMgfCA4ICsrKysrKystCiAxIGZp
bGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
ZnMvZnMuYyBiL2ZzL2ZzLmMKaW5kZXggMmI0NjU5Y2ZiYjc2Li5lN2I2OTY1OTE0MzMgMTAwNjQ0
Ci0tLSBhL2ZzL2ZzLmMKKysrIGIvZnMvZnMuYwpAQCAtOTI2LDcgKzkyNiwxMyBAQCBsb2ZmX3Qg
bHNlZWsoaW50IGZpbGRlcywgbG9mZl90IG9mZnNldCwgaW50IHdoZW5jZSkKIAkJZ290byBvdXQ7
CiAJfQogCi0JcmV0dXJuIGZzZHJ2LT5sc2VlaygmZi0+ZnNkZXYtPmRldiwgZiwgcG9zKTsKKwlw
b3MgPSBmc2Rydi0+bHNlZWsoJmYtPmZzZGV2LT5kZXYsIGYsIHBvcyk7CisJaWYgKHBvcyA8IDAp
IHsKKwkJZXJybm8gPSAtcG9zOworCQlyZXR1cm4gLTE7CisJfQorCisJcmV0dXJuIHBvczsKIAog
b3V0OgogCWlmIChyZXQpCi0tIAoyLjExLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9i
YXJlYm94Cg==
