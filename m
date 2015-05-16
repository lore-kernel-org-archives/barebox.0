Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YtZ8T-0001Xg-5t
 for barebox@lists.infradead.org; Sat, 16 May 2015 10:16:01 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Sat, 16 May 2015 12:15:27 +0200
Message-Id: <1431771327-27442-1-git-send-email-u.kleine-koenig@pengutronix.de>
In-Reply-To: <1431511952-32124-6-git-send-email-mkl@pengutronix.de>
References: <1431511952-32124-6-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH] fixup! state: add fixup to copy state from barebox to kernel
 device tree
To: barebox@lists.infradead.org, Marc Kleine-Budde <mkl@pengutronix.de>

b2ZfdW5yZWdpc3Rlcl9maXh1cCBtdXN0IGFsc28gYmUgY2FsbGVkIGluIHRoZSByZWxlYXNlIGZ1
bmN0aW9uLgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5p
Z0BwZW5ndXRyb25peC5kZT4KLS0tClRoaXMgZGVwZW5kcyBvbiB0aGUgcGF0Y2ggIm9mOiBhZGQg
YSBmdW5jdGlvbiB0byByZW1vdmUgYW4gb2ZfZml4dXAiIEkKanVzdCBzZW50IHRvIHRoZSBsaXN0
Ci0tLQogY29tbW9uL3N0YXRlLmMgfCAxNSArKysrKysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCA4IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvY29tbW9uL3N0
YXRlLmMgYi9jb21tb24vc3RhdGUuYwppbmRleCBmYjEzYWUyNzJkYjkuLmJkOWM1YTcxMmFhYyAx
MDA2NDQKLS0tIGEvY29tbW9uL3N0YXRlLmMKKysrIGIvY29tbW9uL3N0YXRlLmMKQEAgLTQzNSwx
MyArNDM1LDYgQEAgc3RhdGljIHN0cnVjdCBzdGF0ZSAqc3RhdGVfbmV3KGNvbnN0IGNoYXIgKm5h
bWUpCiAJcmV0dXJuIHN0YXRlOwogfQogCi12b2lkIHN0YXRlX3JlbGVhc2Uoc3RydWN0IHN0YXRl
ICpzdGF0ZSkKLXsKLQlsaXN0X2RlbCgmc3RhdGUtPmxpc3QpOwotCXVucmVnaXN0ZXJfZGV2aWNl
KCZzdGF0ZS0+ZGV2KTsKLQlmcmVlKHN0YXRlKTsKLX0KLQogc3RhdGljIHN0cnVjdCBzdGF0ZV92
YXJpYWJsZSAqc3RhdGVfZmluZF92YXIoc3RydWN0IHN0YXRlICpzdGF0ZSwKIAkJCQkJICAgICBj
b25zdCBjaGFyICpuYW1lKQogewpAQCAtNzYwLDYgKzc1MywxNCBAQCBzdGF0aWMgaW50IG9mX3N0
YXRlX2ZpeHVwKHN0cnVjdCBkZXZpY2Vfbm9kZSAqcm9vdCwgdm9pZCAqY3R4KQogCXJldHVybiBy
ZXQ7CiB9CiAKK3ZvaWQgc3RhdGVfcmVsZWFzZShzdHJ1Y3Qgc3RhdGUgKnN0YXRlKQoreworCW9m
X3VucmVnaXN0ZXJfZml4dXAob2Zfc3RhdGVfZml4dXAsIHN0YXRlKTsKKwlsaXN0X2RlbCgmc3Rh
dGUtPmxpc3QpOworCXVucmVnaXN0ZXJfZGV2aWNlKCZzdGF0ZS0+ZGV2KTsKKwlmcmVlKHN0YXRl
KTsKK30KKwogLyoKICAqIHN0YXRlX25ld19mcm9tX25vZGUgLSBjcmVhdGUgYSBuZXcgc3RhdGUg
aW5zdGFuY2UgZnJvbSBhIGRldmljZV9ub2RlCiAgKgotLSAKMi4xLjQKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApi
YXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9iYXJlYm94Cg==
