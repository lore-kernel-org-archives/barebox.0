Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SVHpN-0003Kw-WE
 for barebox@lists.infradead.org; Fri, 18 May 2012 07:42:23 +0000
Received: from localhost.localdomain (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id BA34C4B014B
 for <barebox@lists.infradead.org>; Fri, 18 May 2012 09:42:16 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Fri, 18 May 2012 09:41:45 +0200
Message-Id: <1337326905-555-10-git-send-email-eric@eukrea.com>
In-Reply-To: <1337326905-555-1-git-send-email-eric@eukrea.com>
References: <1337326905-555-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH v2 10/10] fec_imx: restart aneg at open and not at init
To: barebox@lists.infradead.org

ZWxzZSB3ZSBjYW4gZ2V0IGEgMSBzZWNvbmQgdGltZW91dCBhdCBlYWNoIGJvb3Qgc2luY2UKIjZj
YmVjYzQgbmV0OiBtaWlkZXY6IHByb3Blcmx5IGNoZWNrIGZvciBNSUkgcmVzZXQiCgpTaWduZWQt
b2ZmLWJ5OiBFcmljIELDqW5hcmQgPGVyaWNAZXVrcmVhLmNvbT4KLS0tCiBkcml2ZXJzL25ldC9m
ZWNfaW14LmMgfCAgICA2ICsrKy0tLQogMSBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyks
IDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZmVjX2lteC5jIGIvZHJp
dmVycy9uZXQvZmVjX2lteC5jCmluZGV4IDA4Y2Q3NjEuLmViMGNhNDQgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvbmV0L2ZlY19pbXguYworKysgYi9kcml2ZXJzL25ldC9mZWNfaW14LmMKQEAgLTMzNSw5
ICszMzUsNiBAQCBzdGF0aWMgaW50IGZlY19pbml0KHN0cnVjdCBldGhfZGV2aWNlICpkZXYpCiAJ
Lyogc2l6ZSBvZiBlYWNoIGJ1ZmZlciAqLwogCXdyaXRlbChGRUNfTUFYX1BLVF9TSVpFLCBmZWMt
PnJlZ3MgKyBGRUNfRU1SQlIpOwogCi0JaWYgKGZlYy0+eGN2X3R5cGUgIT0gU0VWRU5XSVJFKQot
CQltaWlkZXZfcmVzdGFydF9hbmVnKCZmZWMtPm1paWRldik7Ci0KIAlyZXR1cm4gMDsKIH0KIApA
QCAtMzUwLDYgKzM0Nyw5IEBAIHN0YXRpYyBpbnQgZmVjX29wZW4oc3RydWN0IGV0aF9kZXZpY2Ug
KmVkZXYpCiAJc3RydWN0IGZlY19wcml2ICpmZWMgPSAoc3RydWN0IGZlY19wcml2ICopZWRldi0+
cHJpdjsKIAlpbnQgcmV0OwogCisJaWYgKGZlYy0+eGN2X3R5cGUgIT0gU0VWRU5XSVJFKQorCQlt
aWlkZXZfcmVzdGFydF9hbmVnKCZmZWMtPm1paWRldik7CisKIAkvKgogCSAqIEluaXRpYWxpemUg
UnhCRC9UeEJEIHJpbmdzCiAJICovCi0tIAoxLjcuNy42CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYmFyZWJveAo=
