Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dktQ4-0006qj-GF
 for barebox@lists.infradead.org; Thu, 24 Aug 2017 14:47:42 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu, 24 Aug 2017 16:47:14 +0200
Message-Id: <20170824144714.11716-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] mtd: nand-mxs: improve error messages
To: barebox@lists.infradead.org

VGhpcyBjb21taXQgYWRkcyB0aGUgcmV0dXJuIHZhbHVlIG9mIHRoZSBmYWlsaW5nIGZ1bmN0aW9u
IHRvIG9uZSBtZXNzYWdlCmFuZCBtYWtlcyB0aGUgb3RoZXIgdW5pcXVlLgoKU2lnbmVkLW9mZi1i
eTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0t
CiBkcml2ZXJzL210ZC9uYW5kL25hbmRfbXhzLmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQv
bmFuZC9uYW5kX214cy5jIGIvZHJpdmVycy9tdGQvbmFuZC9uYW5kX214cy5jCmluZGV4IGJhYzVj
NGE0Nzc5OC4uODM3YmIyM2E2MDZiIDEwMDY0NAotLS0gYS9kcml2ZXJzL210ZC9uYW5kL25hbmRf
bXhzLmMKKysrIGIvZHJpdmVycy9tdGQvbmFuZC9uYW5kX214cy5jCkBAIC00NTksNyArNDU5LDcg
QEAgc3RhdGljIHZvaWQgbXhzX25hbmRfY21kX2N0cmwoc3RydWN0IG10ZF9pbmZvICptdGQsIGlu
dCBkYXRhLCB1bnNpZ25lZCBpbnQgY3RybCkKIAkvKiBFeGVjdXRlIHRoZSBETUEgY2hhaW4uICov
CiAJcmV0ID0gbXhzX2RtYV9nbyhjaGFubmVsKTsKIAlpZiAocmV0KQotCQlwcmludGYoIk1YUyBO
QU5EOiBFcnJvciBzZW5kaW5nIGNvbW1hbmRcbiIpOworCQlwcmludGYoIk1YUyBOQU5EOiBFcnJv
ciBzZW5kaW5nIGNvbW1hbmQgKCVkKVxuIiwgcmV0KTsKIAogCW14c19uYW5kX3JldHVybl9kbWFf
ZGVzY3MobmFuZF9pbmZvKTsKIApAQCAtNzc3LDcgKzc3Nyw3IEBAIHN0YXRpYyBpbnQgbXhzX25h
bmRfZWNjX3JlYWRfcGFnZShzdHJ1Y3QgbXRkX2luZm8gKm10ZCwgc3RydWN0IG5hbmRfY2hpcCAq
bmFuZCwKIAkvKiBFeGVjdXRlIHRoZSBETUEgY2hhaW4uICovCiAJcmV0ID0gbXhzX2RtYV9nbyhj
aGFubmVsKTsKIAlpZiAocmV0KSB7Ci0JCXByaW50ZigiTVhTIE5BTkQ6IERNQSByZWFkIGVycm9y
XG4iKTsKKwkJcHJpbnRmKCJNWFMgTkFORDogRE1BIHJlYWQgZXJyb3IgKGVjYylcbiIpOwogCQln
b3RvIHJ0bjsKIAl9CiAKLS0gCjIuMTEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Jh
cmVib3gK
