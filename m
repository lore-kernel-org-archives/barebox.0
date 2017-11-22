Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eHSBO-0007Gp-A5
 for barebox@lists.infradead.org; Wed, 22 Nov 2017 10:23:15 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed, 22 Nov 2017 11:22:30 +0100
Message-Id: <20171122102231.16872-6-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 5/6] net/e1000: fix size of invm device
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

VGhlIGlOVk0gc3RvcmFnZSBpcyAyIEtpYiBjb250YWluaW5nIDY0IDMyYml0IHdvcmRzICgwLTYz
KS4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVu
Z3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9uZXQvZTEwMDAvZWVwcm9tLmMgfCAyICstCiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9lMTAwMC9lZXByb20uYyBiL2RyaXZlcnMvbmV0L2UxMDAwL2VlcHJvbS5jCmlu
ZGV4IGU1ZDFjNTkyMWY1ZS4uNWVlNTQ1ZDhmZDVkIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9l
MTAwMC9lZXByb20uYworKysgYi9kcml2ZXJzL25ldC9lMTAwMC9lZXByb20uYwpAQCAtMTM5OSw3
ICsxMzk5LDcgQEAgaW50IGUxMDAwX3JlZ2lzdGVyX2ludm0oc3RydWN0IGUxMDAwX2h3ICpodykK
IAlody0+aW52bS5jZGV2Lm9wcyA9ICZlMTAwMF9pbnZtX29wczsKIAlody0+aW52bS5jZGV2LnBy
aXYgPSBodzsKIAlody0+aW52bS5jZGV2Lm5hbWUgPSB4YXNwcmludGYoImUxMDAwLWludm0lZCIs
IGh3LT5kZXYtPmlkKTsKLQlody0+aW52bS5jZGV2LnNpemUgPSAzMiAqIEUxMDAwX0lOVk1fREFU
QV9NQVhfTjsKKwlody0+aW52bS5jZGV2LnNpemUgPSA0ICogKEUxMDAwX0lOVk1fREFUQV9NQVhf
TiArIDEpOwogCiAJcmV0ID0gZGV2ZnNfY3JlYXRlKCZody0+aW52bS5jZGV2KTsKIAlpZiAocmV0
IDwgMCkKLS0gCjIuMTEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
