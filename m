Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gX5yB-0004PF-KW
 for barebox@lists.infradead.org; Wed, 12 Dec 2018 14:58:41 +0000
Message-ID: <1544626706.2473.3.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 12 Dec 2018 15:58:26 +0100
In-Reply-To: <1544624524.3137.23.camel@pengutronix.de>
References: <20181212141054.7513-1-r.czerwinski@pengutronix.de>
 <20181212141054.7513-2-r.czerwinski@pengutronix.de>
 <1544624524.3137.23.camel@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 1/6] mach-bcm2835/core: add clkdev for uart1
To: Lucas Stach <l.stach@pengutronix.de>, barebox@lists.infradead.org

T24gV2VkLCAyMDE4LTEyLTEyIGF0IDE1OjIyICswMTAwLCBMdWNhcyBTdGFjaCB3cm90ZToKPiBB
bSBNaXR0d29jaCwgZGVuIDEyLjEyLjIwMTgsIDE1OjEwICswMTAwIHNjaHJpZWIgUm91dmVuIEN6
ZXJ3aW5za2k6Cj4gPiBBZGQgYSBjbGtkZXYgZm9yIHVhcnQxIHdoaWNoIHdpbGwgYmUgdXNlZCBv
biB0aGUgUmFzcGJlcnJ5IFBpIDMuCj4gPiBEb3VibGUgdGhlIGNsb2NrcmF0ZSBzaW5jZSB0aGUg
bnMxNjU1MCBkcml2ZXIgdXNlZCBmb3IgdGhlIHVhcnQKPiA+IHdpbGwgZGl2aWRlIGJ5Cj4gPiAx
Niwgd2hpbGUgdGhlIGJjbTI4MzUgcGVyaXBoZXJhbCBtYW51YWwgZGVzY3JpYmVzIHRoYXQgdGhl
IGJjbTI4MzUKPiA+IG1pbml1YXJ0IHdpbGwKPiA+IG9ubHkgZGl2aWRlIGJ5IDguCj4gPiAKPiA+
ID4gU2lnbmVkLW9mZi1ieTogUm91dmVuIEN6ZXJ3aW5za2kgPHIuY3plcndpbnNraUBwZW5ndXRy
b25peC5kZT4KPiA+IAo+ID4gLS0tCj4gPiDCoGFyY2gvYXJtL21hY2gtYmNtMjgzeC9jb3JlLmMg
fCA2ICsrKysrKwo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCj4gPiAKPiA+
IGRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLWJjbTI4M3gvY29yZS5jIGIvYXJjaC9hcm0vbWFj
aC0KPiA+IGJjbTI4M3gvY29yZS5jCj4gPiBpbmRleCBmMWRjZGE4NmYuLjY2YWY3NmIwOSAxMDA2
NDQKPiA+IC0tLSBhL2FyY2gvYXJtL21hY2gtYmNtMjgzeC9jb3JlLmMKPiA+ICsrKyBiL2FyY2gv
YXJtL21hY2gtYmNtMjgzeC9jb3JlLmMKPiA+IEBAIC00Miw2ICs0MiwxMiBAQCBzdGF0aWMgaW50
IGJjbTI4MzVfY2xrX2luaXQodm9pZCkKPiA+ID4gwqAJY2xrX3JlZ2lzdGVyX2Nsa2RldihjbGss
IE5VTEwsICJ1YXJ0MC1wbDAxMTAiKTsKPiA+ID4gwqAJY2xrZGV2X2FkZF9waHlzYmFzZShjbGss
IDB4MjAyMDEwMDAsIE5VTEwpOwo+ID4gPiDCoAljbGtkZXZfYWRkX3BoeXNiYXNlKGNsaywgMHgz
ZjIwMTAwMCwgTlVMTCk7Cj4gPiA+ICsJLyoKPiA+ID4gKwnCoCogV2UgZG91YmxlIHRoZSBjbG9j
ayByYXRlIHNpbmNlIHRoZSAxNjU1MCB3aWxsIGRpdmlkZQo+ID4gPiBieSAxNgo+ID4gPiArCcKg
KiAoaW5zdGVhZCBvZiA4IHJlcXVpcmVkIGJ5IHRoZSBCQ00yODM1IHBlcmlwaGVyYWwKPiA+ID4g
bWFudWFsKQo+ID4gCj4gPiArCcKgKi8KPiAKPiBUaGlzIGlzIGNvbmZ1c2luZy4gVGhlIGNsb2Nr
IGlzIHJ1bm5pbmcgYXQgYW5vdGhlciByYXRlLiBJIHdvdWxkCj4gcHJlZmVyCj4gdG8gZG8gdGhp
cyBhZGp1c3RtZW50IGluIHJwaV9pbml0X3BvcnQoKSBpbiB0aGUgbnMxNjU1MCBkcml2ZXIsIGFz
Cj4gdGhhdCdzIHRoZSBwb2ludCB3aGVyZSB0aGUgaGFyZHdhcmUgZGV2aWF0aW9uIGFjdHVhbGx5
IGlzLgoKVGhhdHMgcmVhc29uYWJsZSwgSSdsbCBpbmNsdWRlIGl0IGluIGEgdjIuCgpHcmVldGlu
Z3MsClJvdXZlbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
