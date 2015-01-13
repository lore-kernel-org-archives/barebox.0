Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAxh1-0005fD-RC
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 09:23:21 +0000
Received: from mail94.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 63B561008D33
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 10:22:57 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <1421140377.2939.26.camel@pengutronix.de>
Date: Tue, 13 Jan 2015 17:22:44 +0800
Message-Id: <B88705F7-EC18-46BD-A412-302471F36054@jcrosoft.com>
References: <20150113061940.GA30554@ns203013.ovh.net>
 <1421130070-31704-1-git-send-email-plagnioj@jcrosoft.com>
 <1421130070-31704-2-git-send-email-plagnioj@jcrosoft.com>
 <20150113082546.GC23940@pengutronix.de>
 <80FED513-D72C-4527-A51C-687BF4A89D35@jcrosoft.com>
 <1421140377.2939.26.camel@pengutronix.de>
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
Subject: Re: [PATCH 2/3] defaultenv-2: introduce /env/rc.d
To: =?utf-8?Q?Jan_L=C3=BCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

Cj4gT24gSmFuIDEzLCAyMDE1LCBhdCA1OjEyIFBNLCBKYW4gTMO8YmJlIDxqbHVAcGVuZ3V0cm9u
aXguZGU+IHdyb3RlOgo+IAo+IEhpIEplYW4tQ2hyaXN0b3BoZSwKPiAKPiBPbiBUdWUsIDIwMTUt
MDEtMTMgYXQgMTY6MjkgKzA4MDAsIEplYW4tQ2hyaXN0b3BoZSBQTEFHTklPTC1WSUxMQVJEIHdy
b3RlOgo+PiBhbmQgdGhpcyB3aWxsIGFsbG93IGFsc28gdG8gaGF2ZSB0aGUgc2FtZSBzY3JpcHQg
YXQgZGlmZmVyZW50IG9yZGVyCj4+IGJhc2VkIG9uIHRoZSBib2FyZCByZXF1aXJlbWVudC4KPiAK
PiBTbyB3aXRob3V0IGxpbmtzIHlvdSBzaG91bGQgYmUgYWJsZSB0byB1c2UgJ212JyBpbnN0ZWFk
IG9mICdsbicuCj4gCj4gSWYgdGhpcyBkb2Vzbid0IHdvcmsgZm9yIHlvdXIgY2FzZSwgY291bGQg
eW91IGRlc2NyaWJlIGl0IGluIGEgYml0IG1vcmUKPiBkZXRhaWw/Cgp5ZXMgeW91IGNvdWxkIGRv
IHRoaXMgYnV0IHRoaXMgbWFrZSB1cGRhdGVzIGRpZmZpY3VsdAoKdGhlIGxpbmtzIHlvdSBjYW4g
ZHJvcC9yZW1vdmUgdGhlbSBhbGwgYW5kIHJlY3JlYXRlIHRoZW0gYXQgcnVudGltZQoKaXTigJlz
IHByZWRpY3RhYmxlCgpzZWNvbmRseSBJ4oCZbSBwcmVwYXJpbmcgYSBzZWNvbmQgcGF0Y2ggc2Vy
aWVzIHRvIGFkZCBzaHV0ZG93biBzZXF1ZW5jZQoKYnV0IGluIHRoaXMgY2FzZSB0aGUgc2h1dGRv
d24gaXMgbm90IG5lY2Vzc2FyeSB0aGUgc2FtZSBhcyBpbml0CgpzbyBzeW1saW5rIGdpdmUgdXMg
ZmxleGliaWxpdHkKCkJlc3QgUmVnYXJkcywKSi4KCj4gCj4gUmVnYXJkcywKPiBKYW4KPiAtLSAK
PiBQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfAo+IEluZHVzdHJpYWwgTGludXggU29sdXRpb25zICAgICAgICAg
ICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8Cj4gUGVpbmVyIFN0ci4gNi04
LCAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55IHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAg
IHwKPiBBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAg
KzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAo+IAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2JhcmVib3gK
