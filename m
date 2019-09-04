Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5TJO-0001AL-4b
 for barebox@lists.infradead.org; Wed, 04 Sep 2019 11:18:55 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed,  4 Sep 2019 13:18:51 +0200
Message-Id: <20190904111851.13317-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] video/stm: fix return value handling for
 of_get_display_timings()
To: barebox@lists.infradead.org

b2ZfZ2V0X2Rpc3BsYXlfdGltaW5ncygpIHJldHVybnMgTlVMTCBvbiBmYWlsdXJlLCBub3QgYW4g
ZXJyb3IgcG9pbnRlci4KCkZpeGVzOiAxNmZkMjQ4NDdkN2EgKCJ2aWRlbzogc3RtZmI6IEFkZCBk
ZXZpY2UgdHJlZSBzdXBwb3J0IikKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUu
a2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2ZXJzL3ZpZGVvL3N0bS5jIHwg
NCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmlkZW8vc3RtLmMgYi9kcml2ZXJzL3ZpZGVvL3N0bS5jCmlu
ZGV4IDBjMTkwZDM2YWU5Zi4uZDRhNjE4ZmU1MDkxIDEwMDY0NAotLS0gYS9kcml2ZXJzL3ZpZGVv
L3N0bS5jCisrKyBiL2RyaXZlcnMvdmlkZW8vc3RtLmMKQEAgLTU1MSw5ICs1NTEsOSBAQCBzdGF0
aWMgaW50IHN0bWZiX3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqaHdfZGV2KQogCQl9CiAKIAkJbW9k
ZXMgPSBvZl9nZXRfZGlzcGxheV90aW1pbmdzKGRpc3BsYXkpOwotCQlpZiAoSVNfRVJSKG1vZGVz
KSkgeworCQlpZiAoIW1vZGVzKSB7CiAJCQlkZXZfZXJyKGh3X2RldiwgInVuYWJsZSB0byBwYXJz
ZSBkaXNwbGF5IHRpbWluZ3NcbiIpOwotCQkJcmV0dXJuIFBUUl9FUlIobW9kZXMpOworCQkJcmV0
dXJuIC1FSU5WQUw7CiAJCX0KIAogCQlmYmkuaW5mby5tb2Rlcy5tb2RlcyA9IG1vZGVzLT5tb2Rl
czsKLS0gCjIuMjMuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
