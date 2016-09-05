Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bgzhC-0008Ny-2t
 for barebox@lists.infradead.org; Mon, 05 Sep 2016 19:36:43 +0000
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
Date: Mon,  5 Sep 2016 21:36:18 +0200
Message-Id: <1473104178-20389-2-git-send-email-u.oelmann@pengutronix.de>
In-Reply-To: <1473104178-20389-1-git-send-email-u.oelmann@pengutronix.de>
References: <1473104178-20389-1-git-send-email-u.oelmann@pengutronix.de>
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
Subject: [PATCH 2/2] commands: ubiupdatevol: confirm success with return value
 0
To: Barebox List <barebox@lists.infradead.org>

VHJlYXQgdGhlIHdyaXRlKCkgY2FzZSBhbmFsb2dvdXNseSB0byB0aGUgcmVhZCgpIGNhc2UgYW5k
IGRvIG5vdCByZXR1cm4gdGhlCm51bWJlciBvZiBtb3N0IHJlY2VudGx5IHdyaXR0ZW4gYnl0ZXMg
YXMgdGhlIHN0YXR1cyBvZiBzdWNlc3NmdWwgY29tbWFuZApleGVjdXRpb24uCgpTaWduZWQtb2Zm
LWJ5OiBVbHJpY2ggw5ZsbWFubiA8dS5vZWxtYW5uQHBlbmd1dHJvbml4LmRlPgotLS0KIGNvbW1h
bmRzL3ViaS5jIHwgNSArKystLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9jb21tYW5kcy91YmkuYyBiL2NvbW1hbmRzL3ViaS5j
CmluZGV4IGRkOTgxZjk1ZWE1ZC4uMjZiNTIxZjM3NDhlIDEwMDY0NAotLS0gYS9jb21tYW5kcy91
YmkuYworKysgYi9jb21tYW5kcy91YmkuYwpAQCAtNjUsOSArNjUsMTAgQEAgc3RhdGljIGludCBk
b191Yml1cGRhdGV2b2woaW50IGFyZ2MsIGNoYXIgKmFyZ3ZbXSkKIAkJCWJyZWFrOwogCQl9CiAK
LQkJcmV0ID0gd3JpdGUoZmRfdm9sLCBidWYsIGNvdW50KTsKLQkJaWYgKHJldCA8IDApIHsKKwkJ
Y291bnQgPSB3cml0ZShmZF92b2wsIGJ1ZiwgY291bnQpOworCQlpZiAoY291bnQgPCAwKSB7CiAJ
CQlwZXJyb3IoIndyaXRlIik7CisJCQlyZXQgPSAxOwogCQkJYnJlYWs7CiAJCX0KIAotLSAKMi44
LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJl
Ym94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
