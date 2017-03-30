Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctf6J-0007Fs-RZ
 for barebox@lists.infradead.org; Thu, 30 Mar 2017 18:47:17 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu, 30 Mar 2017 20:46:35 +0200
Message-Id: <20170330184636.22846-2-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20170330184636.22846-1-u.kleine-koenig@pengutronix.de>
References: <20170330184636.22846-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 1/2] clocksource: mvebu: don't request the used iomem resource
To: barebox@lists.infradead.org

VGhlIHJlZ2lzdGVyIHJhbmdlcyBvZiB0aGUgZGV2aWNlIG5vZGVzIHRpbWVyQDIwMzAwIGFuZCB3
YXRjaGRvZ0AyMDMwMApvdmVybGFwLCBzbyBpdCBpcyBpbXBvc3NpYmxlIHRoYXQgYm90aCBkZXZp
Y2VzIHByb3Blcmx5IHVzZQpyZXF1ZXN0X2lvbWVtX3JlZ2lvbiAoZS5nLiBieSB1c2luZyBkZXZf
cmVxdWVzdF9tZW1fcmVzb3VyY2UpLiBJbiBMaW51eApvbmx5IHRoZSB3YXRjaGRvZyBkcml2ZXIg
aXMgcmVnaXN0ZXJlZCBpbiAvcHJvYy9pb21lbSwgZG8gdGhlIHNhbWUgZm9yCmJhcmVib3guCgpT
aWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJv
bml4LmRlPgotLS0KIGRyaXZlcnMvY2xvY2tzb3VyY2UvbXZlYnUuYyB8IDIgKy0KIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvY2xvY2tzb3VyY2UvbXZlYnUuYyBiL2RyaXZlcnMvY2xvY2tzb3VyY2UvbXZlYnUuYwppbmRl
eCBjZjgwNTcxMjYzZDkuLjU5YmJjNGJlMjJhNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9jbG9ja3Nv
dXJjZS9tdmVidS5jCisrKyBiL2RyaXZlcnMvY2xvY2tzb3VyY2UvbXZlYnUuYwpAQCAtNjAsNyAr
NjAsNyBAQCBzdGF0aWMgaW50IG12ZWJ1X3RpbWVyX3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqZGV2
KQogCXN0cnVjdCBjbGsgKmNsazsKIAl1MzIgcmF0ZSwgZGl2LCB2YWw7CiAKLQlpb3JlcyA9IGRl
dl9yZXF1ZXN0X21lbV9yZXNvdXJjZShkZXYsIDApOworCWlvcmVzID0gZGV2X2dldF9yZXNvdXJj
ZShkZXYsIElPUkVTT1VSQ0VfTUVNLCAwKTsKIAlpZiAoSVNfRVJSKGlvcmVzKSkKIAkJcmV0dXJu
IFBUUl9FUlIoaW9yZXMpOwogCXRpbWVyX2Jhc2UgPSBJT01FTShpb3Jlcy0+c3RhcnQpOwotLSAK
Mi4xMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
YmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
