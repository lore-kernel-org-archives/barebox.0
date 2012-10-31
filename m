Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTVfB-0004Gg-Lf
 for barebox@lists.infradead.org; Wed, 31 Oct 2012 10:36:48 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Date: Wed, 31 Oct 2012 11:36:30 +0100
Message-Id: <1351679790-15305-1-git-send-email-uwe@kleine-koenig.org>
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
Subject: [PATCH] iomux-imx35: add missing comma in pad definition
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>

VGhlIHNhbWUgaXNzdWUgd2FzIGZpeGVkIGluIHRoZSBMaW51eCBrZXJuZWwgaW4gY29tbWl0CgoJ
NjZkZGZjNiAobXgzNTogYWRkIGEgbWlzc2luZyBjb21tYSBpbiBhIHBhZCBkZWZpbml0aW9uKQoK
Zm9yIDIuNi4zMy1yYzcuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVp
bmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIGFyY2gvYXJtL21hY2gtaW14L2luY2x1ZGUv
bWFjaC9pb211eC1teDM1LmggfCAgICAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLWlteC9pbmNsdWRl
L21hY2gvaW9tdXgtbXgzNS5oIGIvYXJjaC9hcm0vbWFjaC1pbXgvaW5jbHVkZS9tYWNoL2lvbXV4
LW14MzUuaAppbmRleCBhZDdmZjU2Li4wZDc2ZTQzIDEwMDY0NAotLS0gYS9hcmNoL2FybS9tYWNo
LWlteC9pbmNsdWRlL21hY2gvaW9tdXgtbXgzNS5oCisrKyBiL2FyY2gvYXJtL21hY2gtaW14L2lu
Y2x1ZGUvbWFjaC9pb211eC1teDM1LmgKQEAgLTY3MSw3ICs2NzEsNyBAQAogI2RlZmluZSBNWDM1
X1BBRF9MRDhfX1NETUFfU0RNQV9ERUJVR19QQ184CQkJSU9NVVhfUEFEKDB4NjM0LCAweDFkMCwg
NiwgMHgwLCAgIDAsIE5PX1BBRF9DVFJMKQogCiAjZGVmaW5lIE1YMzVfUEFEX0xEOV9fSVBVX0RJ
U1BCX0RBVF85CQkJCUlPTVVYX1BBRCgweDYzOCwgMHgxZDQsIDAsIDB4MCwgICAwLCBOT19QQURf
Q1RSTCkKLSNkZWZpbmUgTVgzNV9QQURfTEQ5X19HUElPMl85CQkJCQlJT01VWF9QQUQoMHg2Mzgs
IDB4MWQ0LCA1LCAweDhlNCAgMCwgTk9fUEFEX0NUUkwpCisjZGVmaW5lIE1YMzVfUEFEX0xEOV9f
R1BJTzJfOQkJCQkJSU9NVVhfUEFEKDB4NjM4LCAweDFkNCwgNSwgMHg4ZTQsIDAsIE5PX1BBRF9D
VFJMKQogI2RlZmluZSBNWDM1X1BBRF9MRDlfX1NETUFfU0RNQV9ERUJVR19QQ185CQkJSU9NVVhf
UEFEKDB4NjM4LCAweDFkNCwgNiwgMHgwLCAgIDAsIE5PX1BBRF9DVFJMKQogCiAjZGVmaW5lIE1Y
MzVfUEFEX0xEMTBfX0lQVV9ESVNQQl9EQVRfMTAJCQkJSU9NVVhfUEFEKDB4NjNjLCAweDFkOCwg
MCwgMHgwLCAgIDAsIE5PX1BBRF9DVFJMKQotLSAKMS43LjEwLjQKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJl
Ym94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9iYXJlYm94Cg==
