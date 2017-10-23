Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e6YvK-0004mj-6B
 for barebox@lists.infradead.org; Mon, 23 Oct 2017 09:21:36 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Date: Mon, 23 Oct 2017 11:21:03 +0200
Message-Id: <20171023092103.10023-4-uwe@kleine-koenig.org>
In-Reply-To: <20171023092103.10023-1-uwe@kleine-koenig.org>
References: <20171023092103.10023-1-uwe@kleine-koenig.org>
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
Subject: [PATCH v2 3/3] ARM: i.MX: bbu-internal: update tqma6x to make use of
 new bbu handler
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>

RnJvbTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4K
ClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0
cm9uaXguZGU+Ci0tLQogYXJjaC9hcm0vYm9hcmRzL3RxbWE2eC9ib2FyZC5jIHwgMiArLQogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
YXJjaC9hcm0vYm9hcmRzL3RxbWE2eC9ib2FyZC5jIGIvYXJjaC9hcm0vYm9hcmRzL3RxbWE2eC9i
b2FyZC5jCmluZGV4IDg5NDZhMjdiNjk2YS4uZWNmOGZhMDZhZjAxIDEwMDY0NAotLS0gYS9hcmNo
L2FybS9ib2FyZHMvdHFtYTZ4L2JvYXJkLmMKKysrIGIvYXJjaC9hcm0vYm9hcmRzL3RxbWE2eC9i
b2FyZC5jCkBAIC0xMDUsNyArMTA1LDcgQEAgc3RhdGljIGludCB0cW1hNnhfZW52X2luaXQodm9p
ZCkKIAogCWlteDZfYmJ1X2ludGVybmFsX3NwaV9pMmNfcmVnaXN0ZXJfaGFuZGxlcigic3BpZmxh
c2giLCAiL2Rldi9tMjVwMC5iYXJlYm94IiwKIAkJQkJVX0hBTkRMRVJfRkxBR19ERUZBVUxUKTsK
LQlpbXg2X2JidV9pbnRlcm5hbF9tbWNfcmVnaXN0ZXJfaGFuZGxlcigiZW1tYyIsICIvZGV2L21t
YzIuYm9vdDAiLCAwKTsKKwlpbXg2X2JidV9pbnRlcm5hbF9tbWNib290X3JlZ2lzdGVyX2hhbmRs
ZXIoImVtbWMiLCAibW1jMiIsIDApOwogCiAJZGV2aWNlX2RldGVjdF9ieV9uYW1lKCJtbWMyIik7
CiAKLS0gCjIuMTQuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
