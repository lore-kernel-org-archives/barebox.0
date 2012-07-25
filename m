Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1StxWz-0006Og-NN
 for barebox@lists.infradead.org; Wed, 25 Jul 2012 09:05:23 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed, 25 Jul 2012 11:05:14 +0200
Message-Id: <1343207114-6238-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] i2c: fix printf format specifier
To: barebox@lists.infradead.org

VXNlICV1IGluc3RlYWQgb2YgJWQgZm9yIGFuIHUzMiB2YXJpYWJsZQoKU2lnbmVkLW9mZi1ieTog
VXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBk
cml2ZXJzL2kyYy9pMmMuYyB8ICAgIDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2kyYy9pMmMuYyBiL2Ry
aXZlcnMvaTJjL2kyYy5jCmluZGV4IDllNTJiODYuLmIzYzNjOTMgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvaTJjL2kyYy5jCisrKyBiL2RyaXZlcnMvaTJjL2kyYy5jCkBAIC0xODEsNyArMTgxLDcgQEAg
aW50IGkyY19yZWFkX3JlZyhzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50LCB1MzIgYWRkciwgdTgg
KmJ1ZiwgdTE2IGNvdW50KQogCW1zZy0+bGVuID0gaTsKIAogCXN0YXR1cyA9IGkyY190cmFuc2Zl
cihjbGllbnQtPmFkYXB0ZXIsIG1zZywgQVJSQVlfU0laRShtc2cpKTsKLQlkZXZfZGJnKCZjbGll
bnQtPmRldiwgIiVzOiAlenVAJWQgLS0+ICVkXG4iLCBfX2Z1bmNfXywKKwlkZXZfZGJnKCZjbGll
bnQtPmRldiwgIiVzOiAlenVAJXUgLS0+ICVkXG4iLCBfX2Z1bmNfXywKIAkJY291bnQsIGFkZHIs
IHN0YXR1cyk7CiAKIAlpZiAoc3RhdHVzID09IEFSUkFZX1NJWkUobXNnKSkKQEAgLTIxNCw3ICsy
MTQsNyBAQCBpbnQgaTJjX3dyaXRlX3JlZyhzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50LCB1MzIg
YWRkciwgY29uc3QgdTggKmJ1ZiwgdTE2IGNvdW50KQogCW1lbWNweShtc2ctPmJ1ZiArIGksIGJ1
ZiwgY291bnQpOwogCiAJc3RhdHVzID0gaTJjX3RyYW5zZmVyKGNsaWVudC0+YWRhcHRlciwgbXNn
LCBBUlJBWV9TSVpFKG1zZykpOwotCWRldl9kYmcoJmNsaWVudC0+ZGV2LCAiJXM6ICV1QCVkIC0t
PiAlZFxuIiwgX19mdW5jX18sCisJZGV2X2RiZygmY2xpZW50LT5kZXYsICIlczogJXVAJXUgLS0+
ICVkXG4iLCBfX2Z1bmNfXywKIAkJY291bnQsIGFkZHIsIHN0YXR1cyk7CiAKIAlpZiAoc3RhdHVz
ID09IEFSUkFZX1NJWkUobXNnKSkKLS0gCjEuNy4xMC40CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYmFyZWJveAo=
