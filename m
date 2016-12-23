Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cKMQa-0005l3-4R
 for barebox@lists.infradead.org; Fri, 23 Dec 2016 09:46:16 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri, 23 Dec 2016 10:45:49 +0100
Message-Id: <20161223094549.3311-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] ata: pata-imx: simplify assignment of device name
To: barebox@lists.infradead.org

SWYgT0ZfREVWSUNFIGlzbid0IGVuYWJsZWQsIG9mX2FsaWFzX2dldCByZXR1cm5zIE5VTEwuIEFs
c28geHN0cmR1cApyZXR1cm5zIE5VTEwgd2hlbiBOVUxMIGlzIHBhc3NlZCBhcyBhcmd1bWVudC4g
VGhpcyBhbGxvd3MgdG8gc2ltcGxpZnkKYWNjb3JkaW5nbHkuCgpTaWduZWQtb2ZmLWJ5OiBVd2Ug
S2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZl
cnMvYXRhL3BhdGEtaW14LmMgfCA4ICstLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9hdGEvcGF0YS1pbXgu
YyBiL2RyaXZlcnMvYXRhL3BhdGEtaW14LmMKaW5kZXggYzgwOThhNTM3ZmU1Li40Zjc1MDQ4YzEy
Y2UgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvYXRhL3BhdGEtaW14LmMKKysrIGIvZHJpdmVycy9hdGEv
cGF0YS1pbXguYwpAQCAtMTU4LDcgKzE1OCw2IEBAIHN0YXRpYyBpbnQgaW14X3BhdGFfcHJvYmUo
c3RydWN0IGRldmljZV9kICpkZXYpCiAJc3RydWN0IGNsayAqY2xrOwogCXZvaWQgX19pb21lbSAq
YmFzZTsKIAlpbnQgcmV0OwotCWNvbnN0IGNoYXIgKmRldm5hbWUgPSBOVUxMOwogCiAJaWRlID0g
eHphbGxvYyhzaXplb2YoKmlkZSkpOwogCWlvcmVzID0gZGV2X3JlcXVlc3RfbWVtX3Jlc291cmNl
KGRldiwgMCk7CkBAIC0xODIsMTQgKzE4MSw5IEBAIHN0YXRpYyBpbnQgaW14X3BhdGFfcHJvYmUo
c3RydWN0IGRldmljZV9kICpkZXYpCiAKIAlwYXRhX2lteF9zZXRfYnVzX3RpbWluZyhiYXNlLCBj
bGtfZ2V0X3JhdGUoY2xrKSwgNCk7CiAKLQlpZiAoSVNfRU5BQkxFRChDT05GSUdfT0ZERVZJQ0Up
KSB7Ci0JCWRldm5hbWUgPSBvZl9hbGlhc19nZXQoZGV2LT5kZXZpY2Vfbm9kZSk7Ci0JCWlmIChk
ZXZuYW1lKQotCQkJZGV2bmFtZSA9IHhzdHJkdXAoZGV2bmFtZSk7Ci0JfQogCiAJaWRlLT5wb3J0
LmRldiA9IGRldjsKLQlpZGUtPnBvcnQuZGV2bmFtZSA9IGRldm5hbWU7CisJaWRlLT5wb3J0LmRl
dm5hbWUgPSB4c3RyZHVwKG9mX2FsaWFzX2dldChkZXYtPmRldmljZV9ub2RlKSk7CiAKIAlkZXYt
PnByaXYgPSBpZGU7CiAJZGV2LT5kZXRlY3QgPSBwYXRhX2lteF9kZXRlY3Q7Ci0tIAoyLjExLjAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94
IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
