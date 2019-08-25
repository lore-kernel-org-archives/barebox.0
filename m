Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1uum-0008Tg-3H
 for barebox@lists.infradead.org; Sun, 25 Aug 2019 15:58:50 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Sun, 25 Aug 2019 17:58:44 +0200
Message-Id: <20190825155844.18455-8-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20190825155844.18455-1-u.kleine-koenig@pengutronix.de>
References: <20190825155844.18455-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH v2 7/7] oftree: expose reset_source device in device tree
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4KLS0tCiBjb21tb24vb2Z0cmVlLmMgfCAxNCArKysrKysrKysrKysrKwogMSBmaWxl
IGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9jb21tb24vb2Z0cmVlLmMg
Yi9jb21tb24vb2Z0cmVlLmMKaW5kZXggMjhhM2I5NjVmZmVlLi4wOWNiNjYwMjEyMTcgMTAwNjQ0
Ci0tLSBhL2NvbW1vbi9vZnRyZWUuYworKysgYi9jb21tb24vb2Z0cmVlLmMKQEAgLTE0NSw2ICsx
NDUsNyBAQCBzdGF0aWMgaW50IG9mX2ZpeHVwX2Jvb3RhcmdzKHN0cnVjdCBkZXZpY2Vfbm9kZSAq
cm9vdCwgdm9pZCAqdW51c2VkKQogCWNvbnN0IGNoYXIgKnN0cjsKIAlpbnQgZXJyOwogCWludCBp
bnN0YW5jZSA9IHJlc2V0X3NvdXJjZV9nZXRfaW5zdGFuY2UoKTsKKwlzdHJ1Y3QgZGV2aWNlX2Qg
KmRldjsKIAogCXN0ciA9IGxpbnV4X2Jvb3RhcmdzX2dldCgpOwogCWlmICghc3RyKQpAQCAtMTY0
LDYgKzE2NSwxOSBAQCBzdGF0aWMgaW50IG9mX2ZpeHVwX2Jvb3RhcmdzKHN0cnVjdCBkZXZpY2Vf
bm9kZSAqcm9vdCwgdm9pZCAqdW51c2VkKQogCWlmIChpbnN0YW5jZSA+PSAwKQogCQlvZl9wcm9w
ZXJ0eV93cml0ZV91MzIobm9kZSwgInJlc2V0LXNvdXJjZS1pbnN0YW5jZSIsIGluc3RhbmNlKTsK
IAorCisJZGV2ID0gcmVzZXRfc291cmNlX2dldF9kZXZpY2UoKTsKKwlpZiAoZGV2ICYmIGRldi0+
ZGV2aWNlX25vZGUpIHsKKwkJcGhhbmRsZSBwaGFuZGxlOworCisJCXBoYW5kbGUgPSBvZl9ub2Rl
X2NyZWF0ZV9waGFuZGxlKGRldi0+ZGV2aWNlX25vZGUpOworCisJCWVyciA9IG9mX3Byb3BlcnR5
X3dyaXRlX3UzMihub2RlLAorCQkJCQkgICAgInJlc2V0LXNvdXJjZS1kZXZpY2UiLCBwaGFuZGxl
KTsKKwkJaWYgKGVycikKKwkJCXJldHVybiBlcnI7CisJfQorCiAJcmV0dXJuIG9mX2ZpeHVwX2Jv
b3RhcmdzX2Jvb3Rzb3VyY2Uocm9vdCwgbm9kZSk7CiB9CiAKLS0gCjIuMjAuMQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBs
aXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
