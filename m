Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eeIO8-0003BQ-8T
 for barebox@lists.infradead.org; Wed, 24 Jan 2018 10:34:41 +0000
Received: from weser.hi.pengutronix.de ([2001:67c:670:100:fa0f:41ff:fe58:4010])
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1eeINt-0003bo-61
 for barebox@lists.infradead.org; Wed, 24 Jan 2018 11:34:25 +0100
Message-ID: <1516790065.6411.0.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 24 Jan 2018 11:34:25 +0100
In-Reply-To: <20180123144129.26630-1-l.stach@pengutronix.de>
References: <20180123144129.26630-1-l.stach@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH] net/e1000: init eeprom word size if only iNVM is found
To: barebox@lists.infradead.org

UGxlYXNlIGRyb3AgdGhpcyBwYXRjaC4gSXQgc2VlbXMgdGhlcmUgYXJlIHNvbWUgbW9yZSBpc3N1
ZXMgd2l0aCB0aGUKaU5WTSBzdXBwb3J0IHRoYXQgSSdtIGN1cnJlbnRseSBkaWdnaW5nIGludG8u
CgpBbSBEaWVuc3RhZywgZGVuIDIzLjAxLjIwMTgsIDE1OjQxICswMTAwIHNjaHJpZWIgTHVjYXMg
U3RhY2g6Cj4gVGhlIGNvbW1pdCByZW1vdmluZyB0aGUgaU5WTSBlbnVtIHR5cGUgZGlkbid0IG1h
a2Ugc3VyZSB0aGF0IHRoZSBjb2RlCj4gcGF0aAo+IGluaXRpYWxpemluZyB0aGUgd29yZCBzaXpl
IGlzIGFsc28gZXhlY3V0ZWQgd2hlbiBvbmx5IHRoZSBpTlZNIGlzCj4gcHJlc2VudC4KPiBUaGlz
IGxlYWRzIHRvIGZhaWxlZCByZWFkcywgYXMgdGhlIHJlYWQgZnVuY3Rpb24gd2lsbCBjaGVjayB0
aGUgd29yZAo+IHNpemUuCj4gCj4gRml4ZXM6IDc2MWJlZDEzYWJjYiAobmV0L2UxMDAwOiBwcm92
aWRlIGFjY2VzcyB0byBpTlZNIGV2ZW4gaWYgYQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGZsYXNoIGlzIHByZXNlbnQpCj4gU2lnbmVkLW9mZi1ieTogTHVjYXMg
U3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+Cj4gLS0tCj4gwqBkcml2ZXJzL25ldC9lMTAw
MC9lZXByb20uYyB8IDMgKystCj4gwqAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2UxMDAwL2VlcHJvbS5j
IGIvZHJpdmVycy9uZXQvZTEwMDAvZWVwcm9tLmMKPiBpbmRleCA3NDhkOGFmZTc5MjIuLmJmMDhh
Yzg3ZmRiYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9lMTAwMC9lZXByb20uYwo+ICsrKyBi
L2RyaXZlcnMvbmV0L2UxMDAwL2VlcHJvbS5jCj4gQEAgLTUwNiw3ICs1MDYsOCBAQCBpbnQzMl90
IGUxMDAwX2luaXRfZWVwcm9tX3BhcmFtcyhzdHJ1Y3QgZTEwMDBfaHcKPiAqaHcpCj4gwqAJCWJy
ZWFrOwo+IMKgCX0KPiDCoAo+IC0JaWYgKGVlcHJvbS0+dHlwZSA9PSBlMTAwMF9lZXByb21fc3Bp
KSB7Cj4gKwkvKiBTUEkgb3IgaU5WTSAqLwo+ICsJaWYgKCFlZXByb20tPndvcmRfc2l6ZSkgewo+
IMKgCQkvKiBlZXByb21fc2l6ZSB3aWxsIGJlIGFuIGVudW0gWzAuLjhdIHRoYXQgbWFwcwo+IMKg
CQnCoCogdG8gZWVwcm9tIHNpemVzIDEyOEIgdG8KPiDCoAkJwqAqIDMyS0IgKGluY3JlbWVudGVk
IGJ5IHBvd2VycyBvZiAyKS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
