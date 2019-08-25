Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1uum-0008Tf-3J
 for barebox@lists.infradead.org; Sun, 25 Aug 2019 15:58:49 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Sun, 25 Aug 2019 17:58:43 +0200
Message-Id: <20190825155844.18455-7-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH v2 6/7] mfd: da9063: use new reset_source_set_device()
To: barebox@lists.infradead.org

TWFrZSB1c2Ugb2YgdGhlIGp1c3QgaW50cm9kdWNlZCByZXNldF9zb3VyY2Vfc2V0X2RldmljZSgp
IHRvIHNhdmUgc29tZQpib2lsZXJwbGF0ZS4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2
bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9tZmQvZGE5
MDYzLmMgfCA0ICstLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMyBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL21mZC9kYTkwNjMuYyBiL2RyaXZlcnMvbWZkL2Rh
OTA2My5jCmluZGV4IGE3ZmZmMmM1YmZhMy4uZTJhYTkyMTFlNmI5IDEwMDY0NAotLS0gYS9kcml2
ZXJzL21mZC9kYTkwNjMuYworKysgYi9kcml2ZXJzL21mZC9kYTkwNjMuYwpAQCAtMTgwLDkgKzE4
MCw3IEBAIHN0YXRpYyB2b2lkIGRhOTA2M19kZXRlY3RfcmVzZXRfc291cmNlKHN0cnVjdCBkYTkw
NjMgKnByaXYpCiAJZWxzZQogCQlyZXR1cm47CiAKLQlwcmlvcml0eSA9IG9mX2dldF9yZXNldF9z
b3VyY2VfcHJpb3JpdHkocHJpdi0+ZGV2LT5kZXZpY2Vfbm9kZSk7Ci0KLQlyZXNldF9zb3VyY2Vf
c2V0X3ByaW9yaXR5KHR5cGUsIHByaW9yaXR5KTsKKwlyZXNldF9zb3VyY2Vfc2V0X2RldmljZShw
cml2LT5kZXYsIHR5cGUpOwogfQogCiBzdGF0aWMgdm9pZCBkYTkwNjNfcmVzdGFydChzdHJ1Y3Qg
cmVzdGFydF9oYW5kbGVyICpyc3QpCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9iYXJlYm94Cg==
