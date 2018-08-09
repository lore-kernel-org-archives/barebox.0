Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fngNv-0005h2-Da
 for barebox@lists.infradead.org; Thu, 09 Aug 2018 08:33:32 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu,  9 Aug 2018 10:33:11 +0200
Message-Id: <20180809083313.13034-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 1/3] libfile: open_and_lseek: don't imply O_RDONLY
To: barebox@lists.infradead.org

VGhlcmUgYXJlIHNldmVyYWwgdXNlcnMgdGhhdCBwYXNzIE9fUkRXUiBvciBPX1dST05MWSBpbiBt
b2RlIHRvCm9wZW5fYW5kX2xzZWVrKCkgYW5kIHVzZSB0aGUgcmVzdWx0aW5nIGZpbGUgZGVzY3Jp
cHRvciBmb3Igd3JpdGluZy4gVGhpcwppcyBubyByZWFsIGlzc3VlIGJlY2F1Y2UgT19SRE9OTFkg
aXMgMCBhbmQgc28gY2FuIGJlIGRyb3BwZWQgd2l0aG91dAphbnkgc2lkZSBlZmZlY3RzLgoKU2ln
bmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25p
eC5kZT4KLS0tCiBsaWIvbGliZmlsZS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvbGliL2xpYmZpbGUuYyBiL2xpYi9s
aWJmaWxlLmMKaW5kZXggZDIyNTE5YjhmNGJiLi44M2M2Mzk5YTViMzkgMTAwNjQ0Ci0tLSBhL2xp
Yi9saWJmaWxlLmMKKysrIGIvbGliL2xpYmZpbGUuYwpAQCAtNTAxLDcgKzUwMSw3IEBAIGludCBv
cGVuX2FuZF9sc2Vlayhjb25zdCBjaGFyICpmaWxlbmFtZSwgaW50IG1vZGUsIGxvZmZfdCBwb3Mp
CiB7CiAJaW50IGZkLCByZXQ7CiAKLQlmZCA9IG9wZW4oZmlsZW5hbWUsIG1vZGUgfCBPX1JET05M
WSk7CisJZmQgPSBvcGVuKGZpbGVuYW1lLCBtb2RlKTsKIAlpZiAoZmQgPCAwKSB7CiAJCXBlcnJv
cigib3BlbiIpOwogCQlyZXR1cm4gZmQ7Ci0tIAoyLjE4LjAKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9iYXJlYm94Cg==
