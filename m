Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUpcE-0005Hj-Q8
 for barebox@lists.infradead.org; Tue, 20 Oct 2020 11:15:43 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Tue, 20 Oct 2020 13:15:37 +0200
Message-Id: <20201020111537.29328-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] usb: i.MX: improve regulator handling
To: barebox@lists.infradead.org

SW5zdGVhZCBvZiBqdXN0IGlnbm9yaW5nIGVycm9ycyByZWxhdGVkIHRvIHJlZ3VsYXRvciBnZXR0
aW5nIGVycm9yIG91dC4KSW4gY2FzZSB0aGVyZSBpcyBubyByZWd1bGF0b3IgaW4gdGhlIGRldmlj
ZSB0cmVlLCByZWd1bGF0b3JfZ2V0KCkgcmV0dXJucwp0aGUgZHVtbXkgcmVndWxhdG9yIGFuZCBu
b3QgYW4gZXJyb3IgY29kZSwgc28gdGhlIGNoYW5nZSBpcyByaWdodCBmb3IKdGhpcyBzaXR1YXRp
b24sIHRvby4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2Vu
aWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy91c2IvaW14L2NoaXBpZGVhLWlteC5jIHwg
NyArKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdXNiL2lteC9jaGlwaWRlYS1pbXguYyBiL2RyaXZlcnMv
dXNiL2lteC9jaGlwaWRlYS1pbXguYwppbmRleCA3ODZiZWVkZTZkODkuLmRkMGUzYzFhMmE1OCAx
MDA2NDQKLS0tIGEvZHJpdmVycy91c2IvaW14L2NoaXBpZGVhLWlteC5jCisrKyBiL2RyaXZlcnMv
dXNiL2lteC9jaGlwaWRlYS1pbXguYwpAQCAtMjY3LDggKzI2NywxMSBAQCBzdGF0aWMgaW50IGlt
eF9jaGlwaWRlYV9wcm9iZShzdHJ1Y3QgZGV2aWNlX2QgKmRldikKIAl9CiAKIAljaS0+dmJ1cyA9
IHJlZ3VsYXRvcl9nZXQoZGV2LCAidmJ1cyIpOwotCWlmIChJU19FUlIoY2ktPnZidXMpKQotCQlj
aS0+dmJ1cyA9IE5VTEw7CisJaWYgKElTX0VSUihjaS0+dmJ1cykpIHsKKwkJcmV0ID0gRVJSX1BU
UihjaS0+dmJ1cyk7CisJCWRldl9lcnIoZGV2LCAiQ2Fubm90IGdldCB2YnVzIHJlZ3VsYXRvcjog
JXNcbiIsIHN0cmVycm9yKC1yZXQpKTsKKwkJcmV0dXJuIHJldDsKKwl9CiAKIAkvKgogCSAqIFNv
bWUgZGV2aWNlcyBoYXZlIG1vcmUgdGhhbiBvbmUgY2xvY2ssIGluIHRoaXMgY2FzZSB0aGV5IGFy
ZSBlbmFibGVkCi0tIAoyLjI4LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94
Cg==
