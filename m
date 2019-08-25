Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1uum-0008Te-3N
 for barebox@lists.infradead.org; Sun, 25 Aug 2019 15:58:49 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Sun, 25 Aug 2019 17:58:42 +0200
Message-Id: <20190825155844.18455-6-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH v2 5/7] mfd: da9053: use new reset_source_set_device()
To: barebox@lists.infradead.org

TWFrZSB1c2Ugb2YgdGhlIGp1c3QgaW50cm9kdWNlZCByZXNldF9zb3VyY2Vfc2V0X2RldmljZSgp
IHRvIHNhdmUgc29tZQpib2lsZXJwbGF0ZS4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2
bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9tZmQvZGE5
MDUzLmMgfCA0ICstLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMyBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL21mZC9kYTkwNTMuYyBiL2RyaXZlcnMvbWZkL2Rh
OTA1My5jCmluZGV4IGIxNTZiZjExM2Y0Ni4uZjY1ZjNlMGJiMmY5IDEwMDY0NAotLS0gYS9kcml2
ZXJzL21mZC9kYTkwNTMuYworKysgYi9kcml2ZXJzL21mZC9kYTkwNTMuYwpAQCAtMjM2LDkgKzIz
Niw3IEBAIHN0YXRpYyB2b2lkIGRhOTA1M19kZXRlY3RfcmVzZXRfc291cmNlKHN0cnVjdCBkYTkw
NTNfcHJpdiAqZGE5MDUzKQogCWVsc2UKIAkJcmV0dXJuOwogCi0JcHJpb3JpdHkgPSBvZl9nZXRf
cmVzZXRfc291cmNlX3ByaW9yaXR5KGRhOTA1My0+ZGV2LT5kZXZpY2Vfbm9kZSk7Ci0KLQlyZXNl
dF9zb3VyY2Vfc2V0X3ByaW9yaXR5KHR5cGUsIHByaW9yaXR5KTsKKwlyZXNldF9zb3VyY2Vfc2V0
X2RldmljZShkYTkwNTMtPmRldiwgbHR5cGUpOwogCiAJcmV0ID0gZGE5MDUzX3JlZ193cml0ZShk
YTkwNTMsIERBOTA1M19GQVVMVExPR19SRUcsIHZhbCk7CiAJaWYgKHJldCA8IDApCi0tIAoyLjIw
LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJl
Ym94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
