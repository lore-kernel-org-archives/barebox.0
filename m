Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1apava-0000hO-PQ
 for barebox@lists.infradead.org; Mon, 11 Apr 2016 12:26:51 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Mon, 11 Apr 2016 14:26:26 +0200
Message-Id: <1460377586-27099-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] mci: mxs: add support for dt aliases to name devices
To: barebox@lists.infradead.org

V2hpbGUgY2hhbmdpbmcgdGhlcmUsIHJlZm9ybWF0IHRoZSBjb21tZW50IGFuZCB1c2UgOyBpbnN0
ZWFkIG9mICwgYWZ0ZXIKdGhlIHByZXZpb3VzIGNhbGwuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xl
aW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMv
bWNpL214cy5jIHwgMTAgKysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWNpL214cy5jIGIvZHJpdmVy
cy9tY2kvbXhzLmMKaW5kZXggYjM2ZmIxMzI1NGRmLi5hNzY0MzVlNWJhYTUgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvbWNpL214cy5jCisrKyBiL2RyaXZlcnMvbWNpL214cy5jCkBAIC01NjksNyArNTY5
LDE1IEBAIHN0YXRpYyBpbnQgbXhzX21jaV9wcm9iZShzdHJ1Y3QgZGV2aWNlX2QgKmh3X2RldikK
IAkJaG9zdC0+Zl9taW4gPSBwZC0+Zl9taW47CiAJCWhvc3QtPmZfbWF4ID0gIHBkLT5mX21heDsK
IAl9IGVsc2UgewotCQlob3N0LT52b2x0YWdlcyA9IE1NQ19WRERfMzJfMzMgfCBNTUNfVkREXzMz
XzM0LAkvKiBmaXhlZCB0byAzLjMgViAqLworCQkvKiBmaXhlZCB0byAzLjMgViAqLworCQlob3N0
LT52b2x0YWdlcyA9IE1NQ19WRERfMzJfMzMgfCBNTUNfVkREXzMzXzM0OworCisJCWlmIChod19k
ZXYtPmRldmljZV9ub2RlKSB7CisJCQljb25zdCBjaGFyICphbGlhcyA9IG9mX2FsaWFzX2dldCho
d19kZXYtPmRldmljZV9ub2RlKTsKKwkJCWlmIChhbGlhcykKKwkJCQlob3N0LT5kZXZuYW1lID0g
eHN0cmR1cChhbGlhcyk7CisJCX0KKwogCQltY2lfb2ZfcGFyc2UoaG9zdCk7CiAJfQogCi0tIAoy
LjcuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJh
cmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
