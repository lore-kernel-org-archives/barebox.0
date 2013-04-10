Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPvjt-00065B-1s
 for barebox@lists.infradead.org; Wed, 10 Apr 2013 14:11:06 +0000
Received: from e6520eb.local.eukrea.com (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 8F4D54B00EA
 for <barebox@lists.infradead.org>; Wed, 10 Apr 2013 16:10:59 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Wed, 10 Apr 2013 16:10:57 +0200
Message-Id: <1365603058-9368-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 1/2] mx53-loco: provide the right header for serial downloader
To: barebox@lists.infradead.org

dGhpcyBwYXRjaCBhbGxvd3MgYmFyZWJveCB0byBydW4gd2hlbiBsb2FkZWQgb24gdGhlIGlNWDUz
UVNCCnVzaW5nIHRoZSBzZXJpYWwgZG93bmxvYWRlci4KClNpZ25lZC1vZmYtYnk6IEVyaWMgQsOp
bmFyZCA8ZXJpY0BldWtyZWEuY29tPgotLS0KIGFyY2gvYXJtL2JvYXJkcy9mcmVlc2NhbGUtbXg1
My1sb2NvL2ZsYXNoX2hlYWRlci5jIHwgNyArKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9hcmRzL2ZyZWVzY2FsZS1teDUzLWxv
Y28vZmxhc2hfaGVhZGVyLmMgYi9hcmNoL2FybS9ib2FyZHMvZnJlZXNjYWxlLW14NTMtbG9jby9m
bGFzaF9oZWFkZXIuYwppbmRleCBkYzExNjJiLi41MzU4ZjBiIDEwMDY0NAotLS0gYS9hcmNoL2Fy
bS9ib2FyZHMvZnJlZXNjYWxlLW14NTMtbG9jby9mbGFzaF9oZWFkZXIuYworKysgYi9hcmNoL2Fy
bS9ib2FyZHMvZnJlZXNjYWxlLW14NTMtbG9jby9mbGFzaF9oZWFkZXIuYwpAQCAtMzQsMTAgKzM0
LDE3IEBAIHN0cnVjdCBpbXhfZmxhc2hfaGVhZGVyX3YyIF9fZmxhc2hfaGVhZGVyX3NlY3Rpb24g
Zmxhc2hfaGVhZGVyID0gewogCS5oZWFkZXIubGVuZ3RoCQk9IGNwdV90b19iZTE2KDMyKSwKIAku
aGVhZGVyLnZlcnNpb24JCT0gSVZUX1ZFUlNJT04sCiAKKyNpZmRlZiBDT05GSUdfQVJDSF9JTVhf
SU5URVJOQUxfQk9PVF9TRVJJQUwKKwkuZW50cnkJCQk9IEFQUF9ERVNUICsgMHg0MDAsCisJLmRj
ZF9wdHIJCT0gQVBQX0RFU1QgKyBvZmZzZXRvZihzdHJ1Y3QgaW14X2ZsYXNoX2hlYWRlcl92Miwg
ZGNkKSwKKwkuYm9vdF9kYXRhX3B0cgkJPSBBUFBfREVTVCArIG9mZnNldG9mKHN0cnVjdCBpbXhf
Zmxhc2hfaGVhZGVyX3YyLCBib290X2RhdGEpLAorCS5zZWxmCQkJPSBBUFBfREVTVCwKKyNlbHNl
CiAJLmVudHJ5CQkJPSBBUFBfREVTVCArIDB4MTAwMCwKIAkuZGNkX3B0cgkJPSBBUFBfREVTVCAr
IDB4NDAwICsgb2Zmc2V0b2Yoc3RydWN0IGlteF9mbGFzaF9oZWFkZXJfdjIsIGRjZCksCiAJLmJv
b3RfZGF0YV9wdHIJCT0gQVBQX0RFU1QgKyAweDQwMCArIG9mZnNldG9mKHN0cnVjdCBpbXhfZmxh
c2hfaGVhZGVyX3YyLCBib290X2RhdGEpLAogCS5zZWxmCQkJPSBBUFBfREVTVCArIDB4NDAwLAor
I2VuZGlmCiAKIAkuYm9vdF9kYXRhLnN0YXJ0CT0gQVBQX0RFU1QsCiAJLmJvb3RfZGF0YS5zaXpl
CQk9IERDRF9CQVJFQk9YX1NJWkUsCi0tIAoxLjcuMTEuNwoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2JhcmVib3gK
