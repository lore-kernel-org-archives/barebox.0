Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZYm1-00085f-TX
 for barebox@lists.infradead.org; Thu, 11 Jan 2018 09:03:47 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu, 11 Jan 2018 10:03:26 +0100
Message-Id: <20180111090326.32724-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] net/e1000: fix driver probing in the presence of two e1000
 devices
To: barebox@lists.infradead.org

VGhlIC5pZCBtZW1iZXIgb2YgdGhlIHN0cnVjdCBkZXZpY2UgZm9yIHRoZSBpbnZtIGRldmljZSBp
cyBub3QKaW5pdGlhbGl6ZWQgYW5kIHNvIGltcGxpY2l0bHkgemVyby4gVGhpcyB5aWVsZHM6CgoJ
cmVnaXN0ZXJfZGV2aWNlOiBhbHJlYWR5IHJlZ2lzdGVyZWQgaW52bTAKCmZvciB0aGUgc2Vjb25k
IGkyMTAgZHVyaW5nIHByb2JlLgoKU28gdXNlIHRoZSBwYXJlbnQncyBpZCB0byBpbml0aWFsaXpl
IHRoZSBpZCBmb3IgaW52bSwgdG9vLCBhcyBpcyBhbHJlYWR5CmRvbmUgZm9yIHRoZSBjb3JyZXNw
b25kaW5nIGUxMDAwLW5vciBkZXZpY2UuCgpGaXhlczogYTc0Yjk3ZjAwOWM2ICgiZTEwMDA6IEV4
cG9zZSBpMjEwJ3MgaU5WTSBhcyBhIGNkZXYiKQpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvD
tm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvbmV0L2Ux
MDAwL2VlcHJvbS5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL25ldC9lMTAwMC9lZXByb20uYyBiL2RyaXZlcnMvbmV0L2UxMDAwL2Vl
cHJvbS5jCmluZGV4IDIzZmIwNWVjNzJiYy4uNzQ4ZDhhZmU3OTIyIDEwMDY0NAotLS0gYS9kcml2
ZXJzL25ldC9lMTAwMC9lZXByb20uYworKysgYi9kcml2ZXJzL25ldC9lMTAwMC9lZXByb20uYwpA
QCAtMTUwNCw2ICsxNTA0LDcgQEAgaW50IGUxMDAwX3JlZ2lzdGVyX2ludm0oc3RydWN0IGUxMDAw
X2h3ICpodykKIAkJcmV0dXJuIHJldDsKIAogCXN0cmNweShody0+aW52bS5kZXYubmFtZSwgImlu
dm0iKTsKKwlody0+aW52bS5kZXYuaWQgPSBody0+ZGV2LT5pZDsKIAlody0+aW52bS5kZXYucGFy
ZW50ID0gaHctPmRldjsKIAlyZXQgPSByZWdpc3Rlcl9kZXZpY2UoJmh3LT5pbnZtLmRldik7CiAJ
aWYgKHJldCA8IDApIHsKLS0gCjIuMTEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Jh
cmVib3gK
