Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WpazH-0002vv-Uo
 for barebox@lists.infradead.org; Wed, 28 May 2014 10:21:36 +0000
Received: by mail-lb0-f174.google.com with SMTP id n15so5704256lbi.19
 for <barebox@lists.infradead.org>; Wed, 28 May 2014 03:21:12 -0700 (PDT)
Date: Wed, 28 May 2014 14:32:29 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140528143229.d5f41058f68d590b8e13e1f5@gmail.com>
In-Reply-To: <201405280923.30797.jbe@pengutronix.de>
References: <20140525135819.ebfd62810f698e8f13dbf558@gmail.com>
 <CAOngqVU9N6Y1yR9A2NW4LRWJN8HeWti+ErMW6OxOjpJxDc74rQ@mail.gmail.com>
 <20140527180411.9c1c650b8e9d19fdcec7614d@gmail.com>
 <201405280923.30797.jbe@pengutronix.de>
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
Subject: Re: [RFC] [WIP] incorporate picotcp into barebox: a small demo
To: Juergen Borleis <jbe@pengutronix.de>
Cc: Kristof Roelants <kristof.roelants@tass.be>, barebox@lists.infradead.org, Daniele Lacamera <daniele.lacamera@tass.be>, Daniele Lacamera <mlists@danielinux.net>, Sam Van Den Berge <sam.van.den.berge@tass.be>

T24gV2VkLCAyOCBNYXkgMjAxNCAwOToyMzozMCArMDIwMApKdWVyZ2VuIEJvcmxlaXMgPGpiZUBw
ZW5ndXRyb25peC5kZT4gd3JvdGU6Cgo+IEhpIEFudG9ueSwKPiAKPiBPbiBUdWVzZGF5IDI3IE1h
eSAyMDE0IDE2OjA0OjExIEFudG9ueSBQYXZsb3Ygd3JvdGU6Cj4gPiBbLi4uXQo+ID4gSWYgeW91
IHVzZSAjaWZkZWY6Cj4gPgo+ID4gwqAgwqAgwqAgwqAgI2lmZGVmIENPTkZJR19ERUJVR19GUwo+
ID4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgZXJyID0gdGVncmFfZHNpX2RlYnVnZnNfaW5pdChk
c2ksIHRlZ3JhLT5kcm0tPnByaW1hcnkpOwo+ID4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgaWYg
KGVyciA8IDApCj4gPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBkZXZfZXJy
KGRzaS0+ZGV2LCAiZGVidWdmcyBzZXR1cCBmYWlsZWQ6ICVkXG4iLCBlcnIpOwo+ID4gwqAgwqAg
wqAgwqAgI2VuZGlmIAo+ID4gwqAgwqAKPiA+IHRoZW4geW91IGdldCBqdXQgdGhlIHNhbWUgcmVz
dWx0IGJ1dCB3aXRob3V0IGNoZWNraW5nIHRoZSBjb2RlIHVuZGVyICNpZmRlZgo+ID4gQ09ORklH
X0RFQlVHX0ZTLgo+IAo+IEEgc3ludGF4IGNoZWNrIGlzIGFsd2F5cyBkb25lIGJ5IHRoZSBwcmUt
cHJvY2Vzc29yLiBTbywgdGhlIGNvZGUgYmV0d2VlbiB0aGUKClllcywgdGhlIEMgcHJlLXByb2Nl
c3NvciBjaGVja3MgdGhlIHN5bnRheCBmb3IgaW5wdXQsIGJ1dCBvbmx5IHRoZSBDIHByZS1wcm9j
ZXNvciBkaXJlY3RpdmUgc3ludGF4IQpCdXQgaGVyZSBJIG1lYW4gZXhhY3RseSBDIGNvZGUgY2hl
Y2tpbmcuCgo+ICNpZmRlZi8jZW5kaWYgbXVzdCBiZSB2YWxpZCBDIGNvZGUgb3IgYmUgY29tbWVu
dGVkIG91dC4KPiBCdXQgdGhlcmUgaXMgbm8gZnVydGhlciBjaGVjaywgYmVjYXVzZSB0aGUgbGlu
ZXMgYmV0d2VlbiB0aGUgI2lmZGVmLyNlbmRpZiBhcmUKPiBuZXZlciBzZWVuIGJ5IHRoZSBjb21w
aWxlci4KPiAKClRoYXQncyBleGFjdGx5IHdoYXQgSSBtZWFuISBFLmcuCgphbnRvbnlAZG9jZTp+
JCBjYXQgPiB0ZXN0LmMgPDxFT0Y7CmludCBtYWluKCkKewojaWZkZWYgU09NRV9VTkRFRklORURf
TUFDUk8KICAgICAgICBmb28gYmFyOwogICAgICAgINGE0YMg0LHQsNGAOwojZW5kaWYKCXJldHVy
biAwOwp9CkVPRgphbnRvbnlAZG9jZTp+JCBnY2MgdGVzdC5jIAphbnRvbnlAZG9jZTp+JCAuL2Eu
b3V0IAphbnRvbnlAZG9jZTp+JCAuL2Eub3V0IAphbnRvbnlAZG9jZTp+JCBlY2hvICQKMAoKLS3C
oApCZXN0IHJlZ2FyZHMsCsKgIEFudG9ueSBQYXZsb3YKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2JhcmVib3gK
