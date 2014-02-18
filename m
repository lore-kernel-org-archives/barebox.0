Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFi34-0005A7-Pd
 for barebox@lists.infradead.org; Tue, 18 Feb 2014 10:37:11 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Tue, 18 Feb 2014 11:36:15 +0100
Message-Id: <1392719775-16886-6-git-send-email-u.kleine-koenig@pengutronix.de>
In-Reply-To: <1392719775-16886-1-git-send-email-u.kleine-koenig@pengutronix.de>
References: <1392719775-16886-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 5/5] ARM: pca100: convert to devfs_append_partition
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4KLS0tCiBhcmNoL2FybS9ib2FyZHMvcGh5Y2FyZC1pLk1YMjcvcGNhMTAwLmMgfCA1
ICsrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2JvYXJkcy9waHljYXJkLWkuTVgyNy9wY2ExMDAuYyBiL2Fy
Y2gvYXJtL2JvYXJkcy9waHljYXJkLWkuTVgyNy9wY2ExMDAuYwppbmRleCAyZmYxYjc5MzI5MWMu
LmIyMTFlZjU2MzUzMiAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9hcmRzL3BoeWNhcmQtaS5NWDI3
L3BjYTEwMC5jCisrKyBiL2FyY2gvYXJtL2JvYXJkcy9waHljYXJkLWkuTVgyNy9wY2ExMDAuYwpA
QCAtMTc5LDYgKzE3OSw3IEBAIHN0YXRpYyBpbnQgcGNhMTAwX2RldmljZXNfaW5pdCh2b2lkKQog
ewogCWludCBpOwogCXN0cnVjdCBkZXZpY2VfZCAqbmFuZDsKKwlsb2ZmX3Qgb2Zmc2V0ID0gMDsK
IAogCXVuc2lnbmVkIGludCBtb2RlW10gPSB7CiAJCVBEMF9BSU5fRkVDX1RYRDAsCkBAIC0yODcs
MTAgKzI4OCwxMCBAQCBzdGF0aWMgaW50IHBjYTEwMF9kZXZpY2VzX2luaXQodm9pZCkKICNlbmRp
ZgogCiAJbmFuZCA9IGdldF9kZXZpY2VfYnlfbmFtZSgibmFuZDAiKTsKLQlkZXZmc19hZGRfcGFy
dGl0aW9uKCJuYW5kMCIsIDB4MDAwMDAsIDB4NDAwMDAsIERFVkZTX1BBUlRJVElPTl9GSVhFRCwg
InNlbGZfcmF3Iik7CisJZGV2ZnNfYXBwZW5kX3BhcnRpdGlvbigibmFuZDAiLCAmb2Zmc2V0LCAw
eDQwMDAwLCBERVZGU19QQVJUSVRJT05fRklYRUQsICJzZWxmX3JhdyIpOwogCWRldl9hZGRfYmJf
ZGV2KCJzZWxmX3JhdyIsICJzZWxmMCIpOwogCi0JZGV2ZnNfYWRkX3BhcnRpdGlvbigibmFuZDAi
LCAweDQwMDAwLCAweDIwMDAwLCBERVZGU19QQVJUSVRJT05fRklYRUQsICJlbnZfcmF3Iik7CisJ
ZGV2ZnNfYXBwZW5kX3BhcnRpdGlvbigibmFuZDAiLCAmb2Zmc2V0LCAweDIwMDAwLCBERVZGU19Q
QVJUSVRJT05fRklYRUQsICJlbnZfcmF3Iik7CiAJZGV2X2FkZF9iYl9kZXYoImVudl9yYXciLCAi
ZW52MCIpOwogCiAJYXJtbGludXhfc2V0X2FyY2hpdGVjdHVyZSgyMTQ5KTsKLS0gCjEuOC41LjMK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94
IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
