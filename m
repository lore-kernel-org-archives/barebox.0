Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x232.google.com ([2a00:1450:400c:c00::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XDCnO-0004X1-SW
 for barebox@lists.infradead.org; Fri, 01 Aug 2014 13:22:59 +0000
Received: by mail-wg0-f50.google.com with SMTP id n12so4293291wgh.33
 for <barebox@lists.infradead.org>; Fri, 01 Aug 2014 06:22:32 -0700 (PDT)
From: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>
Date: Fri,  1 Aug 2014 15:23:23 +0200
Message-Id: <1406899404-29094-5-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1406899404-29094-1-git-send-email-poggi.raph@gmail.com>
References: <1406899404-29094-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH 4/5] mtd: atmel_nand: retrieve ecc_mode from pdata
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>

QnkgcmV0cmlldmluZyB0aGUgZWNjX21vZGUgZnJvbSBwZGF0YSB3ZSBjYW4gdXNlIHRoZSBzYW1l
IGNvZGUgZm9yIGRldmljZSB0cmVlIGFuZApub24gZGV2aWNlIHRyZWUgcHJvYmluZy4gV2hpY2gg
d2FzIG5vdCBwb3NzaWJsZSBiZWZvcmUsIGJlY2F1c2UgZWNjX21vZGUgd2FzIGFyYml0cmFyaWx5
IHNldCB0bwpOQU5EX0VDQ19TT0ZULgoKU2lnbmVkLW9mZi1ieTogUmFwaGHDq2wgUG9nZ2kgPHBv
Z2dpLnJhcGhAZ21haWwuY29tPgotLS0KIGRyaXZlcnMvbXRkL25hbmQvYXRtZWxfbmFuZC5jIHwg
ICAgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL25hbmQvYXRtZWxfbmFuZC5jIGIvZHJpdmVycy9t
dGQvbmFuZC9hdG1lbF9uYW5kLmMKaW5kZXggZWJhNzEyNS4uODJiZWU5MiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9tdGQvbmFuZC9hdG1lbF9uYW5kLmMKKysrIGIvZHJpdmVycy9tdGQvbmFuZC9hdG1l
bF9uYW5kLmMKQEAgLTEyMDgsNyArMTIwOCw3IEBAIHN0YXRpYyBpbnQgX19pbml0IGF0bWVsX25h
bmRfcHJvYmUoc3RydWN0IGRldmljZV9kICpkZXYpCiAJCWdvdG8gZXJyX25vX2NhcmQ7CiAJfQog
CWVsc2UgewotCSAgICBwZGF0YSA9IGRldi0+cGxhdGZvcm1fZGF0YTsKKwkgICAgbWVtY3B5KGhv
c3QtPmJvYXJkLCBkZXYtPnBsYXRmb3JtX2RhdGEsIHNpemVvZihzdHJ1Y3QgYXRtZWxfbmFuZF9k
YXRhKSk7CiAJfQogCiAJbmFuZF9jaGlwLT5wcml2ID0gaG9zdDsJCS8qIGxpbmsgdGhlIHByaXZh
dGUgZGF0YSBzdHJ1Y3R1cmVzICovCkBAIC0xMjU3LDcgKzEyNTcsNyBAQCBzdGF0aWMgaW50IF9f
aW5pdCBhdG1lbF9uYW5kX3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqZGV2KQogCQl9CiAJfQogCi0J
bmFuZF9jaGlwLT5lY2MubW9kZSA9IE5BTkRfRUNDX1NPRlQ7CisJbmFuZF9jaGlwLT5lY2MubW9k
ZSA9IHBkYXRhLT5lY2NfbW9kZTsKIAogCWlmIChJU19FTkFCTEVEKENPTkZJR19OQU5EX0VDQ19I
VykgJiYKIAkgICAgcGRhdGEtPmVjY19tb2RlID09IE5BTkRfRUNDX0hXKSB7Ci0tIAoxLjcuOS41
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJv
eCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
