Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x231.google.com ([2a00:1450:400c:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X7kXm-0001dG-Kf
 for barebox@lists.infradead.org; Thu, 17 Jul 2014 12:12:15 +0000
Received: by mail-we0-f177.google.com with SMTP id w62so2674224wes.22
 for <barebox@lists.infradead.org>; Thu, 17 Jul 2014 05:11:52 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Thu, 17 Jul 2014 14:12:19 +0200
Message-Id: <1405599141-5992-2-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH 1/3 v2] mtd: atmel_nand: increase chip_delay
To: barebox@lists.infradead.org
Cc: Raphael Poggi <poggi.raph@gmail.com>

U29tZSBuYW5kIGxpa2UgTWljcm9uIE1UMjlGMzJHMDhBQkFBQVdQIG5lZWQgbW9yZSB0aGFuIDIw
dXMuCgpTaWduZWQtb2ZmLWJ5OiBSYXBoYcOrbCBQb2dnaSA8cG9nZ2kucmFwaEBnbWFpbC5jb20+
CkFja2VkLWJ5OiBCbyBTaGVuIDx2b2ljZS5zaGVuQGF0bWVsLmNvbT4KLS0tCiBkcml2ZXJzL210
ZC9uYW5kL2F0bWVsX25hbmQuYyB8ICAgIDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL25hbmQvYXRtZWxf
bmFuZC5jIGIvZHJpdmVycy9tdGQvbmFuZC9hdG1lbF9uYW5kLmMKaW5kZXggMzE2MWU4OS4uYTAy
ZjM4ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9tdGQvbmFuZC9hdG1lbF9uYW5kLmMKKysrIGIvZHJp
dmVycy9tdGQvbmFuZC9hdG1lbF9uYW5kLmMKQEAgLTExNjIsNyArMTE2Miw3IEBAIHN0YXRpYyBp
bnQgX19pbml0IGF0bWVsX25hbmRfcHJvYmUoc3RydWN0IGRldmljZV9kICpkZXYpCiAJCW5hbmRf
Y2hpcC0+ZWNjLm1vZGUgPSBOQU5EX0VDQ19IVzsKIAl9CiAKLQluYW5kX2NoaXAtPmNoaXBfZGVs
YXkgPSAyMDsJCS8qIDIwdXMgY29tbWFuZCBkZWxheSB0aW1lICovCisJbmFuZF9jaGlwLT5jaGlw
X2RlbGF5ID0gNDA7CQkvKiA0MHVzIGNvbW1hbmQgZGVsYXkgdGltZSAqLwogCiAJaWYgKElTX0VO
QUJMRUQoQ09ORklHX05BTkRfRUNDX0JDSCkgJiYKIAkJCXBkYXRhLT5lY2NfbW9kZSA9PSBOQU5E
X0VDQ19TT0ZUX0JDSCkgewotLSAKMS43LjkuNQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2JhcmVib3gK
