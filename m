Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WcW3f-000877-8h
 for barebox@lists.infradead.org; Tue, 22 Apr 2014 08:28:04 +0000
Message-ID: <1398155200.5085.6.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 22 Apr 2014 10:26:40 +0200
In-Reply-To: <1195890232.163334.1398150513811.open-xchange@email.1und1.de>
References: <832723417.563292.1397561282646.open-xchange@email.1und1.de>
 <1397662552.5070.12.camel@weser.hi.pengutronix.de>
 <20140416200232.GT5969@pengutronix.de>
 <1398093878.5899.1.camel@antimon.intern.lynxeye.de.Speedport_W_504V_Typ_A>
 <1195890232.163334.1398150513811.open-xchange@email.1und1.de>
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
Subject: Re: Beaglebone white: Kernel doesn't start with barebox-2014.03.0
To: Rolf Evers-Fischer <embedded24@evers-fischer.de>
Cc: barebox@lists.infradead.org, "\"Uwe =?ISO-8859-1?Q?Kleine-K=F6nig=22?=" <u.kleine-koenig@pengutronix.de>

QW0gRGllbnN0YWcsIGRlbiAyMi4wNC4yMDE0LCAwOTowOCArMDIwMCBzY2hyaWViIFJvbGYgRXZl
cnMtRmlzY2hlcjoKPiBIaSBMdWthc3ogYW5kIFV3ZSwKPiAKPiA+IEx1Y2FzIFN0YWNoIDxkZXZA
bHlueGV5ZS5kZT4gaGF0IGFtIDIxLiBBcHJpbCAyMDE0IHVtIDE3OjI0IGdlc2NocmllYmVuOgo+
ID4KPiA+Cj4gPiBBbSBNaXR0d29jaCwgZGVuIDE2LjA0LjIwMTQsIDIyOjAyICswMjAwIHNjaHJp
ZWIgVXdlIEtsZWluZS1Lw7ZuaWc6Cj4gPiA+IE9uIFdlZCwgQXByIDE2LCAyMDE0IGF0IDA1OjM1
OjUyUE0gKzAyMDAsIEx1Y2FzIFN0YWNoIHdyb3RlOgo+ID4gPiA+IEhpIFJvbGYsCj4gPiA+ID4K
PiA+ID4gPiBBbSBEaWVuc3RhZywgZGVuIDE1LjA0LjIwMTQsIDEzOjI4ICswMjAwIHNjaHJpZWIg
Um9sZiBFdmVycy1GaXNjaGVyOgo+ID4gPiA+ID4gRGVhciBhbGwsCj4gPiA+ID4gPiBhZnRlciB1
cGRhdGUgdG8gYmFyZWJveC0yMDE0LjAzLjAsIHRoZSBrZXJuZWwgb24gbXkgYmVhZ2xlYm9uZS13
aGl0ZQo+ID4gPiA+ID4gZG9lc24ndAo+ID4gPiA+ID4gc3RhcnQgYW55bW9yZS4KPiA+ID4gPiA+
IFRoZSBsYXN0IGxpbmUsIHdoaWNoIGFwcGVhcnMsIGlzICJib290aW5nIGtlcm5lbCB3aXRoIGRl
dmljZXRyZWUiLgo+ID4gPiA+ID4gSSBkaXNjb3ZlcmVkIHRoYXQgdGhlIHByb2JsZW0gaXMgY2F1
c2VkIGJ5IHRoZSBjb21taXQgWzFdLiBXaGVuIEkgcmV2ZXJ0Cj4gPiA+ID4gPiB0aGlzCj4gPiA+
ID4gPiBjb21taXQsIGV2ZXJ5dGhpbmcgd29ya3MgZmluZS4KWy4uLl0KPiA+Cj4gVGhhbmsgeW91
IGZvciB5b3VyIHN1Z2dlc3Rpb25zLgo+IElmIHlvdSBkb24ndCBtaW5kLCBJJ2xsIHdhaXQgZm9y
IGFub3RoZXIgcGF0Y2ggYW5kIHRyeSBib290aW5nIGEgekltYWdlICh3aXRoCj4gYW5kIHdpdGhv
dXQgdGhlIHVwY29taW5nIHBhdGNoKS4KPiAKQ291bGQgeW91IHBsZWFzZSB0ZXN0IHRoZSBwYXRj
aCBmaXJzdD8gSSdsbCBjb21lIHVwIHdpdGggYSBjb21wbGV0ZQpzZXJpZXMgdG8gZml4IHNvbWUg
bW9yZSBpc3N1ZXMgSSd2ZSBzcG90dGVkIGhlcmUsIGJ1dCBJIHdvdWxkIGxpa2UgdG8Ka25vdyBp
ZiB0aGlzIGFwcHJvYWNoIGlzIG9rIHRvIGZpeCB0aGUgaXNzdWUgb24gQmVhZ2xlQm9uZSB3aGl0
ZS4KClRoYW5rcywKTHVjYXMKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgIHwgTHVj
YXMgU3RhY2ggICAgICAgICAgICAgICAgIHwKSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICB8
IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8CgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vYmFyZWJveAo=
