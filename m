Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gPOdD-0002mE-Ux
 for barebox@lists.infradead.org; Wed, 21 Nov 2018 09:17:13 +0000
Message-ID: <1542791818.23859.1.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 21 Nov 2018 10:16:58 +0100
In-Reply-To: <20181120200714.3692-3-linux@rempel-privat.de>
References: <20181120200714.3692-1-linux@rempel-privat.de>
 <20181120200714.3692-3-linux@rempel-privat.de>
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
Subject: Re: [PATCH v1 2/9] pinctrl: tegra30: fix "Possible null pointer
 dereference: group" warning
To: Oleksij Rempel <linux@rempel-privat.de>, barebox@lists.infradead.org

QW0gRGllbnN0YWcsIGRlbiAyMC4xMS4yMDE4LCAyMTowNyArMDEwMCBzY2hyaWViIE9sZWtzaWog
UmVtcGVsOgo+IFRoZSBjb2RlIGlzIGNvcnJlY3QgYnV0IGl0IHRha2VzIG1vcmUgc2Vjb25kcyBm
b3IgbWUgdG8gdW5kZXJzdGFuZC4KPiBBbmQgc3RhdGljIGNvZGUgYW5hbHl6ZXIgZG8gbm90IHVu
ZGVyc3RhbmQgaXQgYXQgYWxsLgo+IAo+ID4gU2lnbmVkLW9mZi1ieTogT2xla3NpaiBSZW1wZWwg
PGxpbnV4QHJlbXBlbC1wcml2YXQuZGU+Cj4gLS0tCj4gwqBkcml2ZXJzL3BpbmN0cmwvcGluY3Ry
bC10ZWdyYTMwLmMgfCA0ICsrLS0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGluY3RybC9waW5jdHJs
LXRlZ3JhMzAuYyBiL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLXRlZ3JhMzAuYwo+IGluZGV4IGQ5
YjQ5YzU3ZC4uZmZiMDRlZWJiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGluY3RybC9waW5jdHJs
LXRlZ3JhMzAuYwo+ICsrKyBiL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLXRlZ3JhMzAuYwo+IEBA
IC02NTgsOCArNjU4LDggQEAgc3RhdGljIGludCBwaW5jdHJsX3RlZ3JhMzBfc2V0X2RydnN0YXRl
KHN0cnVjdCBwaW5jdHJsX3RlZ3JhMzAgKmN0cmwsCj4gPiDCoAkJCWJyZWFrOwo+ID4gwqAJCX0K
PiA+IMKgCX0KPiA+IC0JLyogaWYgbm8gbWF0Y2hpbmcgZHJpdmVncm91cCBpcyBmb3VuZCAqLwo+
ID4gLQlpZiAoaSA9PSBjdHJsLT5kcnZkYXRhLT5udW1fZHJ2Z3JwcykKPiArCj4gPiArCWlmICgh
Z3JvdXApCj4gPiDCoAkJcmV0dXJuIDA7CgpIdWg/IFRoaXMgaXMgYSBwcmV0dHkgc3RhbmRhcmQg
aWRpb20gaW4gQyBjb2RlYmFzZXMgdG8gY2hlY2sgaWYgd2UKYnJva2Ugb3V0IG9mIGEgbG9vcCBl
YXJseS4KCkFjdHVhbGx5IHRoaXMgY2hhbmdlIGJyZWFrcyB0aGUgY29kZSwgYXMgdGhpcyBjaGVj
ayBpcyBpbnNpZGUgb2YgYW4Kb3V0ZXIgbG9vcCB0aGF0IGRvZXNuJ3QgcmVpbml0aWFsaXplIHRo
ZSBncm91cCB2YXJpYWJsZS4gU28gd2hpbGUgdGhlCmNvZGUgYXMtaXMgY29ycmVjdGx5IGNoZWNr
cyBpZiBhIGdyb3VwIHdhcyBmb3VuZCBpbiB0aGUgY3VycmVudAppdGVyYXRpb24gb2YgdGhlIG91
dGVyIGxvb3AsIGFmdGVyIHRoaXMgcGF0Y2ggaXQgYWxzbyBtYXRjaGVzIGEgZ3JvdXAKdGhhdCB3
YXMgZm91bmQgb24gYSBwcmV2aW91cyBpdGVyYXRpb24gb2YgdGhlIG91dGVyIGxvb3AuCgpUaGlz
IGlzIGEgcHJpbWUgZXhhbXBsZSB3aGVyZSBzdGF0aWMgY2hlY2tlciB3YXJuaW5ncyBjYW4gcHJv
bXB0IHdyb25nCmZpeGVzLiBGcmFua2x5IGNvZGFjeSBzaG91bGQgc21hcnQgdXAgdG8gY29ycmVj
dGx5IGFuYWx5emUgdGhlCmNvbnRyb2xmbG93IGludGVyZGVwZW5kZW5jeS4KClNhc2NoYSwgcGxl
YXNlIGRyb3AgdGhpcyBwYXRjaC4KClJlZ2FyZHMsCkx1Y2FzCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9iYXJlYm94Cg==
