Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bolDi-0005iq-Vk
 for barebox@lists.infradead.org; Tue, 27 Sep 2016 05:46:24 +0000
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
Date: Tue, 27 Sep 2016 07:45:24 +0200
Message-Id: <20160927054524.26545-1-u.oelmann@pengutronix.de>
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
Subject: [PATCH] blspec: fix erroneus free in entry_is_of_compatible()
To: Barebox List <barebox@lists.infradead.org>

V2hlbmV2ZXIgb2ZfdW5mbGF0dGVuX2R0YigpIGVuY291bnRlcmVkIGFuIGVycm9yIGl0IGFscmVh
ZHkgcmVsZWFzZWQgdGhlIG1lbW9yeQpiZWZvcmUgcmV0dXJuaW5nIHRoZSBlcnJvciBjb2RlLiBN
YWtlIHRoaXMgYXBwYXJlbnQgYnkgc2V0dGluZyB0aGUgcG9pbnRlciB0bwpOVUxMIHRvIGF2b2lk
IGFuIGVycm9uZXVzIGZyZWUuCgpTaWduZWQtb2ZmLWJ5OiBVbHJpY2ggw5ZsbWFubiA8dS5vZWxt
YW5uQHBlbmd1dHJvbml4LmRlPgotLS0KIGNvbW1vbi9ibHNwZWMuYyB8IDEgKwogMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvY29tbW9uL2Jsc3BlYy5jIGIvY29t
bW9uL2Jsc3BlYy5jCmluZGV4IDY2ZGVjYjE2MWViZC4uYzIwNWQ0ODFjOTExIDEwMDY0NAotLS0g
YS9jb21tb24vYmxzcGVjLmMKKysrIGIvY29tbW9uL2Jsc3BlYy5jCkBAIC0zOTksNiArMzk5LDcg
QEAgc3RhdGljIGJvb2wgZW50cnlfaXNfb2ZfY29tcGF0aWJsZShzdHJ1Y3QgYmxzcGVjX2VudHJ5
ICplbnRyeSkKIAlyb290ID0gb2ZfdW5mbGF0dGVuX2R0YihmZHQpOwogCWlmIChJU19FUlIocm9v
dCkpIHsKIAkJcmV0ID0gUFRSX0VSUihyb290KTsKKwkJcm9vdCA9IE5VTEw7CiAJCWdvdG8gb3V0
OwogCX0KIAotLSAKMi45LjMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
