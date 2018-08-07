Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fn2rd-0001aK-6i
 for barebox@lists.infradead.org; Tue, 07 Aug 2018 14:21:38 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Tue,  7 Aug 2018 16:21:16 +0200
Message-Id: <20180807142116.26093-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] ARM: phytec-som-am335x: make autoenable actually usable
To: barebox@lists.infradead.org
Cc: Daniel Schultz <d.schultz@phytec.de>

SVNfRU5BQkxFRCBoYXMgdG8gYmUgcGFzc2VkIHRoZSBmdWxsIHN5bWJvbCBuYW1lIGluY2x1ZGlu
ZyB0aGUgQ09ORklHXwpwcmVmaXguIE90aGVyd2lzZSBJU19FTkFCTEVEIGV2YWx1YXRlcyB0byAw
LgoKRml4ZXM6IDI4NzdlMDhmOWUxYSAoIkFSTTogcGh5dGVjLXNvbS1hbTMzNXg6IEFkZCBhdXRv
ZW5hYmxlIikKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5p
Z0BwZW5ndXRyb25peC5kZT4KLS0KQ2M6IERhbmllbCBTY2h1bHR6IDxkLnNjaHVsdHpAcGh5dGVj
LmRlPgotLS0KIGFyY2gvYXJtL2JvYXJkcy9waHl0ZWMtc29tLWFtMzM1eC9ib2FyZC5jIHwgMiAr
LQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvYXJjaC9hcm0vYm9hcmRzL3BoeXRlYy1zb20tYW0zMzV4L2JvYXJkLmMgYi9hcmNoL2Fy
bS9ib2FyZHMvcGh5dGVjLXNvbS1hbTMzNXgvYm9hcmQuYwppbmRleCAwZTliZjVmZGVmODguLjhj
MjRmMmIzMzI0OSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9hcmRzL3BoeXRlYy1zb20tYW0zMzV4
L2JvYXJkLmMKKysrIGIvYXJjaC9hcm0vYm9hcmRzL3BoeXRlYy1zb20tYW0zMzV4L2JvYXJkLmMK
QEAgLTEzNSw3ICsxMzUsNyBAQCBzdGF0aWMgaW50IHBoeXNvbV9kZXZpY2VzX2luaXQodm9pZCkK
IAkJCX0KIAl9CiAKLQlpZiAoSVNfRU5BQkxFRChQSFlURUNfU09NX0FNMzM1WF9PRl9BVVRPRU5B
QkxFKSkgeworCWlmIChJU19FTkFCTEVEKENPTkZJR19QSFlURUNfU09NX0FNMzM1WF9PRl9BVVRP
RU5BQkxFKSkgewogCQkvKiBFbmFibGUgTkFORCAqLwogCQlvZl9hdXRvZW5hYmxlX2RldmljZV9i
eV9wYXRoKCIvb2NwL2dwbWNANTAwMDAwMDAiKTsKIAkJLyogRW5hYmxlIGVNTUMgKi8KLS0gCjIu
MTguMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJh
cmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
