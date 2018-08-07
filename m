Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fn2hn-0006JL-MJ
 for barebox@lists.infradead.org; Tue, 07 Aug 2018 14:11:25 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Tue,  7 Aug 2018 16:11:09 +0200
Message-Id: <20180807141109.25575-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] mci: s3c: fix providing info callback
To: barebox@lists.infradead.org

VGhlcmUgaXMgbm8gc3ltYm9sIGlDT05GSUdfTUNJX0lORk8sIENPTkZJR19NQ0lfSU5GTyBtYWtl
cyBzZW5zZSBoZXJlCmFuZCBtYXRjaGVzIHdoYXQgd2FzIGFkZGVkIGluIHRoZSBzYW1lIGNvbW1p
dCB0byBvdGhlciBkcml2ZXJzLgoKRml4ZXM6IDczYjBkMjI4ZTViMCAoImRyaXZlcjogQXR0YWNo
IGluZm8gY2FsbGJhY2sgdG8gZGV2aWNlLCBub3QgdG8gZHJpdmVyIikKU2lnbmVkLW9mZi1ieTog
VXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBk
cml2ZXJzL21jaS9zM2MuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWNpL3MzYy5jIGIvZHJpdmVycy9t
Y2kvczNjLmMKaW5kZXggODZhODNiNjNmYTg3Li40ODk2MDk3MTJjYjEgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvbWNpL3MzYy5jCisrKyBiL2RyaXZlcnMvbWNpL3MzYy5jCkBAIC03NTUsNyArNzU1LDcg
QEAgc3RhdGljIGludCBzM2NfbWNpX3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqaHdfZGV2KQogCXMz
Y19ob3N0LT5ob3N0LmZfbWluID0gcGQtPmZfbWluID09IDAgPyBzM2NfZ2V0X3BjbGsoKSAvIDI1
NiA6IHBkLT5mX21pbjsKIAlzM2NfaG9zdC0+aG9zdC5mX21heCA9IHBkLT5mX21heCA9PSAwID8g
czNjX2dldF9wY2xrKCkgLyAyIDogcGQtPmZfbWF4OwogCi0JaWYgKElTX0VOQUJMRUQoaUNPTkZJ
R19NQ0lfSU5GTykpCisJaWYgKElTX0VOQUJMRUQoQ09ORklHX01DSV9JTkZPKSkKIAkJaHdfZGV2
LT5pbmZvID0gczNjX2luZm87CiAKIAkvKgotLSAKMi4xOC4wCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJv
eEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vYmFyZWJveAo=
