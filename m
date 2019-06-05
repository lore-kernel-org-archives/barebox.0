Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYVSA-0002wQ-ED
 for barebox@lists.infradead.org; Wed, 05 Jun 2019 12:55:43 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed,  5 Jun 2019 14:55:35 +0200
Message-Id: <20190605125535.13238-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] net: limit NET_FSL_FMAN to Layerscape
To: barebox@lists.infradead.org

Rml4ZXM6IGVjMDkxNTJiOTA5ZCAoIm5ldDogQWRkIEZyZWVzY2FsZSBGTWFuIGV0aGVybmV0IHN1
cHBvcnQiKQpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmln
QHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvbmV0L0tjb25maWcgfCAxICsKIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L0tjb25maWcg
Yi9kcml2ZXJzL25ldC9LY29uZmlnCmluZGV4IGJlZWI0YjgyMjE0Ny4uNDUwNWQ0NTI1MDBkIDEw
MDY0NAotLS0gYS9kcml2ZXJzL25ldC9LY29uZmlnCisrKyBiL2RyaXZlcnMvbmV0L0tjb25maWcK
QEAgLTEzOSw2ICsxMzksNyBAQCBjb25maWcgRFJJVkVSX05FVF9GRUNfSU1YCiAKIGNvbmZpZyBE
UklWRVJfTkVUX0ZTTF9GTUFOCiAJYm9vbCAiRnJlZXNjYWxlIGZtYW4gZXRoZXJuZXQgZHJpdmVy
IgorCWRlcGVuZHMgb24gQVJDSF9MQVlFUlNDQVBFCiAJc2VsZWN0IFBIWUxJQgogCXNlbGVjdCBG
U0xfUUVfRklSTVdBUkUKIAloZWxwCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9iYXJlYm94Cg==
