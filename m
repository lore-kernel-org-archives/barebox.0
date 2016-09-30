Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bq48f-000410-PH
 for barebox@lists.infradead.org; Fri, 30 Sep 2016 20:10:34 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri, 30 Sep 2016 22:10:08 +0200
Message-Id: <20160930201008.4136-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] net/phy: marvell: fix error handling
To: barebox@lists.infradead.org

V2l0aG91dCBmaXJzdCBhc3NpZ25pbmcgdG8gcmV0IGl0IGRvZXNuJ3QgbWFrZSBzZW5zZSB0byBj
aGVjayBpdC4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2Vu
aWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9uZXQvcGh5L21hcnZlbGwuYyB8IDMgKyst
CiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvcGh5L21hcnZlbGwuYyBiL2RyaXZlcnMvbmV0L3BoeS9tYXJ2ZWxs
LmMKaW5kZXggNjQwOWYxNGFlMmUyLi45YTk2M2Y2ZDVlNjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
bmV0L3BoeS9tYXJ2ZWxsLmMKKysrIGIvZHJpdmVycy9uZXQvcGh5L21hcnZlbGwuYwpAQCAtMTk4
LDcgKzE5OCw4IEBAIHN0YXRpYyBpbnQgbTg4ZTExMjFfY29uZmlnX2luaXQoc3RydWN0IHBoeV9k
ZXZpY2UgKnBoeWRldikKIAlpZiAocmV0IDwgMCkKIAkJcmV0dXJuIHJldDsKIAotCXBoeV93cml0
ZShwaHlkZXYsIE1JSV9NQVJWRUxMX1BIWV9QQUdFLCBNSUlfTUFSVkVMTF9QSFlfREVGQVVMVF9Q
QUdFKTsKKwlyZXQgPSBwaHlfd3JpdGUocGh5ZGV2LCBNSUlfTUFSVkVMTF9QSFlfUEFHRSwKKwkJ
CU1JSV9NQVJWRUxMX1BIWV9ERUZBVUxUX1BBR0UpOwogCWlmIChyZXQgPCAwKQogCQlyZXR1cm4g
cmV0OwogCi0tIAoyLjkuMwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
