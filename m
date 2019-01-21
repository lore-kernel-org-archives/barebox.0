Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glW19-0008CP-N0
 for barebox@lists.infradead.org; Mon, 21 Jan 2019 09:37:21 +0000
Date: Mon, 21 Jan 2019 10:37:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190121093717.mjhcuj7f753sqtpw@pengutronix.de>
References: <20190120103533.7146-1-shc_work@mail.ru>
 <20190120103533.7146-2-shc_work@mail.ru>
 <20190121085524.s23x626pj6kvws6x@pengutronix.de>
 <1548063152.777528564@f475.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1548063152.777528564@f475.i.mail.ru>
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
Subject: Re: [PATCH 02/10] ARM: imx: delete unused mach/iomux-mx50.h
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

T24gTW9uLCBKYW4gMjEsIDIwMTkgYXQgMTI6MzI6MzJQTSArMDMwMCwgQWxleGFuZGVyIFNoaXlh
biB3cm90ZToKPiA+0J/QvtC90LXQtNC10LvRjNC90LjQuiwgMjEg0Y/QvdCy0LDRgNGPIDIwMTks
IDExOjU1ICswMzowMCDQvtGCIFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT46
Cj4gPgo+ID5PbiBTdW4sIEphbiAyMCwgMjAxOSBhdCAwMTozNToyNVBNICswMzAwLCBBbGV4YW5k
ZXIgU2hpeWFuIHdyb3RlOgo+ID4+IFRoaXMgcmVtb3ZlcyB0aGUgc3RhbGUgbWFjaC9pb211eC1t
eDUwLmggaW5jbHVkZSBhcyB0aGVyZSBpcyBubyB1c2VyIG9mIGl0Lgo+ID4+IAo+ID4+IFNpZ25l
ZC1vZmYtYnk6IEFsZXhhbmRlciBTaGl5YW4gPCBzaGNfd29ya0BtYWlsLnJ1ID4KPiA+PiAtLS0K
PiA+PiAgYXJjaC9hcm0vbWFjaC1pbXgvaW5jbHVkZS9tYWNoL2lvbXV4LW14NTAuaCB8IDk0MyAt
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPj4gIDEgZmlsZSBjaGFuZ2VkLCA5NDMgZGVs
ZXRpb25zKC0pCj4gPj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9tYWNoLWlteC9pbmNs
dWRlL21hY2gvaW9tdXgtbXg1MC5oCj4gPgo+ID5JIHByZWZlciB0byBrZWVwIHRoaXMgb25lIGFy
b3VuZCBhcyBpdCBtaWdodCBiZSB1c2VkIHRvIGNvbmZpZ3VyZSB0aGUKPiA+VUFSVCAob3Igb3Ro
ZXIgcGFkcyBuZWVkZWQgZnJvbSBsb3dsZXZlbCBjb2RlKSBwYWRzIGZyb20gbG93bGV2ZWwgY29k
ZS4KPiAKPiBDYW4gdGhlIDxkdC1iaW5kaW5ncy8uLi8uLi9zcmMvYXJtL2lteDUwLXBpbmZ1bmMu
aD4gYmUgdXNlZCBpbnN0ZWFkIGZvciBzdWNoIHB1cnBvc2VzLAoKSG93IHdvdWxkIHlvdSB1c2Ug
dGhlc2UgdmFsdWVzIGluIEMgY29kZT8KCiNkZWZpbmUgTVg1MF9QQURfS0VZX1JPVzFfX0dQSU80
XzMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAweDAyYyAweDJkOCAweDAwMCAweDEgMHgw
CgpUaGUgZGVmaW5lcyBsYWNrIGEgY29tbWEgYmV0d2VlbiB0aGUgdmFsdWVzIHRvIGJlIHVzYWJs
ZSBmcm9tIEMgY29kZS4gSWYKdGhhdCB3b3VsZCB3b3JrIHNvbWVob3cgdGhlbiB5ZXMsIHdlIGNv
dWxkIHVzZSB0aGVzZSBmaWxlcy4KClNhc2NoYQoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAg
ICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8CkluZHVz
dHJpYWwgTGludXggU29sdXRpb25zICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0
cm9uaXguZGUvICB8ClBlaW5lciBTdHIuIDYtOCwgMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSB8
IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhS
QSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcg
bGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
