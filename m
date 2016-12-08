Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cEwJp-0004Vm-Rd
 for barebox@lists.infradead.org; Thu, 08 Dec 2016 10:52:55 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu,  8 Dec 2016 11:52:26 +0100
Message-Id: <20161208105226.27858-2-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20161208105226.27858-1-u.kleine-koenig@pengutronix.de>
References: <20161208105226.27858-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 2/2] spi: mvebu: improve error reporting
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4KLS0tCiBkcml2ZXJzL3NwaS9tdmVidV9zcGkuYyB8IDE0ICsrKysrKysrKysrLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL3NwaS9tdmVidV9zcGkuYyBiL2RyaXZlcnMvc3BpL212ZWJ1X3NwaS5j
CmluZGV4IGM1ZDg3MzJlNGY4NC4uMTRhYjM5NjAzY2JiIDEwMDY0NAotLS0gYS9kcml2ZXJzL3Nw
aS9tdmVidV9zcGkuYworKysgYi9kcml2ZXJzL3NwaS9tdmVidV9zcGkuYwpAQCAtMjY0LDEzICsy
NjQsMTkgQEAgc3RhdGljIGludCBtdmVidV9zcGlfZG9fdHJhbnNmZXIoc3RydWN0IHNwaV9kZXZp
Y2UgKnNwaSwKIAogCWlmICh0LT5iaXRzX3Blcl93b3JkKQogCQlyZXQgPSBtdmVidV9zcGlfc2V0
X3RyYW5zZmVyX3NpemUocHJpdiwgc3BpLT5iaXRzX3Blcl93b3JkKTsKLQlpZiAocmV0KQorCWlm
IChyZXQpIHsKKwkJZGV2X2Vycigmc3BpLT5kZXYsICJGYWlsZWQgdG8gc2V0IHRyYW5zZmVyIHNp
emUgKGJwdyA9ICV1KVxuIiwKKwkJCSh1bnNpZ25lZClzcGktPmJpdHNfcGVyX3dvcmQpOwogCQly
ZXR1cm4gcmV0OworCX0KIAogCWlmICh0LT5zcGVlZF9oeikKIAkJcmV0ID0gcHJpdi0+c2V0X2Jh
dWRyYXRlKHByaXYsIHQtPnNwZWVkX2h6KTsKLQlpZiAocmV0KQorCWlmIChyZXQpIHsKKwkJZGV2
X2Vycigmc3BpLT5kZXYsICJGYWlsZWQgdG8gc2V0IGJhdWRyYXRlIHRvICV1IEh6XG4iLAorCQkJ
KHVuc2lnbmVkKXQtPnNwZWVkX2h6KTsKIAkJcmV0dXJuIHJldDsKKwl9CiAKIAlpbmMgPSAocHJp
di0+ZGF0YTE2KSA/IDIgOiAxOwogCWZvciAobiA9IDA7IG4gPCB0LT5sZW47IG4gKz0gaW5jKSB7
CkBAIC0zMTQsOCArMzIwLDEwIEBAIHN0YXRpYyBpbnQgbXZlYnVfc3BpX3RyYW5zZmVyKHN0cnVj
dCBzcGlfZGV2aWNlICpzcGksIHN0cnVjdCBzcGlfbWVzc2FnZSAqbXNnKQogCX0KIAogCXJldCA9
IG12ZWJ1X3NwaV9zZXRfY3MocHJpdiwgc3BpLT5jaGlwX3NlbGVjdCwgc3BpLT5tb2RlLCB0cnVl
KTsKLQlpZiAocmV0KQorCWlmIChyZXQpIHsKKwkJZGV2X2Vycigmc3BpLT5kZXYsICJGYWlsZWQg
dG8gc2V0IGNoaXAgc2VsZWN0XG4iKTsKIAkJcmV0dXJuIHJldDsKKwl9CiAKIAltc2ctPmFjdHVh
bF9sZW5ndGggPSAwOwogCi0tIAoyLjEwLjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9i
YXJlYm94Cg==
