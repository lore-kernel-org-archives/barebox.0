Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bDXfZ-0006wG-Tm
 for barebox@lists.infradead.org; Thu, 16 Jun 2016 13:49:18 +0000
Date: Thu, 16 Jun 2016 15:48:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160616134855.GH9677@pengutronix.de>
References: <1465971901-24827-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1465971901-24827-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] net: phy: make locally used of_phy_register_fixed_link()
 static
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

T24gV2VkLCBKdW4gMTUsIDIwMTYgYXQgMDk6MjU6MDFBTSArMDMwMCwgQW50b255IFBhdmxvdiB3
cm90ZToKPiBUaGUgcGF0Y2ggZml4ZXMgdGhpcyBjb21waWxlcidzIHdhcm5pbmc6Cj4gCj4gICAg
IGRyaXZlcnMvbmV0L3BoeS9waHkuYzozMDM6MjA6IHdhcm5pbmc6IG5vIHByZXZpb3VzIHByb3Rv
dHlwZSBmb3IKPiAgICAg4oCYb2ZfcGh5X3JlZ2lzdGVyX2ZpeGVkX2xpbmvigJkgWy1XbWlzc2lu
Zy1wcm90b3R5cGVzXQo+IAo+IFNpZ25lZC1vZmYtYnk6IEFudG9ueSBQYXZsb3YgPGFudG9ueW5w
YXZsb3ZAZ21haWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL25ldC9waHkvcGh5LmMgfCAzICsrLQo+
ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpBcHBsaWVk
LCB0aGFua3MKClNhc2NoYQoKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvcGh5L3BoeS5j
IGIvZHJpdmVycy9uZXQvcGh5L3BoeS5jCj4gaW5kZXggZWQ2OWQ5Yi4uMTNiODMyNCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL25ldC9waHkvcGh5LmMKPiArKysgYi9kcml2ZXJzL25ldC9waHkvcGh5
LmMKPiBAQCAtMzAwLDcgKzMwMCw4IEBAIHZvaWQgcGh5X3VucmVnaXN0ZXJfZGV2aWNlKHN0cnVj
dCBwaHlfZGV2aWNlICpwaHlkZXYpCj4gIAlwaHlkZXYtPnJlZ2lzdGVyZWQgPSAwOwo+ICB9Cj4g
IAo+IC1zdHJ1Y3QgcGh5X2RldmljZSAqb2ZfcGh5X3JlZ2lzdGVyX2ZpeGVkX2xpbmsoc3RydWN0
IGRldmljZV9ub2RlICpucCwgc3RydWN0IGV0aF9kZXZpY2UgKmVkZXYpCj4gK3N0YXRpYyBzdHJ1
Y3QgcGh5X2RldmljZSAqb2ZfcGh5X3JlZ2lzdGVyX2ZpeGVkX2xpbmsoc3RydWN0IGRldmljZV9u
b2RlICpucCwKPiArCQkJCQkJc3RydWN0IGV0aF9kZXZpY2UgKmVkZXYpCj4gIHsKPiAgCXN0cnVj
dCBwaHlfZGV2aWNlICpwaHlkZXY7Cj4gIAo+IC0tIAo+IDIuNy4wCj4gCj4gCgotLSAKUGVuZ3V0
cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwKSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAgICAgICAgICAgICAgIHwg
aHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKUGVpbmVyIFN0ci4gNi04LCAzMTEzNyBIaWxk
ZXNoZWltLCBHZXJtYW55IHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmlj
aHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkx
Ny01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
