Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPwqr-0007rX-Ah
 for barebox@lists.infradead.org; Wed, 10 Apr 2013 15:22:22 +0000
Received: from e6520eb (pac33-2-82-240-38-71.fbx.proxad.net [82.240.38.71])
 (Authenticated sender: eukrea)
 by smtp2-g21.free.fr (Postfix) with ESMTPSA id 447264B01C5
 for <barebox@lists.infradead.org>; Wed, 10 Apr 2013 17:22:14 +0200 (CEST)
Date: Wed, 10 Apr 2013 17:22:12 +0200
From: Eric =?UTF-8?B?QsOpbmFyZA==?= <eric@eukrea.com>
Message-ID: <20130410172212.3c672251@e6520eb>
In-Reply-To: <1365586158-25213-1-git-send-email-eric@eukrea.com>
References: <1365586158-25213-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH] nand_base: detect more ONFI flash
To: barebox@lists.infradead.org

SGkgU2FzY2hhLAoKTGUgV2VkLCAxMCBBcHIgMjAxMyAxMToyOToxOCArMDIwMCwKRXJpYyBCw6lu
YXJkIDxlcmljQGV1a3JlYS5jb20+IGEgw6ljcml0IDoKCj4gaWYgdGhlIGZsYXNoIGhhcyBhIGtu
b3duIHR5cGUsIHRoZSBPTkZJIGRldGVjdGlvbiB3b24ndCBvY2N1cgo+IGFuZCB0aHVzIHdlIG1h
eSBub3QgZGV0ZWN0IHRoZSByaWdodCBwYXJhbWV0ZXJzLgo+IEJ5IHRlc3RpbmcgYm90aCBuYW1k
IGFuZCBwYWdlc2l6ZSwgYXMgZG9uZSBpbiB0aGUga2VybmVsLCB3ZQo+IGNhbiBkZXRlY3QgT05G
SSBmbGFzaCB3aXRoIGtub3cgSURzLgo+IAo+IEFzIGFuIGV4YW1wbGUgb24gYW4gaS5NWDUzIGJv
YXJkIDoKPiAtIHdpdGhvdXQgdGhlIHBhdGNoIDoKPiBOQU5EIGRldmljZTogTWFudWZhY3R1cmVy
IElEOiAweDJjLCBDaGlwIElEOiAweGQzCj4gKE1pY3JvbiBOQU5EIDFHaUIgMywzViA4LWJpdCks
IHBhZ2Ugc2l6ZTogNDA5NiwgT09CIHNpemU6IDEyOAo+IAo+IC0gd2l0aCB0aGUgcGF0Y2ggOgo+
IE9ORkkgZmxhc2ggZGV0ZWN0ZWQgLi4uIE9ORkkgcGFyYW0gcGFnZSAwIHZhbGlkCj4gTkFORCBk
ZXZpY2U6IE1hbnVmYWN0dXJlciBJRDogMHgyYywgQ2hpcCBJRDogMHhkMwo+IChNaWNyb24gTVQy
OUY4RzA4QUJBQ0FXUCksIHBhZ2Ugc2l6ZTogNDA5NiwgT09CIHNpemU6IDIyNAo+IAo+IGluIHRo
ZSBmaXJzdCBjYXNlIHRoZSBPT0Igc2l6ZSBpcyB3cm9uZy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBF
cmljIELDqW5hcmQgPGVyaWNAZXVrcmVhLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9tdGQvbmFuZC9u
YW5kX2Jhc2UuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRl
bGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL25hbmQvbmFuZF9iYXNlLmMg
Yi9kcml2ZXJzL210ZC9uYW5kL25hbmRfYmFzZS5jCj4gaW5kZXggZmExMGQ5NS4uNWE0YTUyZCAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL210ZC9uYW5kL25hbmRfYmFzZS5jCj4gKysrIGIvZHJpdmVy
cy9tdGQvbmFuZC9uYW5kX2Jhc2UuYwo+IEBAIC0xMTg4LDcgKzExODgsNyBAQCBzdGF0aWMgc3Ry
dWN0IG5hbmRfZmxhc2hfZGV2ICpuYW5kX2dldF9mbGFzaF90eXBlKHN0cnVjdCBtdGRfaW5mbyAq
bXRkLAo+ICAJfQo+ICAKPiAgCWNoaXAtPm9uZmlfdmVyc2lvbiA9IDA7Cj4gLQlpZiAoIXR5cGUp
IHsKPiArCWlmICghdHlwZS0+bmFtZSB8fCAhdHlwZS0+cGFnZXNpemUpIHsKPiAgCQkvKiBDaGVj
ayBpcyBjaGlwIGlzIE9ORkkgY29tcGxpYW50ICovCj4gIAkJcmV0ID0gbmFuZF9mbGFzaF9kZXRl
Y3Rfb25maShtdGQsIGNoaXAsICZidXN3KTsKPiAgCQlpZiAocmV0KQoKcGxlYXNlIGRvbnQgYXBw
bHkgdGhpcyBwYXRjaCBhcyBpdCBicmVha3MgdGhlIHN1cHBvcnQgd2l0aCBhbiBPTkZJIGZsYXNo
Cm5vdCBsaXN0ZWQgaW4gdGhlIGlkIHRhYmxlcy4gSSdtIHJld29ya2luZyBpdCByaWdodCBub3cu
CgpFcmljCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpi
YXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
