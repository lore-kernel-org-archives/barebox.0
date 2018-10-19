Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gDTR9-0005I2-KY
 for barebox@lists.infradead.org; Fri, 19 Oct 2018 11:59:40 +0000
Date: Fri, 19 Oct 2018 13:59:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181019115915.sbqieg467jd7n4vk@pengutronix.de>
References: <20181016194256.8984-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181016194256.8984-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1] fs: fix different compile warnings
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

T24gVHVlLCBPY3QgMTYsIDIwMTggYXQgMDk6NDI6NTZQTSArMDIwMCwgT2xla3NpaiBSZW1wZWwg
d3JvdGU6Cj4gZnMvZnMuYzo5NjoxODogd2FybmluZzogbm8gcHJldmlvdXMgcHJvdG90eXBlIGZv
ciDigJhtbnRnZXTigJkgWy1XbWlzc2luZy1wcm90b3R5cGVzXQo+ICBzdHJ1Y3QgdmZzbW91bnQg
Km1udGdldChzdHJ1Y3QgdmZzbW91bnQgKm1udCkKPiAgICAgICAgICAgICAgICAgICBefn5+fn4K
PiBmcy9mcy5jOjEwNjo2OiB3YXJuaW5nOiBubyBwcmV2aW91cyBwcm90b3R5cGUgZm9yIOKAmG1u
dHB1dOKAmSBbLVdtaXNzaW5nLXByb3RvdHlwZXNdCj4gIHZvaWQgbW50cHV0KHN0cnVjdCB2ZnNt
b3VudCAqbW50KQo+ICAgICAgIF5+fn5+fgo+IGZzL2ZzLmM6MTE0OjE4OiB3YXJuaW5nOiBubyBw
cmV2aW91cyBwcm90b3R5cGUgZm9yIOKAmGxvb2t1cF9tbnTigJkgWy1XbWlzc2luZy1wcm90b3R5
cGVzXQo+ICBzdHJ1Y3QgdmZzbW91bnQgKmxvb2t1cF9tbnQoc3RydWN0IHBhdGggKnBhdGgpCj4g
ICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fgo+IAo+IFNpZ25lZC1vZmYtYnk6IE9sZWtzaWog
UmVtcGVsIDxvLnJlbXBlbEBwZW5ndXRyb25peC5kZT4KPiAtLS0KPiAgZnMvZnMuYyB8IDQwICsr
KysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQs
IDE5IGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQoKSSBkaWQgdGhlIHNhbWUgcGF0Y2gg
YmVmb3JlIEkgbm90aWNlZCB5b3UgYWxyZWFkeSBzZW50IGl0LgoKU2FzY2hhCgoKLS0gClBlbmd1
dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB8CkluZHVzdHJpYWwgTGludXggU29sdXRpb25zICAgICAgICAgICAgICAgICB8
IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8ClBlaW5lciBTdHIuIDYtOCwgMzExMzcgSGls
ZGVzaGVpbSwgR2VybWFueSB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJp
Y2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5
MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
