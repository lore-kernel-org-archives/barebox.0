Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VJRWB-0003TO-6l
 for barebox@lists.infradead.org; Tue, 10 Sep 2013 17:14:24 +0000
Received: from e6520eb.local.eukrea.com (unknown [88.170.243.169])
 by smtp1-g21.free.fr (Postfix) with ESMTP id 6C74F94026D
 for <barebox@lists.infradead.org>; Tue, 10 Sep 2013 19:13:59 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Tue, 10 Sep 2013 19:13:34 +0200
Message-Id: <1378833214-19808-4-git-send-email-eric@eukrea.com>
In-Reply-To: <1378833214-19808-1-git-send-email-eric@eukrea.com>
References: <1378833214-19808-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 4/4] video/stm: enable clock to get the display working
To: barebox@lists.infradead.org

ZWxzZSB0aGUgY2xvY2sgaXMgbm90IGVuYWJsZWQgOgogICAgICAgIHJlZl9waXggKHJhdGUgMjcw
MDAwMDAwLCBkaXNhYmxlZCkKICAgICAgICAgICAgbGNkaWZfc2VsIChyYXRlIDI3MDAwMDAwMCwg
ZGlzYWJsZWQpCiAgICAgICAgICAgICAgICBsY2RpZl9kaXYgKHJhdGUgMzM3NTAwMDAsIGRpc2Fi
bGVkKQogICAgICAgICAgICAgICAgICAgIGxjZGlmIChyYXRlIDMzNzUwMDAwLCBkaXNhYmxlZCkK
ICAgICAgICAgICAgICAgICAgICAgICAgbGNkaWZfY29tcCAocmF0ZSAzMzc1MDAwMCwgZGlzYWJs
ZWQpCgp0ZXN0ZWQgb24gaS5NWDI4RVZLLgoKU2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxl
cmljQGV1a3JlYS5jb20+Ci0tLQogZHJpdmVycy92aWRlby9zdG0uYyB8IDEgKwogMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy92aWRlby9zdG0uYyBi
L2RyaXZlcnMvdmlkZW8vc3RtLmMKaW5kZXggMjYwMzEyOS4uZmRlYWY5YyAxMDA2NDQKLS0tIGEv
ZHJpdmVycy92aWRlby9zdG0uYworKysgYi9kcml2ZXJzL3ZpZGVvL3N0bS5jCkBAIC00OTYsNiAr
NDk2LDcgQEAgc3RhdGljIGludCBzdG1mYl9wcm9iZShzdHJ1Y3QgZGV2aWNlX2QgKmh3X2RldikK
IAlmYmkuY2xrID0gY2xrX2dldChod19kZXYsIE5VTEwpOwogCWlmIChJU19FUlIoZmJpLmNsaykp
CiAJCXJldHVybiBQVFJfRVJSKGZiaS5jbGspOworCWNsa19lbmFibGUoZmJpLmNsayk7CiAKIAkv
KiBhZGQgcnVudGltZSB2aWRlbyBpbmZvICovCiAJZmJpLmluZm8ubW9kZV9saXN0ID0gcGRhdGEt
Pm1vZGVfbGlzdDsKLS0gCjEuOC4zLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJl
Ym94Cg==
