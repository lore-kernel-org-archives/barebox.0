Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X7hPi-000409-Gs
 for barebox@lists.infradead.org; Thu, 17 Jul 2014 08:51:42 +0000
Received: by mail-wi0-f174.google.com with SMTP id d1so7519843wiv.13
 for <barebox@lists.infradead.org>; Thu, 17 Jul 2014 01:51:15 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Thu, 17 Jul 2014 10:51:35 +0200
Message-Id: <1405587095-23308-3-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1405587095-23308-1-git-send-email-poggi.raph@gmail.com>
References: <1405587095-23308-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH 2/2] mtd: atmel_nand: enable PMECC for 8k page nand
To: barebox@lists.infradead.org
Cc: Raphael Poggi <poggi.raph@gmail.com>

RW5hYmxlIHRoZSBQTUVDQyB0byBzdXBwb3J0IDhrIHBhZ2UuCgpTaWduZWQtb2ZmLWJ5OiBSYXBo
YcOrbCBQb2dnaSA8cG9nZ2kucmFwaEBnbWFpbC5jb20+Ci0tLQogZHJpdmVycy9tdGQvbmFuZC9h
dG1lbF9uYW5kLmMgfCAgICA0ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL2F0bWVsX25hbmQu
YyBiL2RyaXZlcnMvbXRkL25hbmQvYXRtZWxfbmFuZC5jCmluZGV4IGZhNTk2ZWQuLjM2YTYwZDEg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbXRkL25hbmQvYXRtZWxfbmFuZC5jCisrKyBiL2RyaXZlcnMv
bXRkL25hbmQvYXRtZWxfbmFuZC5jCkBAIC03OTYsNyArNzk2LDkgQEAgc3RhdGljIGludCBfX2lu
aXQgYXRtZWxfcG1lY2NfbmFuZF9pbml0X3BhcmFtcyhzdHJ1Y3QgZGV2aWNlX2QgKmRldiwKIAlz
d2l0Y2ggKG10ZC0+d3JpdGVzaXplKSB7CiAJY2FzZSAyMDQ4OgogCWNhc2UgNDA5NjoKLQkJaG9z
dC0+cG1lY2NfZGVncmVlID0gUE1FQ0NfR0ZfRElNRU5TSU9OXzEzOworCWNhc2UgODE5MjoKKwkJ
aG9zdC0+cG1lY2NfZGVncmVlID0gKHNlY3Rvcl9zaXplID09IDUxMikgPworCQkJCQlQTUVDQ19H
Rl9ESU1FTlNJT05fMTMgOiBQTUVDQ19HRl9ESU1FTlNJT05fMTQ7CiAJCWhvc3QtPnBtZWNjX2N3
X2xlbiA9ICgxIDw8IGhvc3QtPnBtZWNjX2RlZ3JlZSkgLSAxOwogCQlob3N0LT5wbWVjY19zZWN0
b3JfbnVtYmVyID0gbXRkLT53cml0ZXNpemUgLyBzZWN0b3Jfc2l6ZTsKIAkJaG9zdC0+cG1lY2Nf
Ynl0ZXNfcGVyX3NlY3RvciA9IHBtZWNjX2dldF9lY2NfYnl0ZXMoCi0tIAoxLjcuOS41CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWls
aW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
