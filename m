Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBsyZ-00004v-O8
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 21:28:45 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri,  7 Feb 2014 22:28:04 +0100
Message-Id: <1391808493-27328-2-git-send-email-u.kleine-koenig@pengutronix.de>
In-Reply-To: <1391808493-27328-1-git-send-email-u.kleine-koenig@pengutronix.de>
References: <1391808493-27328-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH v2 02/11] nfs: fix mount prog version in portmap lookup
To: barebox@lists.infradead.org

V2UncmUgc3BlYWtpbmcgcnBjIG1vdW50IHZlcnNpb24gMiAoaS5lLiB0aGUgc2FtZSB2ZXJzaW9u
IGFzIHRoZQppbXBsZW1lbnRlZCBuZnMgcHJvdG9jb2wpLCBzbyBhbHNvIHNwZWNpZnkgdGhhdCBp
biB0aGUgbG9va3VwLgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5l
LWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCgpOb3RlczoKICAgIG5ldyBpbiB2MgoKIGZzL25m
cy5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvZnMvbmZzLmMgYi9mcy9uZnMuYwppbmRleCA3MTczMjY0MzUxODkuLjY1
ODJiYWU3ZGIzMSAxMDA2NDQKLS0tIGEvZnMvbmZzLmMKKysrIGIvZnMvbmZzLmMKQEAgLTEwMTAs
NyArMTAxMCw3IEBAIHN0YXRpYyBpbnQgbmZzX3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqZGV2KQog
CS8qIE5lZWQgYSBwcml2aWxpZ2VkIHNvdXJjZSBwb3J0ICovCiAJbmV0X3VkcF9iaW5kKG5wcml2
LT5jb24sIDEwMDApOwogCi0JcmV0ID0gcnBjX2xvb2t1cF9yZXEobnByaXYsIFBST0dfTU9VTlQs
IDEpOworCXJldCA9IHJwY19sb29rdXBfcmVxKG5wcml2LCBQUk9HX01PVU5ULCAyKTsKIAlpZiAo
cmV0KSB7CiAJCXByaW50ZigibG9va3VwIG1vdW50IHBvcnQgZmFpbGVkIHdpdGggJWRcbiIsIHJl
dCk7CiAJCWdvdG8gZXJyMjsKLS0gCjEuOC41LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9iYXJlYm94Cg==
