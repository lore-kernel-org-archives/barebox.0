Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZfVFX-0001Tj-Fv
 for barebox@lists.infradead.org; Fri, 25 Sep 2015 15:49:29 +0000
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Fri, 25 Sep 2015 17:48:48 +0200
Message-Id: <1443196132-573-2-git-send-email-eric@eukrea.com>
In-Reply-To: <1443196132-573-1-git-send-email-eric@eukrea.com>
References: <1443196132-573-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 2/6] chipidea-imx: allow phymode configuration in pdata
To: barebox@lists.infradead.org

aXQncyBjdXJyZW50bHkgb25seSBoYW5kbGVkIHRocm91Z2ggRFQgYW5kIGZvciBpLk1YMjUgT1RH
IHBvcnQgKGF0IGxlYXN0KSwKd2UgbmVlZCB0byBjb25maWd1cmUgcG9ydHNjIHRvIGdldCBob3N0
IG1vZGUgd29ya2luZyBidXQgaXQgYWN0dWFsbHkgZmFpbHMKYXMgY2ktPnBoeW1vZGUgaXMgMCB3
aGljaCBpcyBVU0JQSFlfSU5URVJGQUNFX01PREVfVU5LTk9XTgoKU2lnbmVkLW9mZi1ieTogRXJp
YyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogZHJpdmVycy91c2IvaW14L2NoaXBpZGVh
LWlteC5jIHwgMSArCiBpbmNsdWRlL3VzYi9jaGlwaWRlYS1pbXguaCAgICAgfCAzICsrKwogMiBm
aWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3VzYi9p
bXgvY2hpcGlkZWEtaW14LmMgYi9kcml2ZXJzL3VzYi9pbXgvY2hpcGlkZWEtaW14LmMKaW5kZXgg
MWRjYTZiZi4uMjhhMGZmZiAxMDA2NDQKLS0tIGEvZHJpdmVycy91c2IvaW14L2NoaXBpZGVhLWlt
eC5jCisrKyBiL2RyaXZlcnMvdXNiL2lteC9jaGlwaWRlYS1pbXguYwpAQCAtMjM2LDYgKzIzNiw3
IEBAIHN0YXRpYyBpbnQgaW14X2NoaXBpZGVhX3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqZGV2KQog
CQl9CiAJCWNpLT5wb3J0bm8gPSBkZXYtPmlkOwogCQljaS0+ZmxhZ3MgPSBwZGF0YS0+ZmxhZ3M7
CisJCWNpLT5waHltb2RlID0gcGRhdGEtPnBoeW1vZGU7CiAJCWNpLT5tb2RlID0gcGRhdGEtPm1v
ZGU7CiAJfQogCmRpZmYgLS1naXQgYS9pbmNsdWRlL3VzYi9jaGlwaWRlYS1pbXguaCBiL2luY2x1
ZGUvdXNiL2NoaXBpZGVhLWlteC5oCmluZGV4IDA5ZTE5YWYuLjY0ZjA4NmEgMTAwNjQ0Ci0tLSBh
L2luY2x1ZGUvdXNiL2NoaXBpZGVhLWlteC5oCisrKyBiL2luY2x1ZGUvdXNiL2NoaXBpZGVhLWlt
eC5oCkBAIC0xLDYgKzEsOCBAQAogI2lmbmRlZiBfX1VTQl9DSElQSURFQV9JTVhfSAogI2RlZmlu
ZSBfX1VTQl9DSElQSURFQV9JTVhfSAogCisjaW5jbHVkZSA8dXNiL3BoeS5oPgorCiAvKgogICog
UE9UU0MgZmxhZ3MKICAqLwpAQCAtNDIsNiArNDQsNyBAQCBlbnVtIGlteF91c2JfbW9kZSB7CiAK
IHN0cnVjdCBpbXh1c2JfcGxhdGZvcm1kYXRhIHsKIAl1bnNpZ25lZCBsb25nIGZsYWdzOworCWVu
dW0gdXNiX3BoeV9pbnRlcmZhY2UgcGh5bW9kZTsKIAllbnVtIGlteF91c2JfbW9kZSBtb2RlOwog
fTsKIAotLSAKMi40LjMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
