Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1boRxL-0001RM-79
 for barebox@lists.infradead.org; Mon, 26 Sep 2016 09:12:12 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Mon, 26 Sep 2016 11:11:37 +0200
Message-Id: <20160926091137.24719-2-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20160926091137.24719-1-u.kleine-koenig@pengutronix.de>
References: <20160926091137.24719-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 2/2] firmware: altera-serial: simplify handling of optional
 gpio
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4KLS0tCiBkcml2ZXJzL2Zpcm13YXJlL2FsdGVyYV9zZXJpYWwuYyB8IDEyICsrKysr
LS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2Zpcm13YXJlL2FsdGVyYV9zZXJpYWwuYyBiL2RyaXZlcnMv
ZmlybXdhcmUvYWx0ZXJhX3NlcmlhbC5jCmluZGV4IDU0ODZkOWVjNjNlOS4uZGRlZTk5MWVkMDcz
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2Zpcm13YXJlL2FsdGVyYV9zZXJpYWwuYworKysgYi9kcml2
ZXJzL2Zpcm13YXJlL2FsdGVyYV9zZXJpYWwuYwpAQCAtMjIxLDE1ICsyMjEsMTMgQEAgc3RhdGlj
IGludCBhbHRlcmFfc3BpX29mKHN0cnVjdCBkZXZpY2VfZCAqZGV2LCBzdHJ1Y3QgZnBnYV9zcGkg
KnRoaXMpCiAJaW50IHJldDsKIAogCW5hbWUgPSAibnN0YXQtZ3Bpb3MiOwotCWlmICghb2ZfZ2V0
X3Byb3BlcnR5KG4sIG5hbWUsIE5VTEwpKSB7CisJdGhpcy0+bnN0YXRfZ3BpbyA9IG9mX2dldF9u
YW1lZF9ncGlvKG4sIG5hbWUsIDApOworCWlmICh0aGlzLT5uc3RhdF9ncGlvID09IC1FTk9FTlQp
IHsKIAkJZGV2X2luZm8oZGV2LCAibnN0YXQtZ3BpbyBpcyBub3Qgc3BlY2lmaWVkLCBhc3N1bWlu
ZyBpdCBpcyBub3QgY29ubmVjdGVkXG4iKTsKIAkJdGhpcy0+bnN0YXRfZ3BpbyA9IC0xOwotCX0g
ZWxzZSB7Ci0JCXRoaXMtPm5zdGF0X2dwaW8gPSBvZl9nZXRfbmFtZWRfZ3BpbyhuLCBuYW1lLCAw
KTsKLQkJaWYgKHRoaXMtPm5zdGF0X2dwaW8gPCAwKSB7Ci0JCQlyZXQgPSB0aGlzLT5uc3RhdF9n
cGlvOwotCQkJZ290byBvdXQ7Ci0JCX0KKwl9IGVsc2UgaWYgKHRoaXMtPm5zdGF0X2dwaW8gPCAw
KSB7CisJCXJldCA9IHRoaXMtPm5zdGF0X2dwaW87CisJCWdvdG8gb3V0OwogCX0KIAogCW5hbWUg
PSAiY29uZmQtZ3Bpb3MiOwotLSAKMi45LjMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9i
YXJlYm94Cg==
