Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tg1gM-0008ND-2n
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 23:13:42 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Tg1gK-0006lJ-CQ
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 00:13:40 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Tg1gK-0001b9-BH
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 00:13:40 +0100
Date: Wed, 5 Dec 2012 00:13:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121204231340.GX10369@pengutronix.de>
References: <20121130110336.GB7099@greatfirst.com>
 <20121203095534.GL10369@pengutronix.de>
 <20121204014242.GB20812@greatfirst.com>
 <20121204074431.GV10369@pengutronix.de>
 <20121204080932.GD20812@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121204080932.GD20812@greatfirst.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Howto known uncompressed length when uncompress_fd_to_buf
To: barebox <barebox@lists.infradead.org>

T24gVHVlLCBEZWMgMDQsIDIwMTIgYXQgMDQ6MDk6MzJQTSArMDgwMCwg5byg5b+g5bGxIHdyb3Rl
Ogo+ID4gV2h5IGRvbid0IHlvdSB1bmNvbXByZXNzIHRvIGEgcmVndWxhciBmaWxlIChpLmUuIC90
bXAvZm9vKSByYXRoZXIgdGhhbgo+ID4gdG8gdGhlIGRldmljZSBmaWxlPwo+ID4KPiBNeSBmaXJl
d2FyZSB3aWxsIGJlIGEgaHVnZSBmaWxlOiBhYm91dCAxMk0gYnl0ZXMuIEkgZG9uJ3Qga25vd24g
SG93IG11Y2gKPiBhIHJlZ3VsYXIgZmlsZSdzIHNpemUuCgpiYXJlYm94IHdpbGwgaGFuZGxlIHRo
ZXNlIGZpbGUgc2l6ZXMganVzdCBmaW5lIGdpdmVuIHRoYXQgeW91ciBtYWxsb2MKYXJlYSBzaXpl
IGlzIGNvbmZpZ3VyZWQgYmlnIGVub3VnaC4gVGhlIG9ubHkgdGhpbmcgdGhhdCBjb3VsZCBoYXBw
ZW4gaXMKdGhhdCB0aGUgcGVyZm9ybWFuY2Ugb2YgdGhlIG1lbW9yeSBhbGxvY2F0b3Igd2lsbCBk
ZWNyZWFzZSB3aXRoIHRoYXQKbWFueSBhbGxvY2F0aW9ucy4gWW91IGNhbiB3b3JrIGFyb3VuZCB0
aGlzIGJ5IGluY3JlYXNpbmcgQ0hVTktfU0laRSBpbgpmcy9yYW1mcy5jLgoKU2FzY2hhCgotLSAK
UGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwKSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAgICAgICAgICAg
ICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKUGVpbmVyIFN0ci4gNi04LCAzMTEz
NyBIaWxkZXNoZWltLCBHZXJtYW55IHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10
c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIx
LTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
