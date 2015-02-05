Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YJTs5-0000Yo-Ut
 for barebox@lists.infradead.org; Thu, 05 Feb 2015 21:21:59 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu,  5 Feb 2015 22:21:32 +0100
Message-Id: <1423171292-26728-4-git-send-email-u.kleine-koenig@pengutronix.de>
In-Reply-To: <1423171292-26728-1-git-send-email-u.kleine-koenig@pengutronix.de>
References: <1423171292-26728-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 3/3] mtd: nand-imx: don't copy more bytes than read from
 hardware
To: barebox@lists.infradead.org

VGhlIE5GQyBjb21tYW5kIHVzZWQgZm9yIHJlYWRpbmcgdGhlIHJlc3VsdCBvZiBhIFJFQURJRCBj
b21tYW5kIHRvIHRoZSBOQU5EIGNoaXAKcmVhZHMgNiBieXRlcyAoaW4geDggbW9kZSkgb3IgNiB3
b3JkcyAoaW4geDE2IG1vZGUgd2l0aCB0aGUgdXBwZXIgYnl0ZXMgYWxsCmJlaW5nIDApLiBTbyB0
aGVyZSBpcyBubyBuZWVkIHRvIHNhZmUgMTYgYnl0ZXMgZm9yIGxhdGVyIGNvbnN1bXB0aW9uLgoK
U2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4KLS0tCiBkcml2ZXJzL210ZC9uYW5kL25hbmRfaW14LmMgfCA2ICsrKysrLQogMSBm
aWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbXRkL25hbmQvbmFuZF9pbXguYyBiL2RyaXZlcnMvbXRkL25hbmQvbmFuZF9pbXgu
YwppbmRleCA2ODU3NTA5OTEzODkuLjAwYzA1ZDAwYWZlMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9t
dGQvbmFuZC9uYW5kX2lteC5jCisrKyBiL2RyaXZlcnMvbXRkL25hbmQvbmFuZF9pbXguYwpAQCAt
MzYyLDcgKzM2MiwxMSBAQCBzdGF0aWMgdm9pZCBzZW5kX3JlYWRfaWRfdjMoc3RydWN0IGlteF9u
YW5kX2hvc3QgKmhvc3QpCiAKIAl3YWl0X29wX2RvbmUoaG9zdCk7CiAKLQltZW1jcHkoaG9zdC0+
ZGF0YV9idWYsIGhvc3QtPm1haW5fYXJlYTAsIDE2KTsKKwkvKgorCSAqIE5GQ19JRCByZXN1bHRz
IGluIHJlYWRpbmcgNiBieXRlcyBvciB3b3JkcyAoZGVwZW5kaW5nIG9uIGRhdGEgd2lkdGgpLAor
CSAqIHNvIGNvcHlpbmcgMyAzMi1iaXQgdmFsdWVzIGlzIGp1c3QgZmluZS4KKwkgKi8KKwltZW1j
cHkoaG9zdC0+ZGF0YV9idWYsIGhvc3QtPm1haW5fYXJlYTAsIDEyKTsKIH0KIAogc3RhdGljIHZv
aWQgc2VuZF9yZWFkX3BhcmFtX3YzKHN0cnVjdCBpbXhfbmFuZF9ob3N0ICpob3N0KQotLSAKMi4x
LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJl
Ym94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
