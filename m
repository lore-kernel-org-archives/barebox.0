Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XniFa-0004qW-QF
 for barebox@lists.infradead.org; Mon, 10 Nov 2014 06:14:55 +0000
Date: Mon, 10 Nov 2014 07:14:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141110061428.GC30369@pengutronix.de>
References: <1415531432-6402-1-git-send-email-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1415531432-6402-1-git-send-email-uwe@kleine-koenig.org>
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
Subject: Re: [PATCH 1/2] mtd: nand_orion: remove unused goto label
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Cc: barebox@lists.infradead.org

T24gU3VuLCBOb3YgMDksIDIwMTQgYXQgMTI6MTA6MzFQTSArMDEwMCwgVXdlIEtsZWluZS1Lw7Zu
aWcgd3JvdGU6Cj4gVGhpcyBmaXhlcyB0aGUgZm9sbG93aW5nIHdhcm5pbmc6Cj4gCj4gCWRyaXZl
cnMvbXRkL25hbmQvbmFuZF9vcmlvbi5jOiBJbiBmdW5jdGlvbiDigJhvcmlvbl9uYW5kX3Byb2Jl
4oCZOgo+IAlkcml2ZXJzL210ZC9uYW5kL25hbmRfb3Jpb24uYzoxNDU6MTogd2FybmluZzogbGFi
ZWwg4oCYbm9fcmVz4oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1sYWJlbF0KPiAK
PiBGaXhlczogMWEyMTVmNSAoIm5hbmQ6IEFkZCBNYXJ2ZWxsIE9yaW9uIE5BTkQgZHJpdmVyIikK
PiBTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dXdlQGtsZWluZS1rb2VuaWcub3Jn
PgoKQXBwbGllZCBib3RoLCB0aGFua3MKClNhc2NoYQoKPiAtLS0KPiAgZHJpdmVycy9tdGQvbmFu
ZC9uYW5kX29yaW9uLmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL25hbmRfb3Jp
b24uYyBiL2RyaXZlcnMvbXRkL25hbmQvbmFuZF9vcmlvbi5jCj4gaW5kZXggMmM5NzA3ZC4uZmUw
NmVmNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL210ZC9uYW5kL25hbmRfb3Jpb24uYwo+ICsrKyBi
L2RyaXZlcnMvbXRkL25hbmQvbmFuZF9vcmlvbi5jCj4gQEAgLTE0Miw3ICsxNDIsNyBAQCBzdGF0
aWMgaW50IG9yaW9uX25hbmRfcHJvYmUoc3RydWN0IGRldmljZV9kICpkZXYpCj4gIG5vX2RldjoK
PiAgCWlmICghSVNfRVJSKGNsaykpCj4gIAkJY2xrX2Rpc2FibGUoY2xrKTsKPiAtbm9fcmVzOgo+
ICsKPiAgCWZyZWUocHJpdik7Cj4gIAlyZXR1cm4gcmV0Owo+ICB9Cj4gLS0gCj4gMi4xLjEKPiAK
PiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGJh
cmVib3ggbWFpbGluZyBsaXN0Cj4gYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94CgotLSAKUGVuZ3V0
cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwKSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAgICAgICAgICAgICAgIHwg
aHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKUGVpbmVyIFN0ci4gNi04LCAzMTEzNyBIaWxk
ZXNoZWltLCBHZXJtYW55IHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmlj
aHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkx
Ny01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
