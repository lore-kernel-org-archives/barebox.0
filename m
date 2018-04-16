Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f839d-0004EY-5j
 for barebox@lists.infradead.org; Mon, 16 Apr 2018 12:22:47 +0000
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
Date: Mon, 16 Apr 2018 14:22:24 +0200
Message-Id: <20180416122225.6302-1-u.oelmann@pengutronix.de>
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
Subject: [PATCH 1/2] fs: fix error path in __canonicalize_path()
To: Barebox List <barebox@lists.infradead.org>

UmVwb3J0IGZhaWx1cmUgaW4gcmVzb2x2aW5nIGxpbmtzIHRvIHRoZSBjYWxsZXIgYW5kIG9ubHkg
Y2xlYW4gdXAgbWVtb3J5IHRoZW4uCgpTaWduZWQtb2ZmLWJ5OiBVbHJpY2ggw5ZsbWFubiA8dS5v
ZWxtYW5uQHBlbmd1dHJvbml4LmRlPgotLS0KIGZzL2ZzLmMgfCAxMCArKysrKysrLS0tCiAxIGZp
bGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2ZzL2ZzLmMgYi9mcy9mcy5jCmluZGV4IDUxMzUxMTJjOGI4MS4uN2M4MThlY2EwMjRmIDEwMDY0
NAotLS0gYS9mcy9mcy5jCisrKyBiL2ZzL2ZzLmMKQEAgLTIwMiw4ICsyMDIsMTEgQEAgc3RhdGlj
IGNoYXIgKl9fY2Fub25pY2FsaXplX3BhdGgoY29uc3QgY2hhciAqX3BhdGhuYW1lLCBpbnQgbGV2
ZWwpCiAJCQljb250aW51ZTsKIAogCQlyZXQgPSByZWFkbGluayhvdXRwYXRoLCBsaW5rLCBQQVRI
X01BWCAtIDEpOwotCQlpZiAocmV0IDwgMCkKKwkJaWYgKHJldCA8IDApIHsKKwkJCWZyZWUob3V0
cGF0aCk7CisJCQlvdXRwYXRoID0gRVJSX1BUUihyZXQpOwogCQkJZ290byBvdXQ7CisJCX0KIAog
CQlpZiAobGlua1swXSA9PSAnLycpIHsKIAkJCWZyZWUob3V0cGF0aCk7CkBAIC0yMTgsMTQgKzIy
MSwxNSBAQCBzdGF0aWMgY2hhciAqX19jYW5vbmljYWxpemVfcGF0aChjb25zdCBjaGFyICpfcGF0
aG5hbWUsIGludCBsZXZlbCkKIAkJaWYgKElTX0VSUihvdXRwYXRoKSkKIAkJCWdvdG8gb3V0Owog
CX0KLW91dDoKLQlmcmVlKGZyZWVwKTsKIAogCWlmICghKm91dHBhdGgpIHsKIAkJZnJlZShvdXRw
YXRoKTsKIAkJb3V0cGF0aCA9IHhzdHJkdXAoIi8iKTsKIAl9CiAKK291dDoKKwlmcmVlKGZyZWVw
KTsKKwogCXJldHVybiBvdXRwYXRoOwogfQogCi0tIAoyLjE2LjMKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJl
Ym94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9iYXJlYm94Cg==
