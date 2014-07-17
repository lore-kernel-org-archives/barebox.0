Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eusmtp01.atmel.com ([212.144.249.242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X7iZs-0007As-80
 for barebox@lists.infradead.org; Thu, 17 Jul 2014 10:06:17 +0000
Message-ID: <53C79FDD.1070901@atmel.com>
Date: Thu, 17 Jul 2014 18:05:17 +0800
From: Bo Shen <voice.shen@atmel.com>
MIME-Version: 1.0
References: <1405587095-23308-1-git-send-email-poggi.raph@gmail.com>
 <1405587095-23308-3-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1405587095-23308-3-git-send-email-poggi.raph@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] mtd: atmel_nand: enable PMECC for 8k page nand
To: Raphael Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

SGkgUmFwaGFlbCwKCk9uIDA3LzE3LzIwMTQgMDQ6NTEgUE0sIFJhcGhhZWwgUG9nZ2kgd3JvdGU6
Cj4gRW5hYmxlIHRoZSBQTUVDQyB0byBzdXBwb3J0IDhrIHBhZ2UuCj4KPiBTaWduZWQtb2ZmLWJ5
OiBSYXBoYcOrbCBQb2dnaSA8cG9nZ2kucmFwaEBnbWFpbC5jb20+CgpBY2tlZC1ieTogQm8gU2hl
biA8dm9pY2Uuc2hlbkBhdG1lbC5jb20+Cgo+IC0tLQo+ICAgZHJpdmVycy9tdGQvbmFuZC9hdG1l
bF9uYW5kLmMgfCAgICA0ICsrKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL2F0bWVsX25h
bmQuYyBiL2RyaXZlcnMvbXRkL25hbmQvYXRtZWxfbmFuZC5jCj4gaW5kZXggZmE1OTZlZC4uMzZh
NjBkMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL210ZC9uYW5kL2F0bWVsX25hbmQuYwo+ICsrKyBi
L2RyaXZlcnMvbXRkL25hbmQvYXRtZWxfbmFuZC5jCj4gQEAgLTc5Niw3ICs3OTYsOSBAQCBzdGF0
aWMgaW50IF9faW5pdCBhdG1lbF9wbWVjY19uYW5kX2luaXRfcGFyYW1zKHN0cnVjdCBkZXZpY2Vf
ZCAqZGV2LAo+ICAgCXN3aXRjaCAobXRkLT53cml0ZXNpemUpIHsKPiAgIAljYXNlIDIwNDg6Cj4g
ICAJY2FzZSA0MDk2Ogo+IC0JCWhvc3QtPnBtZWNjX2RlZ3JlZSA9IFBNRUNDX0dGX0RJTUVOU0lP
Tl8xMzsKPiArCWNhc2UgODE5MjoKPiArCQlob3N0LT5wbWVjY19kZWdyZWUgPSAoc2VjdG9yX3Np
emUgPT0gNTEyKSA/Cj4gKwkJCQkJUE1FQ0NfR0ZfRElNRU5TSU9OXzEzIDogUE1FQ0NfR0ZfRElN
RU5TSU9OXzE0OwoKQWN0dWFsbHksIHRoaXMgaXMgYSBmaXggKyA4SyBwYWdlIHN1cHBvcnQuCklm
IHNvbWUgY29tbWl0IG1lc3NhZ2Ugb3Igc3BsaXQgaW50byB0d28gcGF0Y2hlcyB3aWxsIGJlIGJl
dHRlci4KCj4gICAJCWhvc3QtPnBtZWNjX2N3X2xlbiA9ICgxIDw8IGhvc3QtPnBtZWNjX2RlZ3Jl
ZSkgLSAxOwo+ICAgCQlob3N0LT5wbWVjY19zZWN0b3JfbnVtYmVyID0gbXRkLT53cml0ZXNpemUg
LyBzZWN0b3Jfc2l6ZTsKPiAgIAkJaG9zdC0+cG1lY2NfYnl0ZXNfcGVyX3NlY3RvciA9IHBtZWNj
X2dldF9lY2NfYnl0ZXMoCj4KCkJlc3QgUmVnYXJkcywKQm8gU2hlbgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFy
ZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYmFyZWJveAo=
