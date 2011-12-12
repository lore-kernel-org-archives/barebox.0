Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RaDHs-00074g-Tk
 for barebox@lists.infradead.org; Mon, 12 Dec 2011 21:19:53 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id AAB59A6411
 for <barebox@lists.infradead.org>; Mon, 12 Dec 2011 22:19:47 +0100 (CET)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Mon, 12 Dec 2011 22:19:36 +0100
Message-Id: <1323724779-370-3-git-send-email-eric@eukrea.com>
In-Reply-To: <1323724779-370-1-git-send-email-eric@eukrea.com>
References: <1323724779-370-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 3/6] CPUIMX51: add ARM errata and enable L2 cache
To: barebox@lists.infradead.org

LSBhZGQgQVJNIGVycmF0YSBJRCAjNDY4NDE0Ci0gZW5hYmxlIEwyIGNhY2hlIHRvIGdldCBiZXR0
ZXIgcGVyZm9ybWFuY2VzCgpTaWduZWQtb2ZmLWJ5OiBFcmljIELDqW5hcmQgPGVyaWNAZXVrcmVh
LmNvbT4KLS0tCiBhcmNoL2FybS9ib2FyZHMvZXVrcmVhX2NwdWlteDUxL2xvd2xldmVsX2luaXQu
UyB8ICAgMTAgKysrKysrKysrKwogMSBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAw
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2JvYXJkcy9ldWtyZWFfY3B1aW14
NTEvbG93bGV2ZWxfaW5pdC5TIGIvYXJjaC9hcm0vYm9hcmRzL2V1a3JlYV9jcHVpbXg1MS9sb3ds
ZXZlbF9pbml0LlMKaW5kZXggMGIzNzI2Zi4uZWUzYjBmYyAxMDA2NDQKLS0tIGEvYXJjaC9hcm0v
Ym9hcmRzL2V1a3JlYV9jcHVpbXg1MS9sb3dsZXZlbF9pbml0LlMKKysrIGIvYXJjaC9hcm0vYm9h
cmRzL2V1a3JlYV9jcHVpbXg1MS9sb3dsZXZlbF9pbml0LlMKQEAgLTU3LDYgKzU3LDExIEBACiBi
b2FyZF9pbml0X2xvd2xldmVsOgogCW1vdiAgICAgcjEwLCBscgogCisJLyogQVJNIGVycmF0YSBJ
RCAjNDY4NDE0ICovCisJbXJjIDE1LCAwLCByMSwgYzEsIGMwLCAxCisJb3JyIHIxLCByMSwgIygx
IDw8IDUpICAgIC8qIGVuYWJsZSBMMU5FT04gYml0ICovCisJbWNyIDE1LCAwLCByMSwgYzEsIGMw
LCAxCisKIAkvKiBleHBsaWNpdGx5IGRpc2FibGUgTDIgY2FjaGUgKi8KIAltcmMgMTUsIDAsIHIw
LCBjMSwgYzAsIDEKIAliaWMgcjAsIHIwLCAjMHgyCkBAIC03Niw2ICs4MSwxMSBAQCBib2FyZF9p
bml0X2xvd2xldmVsOgogCiAJbWNyIDE1LCAxLCByMCwgYzksIGMwLCAyCiAKKwkvKiBlbmFibGUg
TDIgY2FjaGUgKi8KKwltcmMgMTUsIDAsIHIwLCBjMSwgYzAsIDEKKwlvcnIgcjAsIHIwLCAjMgor
CW1jciAxNSwgMCwgcjAsIGMxLCBjMCwgMQorCiAJbGRyIHIwLCA9TVg1MV9DQ01fQkFTRV9BRERS
CiAKIAkvKiBHYXRlIG9mIGNsb2NrcyB0byB0aGUgcGVyaXBoZXJhbHMgZmlyc3QgKi8KLS0gCjEu
Ny42LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpi
YXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
