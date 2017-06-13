Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dKtsn-0004J4-Ud
 for barebox@lists.infradead.org; Tue, 13 Jun 2017 22:01:55 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed, 14 Jun 2017 00:01:29 +0200
Message-Id: <20170613220129.18236-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] serial: ns16550: emit an error message if getting the clock
 fails
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4KLS0tCiBkcml2ZXJzL3NlcmlhbC9zZXJpYWxfbnMxNjU1MC5jIHwgMSArCiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3NlcmlhbC9z
ZXJpYWxfbnMxNjU1MC5jIGIvZHJpdmVycy9zZXJpYWwvc2VyaWFsX25zMTY1NTAuYwppbmRleCA0
MzliN2Q1NTE3YmQuLmE4OTUzY2Q5OWQ2MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9zZXJpYWwvc2Vy
aWFsX25zMTY1NTAuYworKysgYi9kcml2ZXJzL3NlcmlhbC9zZXJpYWxfbnMxNjU1MC5jCkBAIC00
NDUsNiArNDQ1LDcgQEAgc3RhdGljIGludCBuczE2NTUwX3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAq
ZGV2KQogCQlwcml2LT5jbGsgPSBjbGtfZ2V0KGRldiwgTlVMTCk7CiAJCWlmIChJU19FUlIocHJp
di0+Y2xrKSkgewogCQkJcmV0ID0gUFRSX0VSUihwcml2LT5jbGspOworCQkJZGV2X2VycihkZXYs
ICJmYWlsZWQgdG8gZ2V0IGNsayAoJWQpXG4iLCByZXQpOwogCQkJZ290byBlcnI7CiAJCX0KIAkJ
Y2xrX2VuYWJsZShwcml2LT5jbGspOwotLSAKMi4xMS4wCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYmFyZWJveAo=
