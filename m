Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STK2z-0006dO-Ba
 for barebox@lists.infradead.org; Sat, 12 May 2012 21:40:17 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Sat, 12 May 2012 23:40:12 +0200
Message-Id: <1336858812-23098-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] defaultenv: don't overwrite  in config
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

VGhpcyBwYXRjaCBwcm9vdmVkIHRvIGJlIHVzZWZ1bCB3aGlsZSB3b3JraW5nIHdpdGggYSBjb2xs
ZWFndWUgb24gYSBzaW5nbGUKbWFjaGluZS4gSXQgYWxsb3dzIHRvIHN3aXRjaCB0aGUgdXNlciB3
aXRob3V0IGVkaXRpbmcgL2Vudi9jb25maWcgYnkKanVzdCBpc3N1aW5nOgoKCWV4cG9ydCB1c2Vy
PW1lCgouIE5vdGUsIGluIGJhc2ggdGhpcyBjb25zdHJ1Y3QgKGkuZS4gYW4gaWYgd2l0aG91dCBi
b2R5KSBiYWlscyBvdXQgd2l0aDoKCglTeW50YXggZXJyb3I6ICJmaSIgdW5leHBlY3RlZAoKYnV0
IGluIGh1c2ggaXQgc2VlbXMgdG8gZG8gdGhlIHJpZ2h0IHRoaW5nLgoKU2lnbmVkLW9mZi1ieTog
VXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBk
ZWZhdWx0ZW52L2NvbmZpZyB8ICAgIDQgKysrLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RlZmF1bHRlbnYvY29uZmlnIGIvZGVm
YXVsdGVudi9jb25maWcKaW5kZXggM2U0YzJlZS4uN2I2MWQyOSAxMDA2NDQKLS0tIGEvZGVmYXVs
dGVudi9jb25maWcKKysrIGIvZGVmYXVsdGVudi9jb25maWcKQEAgLTEsNyArMSw5IEBACiAjIS9i
aW4vc2gKIAogaG9zdG5hbWU9RklYTUUKLSN1c2VyPQoraWYgWyAteiAiJHVzZXIiIF07IHRoZW4K
KyMJdXNlcj0KK2ZpCiAKICMgRW50ZXIgTUFDIGFkZHJlc3MgaGVyZSBpZiBub3QgcmV0cmlldmVk
IGF1dG9tYXRpY2FsbHkKICNldGgwLmV0aGFkZHI9ZGU6YWQ6YmU6ZWY6MDA6MDAKLS0gCjEuNy4x
MAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVi
b3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
