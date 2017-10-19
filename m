Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e54hy-0000XA-TX
 for barebox@lists.infradead.org; Thu, 19 Oct 2017 06:53:38 +0000
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
Date: Thu, 19 Oct 2017 08:53:08 +0200
Message-Id: <20171019065308.2507-3-u.oelmann@pengutronix.de>
In-Reply-To: <20171019065308.2507-1-u.oelmann@pengutronix.de>
References: <20171019065308.2507-1-u.oelmann@pengutronix.de>
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
Subject: [PATCH 2/2] commands: spi: do not restrict spi's data to be
 hex-formatted
To: Barebox List <barebox@lists.infradead.org>

Q2hhbmdlIHRoZSBkZWZhdWx0IGJhc2UgdG8gMCB0byBiZSBjb25zaXN0ZW50IHdpdGggdGhlICJt
dyIgY29tbWFuZCBhbmQKcGFydGljdWxhcmx5IGFsbG93IGRlY2ltYWxseSBmb3JtYXR0ZWQgZGF0
YS4KClRoZSBwcmljZSB0byBwYXkgaXMgbmVlZGluZyB0aGUgdXN1YWwgcHJlZml4ICIweCIgZm9y
IGVhY2ggaGV4LWZvcm1hdHRlZCBudW1iZXIuCgpTaWduZWQtb2ZmLWJ5OiBVbHJpY2ggw5ZsbWFu
biA8dS5vZWxtYW5uQHBlbmd1dHJvbml4LmRlPgpBY2tlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcg
PHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBjb21tYW5kcy9zcGkuYyB8IDIg
Ky0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL2NvbW1hbmRzL3NwaS5jIGIvY29tbWFuZHMvc3BpLmMKaW5kZXggNjYwM2IzNGI2NzNj
Li43YmYxOTNiMGJiYmIgMTAwNjQ0Ci0tLSBhL2NvbW1hbmRzL3NwaS5jCisrKyBiL2NvbW1hbmRz
L3NwaS5jCkBAIC04NCw3ICs4NCw3IEBAIHN0YXRpYyBpbnQgZG9fc3BpKGludCBhcmdjLCBjaGFy
ICphcmd2W10pCiAJcnhfYnVmID0geG1hbGxvYyhyZWFkKTsKIAogCWZvciAoaSA9IDA7IGkgPCBj
b3VudDsgaSsrKQotCQl0eF9idWZbaV0gPSAodTgpIHNpbXBsZV9zdHJ0b2woYXJndltvcHRpbmQg
KyBpXSwgTlVMTCwgMTYpOworCQl0eF9idWZbaV0gPSAodTgpIHNpbXBsZV9zdHJ0b2woYXJndltv
cHRpbmQgKyBpXSwgTlVMTCwgMCk7CiAKIAlyZXQgPSBzcGlfd3JpdGVfdGhlbl9yZWFkKCZzcGks
IHR4X2J1ZiwgY291bnQsIHJ4X2J1ZiwgcmVhZCk7CiAJaWYgKHJldCkKLS0gCjIuMTEuMAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFp
bGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
