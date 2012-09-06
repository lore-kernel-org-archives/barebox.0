Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9huR-0001F2-SW
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 19:38:41 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id D217CA622B
 for <barebox@lists.infradead.org>; Thu,  6 Sep 2012 21:38:30 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Thu,  6 Sep 2012 21:38:27 +0200
Message-Id: <1346960309-3999-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 1/3] fec: restart autoneg at open instead of init
To: barebox@lists.infradead.org

dGhpcyBzYXZlcyBzb21lIHRpbWUgZHVyaW5nIGJvb3Qgd2hlbiBldGhlcm5ldCBpcyBub3QgbmVl
ZGVkIGluIGJhcmVib3gKClNpZ25lZC1vZmYtYnk6IEVyaWMgQsOpbmFyZCA8ZXJpY0BldWtyZWEu
Y29tPgotLS0KIGRyaXZlcnMvbmV0L2ZlY19pbXguYyB8ICAgIDYgKysrLS0tCiAxIGZpbGVzIGNo
YW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC9mZWNfaW14LmMgYi9kcml2ZXJzL25ldC9mZWNfaW14LmMKaW5kZXggNTk5YTliNC4u
MmJjMDZhOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZmVjX2lteC5jCisrKyBiL2RyaXZlcnMv
bmV0L2ZlY19pbXguYwpAQCAtMzQ3LDkgKzM0Nyw2IEBAIHN0YXRpYyBpbnQgZmVjX2luaXQoc3Ry
dWN0IGV0aF9kZXZpY2UgKmRldikKIAkvKiBzaXplIG9mIGVhY2ggYnVmZmVyICovCiAJd3JpdGVs
KEZFQ19NQVhfUEtUX1NJWkUsIGZlYy0+cmVncyArIEZFQ19FTVJCUik7CiAKLQlpZiAoZmVjLT54
Y3ZfdHlwZSAhPSBTRVZFTldJUkUpCi0JCW1paWRldl9yZXN0YXJ0X2FuZWcoJmZlYy0+bWlpZGV2
KTsKLQogCXJldHVybiAwOwogfQogCkBAIC0zNjMsNiArMzYwLDkgQEAgc3RhdGljIGludCBmZWNf
b3BlbihzdHJ1Y3QgZXRoX2RldmljZSAqZWRldikKIAlpbnQgcmV0OwogCXUzMiBlY3I7CiAKKwlp
ZiAoZmVjLT54Y3ZfdHlwZSAhPSBTRVZFTldJUkUpCisJCW1paWRldl9yZXN0YXJ0X2FuZWcoJmZl
Yy0+bWlpZGV2KTsKKwogCS8qCiAJICogSW5pdGlhbGl6ZSBSeEJEL1R4QkQgcmluZ3MKIAkgKi8K
LS0gCjEuNy43LjYKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
