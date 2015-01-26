Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo68.mail-out.ovh.net ([46.105.58.60])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YFfdg-0002IY-QI
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 09:07:21 +0000
Received: from mail181.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id BAD3CFFAEAE
 for <barebox@lists.infradead.org>; Mon, 26 Jan 2015 10:06:58 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20150126075825.GG12209@pengutronix.de>
Date: Mon, 26 Jan 2015 17:06:23 +0800
Message-Id: <BD26D48A-0198-41DF-BE66-FC41223EF870@jcrosoft.com>
References: <20150125222629.c52501c7d776cabf4317c82f@gmail.com>
 <20150126075825.GG12209@pengutronix.de>
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
Subject: Re: picopng does not support big-endian CPUs
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Cj4gT24gSmFuIDI2LCAyMDE1LCBhdCAzOjU4IFBNLCBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVu
Z3V0cm9uaXguZGU+IHdyb3RlOgo+IAo+IE9uIFN1biwgSmFuIDI1LCAyMDE1IGF0IDEwOjI2OjI5
UE0gKzA0MDAsIEFudG9ueSBQYXZsb3Ygd3JvdGU6Cj4+IEhpIEFsbCEKPj4gCj4+IEN1cnJlbnQg
bGliL2d1aS9waWNvcG5nLmMgaGFzIHByb2JsZW1zIG9uIGJpZy1lbmRpYW4gQ1BVcy4KPj4gCj4+
IEhlcmUgYXJlIHR3byBleGFtcGxlcyBmcm9tIFBOR19yZWFkUG5nSGVhZGVyKCk6Cj4+IAo+PiAJ
aWYgKCoodWludDY0X3QgKikgaW4gIT0gUE5HX1NJR05BVFVSRSkgewo+PiAuLi4KPj4gCWlmICgq
KHVpbnQzMl90ICopICZpblsxMl0gIT0gQ0hVTktfSUhEUikgewo+PiAKPj4gCj4+IFVzaW5nIG1l
bWNtcCBpbiB0aGlzIHNpdHVhdGlvbiBpcyBtdWNoIGJldHRlciwgZS5nLgo+PiAKPj4gKwl1aW50
OF90IHBuZ19zaWduYXR1cmVbOF0gPSB7MTM3LCA4MCwgNzgsIDcxLCAxMywgMTAsIDI2LCAxMH07
Cj4+IC4uLgo+PiArCWlmIChtZW1jbXAoaW4sIHBuZ19zaWduYXR1cmUsIDgpKSB7Cj4+IAo+PiAK
Pj4gKwl1aW50OF90IGNodW5rX2hlYWRlcls0XSA9IHsweDQ5LCAweDQ4LCAweDQ0LCAweDUyfTsK
Pj4gLi4uCj4+ICsJaWYgKG1lbWNtcCgmaW5bMTJdLCBjaHVua19oZWFkZXIsIDQpKSB7Cj4+IAo+
PiAKPj4gQ3VycmVudCBsb2RlcG5nIHdvcmtzIGZpbmUgb24gYmlnLWVuZGlhbiwgYnV0IGNhbiB3
ZSBkaXNhYmxlIHBpY29wbmcKPj4gaW4gS2NvbmZpZyBmb3IgYmlnLWVuZGlhbiBDUFVzPwo+IAo+
IENhbid0IHdlIGp1c3QgZml4IGl0PyBBcmUgdGhlcmUgbW9yZSBkaWZmaWN1bHQgcGxhY2VzIHRo
YW4gdGhlIG9uZXMKPiBhYm92ZT8gSWYgaXQgdHVybnMgb3V0IHRvIGJlIGRpZmZpY3VsdCBJJ20g
ZmluZSB3aXRoIGFkZGluZyBhIGRlcGVuZGVuY3kKPiB0byBDUFVfQklHX0VORElBTi4KPiAKCgpJ
SVJDIHRoZSBjb2RlIHRoaXMgY2FuIGJlIGZpeGVkIGVhc3kgYXMgSSBydW4gdGhpcyBjb2RlIG9u
IGEgbWFjIEc1IGluIHRoZSBwYXN0CgpJ4oCZbGwgdGFrZSBhIGlmIEkgc3RpbGwgaGF2ZSB0aGUg
Y29kZQoKQmVzdCBSZWdhcmRzLApKLgo+IFNhc2NoYQo+IAo+IC0tIAo+IFBlbmd1dHJvbml4IGUu
Sy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8Cj4gSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAgICAgICAgICAgICAgIHwgaHR0cDov
L3d3dy5wZW5ndXRyb25peC5kZS8gIHwKPiBQZWluZXIgU3RyLiA2LTgsIDMxMTM3IEhpbGRlc2hl
aW0sIEdlcm1hbnkgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfAo+IEFtdHNnZXJpY2h0
IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTct
NTU1NSB8CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
YmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
