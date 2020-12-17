Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kpr1d-0005xe-FK
 for barebox@lists.infradead.org; Thu, 17 Dec 2020 11:00:50 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 415C21A1BFF
 for <barebox@lists.infradead.org>; Thu, 17 Dec 2020 11:00:45 +0000 (UTC)
Date: Thu, 17 Dec 2020 12:00:37 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20201217110030.54z7snifkf4slkpw@tellis.lin.mbt.kalray.eu>
References: <20201216204534.8054-1-m.grzeschik@pengutronix.de>
 <20201216204534.8054-2-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201216204534.8054-2-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH 1/5] usb: dwc2: cleanup on error for deferred probing
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

SGkgTWljaGVhbCwKCkkgYW0gdGVzdGluZyB5b3VyIHBhdGNoZXMsIGJ1dCB0aGlzIG9uZSBkb2Vz
bid0IGNvbXBpbGUuCgpPbiBXZWQsIERlYyAxNiwgMjAyMCBhdCAwOTo0NTozMFBNICswMTAwLCBN
aWNoYWVsIEdyemVzY2hpayB3cm90ZToKPiBUaGUgZHJpdmVyIG5lZWRzIHRvIGNsZWFudXAgdGhl
IHJlc291cmNlcyBpZiBhbiBlcnJvciBvY2N1cnJlZC4gT3RoZXJ3aXNlLAo+IG9uIGRlZmVycmVk
IHByb2JpbmcsIGl0IHdpbGwgZmFpbCB0byB0YWtlIHRoZSByZXNvdXJjZXMgZm9yIGEgc2Vjb25k
IHRpbWUuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWljaGFlbCBHcnplc2NoaWsgPG0uZ3J6ZXNjaGlr
QHBlbmd1dHJvbml4LmRlPgo+IC0tLQo+ICBkcml2ZXJzL3VzYi9kd2MyL2R3YzIuYyB8IDUgKysr
LS0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91c2IvZHdjMi9kd2MyLmMgYi9kcml2ZXJzL3VzYi9kd2My
L2R3YzIuYwo+IGluZGV4IGJkMzMzMzRhODMuLjg3ZDBlYzdhNWEgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy91c2IvZHdjMi9kd2MyLmMKPiArKysgYi9kcml2ZXJzL3VzYi9kd2MyL2R3YzIuYwo+IEBA
IC01Myw3ICs1Myw3IEBAIHN0YXRpYyBpbnQgZHdjMl9wcm9iZShzdHJ1Y3QgZGV2aWNlX2QgKmRl
dikKPiAgCWR3YzItPnBoeSA9IHBoeV9vcHRpb25hbF9nZXQoZGV2LCAidXNiMi1waHkiKTsKPiAg
CWlmIChJU19FUlIoZHdjMi0+cGh5KSkgewo+ICAJCXJldCA9IFBUUl9FUlIoZHdjMi0+cGh5KTsK
PiAtCQlyZXR1cm4gcmV0Owo+ICsJCWdvdG8gcmVsZWFzZV9yZWdpb247Cj4gIAl9Cj4gIAo+ICAJ
cmV0ID0gcGh5X2luaXQoZHdjMi0+cGh5KTsKPiBAQCAtMTAwLDcgKzEwMCw4IEBAIGVycm9yOgo+
ICAJcGh5X3Bvd2VyX29mZihkd2MyLT5waHkpOwo+ICBlcnJfcGh5X3Bvd2VyOgo+ICAJcGh5X2V4
aXQoZHdjMi0+cGh5KTsKPiAtZXJyX3BoeV9pbml0Ogo+ICtyZWxlYXNlX3JlZ2lvbjoKPiArCXJl
bGVhc2VfcmVnaW9uKGlvcmVzKTsKZXJyb3I6IGxhYmVsIOKAmGVycl9waHlfaW5pdOKAmSB1c2Vk
IGJ1dCBub3QgZGVmaW5lZAppbiBkcml2ZXJzL3VzYi9kd2MyLmM6NjEKICAgICAgICByZXQgPSBw
aHlfaW5pdChkd2MyLT5waHkpOwogICAgICAgIGlmIChyZXQpCiAgICAgICAgICAgICAgICBnb3Rv
IGVycl9waHlfaW5pdDsKCgpKdWxlcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVi
b3gK
