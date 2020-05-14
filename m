Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZIUw-0005Gs-Ae
 for barebox@lists.infradead.org; Thu, 14 May 2020 18:22:24 +0000
Received: from mailer.emlix.com (p5098be52.dip0.t-ipconnect.de [80.152.190.82])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id 098395FEC7
 for <barebox@lists.infradead.org>; Thu, 14 May 2020 20:22:14 +0200 (CEST)
From: =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>
Date: Thu, 14 May 2020 20:21:58 +0200
Message-Id: <cbdf314dda8eb4eb76cef6fda8f05181db62d935.1589477005.git.dg@emlix.com>
In-Reply-To: <cover.1589477005.git.dg@emlix.com>
References: <cover.1589477005.git.dg@emlix.com>
In-Reply-To: <cover.1589477005.git.dg@emlix.com>
References: <cover.1589477005.git.dg@emlix.com>
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
Subject: [PATCH v2 10/10] fastboot: don't close fd 0 when downloading to ram
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

V2hlbiBkb3dubG9hZGluZyB0byBhIGJ1ZmZlciwgZG93bmxvYWRfZmQgaXMgbmV2ZXIgYXNzaWdu
ZWQgYSB2YWxpZCBmaWxlCmRlc2NyaXB0b3IuIFdlIHNob3VsZCB0aGVyZWZvcmUgYXZvaWQgY2Fs
bGluZyBjbG9zZSBvbiB0aGUgdmFsdWUgZm91bmQKaW4gdGhhdCB2YXJpYWJsZS4KClNpZ25lZC1v
ZmYtYnk6IERhbmllbCBHbMO2Y2tuZXIgPGRnQGVtbGl4LmNvbT4KLS0tCiBjb21tb24vZmFzdGJv
b3QuYyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvY29tbW9uL2Zhc3Rib290LmMgYi9jb21tb24vZmFzdGJvb3QuYwpp
bmRleCA3MDY1NDczMDkuLjNmY2M2OWY2MiAxMDA2NDQKLS0tIGEvY29tbW9uL2Zhc3Rib290LmMK
KysrIGIvY29tbW9uL2Zhc3Rib290LmMKQEAgLTM0Nyw3ICszNDcsOCBAQCBpbnQgZmFzdGJvb3Rf
aGFuZGxlX2Rvd25sb2FkX2RhdGEoc3RydWN0IGZhc3Rib290ICpmYiwgY29uc3Qgdm9pZCAqYnVm
ZmVyLAogCiB2b2lkIGZhc3Rib290X2Rvd25sb2FkX2ZpbmlzaGVkKHN0cnVjdCBmYXN0Ym9vdCAq
ZmIpCiB7Ci0JY2xvc2UoZmItPmRvd25sb2FkX2ZkKTsKKwlpZiAoIWZhc3Rib290X2Rvd25sb2Fk
X3RvX2J1ZihmYikpCisJCWNsb3NlKGZiLT5kb3dubG9hZF9mZCk7CiAKIAlwcmludGYoIlxuIik7
CiAKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
