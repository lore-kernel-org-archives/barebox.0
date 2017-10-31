Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e9eTD-0006J2-0M
 for barebox@lists.infradead.org; Tue, 31 Oct 2017 21:53:16 +0000
References: <20171030103421.15353-1-ejo@pengutronix.de>
 <20171030103421.15353-6-ejo@pengutronix.de>
 <20171030165141.GA4531@ravnborg.org>
From: =?UTF-8?Q?Enrico_J=c3=b6rns?= <ejo@pengutronix.de>
Message-ID: <987c2e54-d4a8-0c93-c927-ffa85dc5bdb7@pengutronix.de>
Date: Tue, 31 Oct 2017 22:52:52 +0100
MIME-Version: 1.0
In-Reply-To: <20171030165141.GA4531@ravnborg.org>
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
Subject: Re: [PATCH 5/5] commands: nv: adjust command help
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

SGkgU2FtLAoKQW0gMzAuMTAuMjAxNyB1bSAxNzo1MSBzY2hyaWViIFNhbSBSYXZuYm9yZzoKPiBI
aSBlbnJpY28KPiAKPiBPbiBNb24sIE9jdCAzMCwgMjAxNyBhdCAxMTozNDoyMUFNICswMTAwLCBF
bnJpY28gSm9ybnMgd3JvdGU6Cj4+IEhlbHAgZGlkIG5vdCBwb2ludCBvdXQgdGhhdCAtciBvcHRp
b24gcmVxdWlyZXMgbiBhcmd1bWVudHMgYW5kIGRpZCBub3QKPj4gbWVudGlvbiBzdXBwb3J0IGZv
ciByZW1vdmluZyB2YXJpYWJsZXMgaW4gaGVscCB0ZXh0Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBF
bnJpY28gSm9ybnMgPGVqb0BwZW5ndXRyb25peC5kZT4KPj4gLS0tCj4gLi4uCj4gCj4+IC1CQVJF
Qk9YX0NNRF9IRUxQX09QVCgiLXIiLCAicmVtb3ZlIG5vbiB2b2xhdGlsZSB2YXJpYWJsZXMiKQo+
PiAtQkFSRUJPWF9DTURfSEVMUF9PUFQoIi1zIiwgIlNhdmUgTlYgdmFyaWFibGVzIikKPj4gK0JB
UkVCT1hfQ01EX0hFTFBfT1BUKCItciBWQVIxIC4uLiIsICJyZW1vdmUgbm9uIHZvbGF0aWxlIHZh
cmlhYmxlKHMpIikKPj4gK0JBUkVCT1hfQ01EX0hFTFBfT1BUKCItc1x0IiwgInNhdmUgTlYgdmFy
aWFibGVzIikKPiAKPiBJdCBsb29rcyBpbmNvbnNpc3RlbnQgdGhhdCB3ZSBpbiBvbmUgbGluZSB1
c2VzICJub24gdm9sYXRpbGUiIGFuZCB0aGUgbmV4dCBsaW5lIHVzZXMgIk5WIi4KPiBJIGtub3cg
aXQgd2FzIGxpa2UgdGhpcyBiZWZvcmUgYnV0IHNpbmNlIHRvdWNoaW5nIHRoaXMgbGluZSBjb25z
aWRlciBjaGFuZ2luZyB0aGlzCj4gZGV0YWlsIHRvby4KCnllcywgdGhpcyBpcyBhIGdvb2QgcG9p
bnQuIEluZGVlZCBpdCBsb29rcyBhIGJpdCBpbmNvbnNpc3RlbnQgYW5kIHNob3VsZApiZSB0b3Vj
aGVkIGJ5IHRoaXMgc2VyaWVzLCB0b28uIEkgd2lsbCB0dXJuIGEgbmV3IHJvdW5kLgoKQmVzdCBy
ZWdhcmRzLCBFbnJpY28KCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCBFbnJpY28gSsO2cm5zICAgICAgICAgICAgICAgIHwKSW5kdXN0cmlhbCBMaW51eCBT
b2x1dGlvbnMgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwK
UGVpbmVyIFN0ci4gNi04LCAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55IHwgUGhvbmU6ICs0OS01
MTIxLTIwNjkxNy01MDgwIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAg
ICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2JhcmVib3gK
