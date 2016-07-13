Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x230.google.com ([2607:f8b0:4002:c05::230])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bNNir-0004Lx-Iy
 for barebox@lists.infradead.org; Wed, 13 Jul 2016 17:13:22 +0000
Received: by mail-yw0-x230.google.com with SMTP id w127so49740377ywf.3
 for <barebox@lists.infradead.org>; Wed, 13 Jul 2016 10:13:00 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1468426649.295446823@f320.i.mail.ru>
References: <1468395431.547554214@f355.i.mail.ru>
 <20160713130448.GC20657@pengutronix.de>
 <CAHQ1cqFe+TDgH1XTfk85h5Tkw0UHu_tZX9Ut7i2ghX4H0iTpWA@mail.gmail.com>
 <1468426649.295446823@f320.i.mail.ru>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 13 Jul 2016 10:12:59 -0700
Message-ID: <CAHQ1cqFgXEaZ53G0EVKN8EiUJMA59GpkXp54J=fJUvyiSr62nQ@mail.gmail.com>
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
Subject: Re: Patch "syscon: Decrease driver registration priority" breaks
 clps711x target
To: Alexander Shiyan <shc_work@mail.ru>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

T24gV2VkLCBKdWwgMTMsIDIwMTYgYXQgOToxNyBBTSwgQWxleGFuZGVyIFNoaXlhbiA8c2hjX3dv
cmtAbWFpbC5ydT4gd3JvdGU6Cj4+0KHRgNC10LTQsCwgMTMg0LjRjtC70Y8gMjAxNiwgMTg6NTIg
KzAzOjAwINC+0YIgQW5kcmV5IFNtaXJub3YgPGFuZHJldy5zbWlybm92QGdtYWlsLmNvbT46Cj4+
Cj4+T24gV2VkLCBKdWwgMTMsIDIwMTYgYXQgNjowNCBBTSwgU2FzY2hhIEhhdWVyIDwgcy5oYXVl
ckBwZW5ndXRyb25peC5kZSA+IHdyb3RlOgo+Pj4gT24gV2VkLCBKdWwgMTMsIDIwMTYgYXQgMTA6
Mzc6MTFBTSArMDMwMCwgQWxleGFuZGVyIFNoaXlhbiB3cm90ZToKPj4+PiBIZWxsbyBBbGwuCj4+
Pj4KPj4+PiBQYXRjaCAic3lzY29uOiBEZWNyZWFzZSBkcml2ZXIgcmVnaXN0cmF0aW9uIHByaW9y
aXR5IiBicmVha3MgY2xwczcxMXggdGFyZ2V0Lgo+Pj4+IFByZXZpb3VzbHksIHRoZSBzeXNjb24g
ZGV2aWNlIGluaXRpYWxpemVkIGF0ICJjb3JlX2luaXRjYWxsIiwgdGhhdCBkaWQgbm90IGNhdXNl
IHByb2JsZW1zLgo+Pj4+IE5vdyB0aGUgZGV2aWNlIGlzIGluaXRpYWxpemVkIGF0ICJkZXZpY2Vf
aW5pdGNhbGwiIGxldmVsLCBidXQgY2xwczcxMXggdXNlcyBzeXNjb24gZm9yCj4+Pj4gdGhlIHNl
cmlhbCwgc28gc2VyaWFsIGRldmljZSBpbml0aWFsaXplZCBhdCAiY29uc29sZV9pbml0Y2FsbCIg
bGV2ZWwuCj4+Pj4gQW55IGlkZWFzPwo+Pj4KPj4+IFdlIGNvdWxkIG1vdmUgc3lzY29uIGJhY2sg
dG8gY29yZV9pbml0Y2FsbCBsZXZlbCBhbmQgaW4gdGhlIHN5c2Nvbgo+Pj4gZHJpdmVyIHVzZSBk
ZXZfZ2V0X3Jlc291cmNlKCkgaW5zdGVhZCBvZiByZXF1ZXN0X2lvbWVtX3JlZ2lvbigpLgo+Pgo+
PlJpZ2h0IG5vdyB0aGUgZHJpdmVyIHVzZXMgYm90aCwgc28gaWYgd2UganVzdCBkcm9wIHRoZSBj
YWxsIHRvCj4+cmVxdWVzdF9pb21lbV9yZWdpb24gdGhhdCB3YXMgcHJvYmxlbWF0aWMgZm9yIG1l
IG9uIGkuTVg2LCB0aGF0IHNob3VsZAo+PnJlc29sdmUgdGhlIGlzc3VlLiBJIHRoaW5rIHRoaXMg
d291bGQgYWxzbyBicmluZyB0aGUgYmVoYXZpb3Igb2YKPj5zeXNjb24gZHJpdmVyIGNsb3NlciB0
byB3aGF0IGl0IGRvZXMgaW4gTGludXgga2VybmVsIGxhbmQuIFRoZSBvbmx5Cj4+bmVnYXRpdmUg
ZWZmZWN0IG9mIHRoYXQgY2hhbmdlIEkgdGhpbmsgd291bGQgYmUgdGhhdCBvbiB0aGUgcGxhdGZv
cm1zCj4+d2hlcmUgc3lzY29uIGRyaXZlciBjb250cm9scyB0aGF0IHJlZ2lvbiBvZiBtZW1vcnks
IGl0IG5vIGxvbmdlciB3b3VsZAo+PmJlIHJlcG9ydGVkIGFzIHN1Y2ggYnkgImlvbWVtIi4KPj4K
Pj5BcG9sb2dpZXMgZm9yIGJyZWFraW5nIHlvdXIgdXNlLWNhc2UsIEFsZXhhbmRlci4KPgo+IEFu
ZHJleT8gQ2FuIHlvdSByZXZlcnQgdGhpcyBhbmQgcmVzZW5kIGl0IGluIGFub3RoZXIgd2F5PwoK
U3VyZSwgSSBjYW4uIENhbid0IHByb21pc2UgdG8gZG8gaXQgYmVmb3JlIHRoZSBlbmQgb2YgdGhl
IHdlZWsgdGhvdWdoLgoKVGhhbmtzLApBbmRyZXkKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2JhcmVib3gK
