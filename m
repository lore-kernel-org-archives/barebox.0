Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YRJOW-00070q-5p
 for barebox@lists.infradead.org; Fri, 27 Feb 2015 11:47:49 +0000
Message-ID: <1425037644.2673.2.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 27 Feb 2015 12:47:24 +0100
In-Reply-To: <1425030964-45167-1-git-send-email-j.weitzel@phytec.de>
References: <1425030964-45167-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH] net: cpsw: invalidate complete buffer
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

QW0gRnJlaXRhZywgZGVuIDI3LjAyLjIwMTUsIDEwOjU2ICswMTAwIHNjaHJpZWIgSmFuIFdlaXR6
ZWw6Cj4gV2l0aG91dCBpbnZhbGlkYXRpbmcgdGhlIGNvbXBsZXRlIGJ1ZmZlciBiZWZvcmUgZ2l2
aW5nIGl0IHRvCj4gZG1hX2ludl9yYW5nZSwgd2UgZ290IHN0cmFuZ2UgcGFja2V0cy4KPiAKClRo
aXMgaXMgbW9zdCBsaWtlbHkgbm90IHRoZSBjb3JyZWN0IGZpeC4gSWYgdGhpcyBoZWxwcyB0aGVu
IG91cgpkbWFfaW52X3JhbmdlIGZ1bmN0aW9ucyBhcmVuJ3Qgd29ya2luZyBwcm9wZXJseSwgd2hp
Y2ggd291bGQgYmUgcmVhbGx5CmJhZC4gSG93IGRvIHRob3NlICJzdHJhbmdlIHBhY2tldHMiIGxv
b2sgbGlrZT8KCj4gU2lnbmVkLW9mZi1ieTogSmFuIFdlaXR6ZWwgPGoud2VpdHplbEBwaHl0ZWMu
ZGU+Cj4gVGVzdGVkLWJ5OiBUZXJlc2EgR8OhbWV6IDx0LmdhbWV6QHBoeXRlYy5kZT4KPiAtLS0K
PiAgZHJpdmVycy9uZXQvY3Bzdy5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvY3Bzdy5j
IGIvZHJpdmVycy9uZXQvY3Bzdy5jCj4gaW5kZXggNzk5ZmFjOC4uMzNhZmRjMyAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL25ldC9jcHN3LmMKPiArKysgYi9kcml2ZXJzL25ldC9jcHN3LmMKPiBAQCAt
ODg2LDcgKzg4Niw3IEBAIHN0YXRpYyBpbnQgY3Bzd19yZWN2KHN0cnVjdCBldGhfZGV2aWNlICpl
ZGV2KQo+ICAJaW50IGxlbjsKPiAgCj4gIAl3aGlsZSAoY3BkbWFfcHJvY2Vzcyhwcml2LCAmcHJp
di0+cnhfY2hhbiwgJmJ1ZmZlciwgJmxlbikgPj0gMCkgewo+IC0JCWRtYV9pbnZfcmFuZ2UoKHVs
b25nKWJ1ZmZlciwgKHVsb25nKWJ1ZmZlciArIGxlbik7Cj4gKwkJZG1hX2ludl9yYW5nZSgodWxv
bmcpYnVmZmVyLCAodWxvbmcpYnVmZmVyICsgUEtUU0laRSk7Cj4gIAkJbmV0X3JlY2VpdmUoZWRl
diwgYnVmZmVyLCBsZW4pOwo+ICAJCWNwZG1hX3N1Ym1pdChwcml2LCAmcHJpdi0+cnhfY2hhbiwg
YnVmZmVyLCBQS1RTSVpFKTsKPiAgCX0KCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAg
IHwgTHVjYXMgU3RhY2ggICAgICAgICAgICAgICAgIHwKSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlv
bnMgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8CgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJv
eEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vYmFyZWJveAo=
