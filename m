Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([212.27.42.3])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGcBN-0005xV-HE
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 23:38:02 +0000
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Thu, 29 Jan 2015 00:37:34 +0100
Message-Id: <1422488254-18414-3-git-send-email-eric@eukrea.com>
In-Reply-To: <1422488254-18414-1-git-send-email-eric@eukrea.com>
References: <1422488254-18414-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 3/3] dhcp: fix request packet's seconds elapsed
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

aXQncyBkb25lIGluIHRoZSBkaXNjb3ZlciBwYWNrZXQgc28gbGV0J3MgZG8gaXQgYWxzbyBpbiB0
aGUgcmVxdWVzdCBwYWNrZXQuCgpTaWduZWQtb2ZmLWJ5OiBFcmljIELDqW5hcmQgPGVyaWNAZXVr
cmVhLmNvbT4KLS0tCiBuZXQvZGhjcC5jIHwgMyArLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9uZXQvZGhjcC5jIGIvbmV0L2Ro
Y3AuYwppbmRleCA3ZjliOTg5Li4yYjQ2OWE5IDEwMDY0NAotLS0gYS9uZXQvZGhjcC5jCisrKyBi
L25ldC9kaGNwLmMKQEAgLTU1Nyw4ICs1NTcsNyBAQCBzdGF0aWMgdm9pZCBkaGNwX3NlbmRfcmVx
dWVzdF9wYWNrZXQoc3RydWN0IGJvb3RwICpicF9vZmZlcikKIAlicC0+YnBfaHR5cGUgPSBIV1Rf
RVRIRVI7CiAJYnAtPmJwX2hsZW4gPSBIV0xfRVRIRVI7CiAJYnAtPmJwX2hvcHMgPSAwOwotCS8q
IEZJWE1FIHdoYXQgaXMgdGhpcz8gKi8KLS8vCWJwLT5icF9zZWNzID0gaHRvbnMoZ2V0X3RpbWVy
KDApIC8gQ0ZHX0haKTsKKwlicC0+YnBfc2VjcyA9IGh0b25zKGdldF90aW1lX25zKCkgPj4gMzAp
OwogCiAJLyoKIAkgKiBSRkMzMDQ2IHJlcXVpcmVzIFJlbGF5IEFnZW50cyB0byBkaXNjYXJkIHBh
Y2tldHMgd2l0aAotLSAKMS45LjMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94
Cg==
