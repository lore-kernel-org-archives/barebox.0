Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c6zBP-0007OL-7v
 for barebox@lists.infradead.org; Wed, 16 Nov 2016 12:19:20 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed, 16 Nov 2016 13:18:50 +0100
Message-Id: <20161116121851.12399-2-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20161116121851.12399-1-u.kleine-koenig@pengutronix.de>
References: <20161116121851.12399-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 2/3] i2c: gpio: use dynamic bus number unconditionally
To: barebox@lists.infradead.org

V2hpbGUgYmVpbmcgYSBiaXQgbW9yZSByYW5kb20gdGhpcyBoZWxwcyBkdCBzZXR1cHMgd2hlcmUg
dGhlIGlkIG9mIGEKcGxhdGZvcm0gZGV2aWNlIGNhbm5vdCBlYXNpbHkgYmUgZml4ZWQgYW55aG93
LgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5n
dXRyb25peC5kZT4KLS0tCiBkcml2ZXJzL2kyYy9idXNzZXMvaTJjLWdwaW8uYyB8IDIgKy0KIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtZ3Bpby5jIGIvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1n
cGlvLmMKaW5kZXggODUwZGI3YjJmNjUyLi43MDgxOTMzNDRhZWMgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvaTJjL2J1c3Nlcy9pMmMtZ3Bpby5jCisrKyBiL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtZ3Bp
by5jCkBAIC0xOTgsNyArMTk4LDcgQEAgc3RhdGljIGludCBpMmNfZ3Bpb19wcm9iZShzdHJ1Y3Qg
ZGV2aWNlX2QgKmRldikKIAlhZGFwLT5idXNfcmVjb3ZlcnlfaW5mby0+c2V0X3NjbCA9IGkyY19z
ZXRfc2NsX2dwaW9fdmFsdWU7CiAJYWRhcC0+YnVzX3JlY292ZXJ5X2luZm8tPnJlY292ZXJfYnVz
ID0gaTJjX2dlbmVyaWNfc2NsX3JlY292ZXJ5OwogCi0JYWRhcC0+bnIgPSBkZXYtPmlkOworCWFk
YXAtPm5yID0gLTE7CiAJcmV0ID0gaTJjX2JpdF9hZGRfbnVtYmVyZWRfYnVzKGFkYXApOwogCWlm
IChyZXQpCiAJCWdvdG8gZXJyX2FkZF9idXM7Ci0tIAoyLjEwLjIKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJl
Ym94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9iYXJlYm94Cg==
