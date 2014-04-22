Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WcY29-0001XC-KN
 for barebox@lists.infradead.org; Tue, 22 Apr 2014 10:34:38 +0000
Date: Tue, 22 Apr 2014 12:34:13 +0200 (CEST)
From: Rolf Evers-Fischer <embedded24@evers-fischer.de>
Message-ID: <1125368747.180228.1398162853697.open-xchange@email.1und1.de>
In-Reply-To: <1398155200.5085.6.camel@weser.hi.pengutronix.de>
References: <832723417.563292.1397561282646.open-xchange@email.1und1.de>
 <1397662552.5070.12.camel@weser.hi.pengutronix.de>
 <20140416200232.GT5969@pengutronix.de>
 <1398093878.5899.1.camel@antimon.intern.lynxeye.de.Speedport_W_504V_Typ_A>
 <1195890232.163334.1398150513811.open-xchange@email.1und1.de>
 <1398155200.5085.6.camel@weser.hi.pengutronix.de>
MIME-Version: 1.0
Reply-To: Rolf Evers-Fischer <embedded24@evers-fischer.de>
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
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org, =?UTF-8?Q?=22=5C=5C=5C=22Uwe=5C=22_Kleine-K=C3=B6nig=22?= <u.kleine-koenig@pengutronix.de>

Cj4gTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+IGhhdCBhbSAyMi4gQXByaWwg
MjAxNCB1bSAxMDoyNgo+IGdlc2NocmllYmVuOgo+Cj4KPiBBbSBEaWVuc3RhZywgZGVuIDIyLjA0
LjIwMTQsIDA5OjA4ICswMjAwIHNjaHJpZWIgUm9sZiBFdmVycy1GaXNjaGVyOgo+ID4gSGkgTHVr
YXN6IGFuZCBVd2UsCj4gPgo+ID4gPiBMdWNhcyBTdGFjaCA8ZGV2QGx5bnhleWUuZGU+IGhhdCBh
bSAyMS4gQXByaWwgMjAxNCB1bSAxNzoyNCBnZXNjaHJpZWJlbjoKPiA+ID4KPiA+ID4KPiA+ID4g
QW0gTWl0dHdvY2gsIGRlbiAxNi4wNC4yMDE0LCAyMjowMiArMDIwMCBzY2hyaWViIFV3ZSBLbGVp
bmUtS8O2bmlnOgo+ID4gPiA+IE9uIFdlZCwgQXByIDE2LCAyMDE0IGF0IDA1OjM1OjUyUE0gKzAy
MDAsIEx1Y2FzIFN0YWNoIHdyb3RlOgo+ID4gPiA+ID4gSGkgUm9sZiwKPiA+ID4gPiA+Cj4gPiA+
ID4gPiBBbSBEaWVuc3RhZywgZGVuIDE1LjA0LjIwMTQsIDEzOjI4ICswMjAwIHNjaHJpZWIgUm9s
ZiBFdmVycy1GaXNjaGVyOgo+ID4gPiA+ID4gPiBEZWFyIGFsbCwKPiA+ID4gPiA+ID4gYWZ0ZXIg
dXBkYXRlIHRvIGJhcmVib3gtMjAxNC4wMy4wLCB0aGUga2VybmVsIG9uIG15IGJlYWdsZWJvbmUt
d2hpdGUKPiA+ID4gPiA+ID4gZG9lc24ndAo+ID4gPiA+ID4gPiBzdGFydCBhbnltb3JlLgo+ID4g
PiA+ID4gPiBUaGUgbGFzdCBsaW5lLCB3aGljaCBhcHBlYXJzLCBpcyAiYm9vdGluZyBrZXJuZWwg
d2l0aCBkZXZpY2V0cmVlIi4KPiA+ID4gPiA+ID4gSSBkaXNjb3ZlcmVkIHRoYXQgdGhlIHByb2Js
ZW0gaXMgY2F1c2VkIGJ5IHRoZSBjb21taXQgWzFdLiBXaGVuIEkKPiA+ID4gPiA+ID4gcmV2ZXJ0
Cj4gPiA+ID4gPiA+IHRoaXMKPiA+ID4gPiA+ID4gY29tbWl0LCBldmVyeXRoaW5nIHdvcmtzIGZp
bmUuCj4gWy4uLl0KPiA+ID4KPiA+IFRoYW5rIHlvdSBmb3IgeW91ciBzdWdnZXN0aW9ucy4KPiA+
IElmIHlvdSBkb24ndCBtaW5kLCBJJ2xsIHdhaXQgZm9yIGFub3RoZXIgcGF0Y2ggYW5kIHRyeSBi
b290aW5nIGEgekltYWdlCj4gPiAod2l0aAo+ID4gYW5kIHdpdGhvdXQgdGhlIHVwY29taW5nIHBh
dGNoKS4KPiA+Cj4gQ291bGQgeW91IHBsZWFzZSB0ZXN0IHRoZSBwYXRjaCBmaXJzdD8gSSdsbCBj
b21lIHVwIHdpdGggYSBjb21wbGV0ZQo+IHNlcmllcyB0byBmaXggc29tZSBtb3JlIGlzc3VlcyBJ
J3ZlIHNwb3R0ZWQgaGVyZSwgYnV0IEkgd291bGQgbGlrZSB0bwo+IGtub3cgaWYgdGhpcyBhcHBy
b2FjaCBpcyBvayB0byBmaXggdGhlIGlzc3VlIG9uIEJlYWdsZUJvbmUgd2hpdGUuCj4KCk5vIHBy
b2JsZW0uCkZpcnN0IEkndmUgdXNlZCB6SW1hZ2UgKGluc3RlYWQgb2YgdUltYWdlKSB3aXRob3V0
IHlvdXIgcGF0Y2g6IFRoZSBrZXJuZWwKc3RhcnRlZC4KQWRkaXRpb25hbGx5IEkndmUgYXBwbGll
ZCB5b3VyIHBhdGNoOiBUaGUga2VybmVsIHN0YXJ0ZWQgYXMgd2VsbC4KTm93IEkgdHJpZWQgdGhl
IHN1Z2dlc3RlZCBjaGFuZ2UgZnJvbSBVd2UoKik6IFRoZSBrZXJuZWwgc3RhcnRlZCBhcyB3ZWxs
LgoKU28sIGl0IHNlZW1zIHRoYXQgeW91ciBwYXRjaCBkb2Vzbid0IGJyZWFrIHRoZSBrZXJuZWwg
c3RhcnQuCgpCZXN0IHJlZ2FyZHMsCsKgUm9sZgoKKCopIEkgYXNzdW1lIHRoYXQgSSBoYWQgdG8g
dXNlICdoZWFkZXItPnN0YXJ0JyBpbnN0ZWFkIG9mIHRoZSB1bmtub3duIHBhcmFtZXRlcgonc3Rh
cnQnLgrCoCDCoCBPdGhlcndpc2UgSSB3YXMgbm90IGFibGUgdG8gY29tcGlsZSB0aGUgYmFyZWJv
eC4KCgoKPiBUaGFua3MsCj4gTHVjYXMKPgo+IC0tCj4gUGVuZ3V0cm9uaXggZS5LLiB8IEx1Y2Fz
IFN0YWNoIHwKPiBJbmR1c3RyaWFsIExpbnV4IFNvbHV0aW9ucyB8IGh0dHA6Ly93d3cucGVuZ3V0
cm9uaXguZGUvIHwKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
