Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gADWw-0000Ze-UV
 for barebox@lists.infradead.org; Wed, 10 Oct 2018 12:25:23 +0000
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
Date: Wed, 10 Oct 2018 14:23:40 +0200
Message-Id: <20181010122340.28241-1-u.oelmann@pengutronix.de>
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
Subject: [PATCH] state: backend_bucket_circular: remove unused variables
To: Barebox List <barebox@lists.infradead.org>

VGhpcyBoYXMgYmVlbiBmb3Jnb3R0ZW4gaW4gY29tbWl0IDlkNmQ5MTkzMWFmYiAoInN0YXRlOiBS
ZW1vdmUgLUVVQ0xFQU4gY2hlY2sKZnJvbSB1c2Vyc3BhY2UgdG9vbCIpLgoKU2lnbmVkLW9mZi1i
eTogVWxyaWNoIMOWbG1hbm4gPHUub2VsbWFubkBwZW5ndXRyb25peC5kZT4KLS0tCiBjb21tb24v
c3RhdGUvYmFja2VuZF9idWNrZXRfY2lyY3VsYXIuYyB8IDIgLS0KIDEgZmlsZSBjaGFuZ2VkLCAy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2NvbW1vbi9zdGF0ZS9iYWNrZW5kX2J1Y2tldF9j
aXJjdWxhci5jIGIvY29tbW9uL3N0YXRlL2JhY2tlbmRfYnVja2V0X2NpcmN1bGFyLmMKaW5kZXgg
Mjc3Yjk0ZDc5NzM3Li40YjcxZDg3NTFkYTYgMTAwNjQ0Ci0tLSBhL2NvbW1vbi9zdGF0ZS9iYWNr
ZW5kX2J1Y2tldF9jaXJjdWxhci5jCisrKyBiL2NvbW1vbi9zdGF0ZS9iYWNrZW5kX2J1Y2tldF9j
aXJjdWxhci5jCkBAIC0xNTUsOCArMTU1LDYgQEAgc3RhdGljIGludCBzdGF0ZV9tdGRfcGViX3Jl
YWQoc3RydWN0IHN0YXRlX2JhY2tlbmRfc3RvcmFnZV9idWNrZXRfY2lyY3VsYXIgKmNpcmMKIHsK
IAlpbnQgcmV0OwogCW9mZl90IG9mZnNldCA9IHN1Ym9mZnNldDsKLQlzdHJ1Y3QgbXRkX2VjY19z
dGF0cyBzdGF0MSwgc3RhdDI7Ci0JYm9vbCBub3N0YXRzID0gZmFsc2U7CiAKIAlvZmZzZXQgKz0g
KG9mZl90KWNpcmMtPmVyYXNlYmxvY2sgKiBjaXJjLT5tdGQtPmVyYXNlc2l6ZTsKIAotLSAKMi4x
OS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFy
ZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
