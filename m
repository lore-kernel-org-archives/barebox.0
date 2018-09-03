Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fwnjd-0007TI-Dw
 for barebox@lists.infradead.org; Mon, 03 Sep 2018 12:13:39 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Mon,  3 Sep 2018 13:44:42 +0200
Message-Id: <20180903114452.4611-18-m.niestroj@grinn-global.com>
In-Reply-To: <20180903114452.4611-1-m.niestroj@grinn-global.com>
References: <20180903112408.2086-1-m.niestroj@grinn-global.com>
 <20180903114452.4611-1-m.niestroj@grinn-global.com>
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
Subject: [PATCH 08/18] crypto: caam - remove unreachable code in
 report_ccb_status()
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

UGljayBjb21taXQgOTMwNWRmZjdhYjhiNWUxYWVmMmM0YzVjNzMzY2U3ZTFkYzM0NTQzMyBmcm9t
IExpbnV4CnVwc3RyZWFtLgoKICAgIGNyeXB0bzogY2FhbSAtIHJlbW92ZSB1bnJlYWNoYWJsZSBj
b2RlIGluIHJlcG9ydF9jY2Jfc3RhdHVzKCkKCiAgICBFUlJJRCBpcyBhIDQtYml0IGZpZWxkLgog
ICAgU2luY2UgZXJyX2lkIHZhbHVlcyBhcmUgaW4gWzAuLjE1XSBhbmQgZXJyX2lkX2xpc3QgYXJy
YXkgc2l6ZSBpcyAxNiwKICAgIHRoZSBjb25kaXRpb24gImVycl9pZCA8IEFSUkFZX1NJWkUoZXJy
X2lkX2xpc3QpIiBpcyBhbHdheXMgdHJ1ZS4KCiAgICBTaWduZWQtb2ZmLWJ5OiBIb3JpYSBHZWFu
dMSDIDxob3JpYS5nZWFudGFAbnhwLmNvbT4KICAgIFNpZ25lZC1vZmYtYnk6IEhlcmJlcnQgWHUg
PGhlcmJlcnRAZ29uZG9yLmFwYW5hLm9yZy5hdT4KClNpZ25lZC1vZmYtYnk6IE1hcmNpbiBOaWVz
dHJvaiA8bS5uaWVzdHJvakBncmlubi1nbG9iYWwuY29tPgotLS0KIGRyaXZlcnMvY3J5cHRvL2Nh
YW0vZXJyb3IuYyB8IDUgKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDMg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9jcnlwdG8vY2FhbS9lcnJvci5jIGIv
ZHJpdmVycy9jcnlwdG8vY2FhbS9lcnJvci5jCmluZGV4IDljODc1Mzc1ZC4uNzY2ODc1YjU4IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2NyeXB0by9jYWFtL2Vycm9yLmMKKysrIGIvZHJpdmVycy9jcnlw
dG8vY2FhbS9lcnJvci5jCkBAIC0xNTAsMTAgKzE1MCw5IEBAIHN0YXRpYyB2b2lkIHJlcG9ydF9j
Y2Jfc3RhdHVzKHN0cnVjdCBkZXZpY2VfZCAqanJkZXYsIGNvbnN0IHUzMiBzdGF0dXMsCiAJICAg
IHN0cmxlbihybmdfZXJyX2lkX2xpc3RbZXJyX2lkXSkpIHsKIAkJLyogUk5HLW9ubHkgZXJyb3Ig
Ki8KIAkJZXJyX3N0ciA9IHJuZ19lcnJfaWRfbGlzdFtlcnJfaWRdOwotCX0gZWxzZSBpZiAoZXJy
X2lkIDwgQVJSQVlfU0laRShlcnJfaWRfbGlzdCkpCisJfSBlbHNlIHsKIAkJZXJyX3N0ciA9IGVy
cl9pZF9saXN0W2Vycl9pZF07Ci0JZWxzZQotCQlzbnByaW50ZihlcnJfZXJyX2NvZGUsIHNpemVv
ZihlcnJfZXJyX2NvZGUpLCAiJTAyeCIsIGVycl9pZCk7CisJfQogCiAJLyoKIAkgKiBDQ0IgSUNW
IGNoZWNrIGZhaWx1cmVzIGFyZSBwYXJ0IG9mIG5vcm1hbCBvcGVyYXRpb24gbGlmZTsKLS0gCjIu
MTguMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJh
cmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
