Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eHpRP-0006Ps-Fu
 for barebox@lists.infradead.ORG; Thu, 23 Nov 2017 11:13:14 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu, 23 Nov 2017 12:12:34 +0100
Message-Id: <20171123111237.10245-2-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20171123111237.10245-1-u.kleine-koenig@pengutronix.de>
References: <20171122102231.16872-1-u.kleine-koenig@pengutronix.de>
 <20171123111237.10245-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 8/6] net/e1000: log flash/invm status at probe time
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

UHJvdmlkZSBzb21lIGluZm8gYWJvdXQgZmxhc2gvZWVwcm9tIHN0YXRlIGF0IGJvb3QgdXAKClNp
Z25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9u
aXguZGU+Ci0tLQogZHJpdmVycy9uZXQvZTEwMDAvZWVwcm9tLmMgfCAxOCArKysrKysrKysrKysr
KysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvZTEwMDAvZWVwcm9tLmMgYi9kcml2ZXJzL25ldC9lMTAwMC9lZXByb20uYwppbmRl
eCBlNWY4YzllMjcxZTAuLmNiOTJkZWVlM2I0NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZTEw
MDAvZWVwcm9tLmMKKysrIGIvZHJpdmVycy9uZXQvZTEwMDAvZWVwcm9tLmMKQEAgLTE0NzIsNiAr
MTQ3MiwyNCBAQCBpbnQgZTEwMDBfcmVnaXN0ZXJfZWVwcm9tKHN0cnVjdCBlMTAwMF9odyAqaHcp
CiAJCWlmIChyZXQgPCAwKQogCQkJcmV0dXJuIHJldDsKIAorCQlpZiAoZWVjZCAmIEUxMDAwX0VF
Q0RfQVVUT19SRCkgeworCQkJaWYgKGVlY2QgJiBFMTAwMF9FRUNEX0VFX1BSRVMpIHsKKwkJCQlp
ZiAoZWVjZCAmIEUxMDAwX0VFQ0RfRkxBU0hfSU5fVVNFKQorCQkJCQlkZXZfaW5mbyhody0+ZGV2
LCAiSGFyZHdhcmUgcHJvZ3JhbW1lZCBmcm9tIGZsYXNoXG4iKTsKKwkJCQllbHNlCisJCQkJCWRl
dl9pbmZvKGh3LT5kZXYsICJIYXJkd2FyZSBwcm9ncmFtbWVkIGZyb20gaU5WTVxuIik7CisJCQl9
IGVsc2UgeworCQkJCWRldl93YXJuKGh3LT5kZXYsICJTaGFkb3cgUkFNIGludmFsaWRcbiIpOwor
CQkJfQorCQl9IGVsc2UgeworCQkJLyoKKwkJCSAqIEkgbmV2ZXIgc2F3IHRoaXMgY2FzZSBpbiBw
cmFjdGlzZSBhbmQgSSdtIHVuc3VyZSBob3cKKwkJCSAqIHRvIGhhbmRsZSB0aGF0LiBNYXliZSBq
dXN0IHdhaXQgdW50aWwgdGhlIGhhcmR3YXJlIGlzCisJCQkgKiB1cCBlbm91Z2ggdGhhdCB0aGlz
IGJpdCBpcyBzZXQ/CisJCQkgKi8KKwkJCWRldl9lcnIoaHctPmRldiwgIkZsYXNoIEF1dG8tUmVh
ZCBub3QgZG9uZVxuIik7CisJCX0KKwogCQlpZiAoZWVjZCAmIEUxMDAwX0VFQ0RfSTIxMF9GTEFT
SF9ERVRFQ1RFRCkgewogCQkJaHctPm10ZC5wYXJlbnQgPSBody0+ZGV2OwogCQkJaHctPm10ZC5y
ZWFkID0gZTEwMDBfbXRkX3JlYWQ7Ci0tIAoyLjExLjAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9iYXJlYm94Cg==
