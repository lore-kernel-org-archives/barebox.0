Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXtK3-0001L8-VO
 for barebox@lists.infradead.org; Mon, 03 Jun 2019 20:12:49 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Mon,  3 Jun 2019 22:12:43 +0200
Message-Id: <20190603201243.25070-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] serial_ns16550: readd support for mvebu armada 38x
To: barebox@lists.infradead.org

VGhlIGFybWFkYSAzOHggZGV2aWNlIHRyZWUgdHJhZGl0aW9uYWxseSB1c2VkICJzbnBzLGR3LWFw
Yi11YXJ0IiBhcwpjb21wYXRpYmxlIGZvciB0aGUgaW50ZXJuYWwgVUFSVHMuIFRoaXMgd2FzIGNo
YW5nZWQgaW4gTGludXggYnkgY29tbWl0CmI3NjM5YjBiMTVkZCAoInNlcmlhbDogODI1MF9kdzog
TGltaXQgZHc4MjUwX3R4X3dhaXRfZW1wdHkgcXVpcmsgdG8KYXJtYWRhLTM4eCBkZXZpY2VzIikg
d2hpY2ggd2FzIGltcG9ydGVkIGludG8gYmFyZWJveCBpbiBlNDA2N2I3NWZiNmMKKCJkdHM6IHVw
ZGF0ZSB0byB2NC4xOC1yYzEiKSB0byAibWFydmVsbCxhcm1hZGEtMzh4LXVhcnQiLgoKVGVhY2gg
dGhlIGRyaXZlciBhYm91dCB0aGUgbmV3IGNvbXBhdGlibGUgdG8gbWFrZSB0aGUgY29uc29sZSB3
b3JrCmFnYWluLgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtv
ZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2ZXJzL3NlcmlhbC9zZXJpYWxfbnMxNjU1MC5j
IHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3NlcmlhbC9zZXJpYWxfbnMxNjU1MC5jIGIvZHJpdmVycy9zZXJpYWwvc2VyaWFsX25z
MTY1NTAuYwppbmRleCBjY2QwODJlNDk1YzMuLjRjODRkMjdiZGMxYiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9zZXJpYWwvc2VyaWFsX25zMTY1NTAuYworKysgYi9kcml2ZXJzL3NlcmlhbC9zZXJpYWxf
bnMxNjU1MC5jCkBAIC01MjUsNiArNTI1LDkgQEAgc3RhdGljIHN0cnVjdCBvZl9kZXZpY2VfaWQg
bnMxNjU1MF9zZXJpYWxfZHRfaWRzW10gPSB7CiAJfSwgewogCQkuY29tcGF0aWJsZSA9ICJzbnBz
LGR3LWFwYi11YXJ0IiwKIAkJLmRhdGEgPSAmbnMxNjU1MF9kcnZkYXRhLAorCX0sIHsKKwkJLmNv
bXBhdGlibGUgPSAibWFydmVsbCxhcm1hZGEtMzh4LXVhcnQiLAorCQkuZGF0YSA9ICZuczE2NTUw
X2RydmRhdGEsCiAJfSwKICNpZiBJU19FTkFCTEVEKENPTkZJR19BUkNIX09NQVApCiAJewotLSAK
Mi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
YmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
