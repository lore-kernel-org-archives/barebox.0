Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtYP3-00042B-EP
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 13:47:15 +0000
References: <1549976247670.75244@mixed-mode.de>
 <20190212133429.6i35ehvsl5xy5w2b@pengutronix.de>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <0680d772-4149-0dac-279d-ec3cfd1214a9@pengutronix.de>
Date: Tue, 12 Feb 2019 14:47:08 +0100
MIME-Version: 1.0
In-Reply-To: <20190212133429.6i35ehvsl5xy5w2b@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Barebox support for Arm Cortex-M0 Boards
To: Roland Hieber <rhi@pengutronix.de>, Kai Che <Kai.Che@mixed-mode.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

CgpPbiAxMi4wMi4xOSAxNDozNCwgUm9sYW5kIEhpZWJlciB3cm90ZToKPiBPbiBUdWUsIEZlYiAx
MiwgMjAxOSBhdCAxMjo1NzoyNlBNICswMDAwLCBLYWkgQ2hlIHdyb3RlOgo+PiBIaSBldmVyeW9u
ZSwKPj4KPj4gZG9lcyBiYXJlYm94IHN1cHBvcnQgYW55IGtpbmQgb2YgQXJtLUNvcnRleCBNMCBC
b2FyZHM/IGUuZy4gU1RNMzJGMCBvciBzaW1pbGlhcj8KPiAKPj4KPj4gSSBjb3VsZG4ndCBmaW5k
IGFueSBtZW50aW9uIG9mIHN1Y2ggYSBib2FyZCBpbiB0aGUgYm9hcmQgc3VwcG9ydCBzZWN0aW9u
IG9mwqB0aGUgZG9jdW1lbnRhdGlvbi4KPj4KPj4gSSBob3BlIEkgZGlkbid0IG92ZXJsb29rIHNv
bWV0aGluZy4KPiAKPiBJJ3ZlIG5vdCBzZWVuIGFueSBDb3J0ZXgtTSBzdXBwb3J0IGZvciBiYXJl
Ym94IHlldCwgYnV0IEkgdGhpbmsgaXQgd291bGQKPiBtYWtlIGEgZ3JlYXQgcmVzZWFyY2ggcHJv
amVjdCA6KSBCYXJlYm94IGRvZXMgbm90IG5lZWQgYSBNTVUgYXMgZmFyIGFzIEkKPiBrbm93LgoK
SSBoYXZlIHVzZWQgaXQgb24gb2xkIFVTQiBNSVBTIGJhc2VkIFdpRmkgYWRhcHRlciwgaW5zdGVh
ZCBvZiBvcmlnaW5hbCBmaXJtd2FyZS4gSXQgaGFzIApzaW1pbGFyIHNwZWNpZmljYXRpb24uIFNv
LCBJIGFzc3VtZSBpdCB3b3VsZCB3b3JrIGZvciBTVE0zMkYwLiBObyBpZGVhIGlmIGl0IG1ha2Ug
c2Vuc2UuCgpLaW5kIHJlZ2FyZHMsCk9sZWtzaWogUmVtcGVsCgotLSAKUGVuZ3V0cm9uaXggZS5L
LiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwKSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3
dy5wZW5ndXRyb25peC5kZS8gIHwKUGVpbmVyIFN0ci4gNi04LCAzMTEzNyBIaWxkZXNoZWltLCBH
ZXJtYW55IHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmljaHQgSGlsZGVz
aGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3gg
bWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
