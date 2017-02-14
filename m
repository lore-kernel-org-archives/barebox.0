Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cdatV-0004yA-Ft
 for barebox@lists.infradead.org; Tue, 14 Feb 2017 11:03:39 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Tue, 14 Feb 2017 12:03:12 +0100
Message-Id: <20170214110312.16748-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] arm: imx: don't let MACH_SABRELITE select
 HAVE_PBL_MULTI_IMAGES
To: barebox@lists.infradead.org

TUFDSF9TQUJSRUxJVEUgaXMgb25seSBzZWxlY3RhYmxlIGlmIElNWF9NVUxUSV9CT0FSRFMgaXMg
ZW5hYmxlZC4gVGhlIGxhdHRlcgphbHJlYWR5IHNlbGVjdHMgSEFWRV9QQkxfTVVMVElfSU1BR0VT
LgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5n
dXRyb25peC5kZT4KLS0tCiBhcmNoL2FybS9tYWNoLWlteC9LY29uZmlnIHwgMSAtCiAxIGZpbGUg
Y2hhbmdlZCwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtaW14L0tj
b25maWcgYi9hcmNoL2FybS9tYWNoLWlteC9LY29uZmlnCmluZGV4IGY4M2FlZGMwYjlmYS4uMzZk
MTEwNzU4ZjdkIDEwMDY0NAotLS0gYS9hcmNoL2FybS9tYWNoLWlteC9LY29uZmlnCisrKyBiL2Fy
Y2gvYXJtL21hY2gtaW14L0tjb25maWcKQEAgLTMwOSw3ICszMDksNiBAQCBjb25maWcgTUFDSF9U
WDZYCiBjb25maWcgTUFDSF9TQUJSRUxJVEUKIAlib29sICJGcmVlc2NhbGUgaS5NWDYgU2FicmUg
TGl0ZSIKIAlzZWxlY3QgQVJDSF9JTVg2Ci0Jc2VsZWN0IEhBVkVfUEJMX01VTFRJX0lNQUdFUwog
CiBjb25maWcgTUFDSF9TQUJSRVNECiAJYm9vbCAiRnJlZXNjYWxlIGkuTVg2IFNhYnJlU0QiCi0t
IAoyLjExLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
