Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x232.google.com ([2a00:1450:4013:c01::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJ7mk-0002rV-Vl
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 20:42:27 +0000
Received: by mail-ea0-f178.google.com with SMTP id a15so2108905eae.23
 for <barebox@lists.infradead.org>; Thu, 27 Feb 2014 12:42:04 -0800 (PST)
Message-ID: <530FA317.5060604@gmail.com>
Date: Thu, 27 Feb 2014 21:41:59 +0100
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1393533550-1865-1-git-send-email-u.kleine-koenig@pengutronix.de>
 <1393533550-1865-7-git-send-email-u.kleine-koenig@pengutronix.de>
In-Reply-To: <1393533550-1865-7-git-send-email-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 06/10] ARM: a9m2410: convert to devfs_create_partitions
To: =?UTF-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>, barebox@lists.infradead.org

T24gMDIvMjcvMjAxNCAwOTozOSBQTSwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gU2lnbmVk
LW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5k
ZT4KPiAtLS0KPiAgIGFyY2gvYXJtL2JvYXJkcy9hOW0yNDEwL2E5bTI0MTAuYyB8IDI3ICsrKysr
KysrKysrKysrKysrKysrLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIwIGluc2VydGlvbnMo
KyksIDcgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9hcmRzL2E5bTI0
MTAvYTltMjQxMC5jIGIvYXJjaC9hcm0vYm9hcmRzL2E5bTI0MTAvYTltMjQxMC5jCj4gaW5kZXgg
YjJiNmM4NzExN2EzLi45NDNiNzcwOWJmMmUgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vYm9hcmRz
L2E5bTI0MTAvYTltMjQxMC5jCj4gKysrIGIvYXJjaC9hcm0vYm9hcmRzL2E5bTI0MTAvYTltMjQx
MC5jCj4gQEAgLTgyLDYgKzgyLDI0IEBAIHN0YXRpYyBpbnQgYTltMjQxMF9tZW1faW5pdCh2b2lk
KQo+ICAgfQo+ICAgbWVtX2luaXRjYWxsKGE5bTI0MTBfbWVtX2luaXQpOwo+Cj4gK3N0YXRpYyBj
b25zdCBzdHJ1Y3QgZGV2ZnNfcGFydGl0aW9uIGE5bTI0MTBfbmFuZDBfcGFydGl0aW9uc1tdID0g
ewo+ICsJewo+ICsJCS5vZmZzZXQgPSAwLAo+ICsJCS5zaXplID0gMHg0MDAwMCwKPiArCQkuZmxh
Z3MgPSBERVZGU19QQVJUSVRJT05fRklYRUQsCj4gKwkJLm5hbWUgPSAic2VsZl9yYXciLAo+ICsJ
CS5iYm5hbWUgPSAic2VsZjAiLAo+ICsJfSwgewo+ICsJCS5vZmZzZXQgPSBERVZGU19QQVJUSVRJ
T05fQVBQRU5ELAo+ICsJCS5zaXplID0gMHgyMDAwMCwKPiArCQkuZmxhZ3MgPSBERVZGU19QQVJU
SVRJT05fRklYRUQsCj4gKwkJLm5hbWUgPSAiZW52X3JhdyIsCj4gKwkJLmJibmFtZSA9ICJlbnYw
IiwKPiArCX0sIHsKPiArCQkvKiBzZW50aW5lbCAqLwo+ICsJfQo+ICt9Owo+ICsKPiAgIHN0YXRp
YyBpbnQgYTltMjQxMF9kZXZpY2VzX2luaXQodm9pZCkKPiAgIHsKPiAgIAl1aW50MzJfdCByZWc7
Cj4gQEAgLTExNiwxNCArMTM0LDkgQEAgc3RhdGljIGludCBhOW0yNDEwX2RldmljZXNfaW5pdCh2
b2lkKQo+ICAgCWFkZF9nZW5lcmljX2RldmljZSgic21jOTFjMTExIiwgREVWSUNFX0lEX0RZTkFN
SUMsIE5VTEwsIFMzQ19DUzFfQkFTRSArIDB4MzAwLAo+ICAgCQkJMTYsIElPUkVTT1VSQ0VfTUVN
LCBOVUxMKTsKPgo+IC0jaWZkZWYgQ09ORklHX05BTkQKPiAtCS8qIC0tLS0tLS0tLS0tIGFkZCBz
b21lIHZpdGFsIHBhcnRpdGlvbnMgLS0tLS0tLS0gKi8KPiAtCWRldmZzX2FkZF9wYXJ0aXRpb24o
Im5hbmQwIiwgMHgwMDAwMCwgMHg0MDAwMCwgREVWRlNfUEFSVElUSU9OX0ZJWEVELCAic2VsZl9y
YXciKTsKPiAtCWRldl9hZGRfYmJfZGV2KCJzZWxmX3JhdyIsICJzZWxmMCIpOwo+ICsJaWYgKElT
X0VOQUJMRUQoQ09ORklHX05BTkQpKQo+ICsJCWRldmZzX2NyZWF0ZV9wYXJ0aXRpb25zKCJuYW5k
MCIsIGE5bTI0MTBfbmFuZDBfcGFydGl0aW9ucyk7CgpBIGxvdCBtb3JlICJyZWFkYWJsZSIsIHRo
YW5rcyBmb3IgY29uc2lkZXJpbmcgdGhlIHJldmlldyEKClNlYmFzdGlhbgoKPiAtCWRldmZzX2Fk
ZF9wYXJ0aXRpb24oIm5hbmQwIiwgMHg0MDAwMCwgMHgyMDAwMCwgREVWRlNfUEFSVElUSU9OX0ZJ
WEVELCAiZW52X3JhdyIpOwo+IC0JZGV2X2FkZF9iYl9kZXYoImVudl9yYXciLCAiZW52MCIpOwo+
IC0jZW5kaWYKPiAgIAlhcm1saW51eF9zZXRfYXJjaGl0ZWN0dXJlKE1BQ0hfVFlQRV9BOU0yNDEw
KTsKPgo+ICAgCXJldHVybiAwOwo+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJv
eAo=
