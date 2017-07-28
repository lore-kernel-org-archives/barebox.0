Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dbBYu-0002zV-4o
 for barebox@lists.infradead.org; Fri, 28 Jul 2017 20:08:42 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri, 28 Jul 2017 22:08:10 +0200
Message-Id: <20170728200812.27224-2-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20170728200812.27224-1-u.kleine-koenig@pengutronix.de>
References: <20170728200812.27224-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: imx: clocksource: error out if clk freq is 0
To: barebox@lists.infradead.org

SWYgaW5zdGVhZCB0aGlzIGlzbid0IGNoZWNrZWQgdGhpcyByZXN1bHRzIGluIGEgZGl2aXNpb24g
YnkgemVybyBsYXRlci4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWlu
ZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogYXJjaC9hcm0vbWFjaC1pbXgvY2xvY2tzb3Vy
Y2UuYyB8IDQgKysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL21hY2gtaW14L2Nsb2Nrc291cmNlLmMgYi9hcmNoL2FybS9tYWNoLWlteC9j
bG9ja3NvdXJjZS5jCmluZGV4IDE3NzYyYzNjYWYyNS4uNzkzZjg0ZWU0ODAwIDEwMDY0NAotLS0g
YS9hcmNoL2FybS9tYWNoLWlteC9jbG9ja3NvdXJjZS5jCisrKyBiL2FyY2gvYXJtL21hY2gtaW14
L2Nsb2Nrc291cmNlLmMKQEAgLTEyMSw2ICsxMjEsMTAgQEAgc3RhdGljIGludCBpbXhfZ3B0X3By
b2JlKHN0cnVjdCBkZXZpY2VfZCAqZGV2KQogCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBnZXQg
Y2xvY2tcbiIpOwogCX0gZWxzZSB7CiAJCXJhdGUgPSBjbGtfZ2V0X3JhdGUoY2xrX2dwdCk7CisJ
CWlmICghcmF0ZSkgeworCQkJZGV2X2VycihkZXYsICJjbG9jayByZXBvcnRzIHJhdGUgPT0gMFxu
Iik7CisJCQlyZXR1cm4gLUVJTzsKKwkJfQogCX0KIAogCXdyaXRlbCgwLCB0aW1lcl9iYXNlICsg
R1BUX1RQUkVSKTsKLS0gCjIuMTEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVi
b3gK
