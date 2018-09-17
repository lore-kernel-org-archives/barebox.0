Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g1waq-0008Gf-Nr
 for barebox@lists.infradead.org; Mon, 17 Sep 2018 16:41:50 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1g1wae-00051H-TX
 for barebox@lists.infradead.org; Mon, 17 Sep 2018 18:41:36 +0200
Message-ID: <1537202496.3362.133.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 17 Sep 2018 18:41:36 +0200
In-Reply-To: <20180917163627.14746-1-l.stach@pengutronix.de>
References: <20180917163627.14746-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: rdu2: config PMIC SW1AB and SW1C rails to 1.375
To: barebox@lists.infradead.org

QW0gTW9udGFnLCBkZW4gMTcuMDkuMjAxOCwgMTg6MzYgKzAyMDAgc2NocmllYiBMdWNhcyBTdGFj
aDoKPiBUaGlzIGlzIHRoZSBkZWZhdWx0IG91dC1vZi1yZXNldCB2b2x0YWdlLCBidXQgaWYgb25s
eSB0aGUgaS5NWDYgU29DCj4gZ290IHJlc2V0LCB0aGUgUE1JQyBtaWdodCBzdGlsbCBiZSBzdHVj
ayBhdCB0aGUgbG93ZXIgdm9sYXRnZSBmb3IgdGhlCj4gc2xvdyBvcGVyYXRpbmcgcG9pbnQuCj4g
ClBsZWFzZSBpZ25vcmUsIHRoaXMgcGF0Y2ggaXMgaW5jb21wbGV0ZSBhbmQgSSBoYXZlIGEgZmV3
IG1vcmUgdGhhdAptaWdodCBmaXQgaW50byB0aGlzIHNlcmllcywgc28gd2lsbCByZXNlbmQgbGF0
ZXIuCgpSZWdhcmRzLApMdWNhcwoKPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBTdGFjaCA8bC5zdGFj
aEBwZW5ndXRyb25peC5kZT4KPiAtLS0KPiDCoGFyY2gvYXJtL2JvYXJkcy96aWktaW14NnEtcmR1
Mi9ib2FyZC5jIHwgMTcgKysrKysrKysrKysrKysrKysKPiDCoDEgZmlsZSBjaGFuZ2VkLCAxNyBp
bnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2JvYXJkcy96aWktaW14NnEt
cmR1Mi9ib2FyZC5jIGIvYXJjaC9hcm0vYm9hcmRzL3ppaS1pbXg2cS1yZHUyL2JvYXJkLmMKPiBp
bmRleCBmNmM5MDhjOWYxNmQuLmJjZTIyMWJmOGQyMCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9i
b2FyZHMvemlpLWlteDZxLXJkdTIvYm9hcmQuYwo+ICsrKyBiL2FyY2gvYXJtL2JvYXJkcy96aWkt
aW14NnEtcmR1Mi9ib2FyZC5jCj4gQEAgLTEzNywxMCArMTM3LDI3IEBAIGxhdGVfaW5pdGNhbGwo
cmR1Ml9lbmFibGVfZnJvbnRfcGFuZWxfdXNiKTsKPiDCoAo+IMKgc3RhdGljIGludCByZHUyX2Rl
dmljZXNfaW5pdCh2b2lkKQo+IMKgewo+ID4gKwlzdHJ1Y3QgaTJjX2NsaWVudCBjbGllbnQ7Cj4g
Kwo+ID4gwqAJaWYgKCFvZl9tYWNoaW5lX2lzX2NvbXBhdGlibGUoInppaSxpbXg2cS16aWktcmR1
MiIpICYmCj4gPiDCoAnCoMKgwqDCoCFvZl9tYWNoaW5lX2lzX2NvbXBhdGlibGUoInppaSxpbXg2
cXAtemlpLXJkdTIiKSkKPiA+IMKgCQlyZXR1cm4gMDsKPiDCoAo+ID4gKwljbGllbnQuYWRhcHRl
ciA9IGkyY19nZXRfYWRhcHRlcigxKTsKPiA+ICsJaWYgKGNsaWVudC5hZGFwdGVyKSB7Cj4gPiAr
CQl1OCByZWc7Cj4gKwo+ID4gKwkJLyoKPiA+ICsJCcKgKiBSZXNldCBQTUlDIFNXMUFCIGFuZCBT
VzFDIHJhaWxzIHRvIDEuMzc1Vi4gSWYgYW4gZXZlbnQKPiA+ICsJCcKgKiBjYXVzZWQgb25seSB0
aGUgaS5NWDYgU29DIHJlc2V0LCB0aGUgUE1JQyBtaWdodCBzdGlsbCBiZQo+ID4gKwkJwqAqIHN0
dWNrIG9uIHRoZSBsb3cgdm9sdGFnZSBmb3IgdGhlIHNsb3cgb3BlcmF0aW5nIHBvaW50Lgo+ID4g
KwkJwqAqLwo+ID4gKwkJY2xpZW50LmFkZHIgPSAweDA4OyAvKiBQTUlDIGkyYyBhZGRyZXNzICov
Cj4gPiArCQlyZWcgPSAweDJiOyAvKiAxLjM3NVYsIHZhbGlkIGZvciBib3RoIHJhaWxzICovCj4g
PiArCQlpMmNfd3JpdGVfcmVnKCZjbGllbnQsIDB4MjAsICZyZWcsIDEpOwo+ID4gKwkJaTJjX3dy
aXRlX3JlZygmY2xpZW50LCAweDJlLCAmcmVnLCAxKTsKPiA+ICsJfQo+ICsKPiA+IMKgCWJhcmVi
b3hfc2V0X2hvc3RuYW1lKCJyZHUyIik7Cj4gwqAKPiA+IMKgCWlteDZfYmJ1X2ludGVybmFsX3Nw
aV9pMmNfcmVnaXN0ZXJfaGFuZGxlcigiU1BJIiwgIi9kZXYvbTI1cDAuYmFyZWJveCIsCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxp
bmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
