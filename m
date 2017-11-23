Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eHpRP-0006Pu-Fq
 for barebox@lists.infradead.ORG; Thu, 23 Nov 2017 11:13:17 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu, 23 Nov 2017 12:12:37 +0100
Message-Id: <20171123111237.10245-5-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20171123111237.10245-1-u.kleine-koenig@pengutronix.de>
References: <20171122102231.16872-1-u.kleine-koenig@pengutronix.de>
 <20171123111237.10245-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 11/6] net/e1000: expand timeout for flash erasure
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

RXJhc2luZyB0aGUgd2hvbGUgZmxhc2ggdGFrZXMgYXBwcm94aW1hdGVseSA3cyBvbiBvbmUgb2Yg
bXkgdGVzdAptYWNoaW5lcy4gRXhwYW5kIHRoZSB0aW1lb3V0IGFjY29yZGluZ2x5LgoKTm90ZSBo
b3dldmVyIHRoYXQgaXQgaXMgaW4gZ2VuZXJhbCBub3QgYWxsb3dlZCB0byBob2xkIHRoZSBmbGFz
aApzZW1hcGhvcmUgZm9yIHNvIGxvbmcgYW5kICJmaXJtd2FyZSBtaWdodCBpbXBsZW1lbnQgYSB0
aW1lb3V0Cm1lY2hhbmlzbSBhbmQgdGFrZSBvd25lcnNoaXAgb2YgdGhlIHJlbGV2YW50IFtsb2Nr
XSIgYWZ0ZXIgb25lIHNlY29uZC4KU28gYSBjaGlwIGVyYXNlIHNob3VsZCBiZXR0ZXIgb25seSBi
ZSBkb25lIHdoZW4gZmlybXdhcmUgZG9lc24ndCBtYWtlCnVzZSBvZiB0aGUgZmxhc2guCgpTaWdu
ZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4
LmRlPgotLS0KIGRyaXZlcnMvbmV0L2UxMDAwL2VlcHJvbS5jIHwgMiArLQogMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
ZXQvZTEwMDAvZWVwcm9tLmMgYi9kcml2ZXJzL25ldC9lMTAwMC9lZXByb20uYwppbmRleCAwZDkx
YTg4YmQ3NGYuLjBmMTMwNWM4NDk5YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZTEwMDAvZWVw
cm9tLmMKKysrIGIvZHJpdmVycy9uZXQvZTEwMDAvZWVwcm9tLmMKQEAgLTg1NCw3ICs4NTQsNyBA
QCBzdGF0aWMgaW50IGUxMDAwX2ZsYXNoX21vZGVfZXJhc2VfY2h1bmsoc3RydWN0IGUxMDAwX2h3
ICpodywgbG9mZl90IG9mZnNldCwKIAlyZXQgPSBlMTAwMF9wb2xsX3JlZyhodywgRTEwMDBfRkxT
V0NUTCwKIAkJCSAgICAgRTEwMDBfRkxTV0NUTF9ET05FIHwgRTEwMDBfRkxTV0NUTF9GTEJVU1ks
CiAJCQkgICAgIEUxMDAwX0ZMU1dDVExfRE9ORSwKLQkJCSAgICAgU0VDT05EKTsKKwkJCSAgICAg
MTAgKiBTRUNPTkQpOwogCWlmIChyZXQgPCAwKSB7CiAJCWRldl9lcnIoaHctPmRldiwKIAkJCSJU
aW1lb3V0IHdhaXRpbmcgZm9yIEZMU1dDVEwuRE9ORSB0byBiZSBzZXQgKGVyYXNlKVxuIik7Ci0t
IAoyLjExLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
