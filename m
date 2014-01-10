Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay01.ispgateway.de ([80.67.31.24])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1Z7v-0005Ra-Fc
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 10:15:44 +0000
Message-ID: <52CFCA3C.8090802@tqsc.de>
Date: Fri, 10 Jan 2014 11:23:56 +0100
From: Markus Niebel <list-09_barebox@tqsc.de>
MIME-Version: 1.0
References: <1389346191-15851-1-git-send-email-list-09_barebox@tqsc.de>
 <1389346191-15851-3-git-send-email-list-09_barebox@tqsc.de>
 <1389345940.570404331@f9.i.mail.ru>
In-Reply-To: <1389345940.570404331@f9.i.mail.ru>
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
Subject: Re: [PATCH 2/3] mci: imx-esdhc: add DSR support
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org, Markus Niebel <Markus.Niebel@tqs.de>

SGVsbG8sCj4gSGVsbG8uCj4gCj4g0J/Rj9GC0L3QuNGG0LAsIDEwINGP0L3QstCw0YDRjyAyMDE0
LCAxMDoyOSArMDE6MDAg0L7RgiBNYXJrdXMgTmllYmVsIDxsaXN0LTA5X2JhcmVib3hAdHFzYy5k
ZT46Cj4+IEZyb206IE1hcmt1cyBOaWViZWwgPE1hcmt1cy5OaWViZWxAdHFzLmRlPgo+Pgo+PiBo
YXZpbmcgRFNSIHN1cHBvcnQgaW4gbWNpLWNvcmUgd2UgbmVlZCBhIHdheSB0bwo+PiBmb3J3YXJk
IHRoZSBEU1IgdmFsdWUgdG8gdGhlIGRyaXZlci4gQWRkIGl0IHRvCj4+IHBsYXRmb3JtIGRhdGEg
Zm9yIGlteC1lc2RoYwo+IC4uLgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tY2kvaW14LWVzZGhj
LmMgYi9kcml2ZXJzL21jaS9pbXgtZXNkaGMuYwo+PiBpbmRleCA3NjY0ZTdiLi5kZWI0NGIwIDEw
MDY0NAo+PiAtLS0gYS9kcml2ZXJzL21jaS9pbXgtZXNkaGMuYwo+PiArKysgYi9kcml2ZXJzL21j
aS9pbXgtZXNkaGMuYwo+PiBAQCAtNTgyLDYgKzU4Miw4IEBAIHN0YXRpYyBpbnQgZnNsX2VzZGhj
X3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqZGV2KQo+PiAgCWlmIChob3N0LT5tY2kuZl9taW4gPCAy
MDAwMDApCj4+ICAJCWhvc3QtPm1jaS5mX21pbiA9IDIwMDAwMDsKPj4gIAlob3N0LT5tY2kuZl9t
YXggPSByYXRlOwo+PiArCWhvc3QtPm1jaS51c2VfZHNyID0gcGRhdGEtPnVzZV9kc3I7Cj4+ICsJ
aG9zdC0+bWNpLmRzcl92YWwgPSBwZGF0YS0+ZHNyX3ZhbDsKPiAKPiBXaGF0IGhhcHBlbiBpZiBk
ZXZpY2UgaXMgcHJvYmVkIGZyb20gZGV2aWNldHJlZT8KVGhhbmtzIGZvciBwb2ludGluZyB0aGlz
IG91dC4gCgpBcyB0aGUgY292ZXIgc2F5cyAtIGp1c3QgYSBSRkMuIFdlIGhhdmUgd29ya2luZyBj
b2RlIGZvciBkZXZpY2UgdHJlZSB1bmRlciBsaW51eCBoZXJlLgpNeSBwcm9wb3NhbCBpcyB0byBw
YXNzIHRoZSBEU1IgdmFsdWUgYXMgYW4gb3B0aW9uYWwgcHJvcGVydHkgdG8gdGhlIGhvc3QgY29u
dHJvbGxlciAtIAp0aGVuIGl0IGNvdWxkIGJlIHBhcnNlZCBieSBtY2lfb2ZfcGFyc2UgLSBidXQg
dGhpcyBuZWVkcyB0byBiZSBpbiBzeW5jIHdpdGggdGhlIGtlcm5lbC4KWWVzIGFuZCB0aGUgc2V0
dGluZyBmcm9tIHBkYXRhIHNob3VsZCBiZSBvcHRpb25hbCAtIHNpbmNlIHBkYXRhIGlzIE5VTEwg
aW4gY2FzZSBvZiBkZXZpY2UgdHJlZS4KCldpbGwgY29sbGVjdCBjb21tZW50cyBhbmQgcHJlcGFy
ZSBhIHNlY29uZCByb3VuZC4KCk1hcmt1cwo+IAo+IC0tLQo+IAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVi
b3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2JhcmVib3gK
