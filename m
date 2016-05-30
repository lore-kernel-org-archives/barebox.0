Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b7Jgd-00045y-LZ
 for barebox@lists.infradead.org; Mon, 30 May 2016 09:40:40 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Mon, 30 May 2016 11:39:51 +0200
Message-Id: <1464601193-20832-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 1/3] eeprom: at25: check return value of devfs_create
To: barebox@lists.infradead.org

QWxzbyBvbmx5IGVtaXQgdGhlIG1lc3NhZ2UgdGhhdCB0aGUgZGV2aWNlIHdhcyBwcm9iZWQgd2hl
biBpdAphY3R1YWxseSB3YXMuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5r
bGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvZWVwcm9tL2F0MjUuYyB8
IDUgKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2VlcHJvbS9hdDI1LmMgYi9kcml2ZXJzL2VlcHJvbS9hdDI1
LmMKaW5kZXggOWYwNTRkMDBiNDU5Li5mN2Y4MzY4YzRiNDUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
ZWVwcm9tL2F0MjUuYworKysgYi9kcml2ZXJzL2VlcHJvbS9hdDI1LmMKQEAgLTM1NCw4ICszNTQs
MTEgQEAgc3RhdGljIGludCBhdDI1X3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqZGV2KQogCQlnb3Rv
IGZhaWw7CiAJfQogCisJZXJyID0gZGV2ZnNfY3JlYXRlKCZhdDI1LT5jZGV2KTsKKwlpZiAoZXJy
KQorCQlnb3RvIGZhaWw7CisKIAlkZXZfZGJnKGRldiwgIiVzIHByb2JlZFxuIiwgYXQyNS0+Y2Rl
di5uYW1lKTsKLQlkZXZmc19jcmVhdGUoJmF0MjUtPmNkZXYpOwogCW9mX3BhcnNlX3BhcnRpdGlv
bnMoJmF0MjUtPmNkZXYsIGRldi0+ZGV2aWNlX25vZGUpOwogCXJldHVybiAwOwogCi0tIAoyLjgu
MQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVi
b3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
