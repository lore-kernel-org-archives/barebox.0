Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22b.google.com ([2a00:1450:400c:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XOtM9-0000wx-0o
 for barebox@lists.infradead.org; Tue, 02 Sep 2014 19:03:05 +0000
Received: by mail-we0-f171.google.com with SMTP id u56so7435751wes.30
 for <barebox@lists.infradead.org>; Tue, 02 Sep 2014 12:02:41 -0700 (PDT)
From: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>
Date: Tue,  2 Sep 2014 12:02:41 -0700
Message-Id: <1409684561-19894-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH] mtd: atmel_nand: fix null pointer dereference
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>

V2UgbmVlZCB0byBhbGxvY2F0ZSBwZGF0YSBmb3IgZGV2aWNlIHRyZWUgYW5kIG5vbiBkZXZpY2Ug
dHJlZSBwcm9iZS4KSW4gZGV2aWNlIHRyZWUgcHJvYmUgd2UgdXNlIHBkYXRhIHRvIGZpbGwgc3Ry
dWN0dXJlIG1lbWJlciB3aXRoIGR0cyBkYXRhLgpJbiBub24gZGV2aWNlIHRyZWUgcHJvYmUgd2Ug
dXNlIHRoZSBwZGF0YSB0byBoYW5kbGUgcGxhdGZvcm1fZGF0YS4KClNpZ25lZC1vZmYtYnk6IFJh
cGhhw6tsIFBvZ2dpIDxwb2dnaS5yYXBoQGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL210ZC9uYW5k
L2F0bWVsX25hbmQuYyB8IDggKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvbmFuZC9hdG1lbF9u
YW5kLmMgYi9kcml2ZXJzL210ZC9uYW5kL2F0bWVsX25hbmQuYwppbmRleCA5MTBlY2MzLi4xZTdj
NmM2IDEwMDY0NAotLS0gYS9kcml2ZXJzL210ZC9uYW5kL2F0bWVsX25hbmQuYworKysgYi9kcml2
ZXJzL210ZC9uYW5kL2F0bWVsX25hbmQuYwpAQCAtMTE5NCw2ICsxMTk0LDEwIEBAIHN0YXRpYyBp
bnQgX19pbml0IGF0bWVsX25hbmRfcHJvYmUoc3RydWN0IGRldmljZV9kICpkZXYpCiAJaWYgKCFo
b3N0KQogCQlyZXR1cm4gLUVOT01FTTsKIAorCXBkYXRhID0ga3phbGxvYyhzaXplb2Yoc3RydWN0
IGF0bWVsX25hbmRfZGF0YSksIEdGUF9LRVJORUwpOworCWlmICghcGRhdGEpCisJCXJldHVybiAt
RU5PTUVNOworCiAJaG9zdC0+aW9fYmFzZSA9IGRldl9yZXF1ZXN0X21lbV9yZWdpb24oZGV2LCAw
KTsKIAogCW10ZCA9ICZob3N0LT5tdGQ7CkBAIC0xMjA2LDEwICsxMjEwLDYgQEAgc3RhdGljIGlu
dCBfX2luaXQgYXRtZWxfbmFuZF9wcm9iZShzdHJ1Y3QgZGV2aWNlX2QgKmRldikKIAkJaWYgKHJl
cykKIAkJCWdvdG8gZXJyX25vX2NhcmQ7CiAJfSBlbHNlIHsKLQkJcGRhdGEgPSBremFsbG9jKHNp
emVvZihzdHJ1Y3QgYXRtZWxfbmFuZF9kYXRhKSwgR0ZQX0tFUk5FTCk7Ci0JCWlmICghcGRhdGEp
Ci0JCQlyZXR1cm4gLUVOT01FTTsKLQogCQltZW1jcHkoaG9zdC0+Ym9hcmQsIGRldi0+cGxhdGZv
cm1fZGF0YSwgc2l6ZW9mKHN0cnVjdCBhdG1lbF9uYW5kX2RhdGEpKTsKIAl9CiAKLS0gCjEuOC4z
LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJl
Ym94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
