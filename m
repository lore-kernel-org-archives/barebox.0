Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dL6WP-0003zR-4X
 for barebox@lists.infradead.org; Wed, 14 Jun 2017 11:31:38 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed, 14 Jun 2017 13:31:10 +0200
Message-Id: <20170614113110.21604-2-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20170614113110.21604-1-u.kleine-koenig@pengutronix.de>
References: <20170614113110.21604-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 2/2] of_device_is_stdout_path: split off options and support
 aliases
To: barebox@lists.infradead.org

U2V2ZXJhbCBkZXZpY2UgdHJlZXMgdXNlIHNvbWV0aGluZyBsaWtlOgoKCXN0ZG91dC1wYXRoID0g
InNlcmlhbDA6MTE1MjAwbjgiOwoKQ3VycmVudGx5IG9mX2RldmljZV9pc19zdGRvdXRfcGF0aCBm
YWlscyB0byBkbyB0aGUgcmlnaHQgdGhpbmcgaGVyZQpiZWNhdXNlIGl0IGV4cGVjdHMgYW4gYWJz
b2x1dGUgbm9kZSBwYXRoIGFuZCBubyBvcHRpb25zLiBTbyBzcGxpdCBvZmYKb3B0aW9ucyAoZXZl
cnl0aGluZyBhZnRlciB0aGUgY29sb24pIGFuZCByZXNvbHZlIGFsaWFzZXMuCgpTaWduZWQtb2Zm
LWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgot
LS0KIGRyaXZlcnMvb2YvYmFzZS5jIHwgMTIgKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwg
MTEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvb2Yv
YmFzZS5jIGIvZHJpdmVycy9vZi9iYXNlLmMKaW5kZXggNTkyZWJiMDE1YTczLi5lNDAxYzExYTg3
OGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvb2YvYmFzZS5jCisrKyBiL2RyaXZlcnMvb2YvYmFzZS5j
CkBAIC0xOTk5LDYgKzE5OTksNyBAQCBpbnQgb2ZfZGV2aWNlX2lzX3N0ZG91dF9wYXRoKHN0cnVj
dCBkZXZpY2VfZCAqZGV2KQogewogCXN0cnVjdCBkZXZpY2Vfbm9kZSAqZG47CiAJY29uc3QgY2hh
ciAqbmFtZTsKKwljaGFyICpxOwogCiAJaWYgKCFkZXYtPmRldmljZV9ub2RlKQogCQlyZXR1cm4g
MDsKQEAgLTIwMTAsNyArMjAxMSwxNiBAQCBpbnQgb2ZfZGV2aWNlX2lzX3N0ZG91dF9wYXRoKHN0
cnVjdCBkZXZpY2VfZCAqZGV2KQogCWlmICghbmFtZSkKIAkJcmV0dXJuIDA7CiAKLQlkbiA9IG9m
X2ZpbmRfbm9kZV9ieV9wYXRoKG5hbWUpOworCS8qIFRoaXMgY291bGQgbWFrZSB1c2Ugb2Ygc3Ry
Y2hybnVsIGl0IGl0IHdlcmUgYXZhaWxhYmxlICovCisJcSA9IHN0cmNocihuYW1lLCAnOicpOwor
CWlmICghcSkKKwkJcSA9IG5hbWUgKyBzdHJsZW4obmFtZSk7CisKKwlxID0geHN0cm5kdXAobmFt
ZSwgcSAtIG5hbWUpOworCisJZG4gPSBvZl9maW5kX25vZGVfYnlfcGF0aF9vcl9hbGlhcyhOVUxM
LCBxKTsKKworCWZyZWUocSk7CiAKIAlyZXR1cm4gZG4gPT0gZGV2LT5kZXZpY2Vfbm9kZTsKIH0K
LS0gCjIuMTEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
