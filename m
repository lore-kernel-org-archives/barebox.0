Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g6uMN-0005Oe-RK
 for barebox@lists.infradead.org; Mon, 01 Oct 2018 09:19:42 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Mon,  1 Oct 2018 11:19:07 +0200
Message-Id: <20181001091907.4475-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] e1000/flash: Increased erase timeout
To: barebox@lists.infradead.org
Cc: Michael Schuhmacher <m.schuhmacher@eckelmann.de>

RnJvbTogTWljaGFlbCBTY2h1aG1hY2hlciA8bS5zY2h1aG1hY2hlckBlY2tlbG1hbm4uZGU+CgpT
ZXJpYWwgZmxhc2ggQWRlc3RvIEFUMjVERjMyMUEgc3BlY2lmaWVzIHRoZSBtYXhpbWFsIGNoaXAg
ZXJhc2UgdGltZSBhcwo0MCBzZWNvbmRzLiBFeHRlbmQgdGltZW91dCBhY2NvcmRpbmdseS4KClNp
Z25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9u
aXguZGU+Ci0tLQogZHJpdmVycy9uZXQvZTEwMDAvZWVwcm9tLmMgfCAyICstCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L25ldC9lMTAwMC9lZXByb20uYyBiL2RyaXZlcnMvbmV0L2UxMDAwL2VlcHJvbS5jCmluZGV4IGRk
YTAyMmUwNTQzNy4uZmZkMzIzMTA2ZmJiIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9lMTAwMC9l
ZXByb20uYworKysgYi9kcml2ZXJzL25ldC9lMTAwMC9lZXByb20uYwpAQCAtODgzLDcgKzg4Myw3
IEBAIHN0YXRpYyBpbnQgZTEwMDBfZmxhc2hfbW9kZV9lcmFzZV9jaHVuayhzdHJ1Y3QgZTEwMDBf
aHcgKmh3LCBsb2ZmX3Qgb2Zmc2V0LAogCXJldCA9IGUxMDAwX3BvbGxfcmVnKGh3LCBFMTAwMF9G
TFNXQ1RMLAogCQkJICAgICBFMTAwMF9GTFNXQ1RMX0RPTkUgfCBFMTAwMF9GTFNXQ1RMX0ZMQlVT
WSwKIAkJCSAgICAgRTEwMDBfRkxTV0NUTF9ET05FLAotCQkJICAgICAxMCAqIFNFQ09ORCk7CisJ
CQkgICAgIDQwICogU0VDT05EKTsKIAlpZiAocmV0IDwgMCkgewogCQlkZXZfZXJyKGh3LT5kZXYs
CiAJCQkiVGltZW91dCB3YWl0aW5nIGZvciBGTFNXQ1RMLkRPTkUgdG8gYmUgc2V0IChlcmFzZSlc
biIpOwotLSAKMi4xOS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
