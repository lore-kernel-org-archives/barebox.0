Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eHSBR-0007H4-1R
 for barebox@lists.infradead.org; Wed, 22 Nov 2017 10:23:14 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed, 22 Nov 2017 11:22:27 +0100
Message-Id: <20171122102231.16872-3-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20171122102231.16872-1-u.kleine-koenig@pengutronix.de>
References: <20171122102231.16872-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 2/6] net/e1000: don't use the eeprom word size as timeout to
 get a semaphore
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Tm90aGluZyBpbiB0aGUgZG9jdW1lbnRhdGlvbiBzdWdnZXN0cyB0aGF0IHRoZSB0aW1lIHRvIGdl
dCBhIHNlbWFwaG9yZQpkZXBlbmRzIG9uIHRoZSBzaXplIG9mIHRoZSAob3B0aW9uYWwpIGVlcHJv
bSBhbmQgSSBkb3VidCB0aGVyZSBpcyBhCnJlbGF0aW9uLiBHaXZlbiB0aGF0IDIwNDggaXMgdGhl
IG1heGltYWwgdmFsdWUgZm9yIHdvcmRfc2l6ZSB1bmxlc3MgYQpmbGFzaCBpcyB1c2VkIHRvIGVt
dWxhdGUgdGhlIGVlcHJvbSwgcGljayAyMDQ5IGFzIGFsdGVybmF0aXZlIGFyYml0cmFyeQp2YWx1
ZSB0aGF0IHByb2JhYmx5IGRvZXNuJ3QgcmVzdWx0IGluIHJlZ3Jlc3Npb25zLgoKVGhpcyBkcm9w
cyB0aGUgb25seSB1c2VyIG9mIC0+d29yZF9zaXplIG91dHNpZGUgb2YgZWVwcm9tLmMgd2hpY2gg
YWxsb3dzCmVhc2llciByZXN0cnVjdHVyaW5ncyB0aGVyZSBpbiB0aGUgZnV0dXJlLgoKU2lnbmVk
LW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5k
ZT4KLS0tCiBkcml2ZXJzL25ldC9lMTAwMC9tYWluLmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
ZXQvZTEwMDAvbWFpbi5jIGIvZHJpdmVycy9uZXQvZTEwMDAvbWFpbi5jCmluZGV4IDY0OTE2MjMx
MDRjMy4uMDFjOWYzOWEyNWY0IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9lMTAwMC9tYWluLmMK
KysrIGIvZHJpdmVycy9uZXQvZTEwMDAvbWFpbi5jCkBAIC0xNDIsNyArMTQyLDcgQEAgc3RhdGlj
IGludDMyX3QgZTEwMDBfc2V0X3BoeV9tb2RlKHN0cnVjdCBlMTAwMF9odyAqaHcpCiAgKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqLwogc3RhdGljIGludDMyX3QgZTEwMDBfZ2V0X3NvZnR3YXJlX3NlbWFwaG9y
ZShzdHJ1Y3QgZTEwMDBfaHcgKmh3KQogewotCWludDMyX3QgdGltZW91dCA9IGh3LT5lZXByb20u
d29yZF9zaXplICsgMTsKKwlpbnQzMl90IHRpbWVvdXQgPSAyMDQ5OwogCXVpbnQzMl90IHN3c207
CiAKIAlERUJVR0ZVTkMoKTsKQEAgLTIxNCw3ICsyMTQsNyBAQCBzdGF0aWMgaW50MzJfdCBlMTAw
MF9nZXRfaHdfZWVwcm9tX3NlbWFwaG9yZShzdHJ1Y3QgZTEwMDBfaHcgKmh3KQogCX0KIAogCS8q
IEdldCB0aGUgRlcgc2VtYXBob3JlLiAqLwotCXRpbWVvdXQgPSBody0+ZWVwcm9tLndvcmRfc2l6
ZSArIDE7CisJdGltZW91dCA9IDIwNDk7CiAJd2hpbGUgKHRpbWVvdXQpIHsKIAkJc3dzbSA9IGUx
MDAwX3JlYWRfcmVnKGh3LCBFMTAwMF9TV1NNKTsKIAkJc3dzbSB8PSBFMTAwMF9TV1NNX1NXRVNN
Qkk7Ci0tIAoyLjExLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
