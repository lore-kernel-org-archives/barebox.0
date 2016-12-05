Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cDqVD-0001Wc-4n
 for barebox@lists.infradead.org; Mon, 05 Dec 2016 10:28:08 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Mon,  5 Dec 2016 11:27:43 +0100
Message-Id: <20161205102743.3896-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] spi: mvebu: fix error handling for transfer problems
To: barebox@lists.infradead.org, Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

V2hlbiBhIG1lc3NhZ2UgdHJhbnNmZXIgZmFpbHMgbm8gZnVydGhlciBtZXNzYWdlcyBhcmUgdHJh
bnNmZXJyZWQsIGJ1dAp0aGUgZXJyb3IgdmFsdWUgd2FzIG5vdCBwcm9wYWdhdGVkIHRvIHRoZSBj
YWxsZXIuCgpGaXhlczogNWRiMWE1NzhkNmVkICgic3BpOiBhZGQgTWFydmVsbCBNVkVCVSBTb0Mg
U1BJIGRyaXZlciIpClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1r
b2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9zcGkvbXZlYnVfc3BpLmMgfCA4ICsr
KystLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3BpL212ZWJ1X3NwaS5jIGIvZHJpdmVycy9zcGkvbXZlYnVf
c3BpLmMKaW5kZXggMzM1Nzc0ZDRjNjA5Li5lZTdiMjEyOTYyZjcgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvc3BpL212ZWJ1X3NwaS5jCisrKyBiL2RyaXZlcnMvc3BpL212ZWJ1X3NwaS5jCkBAIC0zMDUs
MTQgKzMwNSwxNCBAQCBzdGF0aWMgaW50IG12ZWJ1X3NwaV90cmFuc2ZlcihzdHJ1Y3Qgc3BpX2Rl
dmljZSAqc3BpLCBzdHJ1Y3Qgc3BpX21lc3NhZ2UgKm1zZykKIAlsaXN0X2Zvcl9lYWNoX2VudHJ5
KHQsICZtc2ctPnRyYW5zZmVycywgdHJhbnNmZXJfbGlzdCkgewogCQlyZXQgPSBtdmVidV9zcGlf
ZG9fdHJhbnNmZXIoc3BpLCB0KTsKIAkJaWYgKHJldCkKLQkJCWJyZWFrOworCQkJZ290byBlcnJf
dHJhbnNmZXI7CiAJCW1zZy0+YWN0dWFsX2xlbmd0aCArPSB0LT5sZW47CiAJfQogCi0JcmV0ID0g
bXZlYnVfc3BpX3NldF9jcyhwcml2LCBzcGktPmNoaXBfc2VsZWN0LCBzcGktPm1vZGUsIGZhbHNl
KTsKLQlpZiAocmV0KQotCQlyZXR1cm4gcmV0OworCXJldHVybiBtdmVidV9zcGlfc2V0X2NzKHBy
aXYsIHNwaS0+Y2hpcF9zZWxlY3QsIHNwaS0+bW9kZSwgZmFsc2UpOwogCitlcnJfdHJhbnNmZXI6
CisJbXZlYnVfc3BpX3NldF9jcyhwcml2LCBzcGktPmNoaXBfc2VsZWN0LCBzcGktPm1vZGUsIGZh
bHNlKTsKIAlyZXR1cm4gcmV0OwogfQogCi0tIAoyLjEwLjIKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9iYXJlYm94Cg==
