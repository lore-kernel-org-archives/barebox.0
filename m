Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fdECY-0008Bq-Kp
 for barebox@lists.infradead.org; Wed, 11 Jul 2018 12:26:56 +0000
Message-ID: <1531311982.3163.50.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 11 Jul 2018 14:26:22 +0200
In-Reply-To: <20180710141212.5787-1-s.hauer@pengutronix.de>
References: <20180710141212.5787-1-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] ARM: MMU: fix arch_remap_range() across section boundaries
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Ulrich Oelmann <uol@pengutronix.de>

QW0gRGllbnN0YWcsIGRlbiAxMC4wNy4yMDE4LCAxNjoxMiArMDIwMCBzY2hyaWViIFNhc2NoYSBI
YXVlcjoKPiBGaXhlczogZTNlNTRjNjQ0MSBBUk06IG1tdTogSW1wbGVtZW50IG9uLWRlbWFuZCBQ
VEUgYWxsb2NhdGlvbgo+IAo+IFBHRF9GTEFHU19XQ19WNyBsYWNrcyB0aGUgUE1EX1RZUEVfU0VD
VCBhbmQgUE1EX1NFQ1RfQlVGRkVSQUJMRSBmbGFncy4KPiBXaXRob3V0IHRoZW0gYSBkbWFfYWxs
b2Nfd3JpdGVjb21iaW5lKCkgY3JlYXRlcyBhbiBpbnZhbGlkIHNlY3Rpb24gd2hlbgo+IGl0IGNy
b3NzZXMgYSBzZWN0aW9uIGJvdW5kYXJ5Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFNhc2NoYSBIYXVl
ciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KClJldmlld2VkLWJ5OiBMdWNhcyBTdGFjaCA8bC5z
dGFjaEBwZW5ndXRyb25peC5kZT4KCkNhcmUgdG8gcHVzaCB0byBtYXN0ZXI/Cgo+IC0tLQo+IMKg
YXJjaC9hcm0vY3B1L21tdS5jIHwgMiArLQo+IMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2NwdS9tbXUuYyBi
L2FyY2gvYXJtL2NwdS9tbXUuYwo+IGluZGV4IDdlMmU1YmY3ZTAuLmFlMTg5ZWNkZWIgMTAwNjQ0
Cj4gLS0tIGEvYXJjaC9hcm0vY3B1L21tdS5jCj4gKysrIGIvYXJjaC9hcm0vY3B1L21tdS5jCj4g
QEAgLTYxLDcgKzYxLDcgQEAgc3RhdGljIGlubGluZSB2b2lkIHRsYl9pbnZhbGlkYXRlKHZvaWQp
Cj4gwqAjZGVmaW5lIFBURV9GTEFHU19VTkNBQ0hFRF9WNyAoMCkKPiDCoCNkZWZpbmUgUFRFX0ZM
QUdTX0NBQ0hFRF9WNCAoUFRFX1NNQUxMX0FQX1VOT19TUlcgfCBQVEVfQlVGRkVSQUJMRSB8IFBU
RV9DQUNIRUFCTEUpCj4gwqAjZGVmaW5lIFBURV9GTEFHU19VTkNBQ0hFRF9WNCBQVEVfU01BTExf
QVBfVU5PX1NSVwo+IC0jZGVmaW5lIFBHRF9GTEFHU19XQ19WNyBQTURfU0VDVF9URVgoMSkKPiAr
I2RlZmluZSBQR0RfRkxBR1NfV0NfVjcgKFBNRF9TRUNUX1RFWCgxKSB8IFBNRF9UWVBFX1NFQ1Qg
fCBQTURfU0VDVF9CVUZGRVJBQkxFKQo+IMKgCj4gwqAvKgo+IMKgICogUFRFIGZsYWdzIHRvIHNl
dCBjYWNoZWQgYW5kIHVuY2FjaGVkIGFyZWFzLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
YmFyZWJveAo=
