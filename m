Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XnQOm-0003KS-Mk
 for barebox@lists.infradead.org; Sun, 09 Nov 2014 11:11:22 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Date: Sun,  9 Nov 2014 12:10:31 +0100
Message-Id: <1415531432-6402-1-git-send-email-uwe@kleine-koenig.org>
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
Subject: [PATCH 1/2] mtd: nand_orion: remove unused goto label
To: barebox@lists.infradead.org

VGhpcyBmaXhlcyB0aGUgZm9sbG93aW5nIHdhcm5pbmc6CgoJZHJpdmVycy9tdGQvbmFuZC9uYW5k
X29yaW9uLmM6IEluIGZ1bmN0aW9uIOKAmG9yaW9uX25hbmRfcHJvYmXigJk6Cglkcml2ZXJzL210
ZC9uYW5kL25hbmRfb3Jpb24uYzoxNDU6MTogd2FybmluZzogbGFiZWwg4oCYbm9fcmVz4oCZIGRl
ZmluZWQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1sYWJlbF0KCkZpeGVzOiAxYTIxNWY1ICgibmFu
ZDogQWRkIE1hcnZlbGwgT3Jpb24gTkFORCBkcml2ZXIiKQpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xl
aW5lLUvDtm5pZyA8dXdlQGtsZWluZS1rb2VuaWcub3JnPgotLS0KIGRyaXZlcnMvbXRkL25hbmQv
bmFuZF9vcmlvbi5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRl
bGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvbmFuZC9uYW5kX29yaW9uLmMgYi9k
cml2ZXJzL210ZC9uYW5kL25hbmRfb3Jpb24uYwppbmRleCAyYzk3MDdkLi5mZTA2ZWY3IDEwMDY0
NAotLS0gYS9kcml2ZXJzL210ZC9uYW5kL25hbmRfb3Jpb24uYworKysgYi9kcml2ZXJzL210ZC9u
YW5kL25hbmRfb3Jpb24uYwpAQCAtMTQyLDcgKzE0Miw3IEBAIHN0YXRpYyBpbnQgb3Jpb25fbmFu
ZF9wcm9iZShzdHJ1Y3QgZGV2aWNlX2QgKmRldikKIG5vX2RldjoKIAlpZiAoIUlTX0VSUihjbGsp
KQogCQljbGtfZGlzYWJsZShjbGspOwotbm9fcmVzOgorCiAJZnJlZShwcml2KTsKIAlyZXR1cm4g
cmV0OwogfQotLSAKMi4xLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
