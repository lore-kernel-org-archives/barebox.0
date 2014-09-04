Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x233.google.com ([2a00:1450:400c:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XPRGa-0001EY-Ta
 for barebox@lists.infradead.org; Thu, 04 Sep 2014 07:15:37 +0000
Received: by mail-we0-f179.google.com with SMTP id t60so9634965wes.38
 for <barebox@lists.infradead.org>; Thu, 04 Sep 2014 00:15:14 -0700 (PDT)
Date: Thu, 4 Sep 2014 09:15:12 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140904071511.GB13432@omega>
References: <1409813440-9512-1-git-send-email-t.gamez@phytec.de>
 <1409813440-9512-5-git-send-email-t.gamez@phytec.de>
 <20140904071258.GA13432@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140904071258.GA13432@omega>
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
Subject: Re: [PATCH 5/5] ARM: phyCORE-AM335x: Update partition table
To: Teresa =?utf-8?B?R8OhbWV6?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

T24gVGh1LCBTZXAgMDQsIDIwMTQgYXQgMDk6MTI6NThBTSArMDIwMCwgQWxleGFuZGVyIEFyaW5n
IHdyb3RlOgo+IEhpIFRlcmVzYSwKPiAKPiBPbiBUaHUsIFNlcCAwNCwgMjAxNCBhdCAwODo1MDo0
MEFNICswMjAwLCBUZXJlc2EgR8OhbWV6IHdyb3RlOgo+ID4gQWRkZWQgZGV2aWNlIHRyZWUgcGFy
dGl0aW9uIGFuZCBtYWRlIHJvb3RmcyBwYXJ0aXRpb24KPiA+IHZhcmlhYmxlIHNpemUgZGVwZW5k
aW5nIG9uIG5hbmQgZmxhc2ggc2l6ZS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogVGVyZXNhIEfD
oW1leiA8dC5nYW1lekBwaHl0ZWMuZGU+Cj4gPiAtLS0KPiA+ICBhcmNoL2FybS9kdHMvYW0zMzV4
LXBoeXRlYy1waHljb3JlLmR0cyB8ICAgMjIgKysrKysrKysrKysrKysrKysrLS0tLQo+ID4gIDEg
ZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiA+IAo+ID4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9hbTMzNXgtcGh5dGVjLXBoeWNvcmUuZHRzIGIvYXJj
aC9hcm0vZHRzL2FtMzM1eC1waHl0ZWMtcGh5Y29yZS5kdHMKPiA+IGluZGV4IDE2ZmViZDMuLjA0
N2RjMTUgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybS9kdHMvYW0zMzV4LXBoeXRlYy1waHljb3Jl
LmR0cwo+ID4gKysrIGIvYXJjaC9hcm0vZHRzL2FtMzM1eC1waHl0ZWMtcGh5Y29yZS5kdHMKPiA+
IEBAIC0xOTQsOCArMTk0LDEzIEBACj4gPiAgCQl9Owo+ID4gIAo+ID4gIAkJcGFydGl0aW9uQDMg
ewo+ID4gKwkJCWxhYmVsID0gIm9mdHJlZSI7Cj4gPiArCQkJcmVnID0gPDB4YzAwMDAgMHgyMDAw
MD47Cj4gPiArCQl9Owo+ID4gKwo+ID4gKwkJcGFydGl0aW9uQDQgewo+ID4gIAkJCWxhYmVsID0g
Imtlcm5lbCI7Cj4gPiAtCQkJcmVnID0gPDB4YzAwMDAgMHg0MDAwMDA+Owo+ID4gKwkJCXJlZyA9
IDwweGUwMDAwIDB4NDAwMDAwPjsKPiA+ICAJCX07Cj4gPiAgCX07Cj4gPiAgfTsKPiA+IEBAIC0z
MDUsMTMgKzMxMCwyMiBAQAo+ID4gIAkJfTsKPiA+ICAKPiA+ICAJCXBhcnRpdGlvbkA2IHsKPiA+
IC0JCQlsYWJlbCA9ICJrZXJuZWwiOwo+ID4gLQkJCXJlZyA9IDwweDEyMDAwMCAweDgwMDAwMD47
Cj4gPiArCQkJbGFiZWwgPSAib2Z0cmVlIjsKPiA+ICsJCQlyZWcgPSA8MHgxMjAwMDAgMHgyMDAw
MD47Cj4gPiAgCQl9Owo+ID4gIAo+ID4gIAkJcGFydGl0aW9uQDcgewo+ID4gKwkJCWxhYmVsID0g
Imtlcm5lbCI7Cj4gPiArCQkJcmVnID0gPDB4MTQwMDAwIDB4ODAwMDAwPjsKPiA+ICsJCX07Cj4g
PiArCj4gPiArCQlwYXJ0aXRpb25AOCB7Cj4gPiAgCQkJbGFiZWwgPSAicm9vdCI7Cj4gPiAtCQkJ
cmVnID0gPDB4OTIwMDAwIDB4MWY2ZTAwMDA+Owo+ID4gKwkJCS8qCj4gPiArCQkJICogU2l6ZSAw
eDAgZXh0ZW5kcyBwYXJ0aXRpb24gdG8KPiA+ICsJCQkgKiBlbmQgb2YgbmFuZCBmbGFzaC4KPiA+
ICsJCQkgKi8KPiA+ICsJCQlyZWcgPSA8MHg5MjAwMDAgMHgwPjsKPiAKPiBJIHRoaW5rIHRoaXMg
c2hvdWxkIGJlIDB4OTQwMDAwIGluc2VhZCAweDkyMDAwMC4KPiAKPiBGcm9tIHBhcnRpdGlvbjcg
NyAia2VybmVsIiB5b3UgaGF2ZSAweDE0MDAwMCArIDB4ODAwMDAwID0gMHg5NDAwMDAuCj4gCj4g
SSBzaW1wbGUgdXNlIHRoZSBnbm9tZS1jYWxjdWxhdG9yIGluIGhleCBtb2RlIHRvIGNoZWNrIGl0
Lgo+IAoKQnV0IGluIHRoaXMgY2FzZSBpdCB3YXMgdmVyeSBvYnZpb3VzbHkuIENhbid0IGhhdmUg
YSB0d28gaW4gdGhpcwpwb3NpdGlvbi4gOi0pCgotIEFsZXgKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2JhcmVib3gK
