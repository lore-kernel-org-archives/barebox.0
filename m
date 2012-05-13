Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STVjs-0002Tc-Sp
 for barebox@lists.infradead.org; Sun, 13 May 2012 10:09:22 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
References: <m3397emhaw.fsf@intrepid.localdomain>
 <20120512213845.GA22395@pengutronix.de>
Date: Sun, 13 May 2012 12:05:33 +0200
In-Reply-To: <20120512213845.GA22395@pengutronix.de> ("Uwe =?utf-8?Q?Klein?=
 =?utf-8?Q?e-K=C3=B6nig=22's?=
 message of "Sat, 12 May 2012 23:38:45 +0200")
Message-ID: <m3k40gflaq.fsf@intrepid.localdomain>
MIME-Version: 1.0
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
Subject: Re: [PATCH] ARM: put a valid "barebox" signature in the header on
 big-endian systems.
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

VXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JpdGVz
OgoKPj4gKysrIGIvYXJjaC9hcm0vaW5jbHVkZS9hc20vYmFyZWJveC1hcm0taGVhZC5oCj4+IEBA
IC0yNCw4ICsyNCw3IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBiYXJlYm94X2FybV9oZWFkKHZvaWQp
Cj4+ICAJCSIxOiBiIDFiXG4iCj4+ICAJCSIxOiBiIDFiXG4iCj4+ICAjZW5kaWYKPj4gLQkJIi53
b3JkIDB4NjU3MjYxNjJcbiIJCQkvKiAnYmFyZScgKi8KPj4gLQkJIi53b3JkIDB4MDA3ODZmNjJc
biIJCQkvKiAnYm94JyAqLwo+PiArCQkiLmFzY2l6IFwiYmFyZWJveFwiXG4iCj4+ICAJCSIud29y
ZCBfdGV4dFxuIgkJCQkvKiB0ZXh0IGJhc2UuIElmIGNvcGllZCB0aGVyZSwKPj4gIAkJCQkJCQkg
KiBiYXJlYm94IGNhbiBza2lwIHJlbG9jYXRpb24KPj4gIAkJCQkJCQkgKi8KPiBBbm90aGVyIGRv
d25zaWRlIG9mIHRoaXMgcGF0Y2ggKGFwYXJ0IGZyb20gdGhlIGZpbGUgdHlwZSBkZXRlY3Rpb24g
dGhhdAo+IHN0aWxsIG5lZWRzIGFkYXB0aW9uPykgaXMgdGhhdCB0aGUgbWFnaWMgaXMgZGlmZmVy
ZW50IGRlcGVuZGluZyBvbgo+IGVuZGlhbmVzcy4KCkFjdHVhbGx5IGl0J3MgdGhlIG9wcG9zaXRl
IC0gaS5lLiwgdGhlIG1hZ2ljIGlzIG5vdyBhbHdheXMgImJhcmVib3hcMCIKYW5kIGRvZXNuJ3Qg
ZGVwZW5kIG9uIGVuZGlhbm5lc3MgOi0pCgpXaXRob3V0IHRoaXMgcGF0Y2gsIHRoZSBtYWdpYyBj
aGFuZ2VzIHdpdGggZW5kaWFubmVzcyAoaXQgYmVjb21lcwoiZXJhYlwweG9iIiBvbiBCRSkuCgo+
IEp1c3QgbXkgMC4wMuKCrCBvbiB0aGlzIHBhdGNoLCBJIGRvbid0IGtub3cgaG93IG1hbnkgYmln
IGVuZGlhbiBiYXJlYm94Cj4gaW1hZ2VzIGFyZSBvdXQgdGhlcmUKCkd1ZXNzIEkgaGF2ZSBtb3N0
IG9mIHRoZXNlIGhlcmUgOi0pCkplYW4tQ2hyaXN0b3BoZSBtYXkgaGF2ZSBzb21lLCB0b28uCi0t
IApLcnp5c3p0b2YgSGFsYXNhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
