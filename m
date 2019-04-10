Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hE6bn-0004aV-G7
 for barebox@lists.infradead.org; Wed, 10 Apr 2019 06:21:21 +0000
Date: Wed, 10 Apr 2019 08:21:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190410062117.hy6az4zojslvtvfs@pengutronix.de>
References: <67655ee5-da5f-2b99-2d1d-ab6c66e4dd48@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <67655ee5-da5f-2b99-2d1d-ab6c66e4dd48@mev.co.uk>
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
Subject: Re: watchdog_disable() in Cyclone V reset manager
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org

T24gTW9uLCBBcHIgMDgsIDIwMTkgYXQgMDM6MTA6MDZQTSArMDEwMCwgSWFuIEFiYm90dCB3cm90
ZToKPiAiYXJjaC9hcm0vbWFjaC1zb2NmcGdhL2N5Y2xvbmU1LXJlc2V0LW1hbmFnZXIuYyIgZGVm
aW5lcyBhIGdsb2JhbCBmdW5jdGlvbgo+ICd2b2lkIHdhdGNoZG9nX2Rpc2FibGUodm9pZCknLiAg
Tm90aGluZyBjYWxscyBpdC4gIFRoZSBjb21waWxlciBpc3N1ZXMgYQo+IHdhcm5pbmc6Cj4gCj4g
L21udC9saW5kYXRhL3dvcmsvYWJib3R0aS9iYXJlYm94X2dpdC9iYXJlYm94LW5leHQvYXJjaC9h
cm0vbWFjaC1zb2NmcGdhL2N5Y2xvbmU1LXJlc2V0LW1hbmFnZXIuYzoyNjo2Ogo+IHdhcm5pbmc6
IG5vIHByZXZpb3VzIHByb3RvdHlwZSBmb3Ig4oCYd2F0Y2hkb2dfZGlzYWJsZeKAmSBbLVdtaXNz
aW5nLXByb3RvdHlwZXNdCj4gIHZvaWQgd2F0Y2hkb2dfZGlzYWJsZSh2b2lkKQo+ICAgICAgIF5+
fn5+fn5+fn5+fn5+fn4KPiAKPiBTaW5jZSBub3RoaW5nIGluIHRoZSBzaGlwcGVkIGNvZGUgY2Fs
bHMgaXQsIHNob3VsZCB3ZSBnZXQgcmlkIG9mIGl0PyAgSWYKPiBub3QsIGl0IHNob3VsZCBiZSBk
ZWNsYXJlZCBpbiBhIGhlYWRlciBmaWxlIHNvbWV3aGVyZS4KCndhdGNoZG9nX2Rpc2FibGUoKSBn
b2VzIGJhY2sgdG8gdGhlIGluaXRpYWwgc29jZnBnYSBjb21taXQsIHNvIHdoZW4Kbm90aGluZyB1
c2VzIGl0IG5vdyBJIHRoaW5rIHdlIGNhbiByZW1vdmUgaXQuIFRoZSB3YXRjaGRvZyBkaXNhYmxp
bmcKbWF5IGFsc28gYmUgaGFuZGxlZCBhbHJlYWR5IGluIHNvY2ZwZ2FfbG93bGV2ZWxfaW5pdCgp
IHdoaWNoIGFsc28KdG91Y2hlcyB0aGUgc2FtZSByZWdpc3RlcnMuCgpTYXNjaGEKCi0tIApQZW5n
dXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfApJbmR1c3RyaWFsIExpbnV4IFNvbHV0aW9ucyAgICAgICAgICAgICAgICAg
fCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfApQZWluZXIgU3RyLiA2LTgsIDMxMTM3IEhp
bGRlc2hlaW0sIEdlcm1hbnkgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2Vy
aWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2
OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
