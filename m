Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bwlLB-0007DU-JB
 for barebox@lists.infradead.org; Wed, 19 Oct 2016 07:31:10 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed, 19 Oct 2016 09:30:45 +0200
Message-Id: <20161019073045.15747-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] spi: mvebu: make more than one device on a bus work
To: barebox@lists.infradead.org

VGhlIG12ZWJ1IHNvY3Mgc3VwcG9ydCB1cCB0byA4IGNoaXAgc2VsZWN0cy4gTWFrZSB1c2Ugb2Yg
dGhlbS4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdA
cGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9zcGkvbXZlYnVfc3BpLmMgfCAyICstCiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3NwaS9tdmVidV9zcGkuYyBiL2RyaXZlcnMvc3BpL212ZWJ1X3NwaS5jCmluZGV4IGM2
NzllNjRjNDI0OC4uMzM1Nzc0ZDRjNjA5IDEwMDY0NAotLS0gYS9kcml2ZXJzL3NwaS9tdmVidV9z
cGkuYworKysgYi9kcml2ZXJzL3NwaS9tdmVidV9zcGkuYwpAQCAtMzYxLDcgKzM2MSw3IEBAIHN0
YXRpYyBpbnQgbXZlYnVfc3BpX3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqZGV2KQogCW1hc3Rlci0+
YnVzX251bSA9IGRldi0+aWQ7CiAJbWFzdGVyLT5zZXR1cCA9IG12ZWJ1X3NwaV9zZXR1cDsKIAlt
YXN0ZXItPnRyYW5zZmVyID0gbXZlYnVfc3BpX3RyYW5zZmVyOwotCW1hc3Rlci0+bnVtX2NoaXBz
ZWxlY3QgPSAxOworCW1hc3Rlci0+bnVtX2NoaXBzZWxlY3QgPSA4OwogCiAJcmV0ID0gc3BpX3Jl
Z2lzdGVyX21hc3RlcihtYXN0ZXIpOwogCWlmICghcmV0KQotLSAKMi45LjMKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlz
dApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
