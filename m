Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cHoQ6-0002bZ-0f
 for barebox@lists.infradead.org; Fri, 16 Dec 2016 09:03:14 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri, 16 Dec 2016 10:02:49 +0100
Message-Id: <20161216090249.24877-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] ARM: mvebu: enable MMU in defconfig
To: barebox@lists.infradead.org

RW5hYmxpbmcgdGhlIE1NVSAoYW5kIHNvIHRoZSBjYWNoZXMpIGdpdmVzIGEgbmljZSBwZXJmb3Jt
YW5jZSBib29zdCwgc28Kb3B0IGluIGZvciBtdmVidV9kZWZjb25maWcuCgpTaWduZWQtb2ZmLWJ5
OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0K
IGFyY2gvYXJtL2NvbmZpZ3MvbXZlYnVfZGVmY29uZmlnIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9jb25maWdzL212ZWJ1X2RlZmNv
bmZpZyBiL2FyY2gvYXJtL2NvbmZpZ3MvbXZlYnVfZGVmY29uZmlnCmluZGV4IDM5ZTdlZjE3OThm
NS4uZGFiM2Q3YTQ1ZTRjIDEwMDY0NAotLS0gYS9hcmNoL2FybS9jb25maWdzL212ZWJ1X2RlZmNv
bmZpZworKysgYi9hcmNoL2FybS9jb25maWdzL212ZWJ1X2RlZmNvbmZpZwpAQCAtMTAsNiArMTAs
NyBAQCBDT05GSUdfTUFDSF9QTEFUSE9NRV9PUEVOQkxPQ0tTX0E2PXkKIENPTkZJR19NQUNIX1VT
SV9UT1BLSUNLPXkKIENPTkZJR19BRUFCST15CiBDT05GSUdfQVJNX09QVElNWkVEX1NUUklOR19G
VU5DVElPTlM9eQorQ09ORklHX01NVT15CiBDT05GSUdfVEVYVF9CQVNFPTB4MAogQ09ORklHX01B
TExPQ19TSVpFPTB4MAogQ09ORklHX01BTExPQ19UTFNGPXkKLS0gCjIuMTAuMgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBs
aXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
