Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aJzsI-0000sW-1z
 for barebox@lists.infradead.org; Fri, 15 Jan 2016 08:36:51 +0000
Message-ID: <1452846986.2915.110.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Fri, 15 Jan 2016 09:36:26 +0100
In-Reply-To: <5697FF03.1060702@pengutronix.de>
References: <CAPnjgZ187+14Fn-aeBkzV9Yv7MXOYPbTJjzCrHByuO04=OoAww@mail.gmail.com>
 <5697FF03.1060702@pengutronix.de>
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
Subject: Re: Verified boot support with FIT
To: Marc Kleine-Budde <mkl@pengutronix.de>, Simon Glass <sjg@chromium.org>
Cc: barebox@lists.infradead.org

T24gRG8sIDIwMTYtMDEtMTQgYXQgMjE6MDMgKzAxMDAsIE1hcmMgS2xlaW5lLUJ1ZGRlIHdyb3Rl
Ogo+IE9uIDAxLzE0LzIwMTYgMDg6MzAgUE0sIFNpbW9uIEdsYXNzIHdyb3RlOgo+ID4gU29tZW9u
ZSBwb2ludGVkIG1lIHRvIHRoaXMgc3VwcG9ydCB0aGF0IGlzIGJlaW5nIGFkZGVkIGluIEJhcmVi
b3guIEkgc2VlCj4gPiB0aGF0IGl0IHN0aWxsIGhhcyB0aGUgY29weXJpZ2h0IGJ1dCBkb2VzIG5v
dCBhdHRyaWJ1dGUgVS1Cb290LiBJJ20ganVzdAo+ID4gY2hlY2tpbmcgaWYgdGhhdCBpcyB0aGF0
IGFuIG92ZXJzaWdodD8KPiAKPiBJJ3ZlIENjJ2VkIEphbiwgd2hvIGhhcyB3cml0dGVuIHRoZSBj
b2RlLiBRdW90aW5nIGZyb20gaGlzIGZpcnN0IHBhdGNoCj4gdG8gdGhlIGJhcmVib3ggbWFpbGlu
Z2xpc3Q6Cj4gCj4gPiB0aGlzIGlzIHRoZSBjdXJyZW50IHdvcmstaW4tcHJvZ3Jlc3Mgc3RhdGUg
b2YgbXkgRklUIHN1cHBvcnQgcGF0Y2hlcy4KPiA+IFRoZSBGSVQgbG9hZGluZyBjb2RlIGhhcyBi
YXNpY2FsbHkgYmVlbiByZXdyaXR0ZW4gZnJvbSBzY3JhdGNoLCBhcyB0aGUKPiA+IG9yaWdpbmFs
IFUtQm9vdCBjb2RlIHVzZXMgbGliZmR0IGFuZCBiYXJlYm94J3MgRFQgc3VwcG9ydCB3b3JrcyBv
biBhbgo+ID4gaW4tbWVtb3J5IHRyZWUuCgpZZXMsIHRoaXMgaXMgc3RpbGwgY29ycmVjdCBmb3Ig
dGhlIHJlY2VudCBzdWJtaXNzaW9ucy4KClRoZSBiYXJlYm94IGNvZGUgb25seSBzdXBwb3J0cyB0
aGUgc2lnbmVkIGNvbmZpZ3VyYXRpb25zIHdpdGggaGFzaGVkCmltYWdlcywgYXMgdGhlIGdvYWwg
d2FzIHRvIHVzZSB0aGlzIGZvciB2ZXJpZmllZCBib290LiBTdXBwb3J0aW5nIG9ubHkKdGhpcyBt
b2RlIGtlZXBzIHRoZSBjb21wbGV4aXR5IGRvd24uCgpTaW1vbiwgZG8geW91IHRoaW5rIGl0IGlz
IGEgZGVyaXZlZCB3b3JrIG9mIHRoZSBVLUJvb3QgRklUIGNvZGU/CgpSZWdhcmRzLApKYW4gTMO8
YmJlCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfApJbmR1c3RyaWFsIExpbnV4IFNvbHV0aW9ucyAgICAg
ICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfApQZWluZXIgU3RyLiA2
LTgsIDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAg
ICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAg
KzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVi
b3gK
