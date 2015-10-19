Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zo7bp-0005bD-VX
 for barebox@lists.infradead.org; Mon, 19 Oct 2015 10:24:06 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 19 Oct 2015 12:23:36 +0200
Message-Id: <1445250220-28239-3-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1445250220-28239-1-git-send-email-mkl@pengutronix.de>
References: <1445250220-28239-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 2/6] state: return -EPROBE_DEFER if the backend isn't available
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>

RnJvbTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4K
ClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0
cm9uaXguZGU+ClNpZ25lZC1vZmYtYnk6IE1hcmMgS2xlaW5lLUJ1ZGRlIDxta2xAcGVuZ3V0cm9u
aXguZGU+Ci0tLQogZHJpdmVycy9taXNjL3N0YXRlLmMgfCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL21p
c2Mvc3RhdGUuYyBiL2RyaXZlcnMvbWlzYy9zdGF0ZS5jCmluZGV4IDdhMzMwMzI2NDIwNi4uZjMw
OTZmYzI3MDk4IDEwMDY0NAotLS0gYS9kcml2ZXJzL21pc2Mvc3RhdGUuYworKysgYi9kcml2ZXJz
L21pc2Mvc3RhdGUuYwpAQCAtNTIsNiArNTIsOCBAQCBzdGF0aWMgaW50IHN0YXRlX3Byb2JlKHN0
cnVjdCBkZXZpY2VfZCAqZGV2KQogCS8qIGd1ZXNzIGlmIG9mX3BhdGggaXMgYSBwYXRoLCBub3Qg
YSBwaGFuZGxlICovCiAJaWYgKG9mX3BhdGhbMF0gPT0gJy8nICYmIGxlbiA+IDEpIHsKIAkJcmV0
ID0gb2ZfZmluZF9wYXRoKG5wLCAiYmFja2VuZCIsICZwYXRoLCAwKTsKKwkJaWYgKHJldCA9PSAt
RU5PREVWKQorCQkJcmV0ID0gLUVQUk9CRV9ERUZFUjsKIAkJaWYgKHJldCkKIAkJCWdvdG8gb3V0
X3JlbGVhc2U7CiAJfSBlbHNlIHsKQEAgLTY2LDcgKzY4LDcgQEAgc3RhdGljIGludCBzdGF0ZV9w
cm9iZShzdHJ1Y3QgZGV2aWNlX2QgKmRldikKIAogCQlkZXYgPSBvZl9maW5kX2RldmljZV9ieV9u
b2RlKHBhcnRpdGlvbl9ub2RlKTsKIAkJaWYgKCFsaXN0X2lzX3Npbmd1bGFyKCZkZXYtPmNkZXZz
KSkgewotCQkJcmV0ID0gLUVOT0RFVjsKKwkJCXJldCA9IC1FUFJPQkVfREVGRVI7CiAJCQlnb3Rv
IG91dF9yZWxlYXNlOwogCQl9CiAKLS0gCjIuNi4xCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vYmFyZWJveAo=
