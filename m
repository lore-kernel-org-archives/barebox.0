Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjRrD-00046S-7C
 for barebox@lists.infradead.org; Thu, 02 Mar 2017 14:37:28 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu,  2 Mar 2017 15:37:03 +0100
Message-Id: <20170302143703.25167-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] lseek: tighten error checking and allow negative offsets for
 SEEK_END
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4KLS0tCiBmcy9mcy5jIHwgNiArKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZnMvZnMuYyBiL2ZzL2ZzLmMK
aW5kZXggZTdiNjk2NTkxNDMzLi4xOTAxYzk0YWQxZWEgMTAwNjQ0Ci0tLSBhL2ZzL2ZzLmMKKysr
IGIvZnMvZnMuYwpAQCAtOTEwLDYgKzkxMCw4IEBAIGxvZmZfdCBsc2VlayhpbnQgZmlsZGVzLCBs
b2ZmX3Qgb2Zmc2V0LCBpbnQgd2hlbmNlKQogCWNhc2UgU0VFS19TRVQ6CiAJCWlmIChmLT5zaXpl
ICE9IEZJTEVfU0laRV9TVFJFQU0gJiYgb2Zmc2V0ID4gZi0+c2l6ZSkKIAkJCWdvdG8gb3V0Owor
CQlpZiAob2Zmc2V0IDwgMCkKKwkJCWdvdG8gb3V0OwogCQlwb3MgPSBvZmZzZXQ7CiAJCWJyZWFr
OwogCWNhc2UgU0VFS19DVVI6CkBAIC05MTgsOSArOTIwLDkgQEAgbG9mZl90IGxzZWVrKGludCBm
aWxkZXMsIGxvZmZfdCBvZmZzZXQsIGludCB3aGVuY2UpCiAJCXBvcyA9IGYtPnBvcyArIG9mZnNl
dDsKIAkJYnJlYWs7CiAJY2FzZSBTRUVLX0VORDoKLQkJaWYgKG9mZnNldCkKKwkJaWYgKG9mZnNl
dCA+IDApCiAJCQlnb3RvIG91dDsKLQkJcG9zID0gZi0+c2l6ZTsKKwkJcG9zID0gZi0+c2l6ZSAr
IG9mZnNldDsKIAkJYnJlYWs7CiAJZGVmYXVsdDoKIAkJZ290byBvdXQ7Ci0tIAoyLjExLjAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1h
aWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
