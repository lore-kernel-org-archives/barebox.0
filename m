Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YsTes-0000Do-HD
 for barebox@lists.infradead.org; Wed, 13 May 2015 10:13:00 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 13 May 2015 12:12:32 +0200
Message-Id: <1431511952-32124-7-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1431511952-32124-1-git-send-email-mkl@pengutronix.de>
References: <1431511952-32124-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 7/7] state: return -EPROBE_DEFER if the backend isn't available
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>

RnJvbTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4K
ClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0
cm9uaXguZGU+ClNpZ25lZC1vZmYtYnk6IE1hcmMgS2xlaW5lLUJ1ZGRlIDxta2xAcGVuZ3V0cm9u
aXguZGU+Ci0tLQogZHJpdmVycy9taXNjL3N0YXRlLmMgfCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL21p
c2Mvc3RhdGUuYyBiL2RyaXZlcnMvbWlzYy9zdGF0ZS5jCmluZGV4IDllOGE0MDI1NTM0OC4uZGJl
ODg3MTVhMTAzIDEwMDY0NAotLS0gYS9kcml2ZXJzL21pc2Mvc3RhdGUuYworKysgYi9kcml2ZXJz
L21pc2Mvc3RhdGUuYwpAQCAtNTIsNiArNTIsOCBAQCBzdGF0aWMgaW50IHN0YXRlX3Byb2JlKHN0
cnVjdCBkZXZpY2VfZCAqZGV2KQogCS8qIGd1ZXNzIGlmIG9mX3BhdGggaXMgYSBwYXRoLCBub3Qg
YSBwaGFuZGxlICovCiAJaWYgKG9mX3BhdGhbMF0gPT0gJy8nKSB7CiAJCXJldCA9IG9mX2ZpbmRf
cGF0aChucCwgImJhY2tlbmQiLCAmcGF0aCwgMCk7CisJCWlmIChyZXQgPT0gLUVOT0RFVikKKwkJ
CXJldCA9IC1FUFJPQkVfREVGRVI7CiAJCWlmIChyZXQpCiAJCQlnb3RvIG91dF9yZWxlYXNlOwog
CX0gZWxzZSB7CkBAIC02Niw3ICs2OCw3IEBAIHN0YXRpYyBpbnQgc3RhdGVfcHJvYmUoc3RydWN0
IGRldmljZV9kICpkZXYpCiAKIAkJZGV2ID0gb2ZfZmluZF9kZXZpY2VfYnlfbm9kZShwYXJ0aXRp
b25fbm9kZSk7CiAJCWlmICghbGlzdF9pc19zaW5ndWxhcigmZGV2LT5jZGV2cykpIHsKLQkJCXJl
dCA9IC1FTk9ERVY7CisJCQlyZXQgPSAtRVBST0JFX0RFRkVSOwogCQkJZ290byBvdXRfcmVsZWFz
ZTsKIAkJfQogCi0tIAoyLjEuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
