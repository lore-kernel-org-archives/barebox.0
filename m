Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bkU4M-0001Rj-CZ
 for barebox@lists.infradead.org; Thu, 15 Sep 2016 10:39:03 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu, 15 Sep 2016 12:38:17 +0200
Message-Id: <1473935897-9252-5-git-send-email-u.kleine-koenig@pengutronix.de>
In-Reply-To: <1473935897-9252-1-git-send-email-u.kleine-koenig@pengutronix.de>
References: <1473935897-9252-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 4/4] net: mvneta: clean txdesc before usage
To: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

VGhpcyBmaXhlcyB0eCBlcnJvciBkZXRlY3Rpb24gd2hpY2ggdHJpZ2dlcmVkIHdheSB0b28gb2Z0
ZW4gYmVjYXVzZSB0aGUKaGFyZHdhcmUgZG9lc24ndCBzZWVtIHRvIGNsZWFyIHRoZSBlcnJvciBi
aXRzIG9uIHN1Y2Nlc3MKClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWlu
ZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9uZXQvbXZuZXRhLmMgfCAxICsK
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0
L212bmV0YS5jIGIvZHJpdmVycy9uZXQvbXZuZXRhLmMKaW5kZXggMTY5MGYzYjU3NmM3Li41YzE2
M2NlYmM3ZjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L212bmV0YS5jCisrKyBiL2RyaXZlcnMv
bmV0L212bmV0YS5jCkBAIC0zOTUsNiArMzk1LDcgQEAgc3RhdGljIGludCBtdm5ldGFfc2VuZChz
dHJ1Y3QgZXRoX2RldmljZSAqZWRldiwgdm9pZCAqZGF0YSwgaW50IGxlbikKIAkvKiBGbHVzaCB0
cmFuc21pdCBkYXRhICovCiAJZG1hX3N5bmNfc2luZ2xlX2Zvcl9kZXZpY2UoKHVuc2lnbmVkIGxv
bmcpZGF0YSwgbGVuLCBETUFfVE9fREVWSUNFKTsKIAorCW1lbXNldCh0eGRlc2MsIDAsIHNpemVv
ZigqdHhkZXNjKSk7CiAJLyogRmlsbCB0aGUgVHggZGVzY3JpcHRvciAqLwogCXR4ZGVzYy0+Y21k
X3N0cyA9IE1WTkVUQV9UWF9MNF9DU1VNX05PVCB8IE1WTkVUQV9UWERfRkxaX0RFU0M7CiAJdHhk
ZXNjLT5idWZfcHRyID0gKHUzMilkYXRhOwotLSAKMi44LjEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9iYXJlYm94Cg==
