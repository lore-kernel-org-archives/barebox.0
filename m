Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cEueZ-0000g9-Af
 for barebox@lists.infradead.org; Thu, 08 Dec 2016 09:06:13 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu,  8 Dec 2016 10:05:42 +0100
Message-Id: <20161208090544.10267-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 1/3] spi: mvebu: fix register macros for Armada 370/XP clock
 divider
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4KLS0tCiBkcml2ZXJzL3NwaS9tdmVidV9zcGkuYyB8IDQgKystLQogMSBmaWxlIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL3NwaS9tdmVidV9zcGkuYyBiL2RyaXZlcnMvc3BpL212ZWJ1X3NwaS5jCmluZGV4IDg4N2E2
YTcyMTM0Yy4uZDYxYTU0NWYwMmQ4IDEwMDY0NAotLS0gYS9kcml2ZXJzL3NwaS9tdmVidV9zcGku
YworKysgYi9kcml2ZXJzL3NwaS9tdmVidV9zcGkuYwpAQCAtNTAsOCArNTAsOCBAQAogI2RlZmlu
ZSAgSUZfVFJBTlNGRVJfMkJZVEUJQklUKDUpCiAjZGVmaW5lICBJRl9DTEtfUFJFU0NBTEVfUE9X
MglCSVQoNCkKICNkZWZpbmUgIElGX0NMS19QUkVTQ0FMRSh4KQkoKHgpICYgMHgwZikKLSNkZWZp
bmUgIElGX0NMS19QUkVfUFJFU0NBTEUoeCkJKCgoKCh4KSAmIDB4YykgPDwgMSkgfCAoKHgpICYg
MHgxKSkgPDwgNCkKLSNkZWZpbmUgIElGX0NMS19QUkVTQ0FMRV9NQVNLCShJRl9DTEtfUFJFU0NB
TEUoNykgfCBJRl9DTEtfUFJFX1BSRVNDQUxFKDcpKQorI2RlZmluZSAgSUZfQ0xLX1BSRV9QUkVT
Q0FMRSh4KQkoKCgoKHgpICYgMHg2KSA8PCA2KSB8ICgoeCkgJiAweDEpKSA8PCA0KQorI2RlZmlu
ZSAgSUZfQ0xLX1BSRVNDQUxFX01BU0sJKElGX0NMS19QUkVTQ0FMRSgweGYpIHwgSUZfQ0xLX1BS
RV9QUkVTQ0FMRSg3KSkKICNkZWZpbmUgU1BJX0RBVEFfT1VUCQkweDA4CiAjZGVmaW5lIFNQSV9E
QVRBX0lOCQkweDBjCiAjZGVmaW5lIFNQSV9JTlRfQ0FVU0UJCTB4MTAKLS0gCjIuMTAuMgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFp
bGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
