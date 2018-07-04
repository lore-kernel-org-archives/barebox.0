Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1facpY-0006Ck-CP
 for barebox@lists.infradead.org; Wed, 04 Jul 2018 08:08:11 +0000
Message-ID: <1530691671.15725.0.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 04 Jul 2018 10:07:51 +0200
In-Reply-To: <20180704041024.32569-1-andrew.smirnov@gmail.com>
References: <20180704041024.32569-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/4] nvmem: rave-sp-eeprom: Remove VLA usage
To: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

QW0gRGllbnN0YWcsIGRlbiAwMy4wNy4yMDE4LCAyMToxMCAtMDcwMCBzY2hyaWViIEFuZHJleSBT
bWlybm92Ogo+IFRoaXMgaXMgYSBiYWNrcG9ydCBvZiBwYXRjaCBbMV0gYnkgS2VlcyBDb29rCj4g
Cj4gWzFdIGh0dHBzOi8vbGttbC5rZXJuZWwub3JnL3IvMjAxODA2MjAxODI2MDAuR0EyNDI5N0Bi
ZWFzdAo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuZHJleSBTbWlybm92IDxhbmRyZXcuc21pcm5vdkBn
bWFpbC5jb20+CgpUaGFua3MuIFNlcmllcyBpczoKUmV2aWV3ZWQtYnk6IEx1Y2FzIFN0YWNoIDxs
LnN0YWNoQHBlbmd1dHJvbml4LmRlPgoKPiAtLS0KPiDCoGRyaXZlcnMvbnZtZW0vcmF2ZS1zcC1l
ZXByb20uYyB8IDYgKysrKystCj4gwqAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZW0vcmF2ZS1zcC1lZXBy
b20uYyBiL2RyaXZlcnMvbnZtZW0vcmF2ZS1zcC1lZXByb20uYwo+IGluZGV4IDVmZDQyOWYxNi4u
ZmY5MWYzOWY3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbnZtZW0vcmF2ZS1zcC1lZXByb20uYwo+
ICsrKyBiL2RyaXZlcnMvbnZtZW0vcmF2ZS1zcC1lZXByb20uYwo+IEBAIC01NSw2ICs1NSw3IEBA
IGVudW0gcmF2ZV9zcF9lZXByb21faGVhZGVyX3NpemUgewo+ID4gwqAJUkFWRV9TUF9FRVBST01f
SEVBREVSX1NNQUxMID0gNFUsCj4gPiDCoAlSQVZFX1NQX0VFUFJPTV9IRUFERVJfQklHwqDCoMKg
PSA1VSwKPiDCoH07Cj4gPiArI2RlZmluZSBSQVZFX1NQX0VFUFJPTV9IRUFERVJfTUFYCVJBVkVf
U1BfRUVQUk9NX0hFQURFUl9CSUcKPiDCoAo+ID4gPiDCoCNkZWZpbmUJUkFWRV9TUF9FRVBST01f
UEFHRV9TSVpFCTMyVQo+IMKgCj4gQEAgLTExNSw5ICsxMTYsMTIgQEAgc3RhdGljIGludCByYXZl
X3NwX2VlcHJvbV9pbyhzdHJ1Y3QgcmF2ZV9zcF9lZXByb20gKmVlcHJvbSwKPiA+IMKgCWNvbnN0
IHVuc2lnbmVkIGludCByc3Bfc2l6ZSA9Cj4gPiDCoAkJaXNfd3JpdGUgPyBzaXplb2YoKnBhZ2Up
IC0gc2l6ZW9mKHBhZ2UtPmRhdGEpIDogc2l6ZW9mKCpwYWdlKTsKPiA+IMKgCXVuc2lnbmVkIGlu
dCBvZmZzZXQgPSAwOwo+ID4gLQl1OCBjbWRbY21kX3NpemVdOwo+ID4gKwl1OCBjbWRbUkFWRV9T
UF9FRVBST01fSEVBREVSX01BWCArIHNpemVvZihwYWdlLT5kYXRhKV07Cj4gPiDCoAlpbnQgcmV0
Owo+IMKgCj4gPiArCWlmIChXQVJOX09OKGNtZF9zaXplID4gc2l6ZW9mKGNtZCkpKQo+ID4gKwkJ
cmV0dXJuIC1FSU5WQUw7Cj4gKwo+ID4gwqAJY21kW29mZnNldCsrXSA9IGVlcHJvbS0+YWRkcmVz
czsKPiA+IMKgCWNtZFtvZmZzZXQrK10gPSAwOwo+ID4gwqAJY21kW29mZnNldCsrXSA9IHR5cGU7
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94
IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
