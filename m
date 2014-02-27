Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJ7k1-0002cw-Fu
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 20:39:38 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu, 27 Feb 2014 21:39:01 +0100
Message-Id: <1393533550-1865-2-git-send-email-u.kleine-koenig@pengutronix.de>
In-Reply-To: <1393533550-1865-1-git-send-email-u.kleine-koenig@pengutronix.de>
References: <1393533550-1865-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH v2 01/10] devfs: partitioning: add missing free in error path
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4KLS0tCiBmcy9kZXZmcy1jb3JlLmMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2ZzL2RldmZzLWNvcmUuYyBiL2ZzL2RldmZzLWNvcmUu
YwppbmRleCA0NGYwMTY5ZTYzMjQuLjVhMTIwYzY0ODc5YSAxMDA2NDQKLS0tIGEvZnMvZGV2ZnMt
Y29yZS5jCisrKyBiL2ZzL2RldmZzLWNvcmUuYwpAQCAtMjkyLDYgKzI5Miw3IEBAIHN0cnVjdCBj
ZGV2ICpkZXZmc19hZGRfcGFydGl0aW9uKGNvbnN0IGNoYXIgKmRldm5hbWUsIGxvZmZfdCBvZmZz
ZXQsIGxvZmZfdCBzaXplCiAJCW5ldy0+bXRkID0gbXRkX2FkZF9wYXJ0aXRpb24oY2Rldi0+bXRk
LCBvZmZzZXQsIHNpemUsIGZsYWdzLCBuYW1lKTsKIAkJaWYgKElTX0VSUihuZXctPm10ZCkpIHsK
IAkJCWludCByZXQgPSBQVFJfRVJSKG5ldy0+bXRkKTsKKwkJCWZyZWUobmV3LT5wYXJ0bmFtZSk7
CiAJCQlmcmVlKG5ldyk7CiAJCQlyZXR1cm4gRVJSX1BUUihyZXQpOwogCQl9Ci0tIAoxLjguNS4z
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJv
eCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
