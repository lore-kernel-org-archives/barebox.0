Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x236.google.com ([2a00:1450:400c:c05::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XWm7x-00070p-At
 for barebox@lists.infradead.org; Wed, 24 Sep 2014 12:57:01 +0000
Received: by mail-wi0-f182.google.com with SMTP id d1so7193558wiv.15
 for <barebox@lists.infradead.org>; Wed, 24 Sep 2014 05:56:38 -0700 (PDT)
From: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>
Date: Wed, 24 Sep 2014 14:57:03 +0200
Message-Id: <1411563425-28463-2-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1411563425-28463-1-git-send-email-poggi.raph@gmail.com>
References: <1411563425-28463-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH] i2c: at91: add at91sam9x5 config
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>

U2lnbmVkLW9mZi1ieTogUmFwaGHDq2wgUG9nZ2kgPHBvZ2dpLnJhcGhAZ21haWwuY29tPgotLS0K
IGRyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtYXQ5MS5jIHwgMTkgKysrKysrKysrKysrKystLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1hdDkxLmMgYi9kcml2ZXJzL2kyYy9idXNzZXMv
aTJjLWF0OTEuYwppbmRleCAyY2UzZmEzLi45NDkwODIyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2ky
Yy9idXNzZXMvaTJjLWF0OTEuYworKysgYi9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLWF0OTEuYwpA
QCAtMzQ2LDIzICszNDYsMzIgQEAgc3RhdGljIHN0cnVjdCBhdDkxX3R3aV9wZGF0YSBhdDkxc2Ft
OWcxMF9jb25maWcgPSB7CiAJLmhhc191bnJlX2ZsYWcgPSBmYWxzZSwKIH07CiAKK3N0YXRpYyBz
dHJ1Y3QgYXQ5MV90d2lfcGRhdGEgYXQ5MXNhbTl4NV9jb25maWcgPSB7CisJLmNsa19tYXhfZGl2
ID0gNywKKwkuY2xrX29mZnNldCA9IDQsCisJLmhhc191bnJlX2ZsYWcgPSBmYWxzZSwKK307CisK
IHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlX2lkIGF0OTFfdHdpX2RldnR5cGVzW10gPSB7
CiAJewotCQkubmFtZSA9ICJpMmMtYXQ5MXJtOTIwMCIsCisJCS5uYW1lID0gImF0OTFybTkyMDAt
aTJjIiwKIAkJLmRyaXZlcl9kYXRhID0gKHVuc2lnbmVkIGxvbmcpICZhdDkxcm05MjAwX2NvbmZp
ZywKIAl9LCB7Ci0JCS5uYW1lID0gImkyYy1hdDkxc2FtOTI2MSIsCisJCS5uYW1lID0gImF0OTFz
YW05MjYxLWkyYyIsCiAJCS5kcml2ZXJfZGF0YSA9ICh1bnNpZ25lZCBsb25nKSAmYXQ5MXNhbTky
NjFfY29uZmlnLAogCX0sIHsKLQkJLm5hbWUgPSAiaTJjLWF0OTFzYW05MjYwIiwKKwkJLm5hbWUg
PSAiYXQ5MXNhbTkyNjAtaTJjIiwKIAkJLmRyaXZlcl9kYXRhID0gKHVuc2lnbmVkIGxvbmcpICZh
dDkxc2FtOTI2MF9jb25maWcsCiAJfSwgewotCQkubmFtZSA9ICJpMmMtYXQ5MXNhbTlnMjAiLAor
CQkubmFtZSA9ICJhdDkxc2FtOWcyMC1pMmMiLAogCQkuZHJpdmVyX2RhdGEgPSAodW5zaWduZWQg
bG9uZykgJmF0OTFzYW05ZzIwX2NvbmZpZywKIAl9LCB7Ci0JCS5uYW1lID0gImkyYy1hdDkxc2Ft
OWcxMCIsCisJCS5uYW1lID0gImF0OTFzYW05ZzEwLWkyYyIsCiAJCS5kcml2ZXJfZGF0YSA9ICh1
bnNpZ25lZCBsb25nKSAmYXQ5MXNhbTlnMTBfY29uZmlnLAogCX0sIHsKKwkJLm5hbWUgPSAiYXQ5
MXNhbTl4NS1pMmMiLAorCQkuZHJpdmVyX2RhdGEgPSAodW5zaWduZWQgbG9uZykgJmF0OTFzYW05
eDVfY29uZmlnLAorCX0sIHsKIAkJLyogc2VudGluZWwgKi8KIAl9CiB9OwotLSAKMi4xLjAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1h
aWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
