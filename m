Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eHpRM-0006Pc-KD
 for barebox@lists.infradead.ORG; Thu, 23 Nov 2017 11:13:15 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu, 23 Nov 2017 12:12:33 +0100
Message-Id: <20171123111237.10245-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20171122102231.16872-1-u.kleine-koenig@pengutronix.de>
References: <20171122102231.16872-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 7/6] net/e1000: don't fail to bind on uninitialized flash
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

V2hlbiB0aGUgZmxhc2ggZG9lc24ndCBob2xkIGEgdmFsaWQgZmlybXdhcmUgaW1hZ2UgdGhlcmUg
YXJlIHN0aWxsCnNvbWUgdGhpbmdzIChsaWtlIGFjY2Vzc2luZyB0aGUgZmxhc2gpIHBvc3NpYmxl
LiBEb24ndCByZXR1cm4gYW4gZXJyb3IKY29kZSBpbiB0aGlzIGNhc2UgYnV0IHJldHVybiAwIGlu
c3RlYWQuIFRoaXMgd2F5IHRoZSBkcml2ZXIgaXMKcmVndWxhcmlseSBib3VuZCBhbmQganVzdCBk
b2Vzbid0IHByb3ZpZGUgYSBuZXR3b3JrIGludGVyZmFjZS4KClNpZ25lZC1vZmYtYnk6IFV3ZSBL
bGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVy
cy9uZXQvZTEwMDAvbWFpbi5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZTEwMDAvbWFpbi5jIGIv
ZHJpdmVycy9uZXQvZTEwMDAvbWFpbi5jCmluZGV4IDAxYzlmMzlhMjVmNC4uYmI2YWI0ZWIwMzYw
IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9lMTAwMC9tYWluLmMKKysrIGIvZHJpdmVycy9uZXQv
ZTEwMDAvbWFpbi5jCkBAIC0zNTk4LDcgKzM1OTgsNyBAQCBzdGF0aWMgaW50IGUxMDAwX3Byb2Jl
KHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBjb25zdCBzdHJ1Y3QgcGNpX2RldmljZV9pZCAqaWQpCiAJ
fQogCiAJaWYgKGUxMDAwX3ZhbGlkYXRlX2VlcHJvbV9jaGVja3N1bShodykpCi0JCXJldHVybiAt
RUlOVkFMOworCQlyZXR1cm4gMDsKIAogCWUxMDAwX2dldF9ldGhhZGRyKGVkZXYsIGVkZXYtPmV0
aGFkZHIpOwogCi0tIAoyLjExLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94
Cg==
