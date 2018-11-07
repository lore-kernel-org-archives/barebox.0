Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gKQNZ-0006FK-N2
 for barebox@lists.infradead.org; Wed, 07 Nov 2018 16:08:31 +0000
Message-ID: <1541606897.2508.55.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 07 Nov 2018 17:08:17 +0100
In-Reply-To: <20181107134522.y7awdhz2uowjnqh7@localhost.localdomain>
References: <20181106161407.20974-1-l.stach@pengutronix.de>
 <20181107134522.y7awdhz2uowjnqh7@localhost.localdomain>
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
Subject: Re: [PATCH] commands: mem: truncate mem device size to fit the
 loff_t file size
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

QW0gTWl0dHdvY2gsIGRlbiAwNy4xMS4yMDE4LCAxNjo0NSArMDMwMCBzY2hyaWViIFBldGVyIE1h
bW9ub3Y6Cj4gSGksIEx1Y2FzLAo+IAo+IE9uIFR1ZSwgTm92IDA2LCAyMDE4IGF0IDA1OjE0OjA3
UE0gKzAxMDAsIEx1Y2FzIFN0YWNoIHdyb3RlOgo+ID4gT24gNjRiaXQgYXJjaGVzIHRoZSBmaWxl
IGNvdmVyaW5nIHRoZSB3aG9sZSBhZGRyZXNzIHNwYWNlIGlzIGxhcmdlciB0aGFuCj4gPiB3aGF0
IGNhbiBiZSByZXByZXNlbnRlZCBpbiB0aGUgbG9mZl90IHR5cGUgKHM2NCkgdXNlZCBmb3IgdGhl
IGZpbGUgc2l6ZS4KPiA+IFRodXMgdGhlIHNpemUgb2YgdGhpcyBkZXZpY2UgaXMgaW50ZXJwcmV0
ZWQgYXMgbmVnYXRpdmUgaW4gYSBsb3Qgb2YKPiA+IHBsYWNlcy4gRml4IHRoaXMgYnkgdHJ1bmNh
dGluZyB0aGUgc2l6ZSB0byBmaXQgdGhlIGZpbGUgc2l6ZSB0eXBlLgo+IAo+IFdoaWxlIHRoaXMg
aXMgcHJvYmFibHkgYW4gYXBwcm9wcmlhdGUgc29sdXRpb24gZm9yIHNvbWUgYXJjaGl0ZWN0dXJl
cywgaXQgd2lsbMKgCj4gY2F1c2UgcHJvYmxlbXMgb24gTUlQUzY0LiBUaGUgcm9vdCBvZiBldmls
IGlzIE1JUFM2NCBhZGRyZXNzIHNwYWNlwqAKPiBzZWdtZW50YXRpb246IGh0dHBzOi8vZG9jcGxh
eWVyLm5ldC9kb2NzLWltYWdlcy8yNS80NTUzOTA2L2ltYWdlcy8yMS0wLnBuZykuwqDCoAo+IE1v
c3Qgbm90YWJseSB5b3VyIHBhdGNoIHByZXZlbnRzIGFjY2VzcyB0byB0aGUgeGtwaHlzIHNlZ21l
bnQsIHdoZXJlIG1vc3TCoAo+IHBlcmlwaGVyYWwgZGV2aWNlcyBvZiBhIFNvQyBhcmUgYWNjZXNz
aWJsZS4KCklzbid0IHRoaXMgYSBwcm9ibGVtIGZvciBNSVBTNjQgZXZlbiBiZWZvcmUgbXkgcGF0
Y2g/IEZvciBleGFtcGxlIHRoZQoibXciIGNvbW1hbmQgdXNlcyBvcGVuX2FuZF9sc2VlayBvbiB0
aGUgZGV2L21lbSBmaWxlIHdpdGggdGhlIGFkZHJlc3MKb2YgdGhlIHdyaXRlIGJlaW5nIHRoZSBz
ZWVrIG9mZnNldC4gQXMgdGhpcyBpcyBhIGxvZmZfdCB2YWx1ZSwgc2Vla2luZwp0byBzb21ldGhp
bmcgd2l0aCB0aGUgaGlnaGVzdCBvcmRlciBiaXQgc2V0IHdvbid0IGRvIHdoYXQgeW91IGV4cGVj
dCB0bwpoYXBwZW4sIHJpZ2h0PwoKUmVnYXJkcywKTHVjYXMKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2JhcmVib3gK
