Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22c.google.com ([2a00:1450:4013:c01::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VeIQL-0004fn-Ii
 for barebox@lists.infradead.org; Thu, 07 Nov 2013 05:46:34 +0000
Received: by mail-ea0-f172.google.com with SMTP id r16so31320ead.31
 for <barebox@lists.infradead.org>; Wed, 06 Nov 2013 21:46:11 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Thu,  7 Nov 2013 06:46:00 +0100
Message-Id: <1383803160-3901-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH] dlmalloc: fix compiler warning
To: barebox@lists.infradead.org

VGhpcyBwYXRjaCBmaXggYSBjb21waWxlciB3YXJuaW5nIHdoaWxlIGJ1aWxkaW5nIHNhbmRib3gg
YmFyZWJveCB3aXRoCmdjYyB2ZXJzaW9uIDQuOC4yLgoKY29tbW9uL2RsbWFsbG9jLmM6IEluIGZ1
bmN0aW9uIOKAmGJhcmVib3hfY2FsbG9j4oCZOgpjb21tb24vZGxtYWxsb2MuYzoxNzU2OjI6IHdh
cm5pbmc6IElTTyBDOTAgZm9yYmlkcyBtaXhlZCBkZWNsYXJhdGlvbnMKYW5kIGNvZGUgWy1XZGVj
bGFyYXRpb24tYWZ0ZXItc3RhdGVtZW50XQogIHZvaWQgKm1lbSA9IG1hbGxvYyhzeik7CiAgXgoK
U2lnbmVkLW9mZi1ieTogQWxleGFuZGVyIEFyaW5nIDxhbGV4LmFyaW5nQGdtYWlsLmNvbT4KLS0t
CiBjb21tb24vZGxtYWxsb2MuYyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvY29tbW9uL2RsbWFsbG9jLmMgYi9jb21t
b24vZGxtYWxsb2MuYwppbmRleCBiNDM0MWZlLi5mMDA2MjA2IDEwMDY0NAotLS0gYS9jb21tb24v
ZGxtYWxsb2MuYworKysgYi9jb21tb24vZGxtYWxsb2MuYwpAQCAtMTc0NSw2ICsxNzQ1LDcgQEAg
dm9pZCAqY2FsbG9jKHNpemVfdCBuLCBzaXplX3QgZWxlbV9zaXplKQogCW1jaHVua3B0ciBwOwog
CUlOVEVSTkFMX1NJWkVfVCBjc3o7CiAJSU5URVJOQUxfU0laRV9UIHN6ID0gbiAqIGVsZW1fc2l6
ZTsKKwl2b2lkICptZW07CiAKIAkvKiBjaGVjayBpZiBleHBhbmRfdG9wIGNhbGxlZCwgaW4gd2hp
Y2ggY2FzZSBkb24ndCBuZWVkIHRvIGNsZWFyICovCiAJbWNodW5rcHRyIG9sZHRvcCA9IHRvcDsK
QEAgLTE3NTMsNyArMTc1NCw3IEBAIHZvaWQgKmNhbGxvYyhzaXplX3Qgbiwgc2l6ZV90IGVsZW1f
c2l6ZSkKIAlpZiAoKGxvbmcpbiA8IDApCiAJCXJldHVybiBOVUxMOwogCi0Jdm9pZCAqbWVtID0g
bWFsbG9jKHN6KTsKKwltZW0gPSBtYWxsb2Moc3opOwogCiAJaWYgKCFtZW0pCiAJCXJldHVybiBO
VUxMOwotLSAKMS44LjQuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
