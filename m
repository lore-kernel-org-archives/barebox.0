Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPRGk-0000rO-5X
 for barebox@lists.infradead.org; Mon, 17 Mar 2014 06:43:30 +0000
Date: Mon, 17 Mar 2014 07:43:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140317064308.GD17250@pengutronix.de>
References: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
 <1394807569-23620-14-git-send-email-s.hauer@pengutronix.de>
 <1394813201.850386421@f81.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1394813201.850386421@f81.i.mail.ru>
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
Subject: Re: [PATCH 13/29] clk: introduce CLK_SET_RATE_PARENT flag
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

T24gRnJpLCBNYXIgMTQsIDIwMTQgYXQgMDg6MDY6NDFQTSArMDQwMCwgQWxleGFuZGVyIFNoaXlh
biB3cm90ZToKPiDQn9GP0YLQvdC40YbQsCwgMTQg0LzQsNGA0YLQsCAyMDE0LCAxNTozMiArMDE6
MDAg0L7RgiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+Ogo+ID4gU2lnbmVk
LW9mZi1ieTogU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgo+ID4gLS0tCj4g
PiAgaW5jbHVkZS9saW51eC9jbGsuaCB8IDMgKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9jbGsuaCBiL2lu
Y2x1ZGUvbGludXgvY2xrLmgKPiA+IGluZGV4IDdlNTAxMGEuLjI3MDRiMGYgMTAwNjQ0Cj4gPiAt
LS0gYS9pbmNsdWRlL2xpbnV4L2Nsay5oCj4gPiArKysgYi9pbmNsdWRlL2xpbnV4L2Nsay5oCj4g
PiBAQCAtMTk2LDYgKzE5Niw5IEBAIHN0YXRpYyBpbmxpbmUgaW50IGNsa19zZXRfcmF0ZShzdHJ1
Y3QgY2xrICpjbGssIHVuc2lnbmVkIGxvbmcgcmF0ZSkKPiA+ICAjZW5kaWYKPiA+ICAKPiA+ICAj
aWZkZWYgQ09ORklHX0NPTU1PTl9DTEsKPiA+ICsKPiA+ICsjZGVmaW5lIENMS19TRVRfUkFURV9Q
QVJFTlQgICAgICgxIDw8IDApIC8qIHByb3BhZ2F0ZSByYXRlIGNoYW5nZSB1cCBvbmUgbGV2ZWwg
Ki8KPiAKPiBMZXRzIGRvIGl0IHNhbWUgdmFsdWUgYXMgaW4gdGhlIGtlcm5lbCwgaWUgIENMS19T
RVRfUkFURV9QQVJFTlQgQklUKDIpCgpPaywgY2FuIGRvLiBNYXliZSBpdCdzIGJldHRlciB3aGVu
IHdlIGFkZCBtb3JlIGZsYWdzIGZyb20gdGhlIGtlcm5lbC4KClNhc2NoYQoKLS0gClBlbmd1dHJv
bml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB8CkluZHVzdHJpYWwgTGludXggU29sdXRpb25zICAgICAgICAgICAgICAgICB8IGh0
dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8ClBlaW5lciBTdHIuIDYtOCwgMzExMzcgSGlsZGVz
aGVpbSwgR2VybWFueSB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0
IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTct
NTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpi
YXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
