Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cj6dE-0002kz-Ht
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 15:57:42 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed,  1 Mar 2017 16:57:03 +0100
Message-Id: <20170301155703.10374-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] nand-bb: fix writing to the end of a .bb device
To: barebox@lists.infradead.org

QXMgbmFuZF9iYl93cml0ZV9idWYgY2FsbHMgbXRkX3dyaXRlKGJiLT5tdGQsIGN1cl9vZnMsIG5v
dywgLi4uKSB0aGUKbGltaXQgdGhhdCBub3cgc2hvdWxkIGJlIGNoZWNrZWQgYWdhaW5zdCBpcyBi
Yi0+bXRkLT5zaXplIC0gY3VyX29mcy4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmln
IDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9tdGQvbmFuZC9u
YW5kLWJiLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL25hbmQtYmIuYyBiL2RyaXZlcnMv
bXRkL25hbmQvbmFuZC1iYi5jCmluZGV4IDAxNWY4ZGM1MjRmMy4uYTE1MjNjM2M4OTkyIDEwMDY0
NAotLS0gYS9kcml2ZXJzL210ZC9uYW5kL25hbmQtYmIuYworKysgYi9kcml2ZXJzL210ZC9uYW5k
L25hbmQtYmIuYwpAQCAtOTksNyArOTksNyBAQCBzdGF0aWMgaW50IG5hbmRfYmJfd3JpdGVfYnVm
KHN0cnVjdCBuYW5kX2JiICpiYiwgc2l6ZV90IGNvdW50KQogCWxvZmZfdCBjdXJfb2ZzID0gYmIt
Pm9mZnNldCAmIH4oQkJfV1JJVEVCVUZfU0laRSAtIDEpOwogCiAJd2hpbGUgKGNvdW50KSB7Ci0J
CWxvZmZfdCBtYXggPSBiYi0+bXRkLT5zaXplIC0gYmItPm9mZnNldDsKKwkJbG9mZl90IG1heCA9
IGJiLT5tdGQtPnNpemUgLSBjdXJfb2ZzOwogCiAJCWlmIChtYXggPD0gMCkKIAkJCXJldHVybiAt
RU5PU1BDOwotLSAKMi4xMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
