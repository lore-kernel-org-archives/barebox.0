Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W5BVX-00081V-MK
 for barebox@lists.infradead.org; Mon, 20 Jan 2014 09:51:05 +0000
Date: Mon, 20 Jan 2014 10:50:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140120095041.GK16215@pengutronix.de>
References: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
 <1389971012-22977-20-git-send-email-s.hauer@pengutronix.de>
 <1389975633.343500808@f273.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1389975633.343500808@f273.i.mail.ru>
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
Subject: Re: [PATCH 19/22] ARM: dts: phycard-i.MX27: Add environment and NAND
 partitioning
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

T24gRnJpLCBKYW4gMTcsIDIwMTQgYXQgMDg6MjA6MzNQTSArMDQwMCwgQWxleGFuZGVyIFNoaXlh
biB3cm90ZToKPiDQn9GP0YLQvdC40YbQsCwgMTcg0Y/QvdCy0LDRgNGPIDIwMTQsIDE2OjAzICsw
MTowMCDQvtGCIFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT46Cj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+Cj4gPiAtLS0K
PiA+ICBhcmNoL2FybS9kdHMvaW14MjctcGh5dGVjLXBoeWNhcmQtcy1zb20uZHRzIHwgMjUgKysr
KysrKysrKysrKysrKysrKysrKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25z
KCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvaW14MjctcGh5dGVjLXBoeWNh
cmQtcy1zb20uZHRzIGIvYXJjaC9hcm0vZHRzL2lteDI3LXBoeXRlYy1waHljYXJkLXMtc29tLmR0
cwo+ID4gaW5kZXggYzAzNDFkYS4uZWJhNjI0MCAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtL2R0
cy9pbXgyNy1waHl0ZWMtcGh5Y2FyZC1zLXNvbS5kdHMKPiA+ICsrKyBiL2FyY2gvYXJtL2R0cy9p
bXgyNy1waHl0ZWMtcGh5Y2FyZC1zLXNvbS5kdHMKPiA+IEBAIC0xOSw2ICsxOSwxMSBAQAo+ID4g
IAo+ID4gIAljaG9zZW4gewo+ID4gIAkJbGludXgsc3Rkb3V0LXBhdGggPSAmdWFydDE7Cj4gPiAr
Cj4gPiArCQllbnZpcm9ubWVudEAwIHsKPiA+ICsJCQljb21wYXRpYmxlID0gImJhcmVib3gsZW52
aXJvbm1lbnQiOwo+ID4gKwkJCWRldmljZS1wYXRoID0gJm5mYywgInBhcnRuYW1lOmJhcmVib3gt
ZW52aXJvbm1lbnQiOwo+ID4gKwkJfTsKPiA+ICAJfTsKPiA+ICAKPiA+ICAJbWVtb3J5IHsKPiA+
IEBAIC03NCw0ICs3OSwyNCBAQAo+ID4gIAluYW5kLWVjYy1tb2RlID0gImh3IjsKPiA+ICAJbmFu
ZC1vbi1mbGFzaC1iYnQ7Cj4gPiAgCXN0YXR1cyA9ICJva2F5IjsKPiA+ICsKPiA+ICsJcGFydGl0
aW9uQDAgewo+ID4gKwkJbGFiZWwgPSAiYmFyZWJveCI7Cj4gPiArCQlyZWcgPSA8MHgwIDB4ODAw
MDA+Owo+ID4gKwl9Owo+ID4gKwo+ID4gKwlwYXJ0aXRpb25AMSB7Cj4gPiArCQlsYWJlbCA9ICJi
YXJlYm94LWVudmlyb25tZW50IjsKPiA+ICsJCXJlZyA9IDwweDgwMDAwIDB4ODAwMDA+Owo+ID4g
Kwl9Owo+IAo+IEkgd291bGQgc3VnZ2VzdCBuYW1lcyAiYm9vdCIgYW5kICJlbnYiLgo+IFRoaXMg
d2lsbCBiZSB0cmFuc3BhcmVudCB0byBvdGhlciBib290bG9hZGVycyBhbmQgd2lsbAo+IG5vdCBj
YXVzZSBjcml0aWNpc20gaWYgdGhlIGNoYW5nZSB3aWxsIGdvIGludG8gdGhlIGtlcm5lbC4KCk9r
LCBnb29kIGlkZWEuCgpTYXNjaGEKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfApJbmR1c3RyaWFsIExp
bnV4IFNvbHV0aW9ucyAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRl
LyAgfApQZWluZXIgU3RyLiA2LTgsIDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgfCBQaG9uZTog
KzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAg
ICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFy
ZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYmFyZWJveAo=
