Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dbBfq-00085X-7l
 for barebox@lists.infradead.org; Fri, 28 Jul 2017 20:15:51 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri, 28 Jul 2017 22:15:27 +0200
Message-Id: <20170728201527.31783-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20170728200812.27224-3-u.kleine-koenig@pengutronix.de>
References: <20170728200812.27224-3-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 3/4 v2] ARM: imx: clocksource: make warning a bit more helpful
To: barebox@lists.infradead.org

V2hlbiBnZXR0aW5nIHRoZSBjbGsgZm9yIHRoZSBncHQgZmFpbHMsIHRoZSBkcml2ZXIgYXNzdW1l
cyBhIGZpeGVkIHJhdGUuCkFkZCB0aGlzIHJhdGUgdG8gdGhlIHdhcm5pbmcgdGhhdCBpcyBlbWl0
dGVkIGluIHRoaXMgY2FzZS4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1Lmts
ZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQpUaGUgKGltcGxpY2l0KSB2MSBjb250YWlu
ZWQgdW5yZWxhdGVkIGNoYW5nZXMgdGhhdCBhcmUgcmVtb3ZlZCBoZXJlIG5vdy4KCiBhcmNoL2Fy
bS9tYWNoLWlteC9jbG9ja3NvdXJjZS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1pbXgvY2xv
Y2tzb3VyY2UuYyBiL2FyY2gvYXJtL21hY2gtaW14L2Nsb2Nrc291cmNlLmMKaW5kZXggNzkzZjg0
ZWU0ODAwLi40ZDZjNmMyYjBiY2QgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL21hY2gtaW14L2Nsb2Nr
c291cmNlLmMKKysrIGIvYXJjaC9hcm0vbWFjaC1pbXgvY2xvY2tzb3VyY2UuYwpAQCAtMTE4LDcg
KzExOCw3IEBAIHN0YXRpYyBpbnQgaW14X2dwdF9wcm9iZShzdHJ1Y3QgZGV2aWNlX2QgKmRldikK
IAljbGtfZ3B0ID0gY2xrX2dldChkZXYsICJwZXIiKTsKIAlpZiAoSVNfRVJSKGNsa19ncHQpKSB7
CiAJCXJhdGUgPSAyMDAwMDAwMDsKLQkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZ2V0IGNsb2Nr
XG4iKTsKKwkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZ2V0IGNsb2NrLCBhc3N1bWUgJWx1IEh6
XG4iLCByYXRlKTsKIAl9IGVsc2UgewogCQlyYXRlID0gY2xrX2dldF9yYXRlKGNsa19ncHQpOwog
CQlpZiAoIXJhdGUpIHsKLS0gCjIuMTEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Jh
cmVib3gK
