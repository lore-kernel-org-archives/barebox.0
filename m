Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from stcim.de ([2a01:4f8:120:63a3::2])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e9yvx-0003Nt-FX
 for barebox@lists.infradead.org; Wed, 01 Nov 2017 19:44:20 +0000
Date: Wed, 1 Nov 2017 20:43:51 +0100
From: Stefan Lengfeld <contact@stefanchrist.eu>
Message-ID: <20171101194351.GA476@sill.h.stcim.de>
References: <20171030103421.15353-1-ejo@pengutronix.de>
 <20171030103421.15353-2-ejo@pengutronix.de>
 <20171031175125.GA620@sill.h.stcim.de>
 <646f066b-7219-aec3-7d65-e1b687a40cb4@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <646f066b-7219-aec3-7d65-e1b687a40cb4@pengutronix.de>
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
Subject: Re: [PATCH 1/5] commands: nv: fail with verbose message if invoked
 without args
To: Enrico =?utf-8?B?SsO2cm5z?= <ejo@pengutronix.de>
Cc: barebox@lists.infradead.org

SGkgRW5yaWNvLAoKT24gVHVlLCBPY3QgMzEsIDIwMTcgYXQgMTA6NDc6NDNQTSArMDEwMCwgRW5y
aWNvIErDtnJucyB3cm90ZToKPiBIaSBMZW5nZmVsZCwKPiAKPiBBbSAzMS4xMC4yMDE3IHVtIDE4
OjUxIHNjaHJpZWIgU3RlZmFuIExlbmdmZWxkOgo+ID4gSGkgSm9ybnMsCj4gPiAKPiA+IE9uIE1v
biwgT2N0IDMwLCAyMDE3IGF0IDExOjM0OjE3QU0gKzAxMDAsIEVucmljbyBKb3JucyB3cm90ZToK
PiA+PiBTaWduZWQtb2ZmLWJ5OiBFbnJpY28gSm9ybnMgPGVqb0BwZW5ndXRyb25peC5kZT4KPiA+
PiAtLS0KPiA+PiAgY29tbWFuZHMvbnYuYyB8IDEgKwo+ID4+ICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKykKPiA+Pgo+ID4+IGRpZmYgLS1naXQgYS9jb21tYW5kcy9udi5jIGIvY29tbWFu
ZHMvbnYuYwo+ID4+IGluZGV4IDM3Y2RiOTY2NDcuLjFjNTUxNGRkMzIgMTAwNjQ0Cj4gPj4gLS0t
IGEvY29tbWFuZHMvbnYuYwo+ID4+ICsrKyBiL2NvbW1hbmRzL252LmMKPiA+PiBAQCAtNTYsNiAr
NTYsNyBAQCBzdGF0aWMgaW50IGRvX252KGludCBhcmdjLCBjaGFyICphcmd2W10pCj4gPj4gICAg
ICAgYXJndiArPSBvcHRpbmQ7Cj4gPj4KPiA+PiAgICAgICBpZiAoYXJnYyA8IDEpCj4gPj4gKyAg
ICAgICAgICAgICBwcmludGYoIkludmFsaWQgdXNhZ2U6IE1pc3NpbmcgYXJndW1lbnQiKTsKPiA+
PiAgICAgICAgICAgICAgIHJldHVybiBDT01NQU5EX0VSUk9SX1VTQUdFOwo+ID4gCj4gPiBNaXNz
aW5nIGN1cmx5IGJyYWNrZXRzIGZvciBpZiBjbGF1c2UuIEluZGVudGF0aW9uIGRvZXMgbm90IG1h
dHRlciBpbiBDCj4gPiBhcyBpdCBkb2VzIGluIGZvciBleGFtcGxlIHB5dGhvbi4gTm93IHRoZSBm
dW5jdGlvbiByZXR1cm5zIGFsd2F5cwo+ID4gJ0NPTU1BTkRfRVJST1JfVVNBR0UnLgo+IAo+IG91
aCwgeW91IGFyZSByaWdodCwgbXVzdCBoYXZlIGxvc3QgdGhlbSB3aGlsZSBtZXJnaW5nIHRoZSBw
YXRjaGVzIHRvbwo+IHF1aWNrbHkuCj4gQnV0IEkgdHJpZWQgbXkgYmVzdCB0byBoaWRlIGl0LCBk
aWRuJ3QgST8KCjxqb2tlPgpZZWFoLiBNYXliZSB3ZSBzaG91bGQgc3RhcnQgYSB3b3JraW5nIGdy
b3VwOiBIb3cgdG8gaGlkZSBub24tb2J2aW91cwpmdW5jdGlvbmFsaXR5IGluIG9idmlvdXMgbG9v
a2luZyBwYXRjaGVzIGFuZCBpbnZpdGUgdGhlICdnb3RvIGZhaWw7JwpndXlzIGZyb20gYXBwbGUu
Cjwvam9rZT4KClJlY2VudHMgdmVyc2lvbiBvZiBnY2MgKD49NikgaGF2ZSBhIGNvbXBpbGVyIHdh
cm5pbmcKJy1XbWlzbGVhZGluZy1pbmRlbnRhdGlvbicgdG8gY2F0Y2ggdGhlc2VzIGVycm9ycy4g
WzFdIAoKS2luZCByZWdhcmRzCglTdGVmYW4KClsxXSBodHRwczovL3d3dy5waG9yb25peC5jb20v
c2Nhbi5waHA/cGFnZT1uZXdzX2l0ZW0mcHg9R0NDNi1NaXNsZWFkaW5nLUluZGVudGF0aW9uCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1h
aWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
