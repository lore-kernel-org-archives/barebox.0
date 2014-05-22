Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WnYzl-0004u6-0J
 for barebox@lists.infradead.org; Thu, 22 May 2014 19:49:41 +0000
Received: by mail-la0-f46.google.com with SMTP id ec20so1519475lab.33
 for <barebox@lists.infradead.org>; Thu, 22 May 2014 12:49:18 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 22 May 2014 23:48:47 +0400
Message-Id: <1400788130-24202-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1400788130-24202-1-git-send-email-antonynpavlov@gmail.com>
References: <1400788130-24202-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 4/7] =?UTF-8?q?ARM:=20dts:=20add=20minimal=20=D0=9A1879?=
 =?UTF-8?q?=D0=A5=D0=911=D0=AF=20devicetree=20file?=
To: barebox@lists.infradead.org

0JoxODc50KXQkTHQryAoQUtBIEsxODc5SEIxWUEpIGlzIGEgU29DIHRoYXQgY29tYmluZXMKYSBO
ZXVyb01hdHJpeChyKSBmYW1pbHkgRFNQIGNvcmUKd2l0aCBhbiBBUk0gYXJjaGl0ZWN0dXJlIENQ
VSBBUk0xMTc2SlpGLVMgY29yZS4KClNlZSBodHRwOi8vd3d3Lm1vZHVsZS5ydS9lbi9jYXRhbG9n
L21pY3JvL21pa3Jvc2hlbWFfZGVrb2RlcmFfY2lmcm92b2dvX3RlbGV2aXppb25ub2dvX3NpZ25h
bGFfc2Jpc19rMTg3OWhiMXlhLyBmb3IgZGV0YWlscy4KClNpZ25lZC1vZmYtYnk6IEFudG9ueSBQ
YXZsb3YgPGFudG9ueW5wYXZsb3ZAZ21haWwuY29tPgotLS0KIGFyY2gvYXJtL2R0cy9rMTg3OWhi
MXlhLmR0c2kgfCAzNyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZp
bGUgY2hhbmdlZCwgMzcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9r
MTg3OWhiMXlhLmR0c2kgYi9hcmNoL2FybS9kdHMvazE4NzloYjF5YS5kdHNpCm5ldyBmaWxlIG1v
ZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAuLjgzYmE3ZmIKLS0tIC9kZXYvbnVsbAorKysgYi9hcmNo
L2FybS9kdHMvazE4NzloYjF5YS5kdHNpCkBAIC0wLDAgKzEsMzcgQEAKKyNpbmNsdWRlICJza2Vs
ZXRvbi5kdHNpIgorCisvIHsKKwlzb2MgeworCQljb21wYXRpYmxlID0gInNpbXBsZS1idXMiOwor
CQltb2RlbCA9ICJSQyBNb2R1bGUgSzE4NzlIQjFZQSI7CisJCSNhZGRyZXNzLWNlbGxzID0gPDE+
OworCQkjc2l6ZS1jZWxscyA9IDwxPjsKKwkJcmFuZ2VzOworCisJCS8qCisJCSAqIEFjdHVhbGx5
IGNsa19hcGIgaXMgbm90IGEgZml4ZWQtY2xvY2sgYXQgYWxsLgorCQkgKiBjbGtfYXBiIGlzIGEg
ZGVyaXZhdGVkIGNsb2NrLCBidXQgZm9yIHRoZSBtb21lbnQKKwkJICogdGhlcmUgaXMgbm8gcHVi
bGljIGRvY3VtZW50YXRpb24gb24gazE4NzloYjF5YQorCQkgKiBzbyB3ZSBjYW4ndCBkZXNjcmli
ZSBpdCBjb3JyZWN0bHkuCisJCSAqLworCQljbGtfYXBiOiBjbG9ja0AwIHsKKwkJCWNvbXBhdGli
bGUgPSAiZml4ZWQtY2xvY2siOworCQkJI2Nsb2NrLWNlbGxzID0gPDA+OworCQl9OworCisJCXNl
cmlhbDA6IHNlcmlhbEAyMDAyYjAwMCB7CisJCQljb21wYXRpYmxlID0gIm5zMTY1NTBhIjsKKwkJ
CXJlZyA9IDwweDIwMDJiMDAwIDB4MTAwMD47CisJCQlyZWctc2hpZnQgPSA8Mj47CisJCQljbG9j
a3MgPSA8JmNsa19hcGIgMD47CisJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOworCQl9OworCisJCXRp
bWVyMDogdGltZXJAMjAwMjQwMDAgeworCQkJY29tcGF0aWJsZSA9ICJtb2R1bGUsdWVtZC10aW1l
ciI7CisJCQlyZWcgPSA8MHgyMDAyNDAwMCAweDIwPjsKKwkJCWNsb2NrcyA9IDwmY2xrX2FwYiAw
PjsKKwkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CisJCX07CisJfTsKK307Ci0tIAoxLjkuMgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFp
bGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
