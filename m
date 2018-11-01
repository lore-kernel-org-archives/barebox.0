Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gIHoe-00009v-VC
 for barebox@lists.infradead.org; Thu, 01 Nov 2018 18:35:38 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gIHoT-0000yA-Iu
 for barebox@lists.infradead.org; Thu, 01 Nov 2018 19:35:25 +0100
Message-ID: <1541097325.3255.14.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 01 Nov 2018 19:35:25 +0100
In-Reply-To: <20181101091846.10882-9-l.stach@pengutronix.de>
References: <20181101091846.10882-1-l.stach@pengutronix.de>
 <20181101091846.10882-9-l.stach@pengutronix.de>
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
Subject: Re: [PATCH v4 09/11] ARM: rpi: add revision IDs for Pi 3 Model B
 and Pi Zero
To: barebox@lists.infradead.org

QW0gRG9ubmVyc3RhZywgZGVuIDAxLjExLjIwMTgsIDEwOjE4ICswMTAwIHNjaHJpZWIgTHVjYXMg
U3RhY2g6Cj4gPiBGcm9tOiBFbnJpY28gSm9lcm5zIDxlam9AcGVuZ3V0cm9uaXguZGU+Cj4gCj4g
PiBTaWduZWQtb2ZmLWJ5OiBFbnJpY28gSm9lcm5zIDxlam9AcGVuZ3V0cm9uaXguZGU+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBMdWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4KPiA+IFRl
c3RlZC1ieTogUm9sYW5kIEhpZWJlciA8ci5oaWViZXJAcGVuZ3V0cm9uaXguZGU+Cj4gLS0tCj4g
wqBhcmNoL2FybS9ib2FyZHMvcmFzcGJlcnJ5LXBpL3JwaS1jb21tb24uYyB8IDIgKysKPiDCoGFy
Y2gvYXJtL21hY2gtYmNtMjgzeC9pbmNsdWRlL21hY2gvbWJveC5oIHwgNCArKysrCj4gwqAyIGZp
bGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9i
b2FyZHMvcmFzcGJlcnJ5LXBpL3JwaS1jb21tb24uYyBiL2FyY2gvYXJtL2JvYXJkcy9yYXNwYmVy
cnktcGkvcnBpLWNvbW1vbi5jCj4gaW5kZXggNmUzNzViYzk4NGRlLi5hZWM4Y2IyN2VkNDAgMTAw
NjQ0Cj4gLS0tIGEvYXJjaC9hcm0vYm9hcmRzL3Jhc3BiZXJyeS1waS9ycGktY29tbW9uLmMKPiAr
KysgYi9hcmNoL2FybS9ib2FyZHMvcmFzcGJlcnJ5LXBpL3JwaS1jb21tb24uYwo+IEBAIC0xNzQs
NiArMTc0LDggQEAgY29uc3Qgc3RydWN0IHJwaV9tb2RlbCBycGlfbW9kZWxzX29sZF9zY2hlbWVb
XSA9IHsKPiDCoGNvbnN0IHN0cnVjdCBycGlfbW9kZWwgcnBpX21vZGVsc19uZXdfc2NoZW1lW10g
PSB7Cj4gPiDCoAlSUElfTU9ERUwoMCwgIlVua25vd24gbW9kZWwiLCBOVUxMKSwKPiA+IMKgCVJQ
SV9NT0RFTChCQ00yODM2X0JPQVJEX1JFVl8yX0IsICIyIE1vZGVsIEIiLCBycGlfYl9wbHVzX2lu
aXQpLAo+ID4gKwlSUElfTU9ERUwoQkNNMjgzN19CT0FSRF9SRVZfM19CLCAiMyBNb2RlbCBCIiwg
cnBpX2JfcGx1c19pbml0KSwKPiA+ICsJUlBJX01PREVMKEJDTTI4MzdfQk9BUkRfUkVWX1pFUk8s
ICJaZXJvIiwgcnBpX2JfcGx1c19pbml0KSwKPiDCoH07Cj4gwqAKPiDCoHN0YXRpYyBpbnQgcnBp
X2JvYXJkX3JldiA9IDA7Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtYmNtMjgzeC9pbmNs
dWRlL21hY2gvbWJveC5oIGIvYXJjaC9hcm0vbWFjaC1iY20yODN4L2luY2x1ZGUvbWFjaC9tYm94
LmgKPiBpbmRleCAyYjVhZWE4OGVlMGEuLjRjZGRmOTlhODQyOSAxMDA2NDQKPiAtLS0gYS9hcmNo
L2FybS9tYWNoLWJjbTI4M3gvaW5jbHVkZS9tYWNoL21ib3guaAo+ICsrKyBiL2FyY2gvYXJtL21h
Y2gtYmNtMjgzeC9pbmNsdWRlL21hY2gvbWJveC5oCj4gQEAgLTEyOSw2ICsxMjksMTAgQEAgc3Ry
dWN0IGJjbTI4MzVfbWJveF90YWdfaGRyIHsKPiDCoAo+IMKgLyogUlBpIDIgKi8KPiA+IMKgI2Rl
ZmluZSBCQ00yODM2X0JPQVJEX1JFVl8yX0IJCTB4NAo+ICsvKiBSUGkgMyAqLwo+ID4gKyNkZWZp
bmUgQkNNMjgzN19CT0FSRF9SRVZfM19CCQkweDgKPiArLyogWmVybyAqLwo+ID4gKyNkZWZpbmUg
QkNNMjgzN19CT0FSRF9SRVZfWkVSTwkJMHg5CgpSb2JlcnQgbm90ZWQgdGhhdCB0aGUgWmVybyBp
cyBhY3R1YWxseSBhIEJDTTI4MzUgU29DLiBTYXNjaGEsIGNhbiB5b3UKZml4IHVwIHRoZSBkZWZp
bmUgbmFtZSB3aGlsZSBhcHBseWluZz8KClJlZ2FyZHMsCkx1Y2FzCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJl
Ym94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9iYXJlYm94Cg==
