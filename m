Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P6OR8-0008Vk-UT
	for barebox@lists.infradead.org; Thu, 14 Oct 2010 14:05:41 +0000
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Thu, 14 Oct 2010 16:05:30 +0200
Message-Id: <1287065132-20372-8-git-send-email-eric@eukrea.com>
In-Reply-To: <1287065132-20372-1-git-send-email-eric@eukrea.com>
References: <1287065132-20372-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 08/10] speed-imx35: add support for SDHC1
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogYXJjaC9h
cm0vbWFjaC1pbXgvc3BlZWQtaW14MzUuYyB8ICAgMTIgKysrKysrKysrKysrCiAxIGZpbGVzIGNo
YW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJj
aC9hcm0vbWFjaC1pbXgvc3BlZWQtaW14MzUuYyBiL2FyY2gvYXJtL21hY2gtaW14L3NwZWVkLWlt
eDM1LmMKaW5kZXggYzVhMzFjNy4uMzI0Y2MyOSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vbWFjaC1p
bXgvc3BlZWQtaW14MzUuYworKysgYi9hcmNoL2FybS9tYWNoLWlteC9zcGVlZC1pbXgzNS5jCkBA
IC0xNjMsNiArMTYzLDE3IEBAIHVuc2lnbmVkIGxvbmcgaW14X2dldF91YXJ0Y2xrKHZvaWQpCiAJ
CXJldHVybiBpbXhfZ2V0X3BwbGxjbGsoKSAvIGRpdjsKIH0KIAordW5zaWduZWQgbG9uZyBpbXhf
Z2V0X21tY2Nsayh2b2lkKQoreworCXVuc2lnbmVkIGxvbmcgcGRyMyA9IHJlYWRsKElNWF9DQ01f
QkFTRSArIENDTV9QRFIzKTsKKwl1bnNpZ25lZCBsb25nIGRpdiA9IGdldF8zXzNfZGl2KHBkcjMp
OworCisJaWYgKHBkcjMgJiAoMSA8PCA2KSkKKwkJcmV0dXJuIGlteF9nZXRfYXJtY2xrKCkgLyBk
aXY7CisJZWxzZQorCQlyZXR1cm4gaW14X2dldF9wcGxsY2xrKCkgLyBkaXY7Cit9CisKIHVsb25n
IGlteF9nZXRfZmVjY2xrKHZvaWQpCiB7CiAJcmV0dXJuIGlteF9nZXRfaXBnY2xrKCk7CkBAIC0x
ODMsNiArMTk0LDcgQEAgdm9pZCBpbXhfZHVtcF9jbG9ja3Modm9pZCkKIAlwcmludGYoImlwZzog
ICAgICUxMGQgSHpcbiIsIGlteF9nZXRfaXBnY2xrKCkpOwogCXByaW50ZigiaXBnX3BlcjogJTEw
ZCBIelxuIiwgaW14X2dldF9pcGdfcGVyY2xrKCkpOwogCXByaW50ZigidWFydDoJICUxMGQgSHpc
biIsIGlteF9nZXRfdWFydGNsaygpKTsKKwlwcmludGYoInNkaGMxOiAgICUxMGQgSHpcbiIsIGlt
eF9nZXRfbW1jY2xrKCkpOwogfQogCiAvKgotLSAKMS43LjAuNAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVi
b3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2JhcmVib3gK
