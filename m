Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UQGFP-0007W5-LY
 for barebox@lists.infradead.org; Thu, 11 Apr 2013 12:05:02 +0000
Received: from e6520eb.local.eukrea.com (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 40D9B4B012B
 for <barebox@lists.infradead.org>; Thu, 11 Apr 2013 14:04:52 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Thu, 11 Apr 2013 14:04:51 +0200
Message-Id: <1365681891-9135-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH] mtdraw: fix oob read and write
To: barebox@lists.infradead.org

YWN0dWFsbHkgb3BzLm9vYm9mZnMgaXMgbm90IGRlZmF1bHRlZCBzbyB3aGVuIGl0cyB2YWx1ZSBn
ZXRzCmFkZGVkIHRvIGNoaXAtPm9vYl9wb2kgaW4gbmFuZF9maWxsX29vYiBvciBuYW5kX3RyYW5z
ZmVyX29vYgp0aGUgcmVzcGVjdGl2ZSBtZW1jcHkgaXMgdXNpbmcgYSB3cm9uZyBhZGRyZXNzLgoK
V2l0aCB0aGlzIHBhdGNoLCBib3RoIG1kIC1zIC9kZXYvbmFuZHJhdzAgYW5kIGNwIHh5eiAvZGV2
L25hbmRyYXcwLnNiCmFyZSB3b3JraW5nIGZpbmUgb24gYW4gaS5NWDI4IHRhcmdldCAoaW5zdGVh
ZCBvZiBjcmFzaGluZyB0aGUgYm9hcmQpLgoKU2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxl
cmljQGV1a3JlYS5jb20+Ci0tLQogZHJpdmVycy9tdGQvbXRkcmF3LmMgfCAyICsrCiAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvbXRkcmF3
LmMgYi9kcml2ZXJzL210ZC9tdGRyYXcuYwppbmRleCAzODQxMDRlLi5jMjg5ZThkIDEwMDY0NAot
LS0gYS9kcml2ZXJzL210ZC9tdGRyYXcuYworKysgYi9kcml2ZXJzL210ZC9tdGRyYXcuYwpAQCAt
OTgsNiArOTgsNyBAQCBzdGF0aWMgc3NpemVfdCBtdGRyYXdfcmVhZF91bmFsaWduZWQoc3RydWN0
IG10ZF9pbmZvICptdGQsIHZvaWQgKmRzdCwKIAlpZiAoIXRtcCkKIAkJcmV0dXJuIC1FTk9NRU07
CiAJb3BzLm1vZGUgPSBNVERfT09CX1JBVzsKKwlvcHMub29ib2ZmcyA9IDA7CiAJb3BzLmRhdGJ1
ZiA9IHRtcDsKIAlvcHMubGVuID0gbXRkLT53cml0ZXNpemU7CiAJb3BzLm9vYmJ1ZiA9IHRtcCAr
IG10ZC0+d3JpdGVzaXplOwpAQCAtMTUyLDYgKzE1Myw3IEBAIHN0YXRpYyBzc2l6ZV90IG10ZHJh
d19ibGt3cml0ZShzdHJ1Y3QgbXRkX2luZm8gKm10ZCwgY29uc3Qgdm9pZCAqYnVmLAogCWludCBy
ZXQ7CiAKIAlvcHMubW9kZSA9IE1URF9PT0JfUkFXOworCW9wcy5vb2JvZmZzID0gMDsKIAlvcHMu
ZGF0YnVmID0gKHZvaWQgKilidWY7CiAJb3BzLmxlbiA9IG10ZC0+d3JpdGVzaXplOwogCW9wcy5v
b2JidWYgPSAodm9pZCAqKWJ1ZiArIG10ZC0+d3JpdGVzaXplOwotLSAKMS43LjExLjcKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxp
bmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
