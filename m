Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([212.27.42.1])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZfVFX-0001Th-Ft
 for barebox@lists.infradead.org; Fri, 25 Sep 2015 15:49:28 +0000
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Fri, 25 Sep 2015 17:48:47 +0200
Message-Id: <1443196132-573-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 1/6] eukrea-cpuimx25: fix boot
To: barebox@lists.infradead.org
Cc: Florian Vallee <fvallee@eukrea.fr>

RnJvbTogRmxvcmlhbiBWYWxsZWUgPGZ2YWxsZWVAZXVrcmVhLmZyPgoKd2UgbmVlZCB0byBkaXNh
YmxlIHNlY29uZCBTRCBjaGlwIHNlbGVjdCBwcm9wZXJseSBlbHNlIHRoZSBTRFJBTSBzaXplCmRl
dGVjdGlvbiB3aWxsIGRldGVjdCBpdCBidXQgdGhlcmUgaXMgbm8gbWVtb3J5IGNvbm5lY3RlZCBz
byB0aGUgYm9vdAp3aWxsIGZhaWwKClNpZ25lZC1vZmYtYnk6IEVyaWMgQsOpbmFyZCA8ZXJpY0Bl
dWtyZWEuY29tPgpTaWduZWQtb2ZmLWJ5OiBGbG9yaWFuIFZhbGxlZSA8ZnZhbGxlZUBldWtyZWEu
ZnI+Ci0tLQogYXJjaC9hcm0vYm9hcmRzL2V1a3JlYV9jcHVpbXgyNS9mbGFzaC1oZWFkZXIuaW14
Y2ZnIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9h
cmNoL2FybS9ib2FyZHMvZXVrcmVhX2NwdWlteDI1L2ZsYXNoLWhlYWRlci5pbXhjZmcgYi9hcmNo
L2FybS9ib2FyZHMvZXVrcmVhX2NwdWlteDI1L2ZsYXNoLWhlYWRlci5pbXhjZmcKaW5kZXggOGVj
OTA2Ny4uYjBjM2I2OSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9hcmRzL2V1a3JlYV9jcHVpbXgy
NS9mbGFzaC1oZWFkZXIuaW14Y2ZnCisrKyBiL2FyY2gvYXJtL2JvYXJkcy9ldWtyZWFfY3B1aW14
MjUvZmxhc2gtaGVhZGVyLmlteGNmZwpAQCAtMiw2ICsyLDcgQEAgc29jIGlteDI1CiBsb2FkYWRk
ciAweDgwMDAwMDAwCiBkY2RvZnMgMHg0MDAKIAord20gMzIgMHhiODAwMTAwOCAweDAwMDAwMDAw
CiB3bSAzMiAweGI4MDAxMDEwIDB4MDAwMDAwMDQKIHdtIDMyIDB4YjgwMDEwMDAgMHg5MjEwMDAw
MAogd20gOCAweDgwMDAwNDAwIDB4MTIzNDQzMjEKLS0gCjIuNC4zCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFy
ZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYmFyZWJveAo=
