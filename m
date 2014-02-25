Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WIQqr-0001rt-9R
 for barebox@lists.infradead.org; Tue, 25 Feb 2014 22:51:50 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Tue, 25 Feb 2014 23:51:17 +0100
Message-Id: <1393368681-1190-7-git-send-email-u.kleine-koenig@pengutronix.de>
In-Reply-To: <1393368681-1190-1-git-send-email-u.kleine-koenig@pengutronix.de>
References: <1393368681-1190-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 06/10] ARM: a9m2410: convert to devfs_create_partitions
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4KLS0tCiBhcmNoL2FybS9ib2FyZHMvYTltMjQxMC9hOW0yNDEwLmMgfCAyMyArKysr
KysrKysrKysrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDYg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9hcmRzL2E5bTI0MTAvYTltMjQx
MC5jIGIvYXJjaC9hcm0vYm9hcmRzL2E5bTI0MTAvYTltMjQxMC5jCmluZGV4IGIyYjZjODcxMTdh
My4uOGQ1MjhjZjYwMzc4IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib2FyZHMvYTltMjQxMC9hOW0y
NDEwLmMKKysrIGIvYXJjaC9hcm0vYm9hcmRzL2E5bTI0MTAvYTltMjQxMC5jCkBAIC0xMTcsMTMg
KzExNywyNCBAQCBzdGF0aWMgaW50IGE5bTI0MTBfZGV2aWNlc19pbml0KHZvaWQpCiAJCQkxNiwg
SU9SRVNPVVJDRV9NRU0sIE5VTEwpOwogCiAjaWZkZWYgQ09ORklHX05BTkQKLQkvKiAtLS0tLS0t
LS0tLSBhZGQgc29tZSB2aXRhbCBwYXJ0aXRpb25zIC0tLS0tLS0tICovCi0JZGV2ZnNfYWRkX3Bh
cnRpdGlvbigibmFuZDAiLCAweDAwMDAwLCAweDQwMDAwLCBERVZGU19QQVJUSVRJT05fRklYRUQs
ICJzZWxmX3JhdyIpOwotCWRldl9hZGRfYmJfZGV2KCJzZWxmX3JhdyIsICJzZWxmMCIpOwotCi0J
ZGV2ZnNfYWRkX3BhcnRpdGlvbigibmFuZDAiLCAweDQwMDAwLCAweDIwMDAwLCBERVZGU19QQVJU
SVRJT05fRklYRUQsICJlbnZfcmF3Iik7Ci0JZGV2X2FkZF9iYl9kZXYoImVudl9yYXciLCAiZW52
MCIpOworCWRldmZzX2NyZWF0ZV9wYXJ0aXRpb25zKCJuYW5kMCIsIChzdHJ1Y3QgZGV2ZnNfcGFy
dGl0aW9uW10peworCQkJeworCQkJCS5vZmZzZXQgPSAwLAorCQkJCS5zaXplID0gMHg0MDAwMCwK
KwkJCQkuZmxhZ3MgPSBERVZGU19QQVJUSVRJT05fRklYRUQsCisJCQkJLm5hbWUgPSAic2VsZl9y
YXciLAorCQkJCS5iYm5hbWUgPSAic2VsZjAiLAorCQkJfSwgeworCQkJCS5vZmZzZXQgPSBERVZG
U19QQVJUSVRJT05fQVBQRU5ELAorCQkJCS5zaXplID0gMHgyMDAwMCwKKwkJCQkuZmxhZ3MgPSBE
RVZGU19QQVJUSVRJT05fRklYRUQsCisJCQkJLm5hbWUgPSAiZW52X3JhdyIsCisJCQkJLmJibmFt
ZSA9ICJlbnYwIiwKKwkJCX0sIHsKKwkJCQkvKiBzZW50aW5lbCAoZGV0ZWN0ZWQgYnkgLm5hbWUg
PSBOVUxMKSAqLworCQkJfX0pOwogI2VuZGlmCisKIAlhcm1saW51eF9zZXRfYXJjaGl0ZWN0dXJl
KE1BQ0hfVFlQRV9BOU0yNDEwKTsKIAogCXJldHVybiAwOwotLSAKMS44LjUuMwoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBs
aXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
