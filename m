Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bkU4H-0001Ql-Cg
 for barebox@lists.infradead.org; Thu, 15 Sep 2016 10:38:58 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu, 15 Sep 2016 12:38:15 +0200
Message-Id: <1473935897-9252-3-git-send-email-u.kleine-koenig@pengutronix.de>
In-Reply-To: <1473935897-9252-1-git-send-email-u.kleine-koenig@pengutronix.de>
References: <1473935897-9252-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: mvebu_defconfig: enable all machines, AEABI,
 nand and net driver
To: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

U2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4KLS0tCiBhcmNoL2FybS9jb25maWdzL212ZWJ1X2RlZmNvbmZpZyB8IDQgKysrKwog
MSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Nv
bmZpZ3MvbXZlYnVfZGVmY29uZmlnIGIvYXJjaC9hcm0vY29uZmlncy9tdmVidV9kZWZjb25maWcK
aW5kZXggZmFhZWIxZGU4NDc2Li45OTk4Y2U0MmQ2YjAgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Nv
bmZpZ3MvbXZlYnVfZGVmY29uZmlnCisrKyBiL2FyY2gvYXJtL2NvbmZpZ3MvbXZlYnVfZGVmY29u
ZmlnCkBAIC02LDcgKzYsOSBAQCBDT05GSUdfTUFDSF9NQVJWRUxMX0FSTUFEQV9YUF9HUD15CiBD
T05GSUdfTUFDSF9QTEFUSE9NRV9PUEVOQkxPQ0tTX0FYMz15CiBDT05GSUdfTUFDSF9TT0xJRFJV
Tl9DVUJPWD15CiBDT05GSUdfTUFDSF9HTE9CQUxTQ0FMRV9HVVJVUExVRz15CitDT05GSUdfTUFD
SF9QTEFUSE9NRV9PUEVOQkxPQ0tTX0E2PXkKIENPTkZJR19NQUNIX1VTSV9UT1BLSUNLPXkKK0NP
TkZJR19BRUFCST15CiBDT05GSUdfQVJNX09QVElNWkVEX1NUUklOR19GVU5DVElPTlM9eQogQ09O
RklHX1RFWFRfQkFTRT0weDAKIENPTkZJR19NQUxMT0NfU0laRT0weDAKQEAgLTkwLDYgKzkyLDcg
QEAgQ09ORklHX05FVD15CiBDT05GSUdfT0ZERVZJQ0U9eQogQ09ORklHX09GX0JBUkVCT1hfRFJJ
VkVSUz15CiBDT05GSUdfRFJJVkVSX1NFUklBTF9OUzE2NTUwPXkKK0NPTkZJR19EUklWRVJfTkVU
X01WTkVUQT15CiBDT05GSUdfRFJJVkVSX05FVF9PUklPTj15CiBDT05GSUdfTUFSVkVMTF9QSFk9
eQogQ09ORklHX0RSSVZFUl9TUElfR1BJTz15CkBAIC0xMDAsNiArMTAzLDcgQEAgQ09ORklHX01U
RD15CiBDT05GSUdfTVREX00yNVA4MD15CiBDT05GSUdfTkFORD15CiBDT05GSUdfTkFORF9PUklP
Tj15CitDT05GSUdfTkFORF9NUlZMX05GQz15CiBDT05GSUdfRElTS19BSENJPXkKIENPTkZJR19V
U0JfSE9TVD15CiBDT05GSUdfVVNCX0VIQ0k9eQotLSAKMi44LjEKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJl
Ym94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9iYXJlYm94Cg==
