Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e9eOJ-0002GK-UY
 for barebox@lists.infradead.org; Tue, 31 Oct 2017 21:48:14 +0000
References: <20171030103421.15353-1-ejo@pengutronix.de>
 <20171030103421.15353-2-ejo@pengutronix.de>
 <20171031175125.GA620@sill.h.stcim.de>
From: =?UTF-8?Q?Enrico_J=c3=b6rns?= <ejo@pengutronix.de>
Message-ID: <646f066b-7219-aec3-7d65-e1b687a40cb4@pengutronix.de>
Date: Tue, 31 Oct 2017 22:47:43 +0100
MIME-Version: 1.0
In-Reply-To: <20171031175125.GA620@sill.h.stcim.de>
Content-Language: en-GB
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
To: Stefan Lengfeld <contact@stefanchrist.eu>, barebox@lists.infradead.org

SGkgTGVuZ2ZlbGQsCgpBbSAzMS4xMC4yMDE3IHVtIDE4OjUxIHNjaHJpZWIgU3RlZmFuIExlbmdm
ZWxkOgo+IEhpIEpvcm5zLAo+IAo+IE9uIE1vbiwgT2N0IDMwLCAyMDE3IGF0IDExOjM0OjE3QU0g
KzAxMDAsIEVucmljbyBKb3JucyB3cm90ZToKPj4gU2lnbmVkLW9mZi1ieTogRW5yaWNvIEpvcm5z
IDxlam9AcGVuZ3V0cm9uaXguZGU+Cj4+IC0tLQo+PiAgY29tbWFuZHMvbnYuYyB8IDEgKwo+PiAg
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9jb21tYW5k
cy9udi5jIGIvY29tbWFuZHMvbnYuYwo+PiBpbmRleCAzN2NkYjk2NjQ3Li4xYzU1MTRkZDMyIDEw
MDY0NAo+PiAtLS0gYS9jb21tYW5kcy9udi5jCj4+ICsrKyBiL2NvbW1hbmRzL252LmMKPj4gQEAg
LTU2LDYgKzU2LDcgQEAgc3RhdGljIGludCBkb19udihpbnQgYXJnYywgY2hhciAqYXJndltdKQo+
PiAgICAgICBhcmd2ICs9IG9wdGluZDsKPj4KPj4gICAgICAgaWYgKGFyZ2MgPCAxKQo+PiArICAg
ICAgICAgICAgIHByaW50ZigiSW52YWxpZCB1c2FnZTogTWlzc2luZyBhcmd1bWVudCIpOwo+PiAg
ICAgICAgICAgICAgIHJldHVybiBDT01NQU5EX0VSUk9SX1VTQUdFOwo+IAo+IE1pc3NpbmcgY3Vy
bHkgYnJhY2tldHMgZm9yIGlmIGNsYXVzZS4gSW5kZW50YXRpb24gZG9lcyBub3QgbWF0dGVyIGlu
IEMKPiBhcyBpdCBkb2VzIGluIGZvciBleGFtcGxlIHB5dGhvbi4gTm93IHRoZSBmdW5jdGlvbiBy
ZXR1cm5zIGFsd2F5cwo+ICdDT01NQU5EX0VSUk9SX1VTQUdFJy4KCm91aCwgeW91IGFyZSByaWdo
dCwgbXVzdCBoYXZlIGxvc3QgdGhlbSB3aGlsZSBtZXJnaW5nIHRoZSBwYXRjaGVzIHRvbwpxdWlj
a2x5LgpCdXQgSSB0cmllZCBteSBiZXN0IHRvIGhpZGUgaXQsIGRpZG4ndCBJPwoKQmVzdCByZWdh
cmRzLCBFbnJpY28KCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAg
ICAgfCBFbnJpY28gSsO2cm5zICAgICAgICAgICAgICAgIHwKSW5kdXN0cmlhbCBMaW51eCBTb2x1
dGlvbnMgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKUGVp
bmVyIFN0ci4gNi04LCAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55IHwgUGhvbmU6ICs0OS01MTIx
LTIwNjkxNy01MDgwIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAg
IHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2JhcmVib3gK
