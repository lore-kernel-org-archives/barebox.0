Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22c.google.com ([2a00:1450:400c:c05::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XAGy4-0006Bl-Gh
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 11:13:57 +0000
Received: by mail-wi0-f172.google.com with SMTP id n3so9400762wiv.5
 for <barebox@lists.infradead.org>; Thu, 24 Jul 2014 04:12:45 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140724093436.GJ23235@pengutronix.de>
References: <1406142544-10516-1-git-send-email-poggi.raph@gmail.com>
 <20140724093436.GJ23235@pengutronix.de>
From: =?UTF-8?Q?Rapha=C3=ABl_Poggi?= <raphio98@gmail.com>
Date: Thu, 24 Jul 2014 13:12:04 +0200
Message-ID: <CACqcpZBJpGgiwVm7K-fXMMDiHYZhnwEP5pod+fjse9hk5xus+g@mail.gmail.com>
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
Subject: Re: [PATCH] i2c: add Atmel AT91 driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

SGkgU2FzY2hhLAoKVGhhbmtzIGZvciB5b3VyIHJldmlldywgSSdsbCBjb3JyZWN0IHRoZXNlIGFu
ZCBzZW5kIGEgdjIuCgpSYXBoYcOrbAoKMjAxNC0wNy0yNCAxMTozNCBHTVQrMDI6MDAgU2FzY2hh
IEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPjoKPiBIaSBSYXBoYcOrbCwKPgo+IExvb2tz
IG1vc3RseSBmaW5lIHRvIG1lLiBUd28gc21hbGwgY29tbWVudHM6Cj4KPiBPbiBXZWQsIEp1bCAy
MywgMjAxNCBhdCAxMjowOTowNFBNIC0wNzAwLCBSYXBoYcOrbCBQb2dnaSB3cm90ZToKPj4gKwo+
PiArc3RhdGljIGludCBhdDkxX3R3aV9wcm9iZShzdHJ1Y3QgZGV2aWNlX2QgKmRldikKPj4gK3sK
Pj4gKyAgICAgc3RydWN0IGF0OTFfdHdpX2RldiAqaTJjX2F0OTE7Cj4+ICsgICAgIHN0cnVjdCBh
dDkxX3R3aV9wZGF0YSAqaTJjX2RhdGE7Cj4+ICsgICAgIGludCByYzsKPj4gKyAgICAgdTMyIGJ1
c19jbGtfcmF0ZTsKPj4gKwo+PiArICAgICBpMmNfYXQ5MSA9IGt6YWxsb2Moc2l6ZW9mKHN0cnVj
dCBhdDkxX3R3aV9kZXYpLCBHRlBfS0VSTkVMKTsKPj4gKyAgICAgaWYgKCFpMmNfYXQ5MSkgewo+
PiArICAgICAgICAgcmMgPSAtRU5PTUVNOwo+PiArICAgICAgICAgZ290byBvdXRfZnJlZTsKPj4g
KyAgICAgfQo+Cj4gWW91IGNhbiBzYWZlbHkgdXNlIHh6YWxsb2MgaGVyZSBhbmQgc2tpcCB0aGUg
cmVzdWx0IGNoZWNrLgo+Cj4+ICsKPj4gKyAgICAgcmMgPSBkZXZfZ2V0X2RydmRhdGEoZGV2LCAo
dW5zaWduZWQgbG9uZyAqKSZpMmNfZGF0YSk7Cj4+ICsgICAgIGlmIChyYykKPj4gKyAgICAgICAg
ICAgICBnb3RvIG91dF9mcmVlOwo+PiArCj4+ICsgICAgIGkyY19hdDkxLT5wZGF0YSA9IGkyY19k
YXRhOwo+PiArCj4+ICsgICAgIGkyY19hdDkxLT5iYXNlID0gZGV2X3JlcXVlc3RfbWVtX3JlZ2lv
bihkZXYsIDApOwo+PiArICAgICBpZiAoSVNfRVJSKGkyY19hdDkxLT5iYXNlKSkKPj4gKyAgICAg
ICAgICAgICByZXR1cm4gUFRSX0VSUihpMmNfYXQ5MS0+YmFzZSk7Cj4KPiBkZXZfcmVxdWVzdF9t
ZW1fcmVnaW9uIHJldHVybnMgTlVMTCBvbiBlcnJvciwgbm90IGFuIGVycm9yIHBvaW50ZXIuCj4K
PiBTYXNjaGEKPgo+IC0tCj4gUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKPiBJbmR1c3RyaWFsIExpbnV4IFNv
bHV0aW9ucyAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAo+
IFBlaW5lciBTdHIuIDYtOCwgMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSB8IFBob25lOiArNDkt
NTEyMS0yMDY5MTctMCAgICB8Cj4gQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAg
ICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKPgo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gYmFyZWJveCBtYWlsaW5nIGxpc3QK
PiBiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Jh
cmVib3gK
