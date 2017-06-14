Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dLGBO-0003WA-Mw
 for barebox@lists.infradead.org; Wed, 14 Jun 2017 21:50:36 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed, 14 Jun 2017 23:50:08 +0200
Message-Id: <20170614215010.11886-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: mvebu: initial support for Armada 38x
To: barebox@lists.infradead.org

VGhpcyBTb0MgaXMgc2ltaWxhciBlbm91Z2ggdG8gQXJtYWRhIDM4MC9YUCB0byBtYWtlIHVzZSBv
ZiB0aGUgY29kZQpzdXBwb3J0aW5nIHRoZXNlIHdpdGhvdXQgZnVydGhlciBhZGFwdGlvbi4KClNp
Z25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9u
aXguZGU+Ci0tLQogYXJjaC9hcm0vbWFjaC1tdmVidS9LY29uZmlnICB8IDUgKysrKysKIGFyY2gv
YXJtL21hY2gtbXZlYnUvTWFrZWZpbGUgfCAxICsKIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1tdmVidS9LY29uZmlnIGIvYXJjaC9h
cm0vbWFjaC1tdmVidS9LY29uZmlnCmluZGV4IDE0OGI0ZjZkNGNiMy4uODI3OTY3ZWVhMzgwIDEw
MDY0NAotLS0gYS9hcmNoL2FybS9tYWNoLW12ZWJ1L0tjb25maWcKKysrIGIvYXJjaC9hcm0vbWFj
aC1tdmVidS9LY29uZmlnCkBAIC0xNyw2ICsxNywxMSBAQCBjb25maWcgQVJDSF9BUk1BREFfWFAK
IAlzZWxlY3QgQ1BVX1Y3CiAJc2VsZWN0IENMT0NLU09VUkNFX01WRUJVCiAKK2NvbmZpZyBBUkNI
X0FSTUFEQV8zOFgKKwlib29sCisJc2VsZWN0IENQVV9WNworCXNlbGVjdCBDTE9DS1NPVVJDRV9N
VkVCVQorCiBjb25maWcgQVJDSF9ET1ZFCiAJYm9vbAogCXNlbGVjdCBDUFVfVjcKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL21hY2gtbXZlYnUvTWFrZWZpbGUgYi9hcmNoL2FybS9tYWNoLW12ZWJ1L01h
a2VmaWxlCmluZGV4IDg5ODA1YmE1YjE4Ni4uODdhODUxMTkxOTNlIDEwMDY0NAotLS0gYS9hcmNo
L2FybS9tYWNoLW12ZWJ1L01ha2VmaWxlCisrKyBiL2FyY2gvYXJtL21hY2gtbXZlYnUvTWFrZWZp
bGUKQEAgLTEsNiArMSw3IEBACiBvYmotcGJsLXkJCQkrPSBjb21tb24ubwogb2JqLSQoQ09ORklH
X0FSQ0hfQVJNQURBXzM3MCkJKz0gYXJtYWRhLTM3MC14cC5vCiBvYmotJChDT05GSUdfQVJDSF9B
Uk1BREFfWFApCSs9IGFybWFkYS0zNzAteHAubworb2JqLSQoQ09ORklHX0FSQ0hfQVJNQURBXzM4
WCkJKz0gYXJtYWRhLTM3MC14cC5vCiBvYmotJChDT05GSUdfQVJDSF9ET1ZFKQkJKz0gZG92ZS5v
CiBvYmotJChDT05GSUdfQVJDSF9LSVJLV09PRCkJKz0ga2lya3dvb2Qubwogb2JqLSQoQ09ORklH
X0JPT1RNKQkJKz0ga3dib290aW1hZ2UubwotLSAKMi4xMS4wCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJv
eEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vYmFyZWJveAo=
