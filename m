Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T6Nec-0003Nd-Iz
 for barebox@lists.infradead.org; Tue, 28 Aug 2012 15:24:37 +0000
Received: from eb-e6520.local.eukrea.com (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 7E7DB4B0064
 for <barebox@lists.infradead.org>; Tue, 28 Aug 2012 17:24:27 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Tue, 28 Aug 2012 17:24:25 +0200
Message-Id: <1346167466-10098-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 1/2] usb_hub_power_on: wait for the power to be stable
To: barebox@lists.infradead.org

LSB0aGUgMTAwbXMgdmFsdWUgaXMgdGFrZW4gZnJvbSBMaW51eCAmIHUtYm9vdAotIHdpdGhvdXQg
dGhpcywgSSBkb24ndCBzZWUgcGVyaXBoZXJhbHMgY29ubmVjdGVkIHRvIGEgaHViCmNvbm5lY3Rl
ZCB0byBhbiBpLk1YMzUncyBob3N0IHBvcnQuCgpTaWduZWQtb2ZmLWJ5OiBFcmljIELDqW5hcmQg
PGVyaWNAZXVrcmVhLmNvbT4KLS0tCiBkcml2ZXJzL3VzYi9jb3JlL3VzYi5jIHwgICAgMiArLQog
MSBmaWxlcyBjaGFuZ2VkLCAxIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy91c2IvY29yZS91c2IuYyBiL2RyaXZlcnMvdXNiL2NvcmUvdXNiLmMKaW5k
ZXggYTUwNzVkNS4uYWUzZWI4OCAxMDA2NDQKLS0tIGEvZHJpdmVycy91c2IvY29yZS91c2IuYwor
KysgYi9kcml2ZXJzL3VzYi9jb3JlL3VzYi5jCkBAIC05NDgsNyArOTQ4LDcgQEAgc3RhdGljIHZv
aWQgdXNiX2h1Yl9wb3dlcl9vbihzdHJ1Y3QgdXNiX2h1Yl9kZXZpY2UgKmh1YikKIAkJdXNiX3Nl
dF9wb3J0X2ZlYXR1cmUoZGV2LCBpICsgMSwgVVNCX1BPUlRfRkVBVF9QT1dFUik7CiAJCVVTQl9I
VUJfUFJJTlRGKCJwb3J0ICVkIHJldHVybnMgJWxYXG4iLCBpICsgMSwgZGV2LT5zdGF0dXMpOwog
CX0KLQltZGVsYXkoMjApOworCW1kZWxheSgxMDApOwogfQogCiAjZGVmaW5lIE1BWF9UUklFUyA1
Ci0tIAoxLjcuNy42CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
