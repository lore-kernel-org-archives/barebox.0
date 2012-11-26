Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tctiz-0008Gw-0P
 for barebox@lists.infradead.org; Mon, 26 Nov 2012 08:07:29 +0000
Date: Mon, 26 Nov 2012 09:07:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121126080727.GV10369@pengutronix.de>
References: <1353775562-2747-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1353775562-2747-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] phylib: fix compiler warning
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

T24gU2F0LCBOb3YgMjQsIDIwMTIgYXQgMDg6NDY6MDJQTSArMDQwMCwgQW50b255IFBhdmxvdiB3
cm90ZToKPiBmaXhlczoKPiAgZHJpdmVycy9uZXQvcGh5L3BoeS5jOjU3OiB3YXJuaW5nOiBubyBw
cmV2aW91cyBwcm90b3R5cGUgZm9yIOKAmHBoeV9kZXZpY2VfY3JlYXRl4oCZCj4gCj4gU2lnbmVk
LW9mZi1ieTogQW50b255IFBhdmxvdiA8YW50b255bnBhdmxvdkBnbWFpbC5jb20+CgpBcHBsaWVk
LCB0aGFua3MKClNhc2NoYQoKPiAtLS0KPiAgZHJpdmVycy9uZXQvcGh5L3BoeS5jIHwgICAgMiAr
LQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvcGh5L3BoeS5jIGIvZHJpdmVycy9uZXQvcGh5L3BoeS5j
Cj4gaW5kZXggNTlkZjc0Mi4uZWQxODVlMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9waHkv
cGh5LmMKPiArKysgYi9kcml2ZXJzL25ldC9waHkvcGh5LmMKPiBAQCAtMTM2LDcgKzEzNiw3IEBA
IGludCBwaHlfc2Nhbl9maXh1cHMoc3RydWN0IHBoeV9kZXZpY2UgKnBoeWRldikKPiAgCXJldHVy
biAwOwo+ICB9Cj4gIAo+IC1zdHJ1Y3QgcGh5X2RldmljZSAqcGh5X2RldmljZV9jcmVhdGUoc3Ry
dWN0IG1paV9idXMgKmJ1cywgaW50IGFkZHIsIGludCBwaHlfaWQpCj4gK3N0YXRpYyBzdHJ1Y3Qg
cGh5X2RldmljZSAqcGh5X2RldmljZV9jcmVhdGUoc3RydWN0IG1paV9idXMgKmJ1cywgaW50IGFk
ZHIsIGludCBwaHlfaWQpCj4gIHsKPiAgCXN0cnVjdCBwaHlfZGV2aWNlICpkZXY7Cj4gIAo+IC0t
IAo+IDEuNy4xMC40Cj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBiYXJlYm94IG1haWxpbmcgbGlzdAo+IGJhcmVib3hAbGlzdHMuaW5mcmFk
ZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFy
ZWJveAoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB8CkluZHVzdHJpYWwgTGludXggU29sdXRpb25zICAg
ICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8ClBlaW5lciBTdHIu
IDYtOCwgMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSB8IFBob25lOiArNDktNTEyMS0yMDY5MTct
MCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDog
ICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJl
Ym94Cg==
