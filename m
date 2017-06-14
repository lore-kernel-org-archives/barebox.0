Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dL6WP-0003zQ-55
 for barebox@lists.infradead.org; Wed, 14 Jun 2017 11:31:40 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed, 14 Jun 2017 13:31:09 +0200
Message-Id: <20170614113110.21604-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 1/2] of_device_is_stdout_path: simplify
To: barebox@lists.infradead.org

VGVzdCBmb3IgZGV2LT5kZXZpY2Vfbm9kZSBiZWluZyBOVUxMIGVhcmxpZXIgd2hpY2ggYXQgdGhl
IGVuZCBvZiB0aGUKZnVuY3Rpb24gYWxsb3dzIHRvIHNpbXBsaWZ5IHRoZSBjYWxjdWxhdGlvbiBv
ZiB0aGUgcmV0dXJuIHZhbHVlCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5r
bGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvb2YvYmFzZS5jIHwgMTAg
KysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL29mL2Jhc2UuYyBiL2RyaXZlcnMvb2YvYmFzZS5jCmlu
ZGV4IGM5YmRkOTE4MTBmMi4uNTkyZWJiMDE1YTczIDEwMDY0NAotLS0gYS9kcml2ZXJzL29mL2Jh
c2UuYworKysgYi9kcml2ZXJzL29mL2Jhc2UuYwpAQCAtMjAwMCw2ICsyMDAwLDkgQEAgaW50IG9m
X2RldmljZV9pc19zdGRvdXRfcGF0aChzdHJ1Y3QgZGV2aWNlX2QgKmRldikKIAlzdHJ1Y3QgZGV2
aWNlX25vZGUgKmRuOwogCWNvbnN0IGNoYXIgKm5hbWU7CiAKKwlpZiAoIWRldi0+ZGV2aWNlX25v
ZGUpCisJCXJldHVybiAwOworCiAJbmFtZSA9IG9mX2dldF9wcm9wZXJ0eShvZl9jaG9zZW4sICJz
dGRvdXQtcGF0aCIsIE5VTEwpOwogCWlmICghbmFtZSkKIAkJbmFtZSA9IG9mX2dldF9wcm9wZXJ0
eShvZl9jaG9zZW4sICJsaW51eCxzdGRvdXQtcGF0aCIsIE5VTEwpOwpAQCAtMjAwOCwxMyArMjAx
MSw4IEBAIGludCBvZl9kZXZpY2VfaXNfc3Rkb3V0X3BhdGgoc3RydWN0IGRldmljZV9kICpkZXYp
CiAJCXJldHVybiAwOwogCiAJZG4gPSBvZl9maW5kX25vZGVfYnlfcGF0aChuYW1lKTsKLQlpZiAo
IWRuKQotCQlyZXR1cm4gMDsKIAotCWlmIChkbiA9PSBkZXYtPmRldmljZV9ub2RlKQotCQlyZXR1
cm4gMTsKLQotCXJldHVybiAwOworCXJldHVybiBkbiA9PSBkZXYtPmRldmljZV9ub2RlOwogfQog
CiAvKioKLS0gCjIuMTEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
