Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VJRVw-0003SX-F7
 for barebox@lists.infradead.org; Tue, 10 Sep 2013 17:14:09 +0000
Received: from e6520eb.local.eukrea.com (unknown [88.170.243.169])
 by smtp1-g21.free.fr (Postfix) with ESMTP id 6D6FB940224
 for <barebox@lists.infradead.org>; Tue, 10 Sep 2013 19:13:40 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Tue, 10 Sep 2013 19:13:31 +0200
Message-Id: <1378833214-19808-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 1/4] mxs_spi: unbreak driver
To: barebox@lists.infradead.org

c2luY2UgdGhlIHN3aXRjaCB0byBjb21tb24gY2xvY2ssIFNQSSBkcml2ZXIgcmVwb3J0cyA6Ck1Y
UzogVGltZW91dCByZXNldHRpbmcgYmxvY2sgdmlhIHJlZ2lzdGVyIDB4ODAwMTQwMDAKbXhzX3Nw
aSBteHNfc3BpMjogTVhTIFNQSTogVGltZW91dCB3YWl0aW5nIGZvciBzdGFydAoKVGhlIHJlYXNv
biBpcyB0aGF0IHRoZSBjbG9jayBpcyBub3QgZW5hYmxlZCBhbnl3aGVyZSBpbgp0aGUgZHJpdmVy
LgoKU2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogZHJp
dmVycy9zcGkvbXhzX3NwaS5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3NwaS9teHNfc3BpLmMgYi9kcml2ZXJzL3NwaS9teHNfc3Bp
LmMKaW5kZXggYTgwMzY1Mi4uYTAwNzg0ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9zcGkvbXhzX3Nw
aS5jCisrKyBiL2RyaXZlcnMvc3BpL214c19zcGkuYwpAQCAtMjcwLDYgKzI3MCw3IEBAIHN0YXRp
YyBpbnQgbXhzX3NwaV9wcm9iZShzdHJ1Y3QgZGV2aWNlX2QgKmRldikKIAlteHMtPmNsayA9IGNs
a19nZXQoZGV2LCBOVUxMKTsKIAlpZiAoSVNfRVJSKG14cy0+Y2xrKSkKIAkJcmV0dXJuIFBUUl9F
UlIobXhzLT5jbGspOworCWNsa19lbmFibGUobXhzLT5jbGspOwogCiAJc3BpX3JlZ2lzdGVyX21h
c3RlcihtYXN0ZXIpOwogCi0tIAoxLjguMy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
YmFyZWJveAo=
