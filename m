Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbIV9-00036p-FA
 for barebox@lists.infradead.org; Wed, 20 May 2020 06:46:52 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed, 20 May 2020 08:46:44 +0200
Message-Id: <20200520064644.22838-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] password: don't export read_default_passwd()
To: barebox@lists.infradead.org

VGhpcyBmdW5jdGlvbiBpcyB1c2VkIG9ubHkgaW4gY29tbW9uL3Bhc3N3b3JkLmMgaXRzZWxmLCBz
byBpdCBkb2Vzbid0Cm5lZWQgdG8gYmUgZXhwb3J0ZWQuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xl
aW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIGNvbW1vbi9w
YXNzd29yZC5jIHwgMSAtCiAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL2NvbW1vbi9wYXNzd29yZC5jIGIvY29tbW9uL3Bhc3N3b3JkLmMKaW5kZXggYTJhOWM0Y2Q2
Y2FmLi5lNWEzMzNkOWIxOWUgMTAwNjQ0Ci0tLSBhL2NvbW1vbi9wYXNzd29yZC5jCisrKyBiL2Nv
bW1vbi9wYXNzd29yZC5jCkBAIC0xNzksNyArMTc5LDYgQEAgc3RhdGljIGludCByZWFkX2RlZmF1
bHRfcGFzc3dkKHVuc2lnbmVkIGNoYXIgKnN1bSwgc2l6ZV90IGxlbmd0aCkKIAogCXJldHVybiAw
OwogfQotRVhQT1JUX1NZTUJPTChyZWFkX2RlZmF1bHRfcGFzc3dkKTsKIAogc3RhdGljIGludCBy
ZWFkX2Vudl9wYXNzd2QodW5zaWduZWQgY2hhciAqc3VtLCBzaXplX3QgbGVuZ3RoKQogewotLSAK
Mi4yNi4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
YmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
