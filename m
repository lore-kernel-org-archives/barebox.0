Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cEvAz-0002l4-2c
 for barebox@lists.infradead.org; Thu, 08 Dec 2016 09:39:46 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu,  8 Dec 2016 10:39:22 +0100
Message-Id: <20161208093922.23194-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] spi: mvebu: only read from bus when data is needed
To: barebox@lists.infradead.org

VGhpcyBvcHRpbWl6YXRpb24gcmVkdWNlZCB0aGUgdGltZSB0byB0cmFuc2ZlciA0MCBNQiBhdCA1
MCBIeiBmcm9tCjIxNCBzZWNvbmRzIHRvIDIwMyBzZWNvbmRzLgoKU2lnbmVkLW9mZi1ieTogVXdl
IEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2
ZXJzL3NwaS9tdmVidV9zcGkuYyB8IDEwICsrKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zcGkvbXZl
YnVfc3BpLmMgYi9kcml2ZXJzL3NwaS9tdmVidV9zcGkuYwppbmRleCA1OGFjNjA1N2FmZTMuLjY4
ODM4YzBjZTE4NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9zcGkvbXZlYnVfc3BpLmMKKysrIGIvZHJp
dmVycy9zcGkvbXZlYnVfc3BpLmMKQEAgLTMwMCwxMiArMzAwLDEyIEBAIHN0YXRpYyBpbnQgbXZl
YnVfc3BpX2RvX3RyYW5zZmVyKHN0cnVjdCBzcGlfZGV2aWNlICpzcGksCiAJCQlyZXR1cm4gcmV0
OwogCQl9CiAKLQkJZGF0YSA9IHJlYWRsKHByaXYtPmJhc2UgKyBTUElfREFUQV9JTik7Ci0KLQkJ
aWYgKHJ4ZGF0YSkKKwkJaWYgKHJ4ZGF0YSkgeworCQkJZGF0YSA9IHJlYWRsKHByaXYtPmJhc2Ug
KyBTUElfREFUQV9JTik7CiAJCQkqcnhkYXRhKysgPSAoZGF0YSAmIDB4ZmYpOwotCQlpZiAocnhk
YXRhICYmIHByaXYtPmRhdGExNikKLQkJCSpyeGRhdGErKyA9IChkYXRhID4+IDgpICYgMHhmZjsK
KwkJCWlmIChwcml2LT5kYXRhMTYpCisJCQkJKnJ4ZGF0YSsrID0gKGRhdGEgPj4gOCkgJiAweGZm
OworCQl9CiAJfQogCiAJcmV0dXJuIDA7Ci0tIAoyLjEwLjIKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9iYXJlYm94Cg==
