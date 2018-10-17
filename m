Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gCiY4-00039Z-DY
 for barebox@lists.infradead.org; Wed, 17 Oct 2018 09:56:20 +0000
Message-ID: <1539770114.3688.22.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 17 Oct 2018 11:55:14 +0200
In-Reply-To: <2900c5d1-e614-d55e-69c8-6082aaf52132@rempel-privat.de>
References: <20181016195022.24904-1-o.rempel@pengutronix.de>
 <20181016195022.24904-2-o.rempel@pengutronix.de>
 <20181017092212.3rmxgfffxi3etxfe@pengutronix.de>
 <2900c5d1-e614-d55e-69c8-6082aaf52132@rempel-privat.de>
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
Subject: Re: [PATCH v1 2/2] fs/devfs: fix compile warnings
To: Oleksij Rempel <linux@rempel-privat.de>, Roland Hieber <r.hieber@pengutronix.de>, Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

QW0gTWl0dHdvY2gsIGRlbiAxNy4xMC4yMDE4LCAxMTo0NCArMDIwMCBzY2hyaWViIE9sZWtzaWog
UmVtcGVsOgo+IFRoaXMgaXMgdGhlIGxpc3Qgb2YgYWxsIHdhcm5pbmdzOgoKWy4uLl0KCj4gTm90
IHN1cmUgaWYgbWFrZSBzZW5zZSB0byBsaXN0IGFsbCBvZiB0aGVtLiBFc3BlY2lhbGx5IGlmIHlv
dSBjYW4gc2VlCj4gZnJvbSB0aGUgcGF0Y2ggZGlmZiwgd2hhdCB0aGUgcGF0Y2ggaXMgZG9pbmcu
CgorMSBmb3Igbm90IHBvbGx1dGluZyB0aGUgY29tbWl0IG1lc3NhZ2Ugd2l0aCBhbGwgdGhpcyBu
b2lzZS4gQnV0IEkKdGhpbmsgaXQgd291bGQgbWFrZSBzZW5zZSB0byBtb3ZlIHRoZSBXbWlzc2lu
Zy1wcm90b3R5cGVzIENGTEFHIG91dCBvZgp0aGUgbWlwcyBhcmNoaXRlY3R1cmUgdG8gYXBwbHkg
aXQgZ2VuZXJhbGx5IGFjcm9zcyBhbGwgYXJjaGl0ZWN0dXJlcywKc28gd2UgZG9uJ3QgaW50cm9k
dWNlIGFueSBtb3JlIG9mIHRob3NlIGlzc3VlcyB3aXRob3V0IG5vdGljaW5nLgoKUmVnYXJkcywK
THVjYXMKCgo+IEFtIDE3LjEwLjIwMTggdW0gMTE6MjIgc2NocmllYiBSb2xhbmQgSGllYmVyOgo+
ID4gRm9yIGJvdGggb2YgdGhlc2UsIGl0IHdvdWxkIGJlIG5pY2UgdG8ga25vdyB3aGF0IHRoZSBj
b21waWxlciB3YXJuaW5ncwo+ID4gd2VyZSwgaW4gY2FzZSBhbnlvbmUgd2FudHMgdG8gZ3JlcCB0
aGUgbG9ncy4KPiA+IAo+ID4gwqAtIFJvbGFuZAo+ID4gCj4gPiBPbiBUdWUsIE9jdCAxNiwgMjAx
OCBhdCAwOTo1MDoyMlBNICswMjAwLCBPbGVrc2lqIFJlbXBlbCB3cm90ZToKPiA+ID4gPiA+ID4g
U2lnbmVkLW9mZi1ieTogT2xla3NpaiBSZW1wZWwgPG8ucmVtcGVsQHBlbmd1dHJvbml4LmRlPgo+
ID4gPiAtLS0KPiA+ID4gwqBmcy9kZXZmcy5jIHwgMiArLQo+ID4gPiDCoDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBh
L2ZzL2RldmZzLmMgYi9mcy9kZXZmcy5jCj4gPiA+IGluZGV4IGQyYjgwMTAzNmUuLjEwZjA5ODI4
MGUgMTAwNjQ0Cj4gPiA+IC0tLSBhL2ZzL2RldmZzLmMKPiA+ID4gKysrIGIvZnMvZGV2ZnMuYwo+
ID4gPiBAQCAtMTkzLDcgKzE5Myw3IEBAIHN0YXRpYyBzdHJ1Y3QgaW5vZGUgKmRldmZzX2FsbG9j
X2lub2RlKHN0cnVjdCBzdXBlcl9ibG9jayAqc2IpCj4gPiA+ID4gPiA+IMKgCXJldHVybiAmbm9k
ZS0+aW5vZGU7Cj4gPiA+IMKgfQo+ID4gPiDCoAo+ID4gPiAtaW50IGRldmZzX2l0ZXJhdGUoc3Ry
dWN0IGZpbGUgKmZpbGUsIHN0cnVjdCBkaXJfY29udGV4dCAqY3R4KQo+ID4gPiArc3RhdGljIGlu
dCBkZXZmc19pdGVyYXRlKHN0cnVjdCBmaWxlICpmaWxlLCBzdHJ1Y3QgZGlyX2NvbnRleHQgKmN0
eCkKPiA+ID4gwqB7Cj4gPiA+ID4gPiA+IMKgCXN0cnVjdCBjZGV2ICpjZGV2Owo+ID4gPiDCoAo+
ID4gPiAtLcKgCj4gPiA+IDIuMTkuMAo+ID4gPiAKPiA+ID4gCj4gPiA+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiA+IGJhcmVib3ggbWFpbGluZyBs
aXN0Cj4gPiA+IGJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gPiBodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gKPiA+ID4gCj4gCj4gCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxp
bmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
