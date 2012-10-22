Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TQNzo-000601-CJ
 for barebox@lists.infradead.org; Mon, 22 Oct 2012 19:49:10 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Mon, 22 Oct 2012 21:48:59 +0200
Message-Id: <1350935339-11653-1-git-send-email-w.sang@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] mtd: ubi: cdev: fix build warning for 64-bit
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

R290IHRoaXMgd2hlbiBjb21waWxpbmcgc2FuZGJveCBvbiBhIDY0LWJpdCBzeXN0ZW06Cgpkcml2
ZXJzL210ZC91YmkvY2Rldi5jOiBJbiBmdW5jdGlvbiDigJh1Ymlfdm9sdW1lX2NkZXZfcmVhZOKA
mToKZHJpdmVycy9tdGQvdWJpL2NkZXYuYzoyNjoyOiB3YXJuaW5nOiBmb3JtYXQg4oCYJWTigJkg
ZXhwZWN0cyBhcmd1bWVudCBvZiB0eXBlIOKAmGludOKAmSwgYnV0IGFyZ3VtZW50IDMgaGFzIHR5
cGUg4oCYc2l6ZV904oCZIFstV2Zvcm1hdF0KClNpZ25lZC1vZmYtYnk6IFdvbGZyYW0gU2FuZyA8
dy5zYW5nQHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvbXRkL3ViaS9jZGV2LmMgfCAgICAy
ICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL210ZC91YmkvY2Rldi5jIGIvZHJpdmVycy9tdGQvdWJpL2NkZXYuYwpp
bmRleCA5M2MzNDkxLi40YmM0YTk5IDEwMDY0NAotLS0gYS9kcml2ZXJzL210ZC91YmkvY2Rldi5j
CisrKyBiL2RyaXZlcnMvbXRkL3ViaS9jZGV2LmMKQEAgLTIzLDcgKzIzLDcgQEAgc3RhdGljIHNz
aXplX3QgdWJpX3ZvbHVtZV9jZGV2X3JlYWQoc3RydWN0IGNkZXYgKmNkZXYsIHZvaWQgKmJ1Ziwg
c2l6ZV90IHNpemUsCiAJbG9mZl90IG9mZnAgPSBvZmZzZXQ7CiAJaW50IHVzYWJsZV9sZWJfc2l6
ZSA9IHZvbC0+dXNhYmxlX2xlYl9zaXplOwogCi0JcHJpbnRmKCIlczogJWQgQCAweCUwOGxseFxu
IiwgX19mdW5jX18sIHNpemUsIG9mZnNldCk7CisJcHJpbnRmKCIlczogJXpkIEAgMHglMDhsbHhc
biIsIF9fZnVuY19fLCBzaXplLCBvZmZzZXQpOwogCiAJbGVuID0gc2l6ZSA+IHVzYWJsZV9sZWJf
c2l6ZSA/IHVzYWJsZV9sZWJfc2l6ZSA6IHNpemU7CiAKLS0gCjEuNy4xMC40CgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxp
c3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
