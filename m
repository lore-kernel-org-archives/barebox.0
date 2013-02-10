Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U4ZgJ-0005kK-Aa
 for barebox@lists.infradead.org; Sun, 10 Feb 2013 16:23:12 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id D7603A6238
 for <barebox@lists.infradead.org>; Sun, 10 Feb 2013 17:22:56 +0100 (CET)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Sun, 10 Feb 2013 17:22:50 +0100
Message-Id: <1360513371-16470-2-git-send-email-eric@eukrea.com>
In-Reply-To: <1360513371-16470-1-git-send-email-eric@eukrea.com>
References: <1360513371-16470-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 2/3] mx23-evk: add USB gadget support
To: barebox@lists.infradead.org

LSBlbmFibGUgdGhlIFVTQiBPVEcgZGV2aWNlIGluIGdhZGdldCBtb2RlCi0gdGVzdGVkIG9uIGku
TVgyMyBFVkggcmV2IEIxIHdpdGggREZVCgpTaWduZWQtb2ZmLWJ5OiBFcmljIELDqW5hcmQgPGVy
aWNAZXVrcmVhLmNvbT4KLS0tCiBhcmNoL2FybS9ib2FyZHMvZnJlZXNjYWxlLW14MjMtZXZrL214
MjMtZXZrLmMgfCAxNSArKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9hcmRzL2ZyZWVzY2FsZS1teDIzLWV2ay9t
eDIzLWV2ay5jIGIvYXJjaC9hcm0vYm9hcmRzL2ZyZWVzY2FsZS1teDIzLWV2ay9teDIzLWV2ay5j
CmluZGV4IDA0M2I2MmIuLjc2Mzc3YjEgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2JvYXJkcy9mcmVl
c2NhbGUtbXgyMy1ldmsvbXgyMy1ldmsuYworKysgYi9hcmNoL2FybS9ib2FyZHMvZnJlZXNjYWxl
LW14MjMtZXZrL214MjMtZXZrLmMKQEAgLTI0LDYgKzI0LDggQEAKICNpbmNsdWRlIDxtYWNoL2lt
eC1yZWdzLmg+CiAjaW5jbHVkZSA8bWFjaC9jbG9jay5oPgogI2luY2x1ZGUgPG1hY2gvbWNpLmg+
CisjaW5jbHVkZSA8dXNiL2ZzbF91c2IyLmg+CisjaW5jbHVkZSA8bWFjaC91c2IuaD4KIAogc3Rh
dGljIHN0cnVjdCBteHNfbWNpX3BsYXRmb3JtX2RhdGEgbWNpX3BkYXRhID0gewogCS5jYXBzID0g
TU1DX01PREVfNEJJVCB8IE1NQ19NT0RFX0hTIHwgTU1DX01PREVfSFNfNTJNSHosCkBAIC00Miw2
ICs0NCwxMyBAQCBzdGF0aWMgY29uc3QgdWludDMyX3QgcGFkX3NldHVwW10gPSB7CiAJU1NQMV9E
RVRFQ1QgfCBQVUxMVVAoMSksCiB9OwogCisjaWZkZWYgQ09ORklHX1VTQl9HQURHRVRfRFJJVkVS
X0FSQworc3RhdGljIHN0cnVjdCBmc2xfdXNiMl9wbGF0Zm9ybV9kYXRhIHVzYl9wZGF0YSA9IHsK
Kwkub3BlcmF0aW5nX21vZGUJPSBGU0xfVVNCMl9EUl9ERVZJQ0UsCisJLnBoeV9tb2RlCT0gRlNM
X1VTQjJfUEhZX1VUTUksCit9OworI2VuZGlmCisKIHN0YXRpYyBpbnQgbXgyM19ldmtfbWVtX2lu
aXQodm9pZCkKIHsKIAlhcm1fYWRkX21lbV9kZXZpY2UoInJhbTAiLCBJTVhfTUVNT1JZX0JBU0Us
IDMyICogMTAyNCAqIDEwMjQpOwpAQCAtMTExLDYgKzEyMCwxMiBAQCBzdGF0aWMgaW50IG14MjNf
ZXZrX2RldmljZXNfaW5pdCh2b2lkKQogCQlwcmludGYoIkNhbm5vdCBjcmVhdGUgdGhlICdlbnYw
JyBwZXJzaXN0YW50ICIKIAkJCSAiZW52aXJvbm1lbnQgc3RvcmFnZSAoJWQpXG4iLCByYyk7CiAK
KyNpZmRlZiBDT05GSUdfVVNCX0dBREdFVF9EUklWRVJfQVJDCisJaW14MjNfdXNiX3BoeV9lbmFi
bGUoKTsKKwlhZGRfZ2VuZXJpY191c2JfZWhjaV9kZXZpY2UoREVWSUNFX0lEX0RZTkFNSUMsIElN
WF9VU0JfQkFTRSwgTlVMTCk7CisJYWRkX2dlbmVyaWNfZGV2aWNlKCJmc2wtdWRjIiwgREVWSUNF
X0lEX0RZTkFNSUMsIE5VTEwsIElNWF9VU0JfQkFTRSwKKwkJCSAgIDB4MjAwLCBJT1JFU09VUkNF
X01FTSwgJnVzYl9wZGF0YSk7CisjZW5kaWYKIAlyZXR1cm4gMDsKIH0KIAotLSAKMS43LjExLjcK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94
IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
