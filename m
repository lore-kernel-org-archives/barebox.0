Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cILsr-0000S1-Ly
 for barebox@lists.infradead.org; Sat, 17 Dec 2016 20:47:10 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Sat, 17 Dec 2016 21:46:44 +0100
Message-Id: <20161217204644.4419-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] ata/ahci: simplify ahci_read_id
To: barebox@lists.infradead.org

VGhpcyBpcyBhIGR1bW15IGNvbW1pdCBsb2cgYm9keSBiZWNhdXNlIEkgY29uc2lkZXIgdGhlIGNo
YW5nZSB0byB0cml2aWFsCnRvIHdyaXRlIHNvbWV0aGluZyBzZW5zaWJsZS4KClNpZ25lZC1vZmYt
Ynk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0t
LQogZHJpdmVycy9hdGEvYWhjaS5jIHwgNiArLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2F0YS9haGNpLmMg
Yi9kcml2ZXJzL2F0YS9haGNpLmMKaW5kZXggYzMxYjMzN2JhMjMxLi5jZWEwMzFhZjVhODQgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvYXRhL2FoY2kuYworKysgYi9kcml2ZXJzL2F0YS9haGNpLmMKQEAg
LTIxNiwxMSArMjE2LDcgQEAgc3RhdGljIGludCBhaGNpX3JlYWRfaWQoc3RydWN0IGF0YV9wb3J0
ICphdGEsIHZvaWQgKmJ1ZikKIAlmaXNbMV0gPSAxIDw8IDc7CQkvKiBDb21tYW5kIEZJUy4gKi8K
IAlmaXNbMl0gPSBBVEFfQ01EX0lEX0FUQTsJLyogQ29tbWFuZCBieXRlLiAqLwogCi0JcmV0ID0g
YWhjaV9pbyhhaGNpLCBmaXMsIHNpemVvZihmaXMpLCBidWYsIE5VTEwsIFNFQ1RPUl9TSVpFKTsK
LQlpZiAocmV0KQotCQlyZXR1cm4gcmV0OwotCi0JcmV0dXJuIHJldDsKKwlyZXR1cm4gYWhjaV9p
byhhaGNpLCBmaXMsIHNpemVvZihmaXMpLCBidWYsIE5VTEwsIFNFQ1RPUl9TSVpFKTsKIH0KIAog
c3RhdGljIGludCBhaGNpX3J3KHN0cnVjdCBhdGFfcG9ydCAqYXRhLCB2b2lkICpyYnVmLCBjb25z
dCB2b2lkICp3YnVmLAotLSAKMi4xMC4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFy
ZWJveAo=
