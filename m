Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x230.google.com ([2a00:1450:400c:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X7kXq-0001e5-Hd
 for barebox@lists.infradead.org; Thu, 17 Jul 2014 12:12:18 +0000
Received: by mail-we0-f176.google.com with SMTP id q58so2696817wes.35
 for <barebox@lists.infradead.org>; Thu, 17 Jul 2014 05:11:55 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Thu, 17 Jul 2014 14:12:21 +0200
Message-Id: <1405599141-5992-4-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1405599141-5992-1-git-send-email-poggi.raph@gmail.com>
References: <1405599141-5992-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH 3/3 v2] mtd: atmel_nand: enable PMECC for 8k page nand
To: barebox@lists.infradead.org
Cc: Raphael Poggi <poggi.raph@gmail.com>

RW5hYmxlIHRoZSBQTUVDQyB0byBzdXBwb3J0IDhrIHBhZ2UuCgpTaWduZWQtb2ZmLWJ5OiBSYXBo
YcOrbCBQb2dnaSA8cG9nZ2kucmFwaEBnbWFpbC5jb20+CkFja2VkLWJ5OiBCbyBTaGVuIDx2b2lj
ZS5zaGVuQGF0bWVsLmNvbT4KLS0tCiBkcml2ZXJzL210ZC9uYW5kL2F0bWVsX25hbmQuYyB8ICAg
IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9tdGQvbmFuZC9hdG1lbF9uYW5kLmMgYi9kcml2ZXJzL210ZC9uYW5kL2F0bWVsX25hbmQuYwpp
bmRleCAxY2U3ZDRkLi4zMzdlMjI1IDEwMDY0NAotLS0gYS9kcml2ZXJzL210ZC9uYW5kL2F0bWVs
X25hbmQuYworKysgYi9kcml2ZXJzL210ZC9uYW5kL2F0bWVsX25hbmQuYwpAQCAtNzk2LDYgKzc5
Niw3IEBAIHN0YXRpYyBpbnQgX19pbml0IGF0bWVsX3BtZWNjX25hbmRfaW5pdF9wYXJhbXMoc3Ry
dWN0IGRldmljZV9kICpkZXYsCiAJc3dpdGNoIChtdGQtPndyaXRlc2l6ZSkgewogCWNhc2UgMjA0
ODoKIAljYXNlIDQwOTY6CisJY2FzZSA4MTkyOgogCQlob3N0LT5wbWVjY19kZWdyZWUgPSAoc2Vj
dG9yX3NpemUgPT0gNTEyKSA/CiAJCQkJCVBNRUNDX0dGX0RJTUVOU0lPTl8xMyA6IFBNRUNDX0dG
X0RJTUVOU0lPTl8xNDsKIAkJaG9zdC0+cG1lY2NfY3dfbGVuID0gKDEgPDwgaG9zdC0+cG1lY2Nf
ZGVncmVlKSAtIDE7Ci0tIAoxLjcuOS41CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFy
ZWJveAo=
