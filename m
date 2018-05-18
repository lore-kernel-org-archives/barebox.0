Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJdxr-0007RE-Ex
 for barebox@lists.infradead.org; Fri, 18 May 2018 11:54:31 +0000
Message-ID: <1526644453.3948.8.camel@pengutronix.de>
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Fri, 18 May 2018 13:54:13 +0200
In-Reply-To: <20180403074851.5411-19-s.hauer@pengutronix.de>
References: <20180403074851.5411-1-s.hauer@pengutronix.de>
 <20180403074851.5411-19-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 18/19] fs: tftp: Switch to dcache implementation
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

SGkgU2FzY2hhLAoKT24gVHVlLCAyMDE4LTA0LTAzIGF0IDA5OjQ4ICswMjAwLCBTYXNjaGEgSGF1
ZXIgd3JvdGU6ClsuLi5dCj4gLXN0YXRpYyBpbnQgdGZ0cF9zdGF0KHN0cnVjdCBkZXZpY2VfZCAq
ZGV2LCBjb25zdCBjaGFyICpmaWxlbmFtZSwgc3RydWN0IHN0YXQgKnMpCj4gK3N0YXRpYyBzdHJ1
Y3QgZGVudHJ5ICp0ZnRwX2xvb2t1cChzdHJ1Y3QgaW5vZGUgKmRpciwgc3RydWN0IGRlbnRyeSAq
ZGVudHJ5LAo+ICsJCQkgICAgdW5zaWduZWQgaW50IGZsYWdzKQo+ICB7Cj4gLQlzdHJ1Y3QgZmls
ZV9wcml2ICpwcml2Owo+ICsJc3RydWN0IGlub2RlICppbm9kZTsKPiAgCj4gLQlwcml2ID0gdGZ0
cF9kb19vcGVuKGRldiwgT19SRE9OTFksIGZpbGVuYW1lKTsKPiAtCWlmIChJU19FUlIocHJpdikp
Cj4gLQkJcmV0dXJuIFBUUl9FUlIocHJpdik7Cj4gKwlwcmludGYoIkxvb2t1cDogXCIlc1wiXG4i
LCBkZW50cnktPm5hbWUpOwo+ICAKPiAtCXMtPnN0X21vZGUgPSBTX0lGUkVHIHwgU19JUldYVSB8
IFNfSVJXWEcgfCBTX0lSV1hPOwo+IC0JaWYgKHByaXYtPmZpbGVzaXplKQo+IC0JCXMtPnN0X3Np
emUgPSBwcml2LT5maWxlc2l6ZTsKPiAtCWVsc2UKPiAtCQlzLT5zdF9zaXplID0gRklMRVNJWkVf
TUFYOwoKV2l0aCB0aGlzIGNoYW5nZSwgc3RhdCgpIG9uIGZpbGVzIG9uIFRGVFAgbW91bnRzIHdp
bGwgcmV0dXJuIDAgd2hlcmUgaXQKcmV0dXJuZWQgRklMRVNJWkVfTUFYIGJlZm9yZSwgaWYgdGhl
IFRGVFAgc2VydmVyIGRvZXMgbm90IHNlbmQKaW5mb3JtYXRpb24gYWJvdXQgdGhlIGZpbGUgc2l6
ZS4gVGhpcyBjYXVzZXMgcmVhZF9maWxlXzIoKSB0byBmYWlsLAp3aGljaCB1c2VzIHN0YXQoKSB0
byBkZXRlcm1pbmUgZmlsZSBzaXplLiByZWFkX2ZpbGVfMigpIGlzIHVzZWQgZm9yCmV4YW1wbGUg
YnkgYm9vdG0gdG8gbG9hZCB0aGUgZGV2aWNlIHRyZWUuCgo+ICsJaW5vZGUgPSB0ZnRwX2dldF9p
bm9kZShkaXItPmlfc2IsIGRpciwgU19JRlJFRyB8IFNfSVJXWFVHTyk7Cj4gKwlpZiAoIWlub2Rl
KQo+ICsJCXJldHVybiBFUlJfUFRSKC1FTk9TUEMpOwo+ICAKCkNhbiB3ZSBqdXN0IHN0b3JlIHRo
ZSBmYWtlIGZpbGVzaXplIGluIHRoZSBkX2lub2RlIGhlcmU/CsKgCivCoMKgwqDCoMKgwqDCoGlm
IChpbm9kZS0+aV9zaXplID09IDApCivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbm9k
ZS0+aV9zaXplID0gRklMRVNJWkVfTUFYOworCgo+IC0JdGZ0cF9kb19jbG9zZShwcml2KTsKPiAr
CWRfYWRkKGRlbnRyeSwgaW5vZGUpOwo+ICAKPiAtCXJldHVybiAwOwo+ICsJcmV0dXJuIE5VTEw7
Cj4gIH0KCnJlZ2FyZHMKUGhpbGlwcAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJv
eAo=
