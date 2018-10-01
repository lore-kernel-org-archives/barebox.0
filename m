Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx01.eckelmann.de ([217.19.183.92])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g6tZr-0003GU-Qj
 for barebox@lists.infradead.org; Mon, 01 Oct 2018 08:29:17 +0000
From: "Schenk, Gavin" <G.Schenk@eckelmann.de>
Date: Mon, 1 Oct 2018 08:29:18 +0000
Message-ID: <1c08cd25d72b7f5843b313071a6f040244f0df40.camel@eckelmann.de>
References: <20181001081716.26017-1-s.hauer@pengutronix.de>
In-Reply-To: <20181001081716.26017-1-s.hauer@pengutronix.de>
Content-Language: de-DE
Content-ID: <1C2F7FD7558F334CBDFD7F18BAD9037E@eckelmann.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH] usb: gadget: fastboot: fix downoading files of
 wMaxPacketSize bytes
To: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>

SGksDQoNCj4gRmlsZSB0cmFuc2ZlcnMgd2l0aCBzaXplcyBvZiBleGFjdCBtdWx0aXBsZXMgb2Yg
d01heFBhY2tldFNpemUgdXAgdG8NCj4gRVBfQlVGRkVSX1NJWkUgZG8gbm90IHdvcmsuIEZvciBh
IHR5cGljYWwgc2NlbmFyaW8gdGhhdCB3b3VsZCBiZSBmaWxlcw0KPiBvZiA1MTIsIDEwMjQgLi4u
IDM1ODQgYnl0ZXMuDQo+IA0KPiBUaGlzIGhhcHBlbnMgYmVjYXVzZSB3ZSB1bmNvbmRpdGlvbmFs
bHkgcHV0IEVQX0JVRkZFUl9TSVpFIGludG8gdGhlDQo+IGluaXRpYWwgcmVxdWVzdCBsZW5ndGgu
IEZvciBub24gd01heFBhY2tldFNpemUgYWxpZ25lZCBsZWd0aHMgdGhpcw0Kcy9sZWd0aHMvbGVu
Z3RoDQoNCj4gd29ya3Mgd2VsbCBiZWNhdXNlIHRoZSB0cmFuc2ZlciBpcyBjb21wbGV0ZWQgd2l0
aCBhIHNob3J0IHBhY2tldC4NCj4gRm9yIHdNYXhQYWNrZXRTaXplIGFsaWduZWQgbGVuZ3RocyB0
aGVyZSBpcyBubyBzaG9ydCBwYWNrZXQgdGhvdWdoLA0KPiBzbyB0aGUgdHJhbnNmZXIgbmV2ZXIg
Y29tcGxldGVzLiBJbnN0ZWFkIHdlIGhhdmUgdG8gcHV0IHRoZSBmaWxlDQo+IHNpemUgaW50byB0
aGUgaW5pdGlhbCByZXF1ZXN0IGxlbmd0aC4NCj4gDQo+IFNvbWUgY29udHJvbGxlcnMgbGlrZSB0
aGUgRFdDMyBkbyBub3Qgd29yayB3aGVuIHRoZSByZXF1ZXN0IGxlbmd0aCBpcw0KPiBub3QgYWxp
Z25lZCB0byB3TWF4UGFja2V0U2l6ZSwgc28gd2UgYWxpZ24gdXAgdG8gd01heFBhY2tldFNpemUg
bGlrZQ0KPiBkb25lIGluIFUtQm9vdC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFNhc2NoYSBIYXVl
ciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4NClJlcG9ydGVkLWJ5OiBHYXZpbiBTY2hlbmsgPGcu
c2NoZW5rQGVja2VsbWFubi5kZT4NCg0KVGhhbmsgeW91IGZvciB0aGlzIHBhdGNoIQ0KDQpSZWdh
cmRzDQpHYXZpbiBTY2hlbmsNCg0KCi0tIApFY2tlbG1hbm4gQUcKVm9yc3RhbmQ6IERpcGwuLUlu
Zy4gUGV0ZXIgRnJhbmtlbmJhY2ggKFNwcmVjaGVyKSBEaXBsLi1XaS4tSW5nLiBQaGlsaXBwIEVj
a2VsbWFubgpEci4tSW5nLiBNYXJjbyBNw7xuY2hob2YgRHIuLUluZy4gRnJhbmsgVWhsZW1hbm4K
Vm9yc2l0emVuZGVyIGRlcyBBdWZzaWNodHNyYXRzOiBIdWJlcnR1cyBHLiBLcm9zc2EKU3R2LiBW
b3JzaXR6ZW5kZXIgZGVzIEF1ZnNpY2h0c3JhdHM6IERyLi1JbmcuIEdlcmQgRWNrZWxtYW5uClNp
dHogZGVyIEdlc2VsbHNjaGFmdDogQmVybGluZXIgU3RyLiAxNjEsIDY1MjA1IFdpZXNiYWRlbiwg
QW10c2dlcmljaHQgV2llc2JhZGVuIEhSQiAxMjYzNgpodHRwOi8vd3d3LmVja2VsbWFubi5kZQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1h
aWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
