Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dKtjY-0000Xl-Ap
 for barebox@lists.infradead.org; Tue, 13 Jun 2017 21:52:22 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Tue, 13 Jun 2017 23:51:28 +0200
Message-Id: <20170613215128.17243-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] clk: let clk_get return errors from of_clk_get_by_name
To: barebox@lists.infradead.org

V2hlbiBvZl9jbGtfZ2V0X2J5X25hbWUgZmFpbHMgd2l0aCAtRU5PREVWIGl0J3MgZmluZSB0byBj
b250aW51ZSB3aXRoCmNsa19nZXRfc3lzLiBPdGhlciBlcnJvcnMgKGUuZy4gLUVQUk9CRV9ERUZF
Uikgc2hvdWxkIGJlIHJldHVybmVkIGhvd2V2ZXIuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5l
LUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvY2xr
L2Nsa2Rldi5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvY2xrZGV2LmMgYi9kcml2ZXJzL2Nsay9j
bGtkZXYuYwppbmRleCA3ZjlmOGYyYWRjMDAuLjZiMTY2NjM1NTFlZiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9jbGsvY2xrZGV2LmMKKysrIGIvZHJpdmVycy9jbGsvY2xrZGV2LmMKQEAgLTE4MSw3ICsx
ODEsNyBAQCBzdHJ1Y3QgY2xrICpjbGtfZ2V0KHN0cnVjdCBkZXZpY2VfZCAqZGV2LCBjb25zdCBj
aGFyICpjb25faWQpCiAKIAlpZiAoZGV2KSB7CiAJCWNsayA9IG9mX2Nsa19nZXRfYnlfbmFtZShk
ZXYtPmRldmljZV9ub2RlLCBjb25faWQpOwotCQlpZiAoIUlTX0VSUihjbGspKQorCQlpZiAoIUlT
X0VSUihjbGspIHx8IFBUUl9FUlIoY2xrKSAhPSAtRU5PREVWKQogCQkJcmV0dXJuIGNsazsKIAl9
CiAKLS0gCjIuMTEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
