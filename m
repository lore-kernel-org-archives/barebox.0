Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22a.google.com ([2a00:1450:4013:c00::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPYDo-0004Xx-3K
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 13:36:41 +0000
Received: by mail-ee0-f42.google.com with SMTP id b45so1233780eek.15
 for <barebox@lists.infradead.org>; Fri, 27 Sep 2013 06:36:18 -0700 (PDT)
Date: Fri, 27 Sep 2013 15:36:13 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130927133612.GA23776@omega>
References: <1380283980-5759-1-git-send-email-t.gamez@phytec.de>
 <20130927121920.GA526@omega>
 <20130927132940.GH32444@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130927132940.GH32444@ns203013.ovh.net>
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

SGksCgpPbiBGcmksIFNlcCAyNywgMjAxMyBhdCAwMzoyOTo0MFBNICswMjAwLCBKZWFuLUNocmlz
dG9waGUgUExBR05JT0wtVklMTEFSRCB3cm90ZToKPiBPbiAxNDoxOSBGcmkgMjcgU2VwICAgICAs
IEFsZXhhbmRlciBBcmluZyB3cm90ZToKPiA+IEhpLAo+ID4gCj4gPiBPbiBGcmksIFNlcCAyNywg
MjAxMyBhdCAwMjoxMzowMFBNICswMjAwLCBUZXJlc2EgR8OhbWV6IHdyb3RlOgo+ID4gPiBTZXQg
ZGVmYXVsdCB2YWx1ZSBvZiBtY2kuZl9tYXggZXZlbiB3aGVuIG5vIHBkYXRhCj4gPiA+IGlzIGF2
YWlsYWJsZS4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFRlcmVzYSBHw6FtZXogPHQuZ2Ft
ZXpAcGh5dGVjLmRlPgo+ID4gPiAtLS0KPiA+ID4gIGRyaXZlcnMvbWNpL29tYXBfaHNtbWMuYyB8
ICAgIDQgKystLQo+ID4gPiAgMSBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tY2kvb21hcF9oc21t
Yy5jIGIvZHJpdmVycy9tY2kvb21hcF9oc21tYy5jCj4gPiA+IGluZGV4IGEyY2QzZmUuLmY2MzY5
N2YgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvbWNpL29tYXBfaHNtbWMuYwo+ID4gPiArKysg
Yi9kcml2ZXJzL21jaS9vbWFwX2hzbW1jLmMKPiA+ID4gQEAgLTYxNCwxMSArNjE0LDExIEBAIHN0
YXRpYyBpbnQgb21hcF9tbWNfcHJvYmUoc3RydWN0IGRldmljZV9kICpkZXYpCj4gPiA+ICAJaWYg
KHBkYXRhKSB7Cj4gPiA+ICAJCWlmIChwZGF0YS0+Zl9tYXgpCj4gPiA+ICAJCQloc21tYy0+bWNp
LmZfbWF4ID0gcGRhdGEtPmZfbWF4Owo+ID4gPiAtCQllbHNlCj4gPiA+IC0JCQloc21tYy0+bWNp
LmZfbWF4ID0gNTIwMDAwMDA7Cj4gPiAKPiA+IEkgdGhpbmsgdGhpcyBzaG91bGQgc3RheSB0aGVy
ZSBmb3IgdGhlIGNhc2UgaWYgZl9tYXggaXMgemVyby4KPiA+IFNvIHNvbWVib2R5IHNldHMgYSBw
ZGF0YSB3aXRoIGRldm5hbWUgYW5kIG5vIGZfbWF4IHZhbHVlLgo+ID4gCj4gPiAKPiA+IE1heWJl
IHlvdSBzaG91bGQgYWRkIGEgZGVmYXVsdCBkZXZuYW1lIGlmIG5vIHBkYXRhIGlzIGdpdmVuLgo+
IG5vIHRoZXJlIGlzIGEgZGVmYXVsdCBkZXZuYW1lIGRpc2suJWQKb2ggeWVhLCBJIHNhdyB0aGF0
IHJpZ2h0IG5vdy4gQnV0IHRoZSB1cHBlciBicmFuY2ggc2hvdWxkIHN0YXkgdGhlcmUgZm9yCmEg
dW51c2FsIGNhc2UgaWYgc29tZWJvZHkgc2V0J3MgYSBkZXZuYW1lIGJ1dCBubyBmX21heCBhdHRy
aWJ1dGUuCgpEb24ndCBrbm93IGlmIGFueSBib2FyZCBkbyB0aGlzIHJpZ2h0IG5vdy4KCkF0IHRo
ZSBjb21tZW50cyBmcm9tICJzdHJ1Y3Qgb21hcF9oc21tY19wbGF0Zm9ybV9kYXRhIiBmX21heCBp
cyBub3QKb3B0aW9uYWwgc28gbWF5YmUgaXQgc2hvdWxkIHJ1biBpbiBhIHBhbmljIG9yIHdlIGhv
bGQgYSBiYWNrd2FyZHMKY29tcGF0aWJpbGl0eS4KCi0gQWxleAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJv
eEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vYmFyZWJveAo=
