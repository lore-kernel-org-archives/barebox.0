Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQuWX-00065i-Uz
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 13:00:33 +0000
Message-ID: <1528376402.15027.9.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 07 Jun 2018 15:00:02 +0200
In-Reply-To: <CAHQ1cqG3LVu9KKTvve7b_QHrnXzyBnC9SCbQ2WECiLVdqq_rVg@mail.gmail.com>
References: <20180607094235.29848-1-l.stach@pengutronix.de>
 <20180607094235.29848-2-l.stach@pengutronix.de>
 <CAHQ1cqG3LVu9KKTvve7b_QHrnXzyBnC9SCbQ2WECiLVdqq_rVg@mail.gmail.com>
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
Subject: Re: [PATCH 2/2] ARM: throw out no-MMU vector base fixup when ARMv7
 isn't selected
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

QW0gRG9ubmVyc3RhZywgZGVuIDA3LjA2LjIwMTgsIDA1OjUzIC0wNzAwIHNjaHJpZWIgQW5kcmV5
IFNtaXJub3Y6Cj4gPiBPbiBUaHUsIEp1biA3LCAyMDE4IGF0IDI6NDIgQU0sIEx1Y2FzIFN0YWNo
IDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPiA+IE1heSBzYXZlIHNvbWUgY29kZSBz
cGFjZSwgYnV0IG1vcmUgaW1wb3J0YW50bHkgZml4ZXMgdGhlIEFSTXY4IGJ1aWxkLgo+ID4gCj4g
Cj4gRG9lcyBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9waXBlcm1haWwvYmFyZWJveC8yMDE4
LU1heS8wMzMxODQuaHRtbAo+IG5vdCB3b3JrIGluIHlvdXIgY2FzZT8KCkkganVzdCBoYWRuJ3Qg
bm90aWNlZCB0aGlzIHBhdGNoLCB3aGVuIEkgd3JvdGUgdGhpcyBvbmUuIFNvIHdlIGNhbiAKZHJv
cCB0aGlzIG9uZSBpZiB5b3VycyBnZXQgbWVyZ2VkLgoKUmVnYXJkcywKTHVjYXMKCj4gCj4gPiA+
ID4gU2lnbmVkLW9mZi1ieTogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+Cj4g
PiAtLS0KPiA+IMKgYXJjaC9hcm0vY3B1L25vLW1tdS5jIHwgMyArKy0KPiA+IMKgMSBmaWxlIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm0vY3B1L25vLW1tdS5jIGIvYXJjaC9hcm0vY3B1L25vLW1tdS5jCj4gPiBpbmRl
eCA3MjY4ZmE5YjlkNzguLmVmZjRjZGNiYTRiZSAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtL2Nw
dS9uby1tbXUuYwo+ID4gKysrIGIvYXJjaC9hcm0vY3B1L25vLW1tdS5jCj4gPiBAQCAtMzcsNyAr
MzcsOCBAQCBzdGF0aWMgaW50IG5vbW11X3Y3X3ZlY3RvcnNfaW5pdCh2b2lkKQo+ID4gwqDCoMKg
wqDCoMKgwqDCoHZvaWQgKnZlY3RvcnM7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgdTMyIGNyOwo+ID4g
Cj4gPiAtwqDCoMKgwqDCoMKgwqBpZiAoY3B1X2FyY2hpdGVjdHVyZSgpIDwgQ1BVX0FSQ0hfQVJN
djcpCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoIUlTX0VOQUJMRUQoQ09ORklHX0NQVV8zMnY3KSB8
fAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAoY3B1X2FyY2hpdGVjdHVyZSgpIDwgQ1BVX0FS
Q0hfQVJNdjcpKQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gMDsK
PiA+IAo+ID4gwqDCoMKgwqDCoMKgwqDCoC8qCj4gPiAtLQo+ID4gMi4xNy4xCj4gPiAKPiA+IAo+
ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IGJh
cmVib3ggbWFpbGluZyBsaXN0Cj4gPiBiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+IGh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5n
IGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
