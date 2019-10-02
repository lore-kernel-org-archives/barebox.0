Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFaOA-0007FJ-KC
 for barebox@lists.infradead.org; Wed, 02 Oct 2019 08:53:41 +0000
References: <20190911145328.3246-1-m.felsch@pengutronix.de>
 <20191002072043.ujput2lroimm3yx6@pengutronix.de>
 <20191002072310.36lu4bxnao3eaulk@pengutronix.de>
 <bb944030-e292-151b-26df-c548e7b502d8@phytec.de>
 <20191002083408.mfs3bady4d5r7hlg@pengutronix.de>
From: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <4340da63-53a3-5275-ca6f-7ecdad4b7e56@phytec.de>
Date: Wed, 2 Oct 2019 10:53:35 +0200
MIME-Version: 1.0
In-Reply-To: <20191002083408.mfs3bady4d5r7hlg@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: i.MX: phytec-som-imx6: phycore: fix updating pmic
 regulators
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, s.christ@phytec.de, j.remmet@phytec.de

SGkgTWFyY28sCgpPbiAwMi4xMC4xOSAxMDozNCwgTWFyY28gRmVsc2NoIHdyb3RlOgo+IEhpIFN0
ZWZhbiwKPiAKPiBPbiAxOS0xMC0wMiAwOTozNCwgU3RlZmFuIFJpZWRtw7xsbGVyIHdyb3RlOgo+
PiBIaSBNYXJjbywgU2FzY2hhLAo+PiBPbiAwMi4xMC4xOSAwOToyMywgU2FzY2hhIEhhdWVyIHdy
b3RlOgo+Pj4gTWFyY28sCj4+Pgo+Pj4gT24gV2VkLCBPY3QgMDIsIDIwMTkgYXQgMDk6MjA6NDNB
TSArMDIwMCwgU2FzY2hhIEhhdWVyIHdyb3RlOgo+Pj4+ICtDYyBDaHJpc3RpYW4gSGVtcCB3aG8g
aXMgdGhlIGF1dGhvciBvZiBiNmJlYmI3YWNhCj4+Pj4KPj4+PiBPbiBXZWQsIFNlcCAxMSwgMjAx
OSBhdCAwNDo1MzoyOFBNICswMjAwLCBNYXJjbyBGZWxzY2ggd3JvdGU6Cj4+Pj4+IFRoZSBQTUlD
IGlzIGNvbm5lY3RlZCB0byBpMmMzIGFuZCBub3QgaTJjMS4KPj4+Pj4KPj4+Pj4gRml4ZXM6IGI2
YmViYjdhY2EgKCJBUk06IGkuTVg6IHBoeXRlYy1zb20taW14NjogcGh5Y29yZTogU2V0IEJVQ0sg
bW9kZSB0byBTWU5DIikKPj4+Pj4gU2lnbmVkLW9mZi1ieTogTWFyY28gRmVsc2NoIDxtLmZlbHNj
aEBwZW5ndXRyb25peC5kZT4KPj4+Pj4gLS0tCj4+Pj4+ICAgIGFyY2gvYXJtL2JvYXJkcy9waHl0
ZWMtc29tLWlteDYvYm9hcmQuYyB8IDIgKy0KPj4+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+Pj4+Cj4+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bS9ib2FyZHMvcGh5dGVjLXNvbS1pbXg2L2JvYXJkLmMgYi9hcmNoL2FybS9ib2FyZHMvcGh5dGVj
LXNvbS1pbXg2L2JvYXJkLmMKPj4+Pj4gaW5kZXggNzMwMTE1NzAyYi4uMzhlNWVkZTkxYSAxMDA2
NDQKPj4+Pj4gLS0tIGEvYXJjaC9hcm0vYm9hcmRzL3BoeXRlYy1zb20taW14Ni9ib2FyZC5jCj4+
Pj4+ICsrKyBiL2FyY2gvYXJtL2JvYXJkcy9waHl0ZWMtc29tLWlteDYvYm9hcmQuYwo+Pj4+PiBA
QCAtMTE3LDcgKzExNyw3IEBAIHN0YXRpYyBpbnQgcGh5Y29yZV9kYTkwNjJfc2V0dXBfYnVja19t
b2RlKHZvaWQpCj4+Pj4+ICAgIAlzdHJ1Y3QgaTJjX2FkYXB0ZXIgKmFkYXB0ZXIgPSBOVUxMOwo+
Pj4+PiAgICAJc3RydWN0IGkyY19jbGllbnQgY2xpZW50Owo+Pj4+PiAgICAJdW5zaWduZWQgY2hh
ciB2YWx1ZTsKPj4+Pj4gLQlpbnQgYnVzID0gMDsKPj4+Pj4gKwlpbnQgYnVzID0gMjsKPj4+Pj4g
ICAgCWludCByZXQ7Cj4+Pj4+ICAgIAlhZGFwdGVyID0gaTJjX2dldF9hZGFwdGVyKGJ1cyk7Cj4+
Pgo+Pj4gWW91IGNvdWxkIHRlc3QgaXQgZGlyZWN0bHkgb24gYjZiZWJiN2FjYSBpbnN0ZWFkIG9m
IG1hc3Rlci4gSXMgdGhpcwo+Pj4gY2hhbmdlIG5lY2Vzc2FyeSB0aGVyZSBhc3dlbGwgb3IgaGFz
IHRoZSBidXMgbnVtYmVyaW5nIGNoYW5nZWQgaW4KPj4+IGJldHdlZW4/Cj4+Cj4+IHRoaXMgYnVz
IG51bWJlcmluZyBjaGFuZ2VkIHdpdGggTWFyY28ncyBwYXRjaCB0byB1c2UgdGhlIHVwc3RyZWFt
IGRldmljZSB0cmVlLgo+Pgo+PiBBUk06IGR0czogaW14NjogcGh5Y29yZTogbWFrZSB1c2Ugb2Yg
dXBzdHJlYW0gZHRzCj4+Cj4+IFRoZSBwaHlDT1JFLWkuTVggNiB1c2VzIGp1c3Qgb25lIGkyYyBp
bnRlcmZhY2UgYnV0IG9uIHRoZSBwaHlCT0FSRC1NaXJhIHR3bwo+PiBtb3JlIGkyYyBpbnRlcmZh
Y2VzIGFyZSB1c2VkLgo+IAo+IE9yIGlmIGFub3RoZXIgYmFzZWJvYXJkIHVzZXMgdGhlIFNvTSBh
bmQgYSBCYXNlYm9hcmQgd2l0aCBtb3JlIGkyYyBpbnRlcmZhY2VzLgo+IEFmdGVyIHRhbGtpbmcg
d2l0aCBTYXNjaGEgd2Ugc2hvdWxkIGZpeCB0aGlzIGJ5IHVzaW5nCj4gb2ZfZmluZF9pMmNfYWRh
cHRlcl9ieV9ub2RlKCkuIFNvIGl0IGlzIGZpeGVkIGluIG15IGNhc2UgYW5kIGluIHlvdXIKPiBj
YXNlIHRvby4gQXJlIHlvdSBhZ3JlZT8KClllcyBJIGxpa2UgdGhhdCEKClJlZ2FyZHMsClN0ZWZh
bgoKPiAKPiBSZWdhcmRzLAo+ICAgIE1hcmNvCj4gCj4+Cj4+IFN0ZWZhbgo+Pgo+Pj4KPj4+IFNh
c2NoYQo+Pj4KPj4KPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
