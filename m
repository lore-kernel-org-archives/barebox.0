Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P6OR8-0008Vf-1m
	for barebox@lists.infradead.org; Thu, 14 Oct 2010 14:05:39 +0000
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Thu, 14 Oct 2010 16:05:23 +0200
Message-Id: <1287065132-20372-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 01/10] imx/clocksource: enable GPT1 before using it on CPUIMX25
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogYXJjaC9h
cm0vbWFjaC1pbXgvY2xvY2tzb3VyY2UuYyB8ICAgIDQgKysrKwogMSBmaWxlcyBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKyksIDAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFj
aC1pbXgvY2xvY2tzb3VyY2UuYyBiL2FyY2gvYXJtL21hY2gtaW14L2Nsb2Nrc291cmNlLmMKaW5k
ZXggYTE2NjAzOC4uYjNhNzRiMyAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vbWFjaC1pbXgvY2xvY2tz
b3VyY2UuYworKysgYi9hcmNoL2FybS9tYWNoLWlteC9jbG9ja3NvdXJjZS5jCkBAIC03Niw2ICs3
NiwxMCBAQCBzdGF0aWMgaW50IGNsb2Nrc291cmNlX2luaXQgKHZvaWQpCiAJUENDUjAgfD0gUEND
UjBfR1BUMV9FTjsKIAlQQ0NSMSB8PSBQQ0NSMV9QRVJDTEsxX0VOOwogI2VuZGlmCisjaWZkZWYg
Q09ORklHX0FSQ0hfSU1YMjUKKwl3cml0ZWwocmVhZGwoSU1YX0NDTV9CQVNFICsgQ0NNX0NHQ1Ix
KSB8ICgxIDw8IDE5KSwKKwkJSU1YX0NDTV9CQVNFICsgQ0NNX0NHQ1IxKTsKKyNlbmRpZgogCiAJ
Zm9yIChpID0gMDsgaSA8IDEwMDsgaSsrKQogCQl3cml0ZWwoMCwgdGltZXJfYmFzZSArIEdQVF9U
Q1RMKTsgLyogV2UgaGF2ZSBubyB1ZGVsYXkgYnkgbm93ICovCi0tIAoxLjcuMC40CgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5n
IGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
