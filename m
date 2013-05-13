Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbtO2-00062e-2A
 for barebox@lists.infradead.org; Mon, 13 May 2013 14:05:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 13 May 2013 16:05:32 +0200
Message-Id: <1368453932-2865-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] fdt: Fix dt memreserve entry
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?J=C3=BCrgen=20Beisert?= <j.beisert@pengutronix.de>

VGhlIGZkdCByZXNlcnZlIG1hcCBuZWVkcyBhZGRyZXNzL3NpemUgdmFsdWVzLCBub3QgYWRkcmVz
cy9lbmQgdmFsdWVzCmxpa2UgYWNjaWRlbnRseSBkb25lIGZvciBnZW5lcmF0aW5nIHRoZSByZXNl
cnZlIGVudHJ5IGZvciB0aGUgZHQuCgpSZXBvcnRlZC1ieTogSsO8cmdlbiBCZWlzZXJ0IDxqLmJl
aXNlcnRAcGVuZ3V0cm9uaXguZGU+ClNpZ25lZC1vZmYtYnk6IFNhc2NoYSBIYXVlciA8cy5oYXVl
ckBwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2ZXJzL29mL2ZkdC5jIHwgMyArLS0KIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL29mL2ZkdC5jIGIvZHJpdmVycy9vZi9mZHQuYwppbmRleCBkYjQyMmE0Li5hM2VjNTc2IDEw
MDY0NAotLS0gYS9kcml2ZXJzL29mL2ZkdC5jCisrKyBiL2RyaXZlcnMvb2YvZmR0LmMKQEAgLTQ4
OSw4ICs0ODksNyBAQCB2b2lkIGZkdF9hZGRfcmVzZXJ2ZV9tYXAodm9pZCAqX19mZHQpCiAJfQog
CiAJb2Zfd3JpdGVfbnVtYmVyKCZmZHRfcmVzLT5hZGRyZXNzLCAodW5zaWduZWQgbG9uZylfX2Zk
dCwgMik7Ci0Jb2Zfd3JpdGVfbnVtYmVyKCZmZHRfcmVzLT5zaXplLCAodW5zaWduZWQgbG9uZylf
X2ZkdCArCi0JCQliZTMyX3RvX2NwdShmZHQtPnRvdGFsc2l6ZSksIDIpOworCW9mX3dyaXRlX251
bWJlcigmZmR0X3Jlcy0+c2l6ZSwgYmUzMl90b19jcHUoZmR0LT50b3RhbHNpemUpLCAyKTsKIAlm
ZHRfcmVzKys7CiAKIAlvZl93cml0ZV9udW1iZXIoJmZkdF9yZXMtPmFkZHJlc3MsIDAsIDIpOwot
LSAKMS44LjIucmMyCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
