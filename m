Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WCmJo-00039B-FU
 for barebox@lists.infradead.org; Mon, 10 Feb 2014 08:34:21 +0000
Date: Mon, 10 Feb 2014 09:33:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140210083358.GH17250@pengutronix.de>
References: <1391868972-31978-1-git-send-email-eric@eukrea.com>
 <1391868972-31978-2-git-send-email-eric@eukrea.com>
 <1391869601.90335932@f192.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1391869601.90335932@f192.i.mail.ru>
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
Subject: Re: [PATCH 2/7] ARM: i.MX53: Add sata to devicetree
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

T24gU2F0LCBGZWIgMDgsIDIwMTQgYXQgMDY6MjY6NDFQTSArMDQwMCwgQWxleGFuZGVyIFNoaXlh
biB3cm90ZToKPiDQodGD0LHQsdC+0YLQsCwgIDgg0YTQtdCy0YDQsNC70Y8gMjAxNCwgMTU6MTYg
KzAxOjAwINC+0YIgRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ogo+ID4gU2lnbmVkLW9m
Zi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Cj4gPiAtLS0KPiA+IGFyY2gvYXJt
L2R0cy9pbXg1My5kdHNpIHwgOSArKysrKysrKysKPiA+IDEgZmlsZSBjaGFuZ2VkLCA5IGluc2Vy
dGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9pbXg1My5kdHNpIGIv
YXJjaC9hcm0vZHRzL2lteDUzLmR0c2kKPiA+IGluZGV4IDY3ODU0N2MuLjkxNjU5YjggMTAwNjQ0
Cj4gPiAtLS0gYS9hcmNoL2FybS9kdHMvaW14NTMuZHRzaQo+ID4gKysrIGIvYXJjaC9hcm0vZHRz
L2lteDUzLmR0c2kKPiA+IEBAIC03NSw2ICs3NSwxNSBAQAo+ID4gaW50ZXJydXB0LXBhcmVudCA9
IDwmdHppYz47Cj4gPiByYW5nZXM7Cj4gPiAKPiA+ICsJCXNhdGE6IHNhdGFAMTAwMDAwMDAgewo+
ID4gKwkJCWNvbXBhdGlibGUgPSAiZnNsLGlteDUzLWFoY2kiOwo+ID4gKwkJCXJlZyA9IDwweDEw
MDAwMDAwIDB4MTAwMD47Cj4gPiArCQkJaW50ZXJydXB0cyA9IDwyOD47Cj4gPiArCQkJY2xvY2tz
ID0gPCZjbGtzIDE3Mz4sIDwmY2xrcyA1PiwgPCZjbGtzIDE4OD47Cj4gPiArCQkJY2xvY2stbmFt
ZXMgPSAic2F0YSIsICJhaGIiLCAicGVyIjsKPiA+ICsJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+
ID4gKwkJfTsKPiAKPiBTYXNjaGEsIHdlIHN0b3AgY2hhbmdpbmcgRFRTIG9mIHRoZSBrZXJuZWwg
b3Igbm90Pwo+IFdoYXQgaXMgdGhlIHVsdGltYXRlIHNvbHV0aW9uPwoKV2hhdCBkbyB5b3Ugc3Vn
Z2VzdCBmb3IgdGhlIGNhc2UgYWJvdmU/IEEgaW14NTMtYmIuZHRzaSBpbmNsdWRlZCBmcm9tCmlt
eDUzLmR0c2k/IEkgdGhpbmsgZGlzYWxsb3dpbmcgYWhjaSBzdXBwb3J0IGZvciBiYXJlYm94IGlm
IGl0J3Mgbm90CnVwc3RyZWFtIGluIExpbnV4IGlzIG5vdCBhIGdvb2Qgb3B0aW9uLgoKU2FzY2hh
CgoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB8CkluZHVzdHJpYWwgTGludXggU29sdXRpb25zICAgICAg
ICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8ClBlaW5lciBTdHIuIDYt
OCwgMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAg
ICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICAr
NDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94
Cg==
