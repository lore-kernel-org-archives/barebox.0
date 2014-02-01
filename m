Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W9f7L-0005A9-SL
 for barebox@lists.infradead.org; Sat, 01 Feb 2014 18:16:36 +0000
Date: Sat, 1 Feb 2014 19:13:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140201181349.GB16215@pengutronix.de>
References: <1391178204-20889-1-git-send-email-s.hauer@pengutronix.de>
 <1391178204-20889-14-git-send-email-s.hauer@pengutronix.de>
 <1391178936.715702010@f354.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1391178936.715702010@f354.i.mail.ru>
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
Subject: Re: [PATCH 13/15] ARM: i.MX25: Karo TX25: Switch to devicetree support
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

T24gRnJpLCBKYW4gMzEsIDIwMTQgYXQgMDY6MzU6MzZQTSArMDQwMCwgQWxleGFuZGVyIFNoaXlh
biB3cm90ZToKPiDQn9GP0YLQvdC40YbQsCwgMzEg0Y/QvdCy0LDRgNGPIDIwMTQsIDE1OjIzICsw
MTowMCDQvtGCIFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT46Cj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+Cj4gPiAtLS0K
PiA+IGFyY2gvYXJtL2JvYXJkcy9rYXJvLXR4MjUvYm9hcmQuYyAgIHwgMTMwICsrKysrKysrKyst
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+IC4uLgo+ID4gI2RlZmluZSBUWDI1X0ZFQ19QV1Jf
R1BJTwlJTVhfR1BJT19OUig0LCA5KQo+ID4gI2RlZmluZSBUWDI1X0ZFQ19SU1RfR1BJTwlJTVhf
R1BJT19OUig0LCA3KQo+ID4gCj4gPiArc3RhdGljIHN0cnVjdCBncGlvIGZlY19ncGlvc1tdID0g
ewo+ID4gKwl7Cj4gPiArCQkuZ3BpbyA9IFRYMjVfRkVDX1BXUl9HUElPLAo+ID4gKwkJLmZsYWdz
ID0gR1BJT0ZfT1VUX0lOSVRfTE9XLAo+ID4gKwkJLmxhYmVsID0gImZlYy1wd3IiLAo+ID4gKwl9
LCB7Cj4gPiArCQkuZ3BpbyA9IFRYMjVfRkVDX1JTVF9HUElPLAo+ID4gKwkJLmZsYWdzID0gR1BJ
T0ZfT1VUX0lOSVRfTE9XLAo+ID4gKwkJLmxhYmVsID0gImZlYy1yc3QiLAo+ID4gKwl9LAo+ID4g
K307Cj4gCj4gWW91IGhhdmUgYWRkZWQgdGhlc2UgcGlucyB0byBEVFMgaW4gUEFUQ0ggMDgvMTUu
Cj4gV2hhdCBhIHJlYXNvbiB0byBzZXR1cCBpdCB0d2ljZT8KCjA4LzE1IG9ubHkgYWRkcyB0aGUg
cGluY3RybCBub2Rlcy4gVGhlIGNvZGUgaGVyZSBpcyB0byBwb3dlciBvbiB0aGUgcGh5CmFzIHdl
IGRvIG5vdCBoYXZlIHJlZ3VsYXRvciBzdXBwb3J0IHlldC4gSG0gSSBqdXN0IHdvbmRlciBpZiB0
aGlzIHdvcmtzCmFzIGV4cGVjdGVkLiBJIGRpZCB0aGUgcGh5IHBvd2VyIG9uIGJlZm9yZSB0aGUg
ZmVjIGRyaXZlciBpbml0aWFsaXplcywKYnV0IHRoaXMgYWxzbyBtZWFucyB0aGF0IHRoZSBwaHkg
cG93ZXIgb24gaXMgZG9uZSBiZWZvcmUgdGhlIHBpbmN0cmwgaXMKY29uZmlndXJlZC4KClNhc2No
YQoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB8CkluZHVzdHJpYWwgTGludXggU29sdXRpb25zICAgICAg
ICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8ClBlaW5lciBTdHIuIDYt
OCwgMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAg
ICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICAr
NDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94
Cg==
