Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.savoirfairelinux.com ([208.88.110.44])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eFYjg-0005oD-75
 for barebox@lists.infradead.org; Fri, 17 Nov 2017 04:58:42 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.savoirfairelinux.com (Postfix) with ESMTP id 526679C2B3F
 for <barebox@lists.infradead.org>; Thu, 16 Nov 2017 23:57:49 -0500 (EST)
From: =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@savoirfairelinux.com>
Date: Thu, 16 Nov 2017 23:58:14 -0500
Message-Id: <20171117045814.16164-1-gael.portay@savoirfairelinux.com>
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
Subject: [PATCH] readline_simple: use len instead of CONFIG_CBSIZE
To: barebox@lists.infradead.org
Cc: =?utf-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@savoirfairelinux.com>

SXQgaXMgc2FmaWVyIHRvIHVzZSB0aGUgbGVuZ3RoIGdpdmVuIGluIHBhcmFtZXRlciBpbnN0ZWFk
IG9mIHVzaW5nIHRoZQpwcmVwcm9jZXNzb3IgQ09ORklHX0NCU0laRSB2YWx1ZS4KClNpZ25lZC1v
ZmYtYnk6IEdhw6tsIFBPUlRBWSA8Z2FlbC5wb3J0YXlAc2F2b2lyZmFpcmVsaW51eC5jb20+Ci0t
LQogbGliL3JlYWRsaW5lX3NpbXBsZS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvbGliL3JlYWRsaW5lX3NpbXBsZS5j
IGIvbGliL3JlYWRsaW5lX3NpbXBsZS5jCmluZGV4IDgwZTA3NWJjNS4uZmNkYmNhNDFhIDEwMDY0
NAotLS0gYS9saWIvcmVhZGxpbmVfc2ltcGxlLmMKKysrIGIvbGliL3JlYWRsaW5lX3NpbXBsZS5j
CkBAIC0xMDAsNyArMTAwLDcgQEAgaW50IHJlYWRsaW5lIChjb25zdCBjaGFyICpwcm9tcHQsIGNo
YXIgKmxpbmUsIGludCBsZW4pCiAJCQkvKgogCQkJICogTXVzdCBiZSBhIG5vcm1hbCBjaGFyYWN0
ZXIgdGhlbgogCQkJICovCi0JCQlpZiAobiA8IENPTkZJR19DQlNJWkUtMikgeworCQkJaWYgKG4g
PCBsZW4tMikgewogCQkJCWlmIChjID09ICdcdCcpIHsJLyogZXhwYW5kIFRBQnMJCSovCiAJCQkJ
CXB1dHMgKHRhYl9zZXErKGNvbCYwNykpOwogCQkJCQljb2wgKz0gOCAtIChjb2wmMDcpOwotLSAK
Mi4xNS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
YmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
