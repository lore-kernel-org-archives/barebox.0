Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c6wtv-0002Ne-Nz
 for barebox@lists.infradead.org; Wed, 16 Nov 2016 09:53:08 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed, 16 Nov 2016 10:52:43 +0100
Message-Id: <20161116095244.14288-3-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20161116095244.14288-1-u.kleine-koenig@pengutronix.de>
References: <20161116095244.14288-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH v2 3/4] scripts/kwbimage: use ALIGN_SUP instead of open-coding
 it
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4KLS0tCkNoYW5nZXMgc2luY2UgKGltcGxpY2l0KSB2MToKIC0gYWRkIFMtby1iCgog
c2NyaXB0cy9rd2JpbWFnZS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc2NyaXB0cy9rd2JpbWFnZS5jIGIvc2NyaXB0
cy9rd2JpbWFnZS5jCmluZGV4IDc5Y2E4NWI3MmQ4ZS4uMmFmOTZmMDU1YzdlIDEwMDY0NAotLS0g
YS9zY3JpcHRzL2t3YmltYWdlLmMKKysrIGIvc2NyaXB0cy9rd2JpbWFnZS5jCkBAIC04ODYsNyAr
ODg2LDcgQEAgc3RhdGljIHZvaWQgKmltYWdlX2NyZWF0ZV92MShzdHJ1Y3QgaW1hZ2VfY2ZnX2Vs
ZW1lbnQgKmltYWdlX2NmZywKIAkJfQogCiAJCS8qIHBheWxvYWQgc2l6ZSBtdXN0IGJlIG11bHRp
cGxlIG9mIDMyYiAqLwotCQlwYXlsb2Fkc3ogPSA0ICogKChzLnN0X3NpemUgKyAzKS80KTsKKwkJ
cGF5bG9hZHN6ID0gQUxJR05fU1VQKHMuc3Rfc2l6ZSwgNCk7CiAJfQogCiAJLyogVGhlIHBheWxv
YWQgc2hvdWxkIGJlIGFsaWduZWQgb24gc29tZSByZWFzb25hYmxlCi0tIAoyLjEwLjIKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxp
bmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
