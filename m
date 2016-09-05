Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bgzhC-0008Nx-26
 for barebox@lists.infradead.org; Mon, 05 Sep 2016 19:36:44 +0000
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
Date: Mon,  5 Sep 2016 21:36:17 +0200
Message-Id: <1473104178-20389-1-git-send-email-u.oelmann@pengutronix.de>
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
Subject: [PATCH 1/2] commands: ubiupdatevol: store return value of read() in a
 signed int
To: Barebox List <barebox@lists.infradead.org>

U2lnbmVkLW9mZi1ieTogVWxyaWNoIMOWbG1hbm4gPHUub2VsbWFubkBwZW5ndXRyb25peC5kZT4K
LS0tCiBjb21tYW5kcy91YmkuYyB8IDMgKy0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvY29tbWFuZHMvdWJpLmMgYi9jb21tYW5k
cy91YmkuYwppbmRleCA2NWQyZDI1NmE4MzAuLmRkOTgxZjk1ZWE1ZCAxMDA2NDQKLS0tIGEvY29t
bWFuZHMvdWJpLmMKKysrIGIvY29tbWFuZHMvdWJpLmMKQEAgLTE0LDEwICsxNCw5IEBACiAKIHN0
YXRpYyBpbnQgZG9fdWJpdXBkYXRldm9sKGludCBhcmdjLCBjaGFyICphcmd2W10pCiB7Ci0JaW50
IGZkX2ltZywgZmRfdm9sLCByZXQgPSAwOworCWludCBjb3VudCwgZmRfaW1nLCBmZF92b2wsIHJl
dCA9IDA7CiAJdWludDY0X3Qgc2l6ZSA9IDA7CiAJc3RydWN0IHN0YXQgc3Q7Ci0JdW5zaWduZWQg
aW50IGNvdW50OwogCXZvaWQgKmJ1ZjsKIAogCWlmIChhcmdjIC0gb3B0aW5kIDwgMikKLS0gCjIu
OC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFy
ZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
