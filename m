Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22c.google.com ([2a00:1450:4013:c01::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPYML-0004ri-7O
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 13:45:30 +0000
Received: by mail-ea0-f172.google.com with SMTP id r16so1241063ead.3
 for <barebox@lists.infradead.org>; Fri, 27 Sep 2013 06:45:05 -0700 (PDT)
Date: Fri, 27 Sep 2013 15:45:01 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130927134500.GA25840@omega>
References: <1380283980-5759-1-git-send-email-t.gamez@phytec.de>
 <20130927133807.GI32444@ns203013.ovh.net>
 <20130927134038.GA25753@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130927134038.GA25753@omega>
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
Subject: Re: [PATCH] mci: omap: Fix default value of mci.f_max
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

T24gRnJpLCBTZXAgMjcsIDIwMTMgYXQgMDM6NDA6MzhQTSArMDIwMCwgQWxleGFuZGVyIEFyaW5n
IHdyb3RlOgo+IEhpLAo+IAo+IE9uIEZyaSwgU2VwIDI3LCAyMDEzIGF0IDAzOjM4OjA3UE0gKzAy
MDAsIEplYW4tQ2hyaXN0b3BoZSBQTEFHTklPTC1WSUxMQVJEIHdyb3RlOgo+ID4gT24gMTQ6MTMg
RnJpIDI3IFNlcCAgICAgLCBUZXJlc2EgRz8/bWV6IHdyb3RlOgo+ID4gPiBTZXQgZGVmYXVsdCB2
YWx1ZSBvZiBtY2kuZl9tYXggZXZlbiB3aGVuIG5vIHBkYXRhCj4gPiA+IGlzIGF2YWlsYWJsZS4K
PiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFRlcmVzYSBHw6FtZXogPHQuZ2FtZXpAcGh5dGVj
LmRlPgo+ID4gPiAtLS0KPiA+ID4gIGRyaXZlcnMvbWNpL29tYXBfaHNtbWMuYyB8ICAgIDQgKyst
LQo+ID4gPiAgMSBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
Cj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tY2kvb21hcF9oc21tYy5jIGIvZHJp
dmVycy9tY2kvb21hcF9oc21tYy5jCj4gPiA+IGluZGV4IGEyY2QzZmUuLmY2MzY5N2YgMTAwNjQ0
Cj4gPiA+IC0tLSBhL2RyaXZlcnMvbWNpL29tYXBfaHNtbWMuYwo+ID4gPiArKysgYi9kcml2ZXJz
L21jaS9vbWFwX2hzbW1jLmMKPiA+ID4gQEAgLTYxNCwxMSArNjE0LDExIEBAIHN0YXRpYyBpbnQg
b21hcF9tbWNfcHJvYmUoc3RydWN0IGRldmljZV9kICpkZXYpCj4gPiA+ICAJaWYgKHBkYXRhKSB7
Cj4gPiA+ICAJCWlmIChwZGF0YS0+Zl9tYXgpCj4gPiA+ICAJCQloc21tYy0+bWNpLmZfbWF4ID0g
cGRhdGEtPmZfbWF4Owo+ID4gPiAtCQllbHNlCj4gPiA+IC0JCQloc21tYy0+bWNpLmZfbWF4ID0g
NTIwMDAwMDA7Cj4gPiA+ICAKPiA+ID4gIAkJaWYgKHBkYXRhLT5kZXZuYW1lKQo+ID4gPiAgCQkJ
aHNtbWMtPm1jaS5kZXZuYW1lID0gcGRhdGEtPmRldm5hbWU7Cj4gPiA+ICsJfSBlbHNlIHsKPiA+
ID4gKwkJaHNtbWMtPm1jaS5mX21heCA9IDUyMDAwMDAwOwo+ID4gPiAgCX0KPiA+IAo+ID4gc28g
ZG8gdGhpcwo+ID4gCj4gPiAJaWYgKCFoc21tYy0+bWNpLmZfbWFpeCkKPiA+IAkJaHNtbWMtPm1j
aS5mX21heCA9IDUyMDAwMDAwOwo+IAo+IHBlcmZlY3QgOi0pCj4gCm9oIG5vLCBpdCBpc24ndCBw
ZXJmZWN0IHMvZl9tYWl4L2ZfbWF4LyA7KQoKLSBBbGV4CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9iYXJlYm94Cg==
