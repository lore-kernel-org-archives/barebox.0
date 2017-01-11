Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cRLJW-0004h6-U8
 for barebox@lists.infradead.org; Wed, 11 Jan 2017 15:59:53 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed, 11 Jan 2017 16:59:16 +0100
Message-Id: <20170111155920.13179-4-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20170111155920.13179-1-u.kleine-koenig@pengutronix.de>
References: <20170111155920.13179-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH v1 3/7] net/phy: marvell: rename phy_driver array to match
 Linux driver
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4KLS0tCiBkcml2ZXJzL25ldC9waHkvbWFydmVsbC5jIHwgNSArKystLQogMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9waHkvbWFydmVsbC5jIGIvZHJpdmVycy9uZXQvcGh5L21hcnZlbGwuYwppbmRl
eCBjNGQ5YzdmZTQ5M2EuLmVlOTVjMmRiNTcwYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvcGh5
L21hcnZlbGwuYworKysgYi9kcml2ZXJzL25ldC9waHkvbWFydmVsbC5jCkBAIC0yMzcsNyArMjM3
LDcgQEAgc3RhdGljIGludCBtODhlMTMxOHNfY29uZmlnX2luaXQoc3RydWN0IHBoeV9kZXZpY2Ug
KnBoeWRldikKIAlyZXR1cm4gbTg4ZTExMjFfY29uZmlnX2luaXQocGh5ZGV2KTsKIH0KIAotc3Rh
dGljIHN0cnVjdCBwaHlfZHJpdmVyIG1hcnZlbGxfcGh5c1tdID0geworc3RhdGljIHN0cnVjdCBw
aHlfZHJpdmVyIG1hcnZlbGxfZHJpdmVyc1tdID0gewogCXsKIAkJLnBoeV9pZAkJPSBNQVJWRUxM
X1BIWV9JRF84OEUxMTIxUiwKIAkJLnBoeV9pZF9tYXNrCT0gTUFSVkVMTF9QSFlfSURfTUFTSywK
QEAgLTI3OCw2ICsyNzgsNyBAQCBzdGF0aWMgc3RydWN0IHBoeV9kcml2ZXIgbWFydmVsbF9waHlz
W10gPSB7CiAKIHN0YXRpYyBpbnQgX19pbml0IG1hcnZlbGxfcGh5X2luaXQodm9pZCkKIHsKLQly
ZXR1cm4gcGh5X2RyaXZlcnNfcmVnaXN0ZXIobWFydmVsbF9waHlzLCBBUlJBWV9TSVpFKG1hcnZl
bGxfcGh5cykpOworCXJldHVybiBwaHlfZHJpdmVyc19yZWdpc3RlcihtYXJ2ZWxsX2RyaXZlcnMs
CisJCQkJICAgIEFSUkFZX1NJWkUobWFydmVsbF9kcml2ZXJzKSk7CiB9CiBmc19pbml0Y2FsbCht
YXJ2ZWxsX3BoeV9pbml0KTsKLS0gCjIuMTEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2JhcmVib3gK
