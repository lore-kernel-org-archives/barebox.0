Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fZuNX-0005PR-TA
 for barebox@lists.infradead.org; Mon, 02 Jul 2018 08:40:13 +0000
Message-ID: <1530520798.22468.80.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 02 Jul 2018 10:39:58 +0200
In-Reply-To: <20180630034737.2820-1-andrew.smirnov@gmail.com>
References: <20180630034737.2820-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/3] ARM: dts: rdu1: Add nodes for RAVE SP EEPROM
To: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

SGkgQW5kcmV5LAoKQW0gRnJlaXRhZywgZGVuIDI5LjA2LjIwMTgsIDIwOjQ3IC0wNzAwIHNjaHJp
ZWIgQW5kcmV5IFNtaXJub3Y6Cj4gU2lnbmVkLW9mZi1ieTogQW5kcmV5IFNtaXJub3YgPGFuZHJl
dy5zbWlybm92QGdtYWlsLmNvbT4KPiAtLS0KPiDCoGFyY2gvYXJtL2R0cy9pbXg1MS16aWktcmR1
MS5kdHMgfCAyOCArKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gwqAxIGZpbGUgY2hhbmdl
ZCwgMjggaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvaW14NTEt
emlpLXJkdTEuZHRzIGIvYXJjaC9hcm0vZHRzL2lteDUxLQo+IHppaS1yZHUxLmR0cwo+IGluZGV4
IDc5ODRlNWIzMi4uYjBlMWQwMjc2IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2R0cy9pbXg1MS16
aWktcmR1MS5kdHMKPiArKysgYi9hcmNoL2FybS9kdHMvaW14NTEtemlpLXJkdTEuZHRzCj4gQEAg
LTI0LDYgKzI0LDEzIEBACj4gwqAJCQlkZXZpY2UtcGF0aCA9ICZzcGlub3IsICJwYXJ0bmFtZTpi
YXJlYm94LQo+IGVudmlyb25tZW50IjsKPiDCoAkJfTsKPiDCoAl9Owo+ICsJYWxpYXNlcyB7Cj4g
KwkJLyoKPiArCQnCoCogQWxpYXNlcyB0byBtYXRjaCBMaW51eCBrZXJuZWwgbmFtaW5nIGluIC9k
ZXYvCj4gKwkJwqAqLwo+ICsJCW1haW4tZWVwcm9tID0gJm1haW5fZWVwcm9tOwo+ICsJCWRkcy1l
ZXByb20gPSAmZGRzX2VlcHJvbTsKPiArCX07CgpJbiBMaW51eCB3ZSBhcmUgdXNpbmcgdGhlICJ6
aWksZWVwcm9tLW5hbWUiIHByb3BlcnR5IGZvciB0aGlzIHB1cnBvc2UuCkNhbiB3ZSB1c2UgdGhl
IHNhbWUgaW4gaW4gQmFyZWJveCwgcGxlYXNlPyBJIHdvdWxkIGxpa2UgdG8ga2VlcCB0aGUKZGlm
ZmVyZW5jZXMgaW4gdGhlIHR3byBEVHMgdG8gYSBtaW5pbXVtLgoKUmVnYXJkcywKTHVjYXMKCj4g
wqB9Owo+IMKgCj4gwqAmZWNzcGkxIHsKPiBAQCAtNTAsMyArNTcsMjQgQEAKPiDCoAkJfTsKPiDC
oAl9Owo+IMKgfTsKPiArCj4gKyZ1YXJ0MyB7Cj4gKwlyYXZlLXNwIHsKPiArCQkjYWRkcmVzcy1j
ZWxscyA9IDwxPjsKPiArCQkjc2l6ZS1jZWxscyA9IDwxPjsKPiArCj4gKwkJZGRzX2VlcHJvbTog
ZWVwcm9tQGEzIHsKPiArCQkJY29tcGF0aWJsZSA9ICJ6aWkscmF2ZS1zcC1lZXByb20iOwo+ICsJ
CQlyZWcgPSA8MHhhMyAweDQwMDA+Owo+ICsJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiArCQkJ
I3NpemUtY2VsbHMgPSA8MT47Cj4gKwkJfTsKPiArCj4gKwkJbWFpbl9lZXByb206IGVlcHJvbUBh
NCB7Cj4gKwkJCWNvbXBhdGlibGUgPSAiemlpLHJhdmUtc3AtZWVwcm9tIjsKPiArCQkJcmVnID0g
PDB4YTQgMHg0MDAwPjsKPiArCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gKwkJCSNzaXplLWNl
bGxzID0gPDE+Owo+ICsJCX07Cj4gKwl9Owo+ICt9OwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vYmFyZWJveAo=
