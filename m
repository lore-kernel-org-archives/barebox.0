Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gKNvo-0006Xy-N7
 for barebox@lists.infradead.org; Wed, 07 Nov 2018 13:31:42 +0000
Date: Wed, 7 Nov 2018 14:31:26 +0100
From: Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <20181107133126.4gatdtc3bwvr2bvp@pengutronix.de>
References: <20181101135214.c449c5d63daace2540320652@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181101135214.c449c5d63daace2540320652@gmail.com>
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
Subject: Re: common/ddr_spd.c:281:28: warning: bitwise comparison always
 evaluates to false
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>, Alexander Smirnov <alllecs@yandex.ru>

T24gVGh1LCBOb3YgMDEsIDIwMTggYXQgMDE6NTI6MTRQTSArMDMwMCwgQW50b255IFBhdmxvdiB3
cm90ZToKPiBIaSEKPiAKPiBJIGhhdmUgdHJpZWQgdG8gYnVpbGQgYmFyZWJveCB3aXRoIGdjYy04
LjIuCj4gCj4gSSBzZWUgdGhpcyB3YXJuaW5nOgo+IAo+IGNvbW1vbi9kZHJfc3BkLmM6MjgxOjI4
Ogo+IGNvbW1vbi9kZHJfc3BkLmM6IEluIGZ1bmN0aW9uIOKAmGRkcl9zcGRfcHJpbnTigJk6Cj4g
Y29tbW9uL2Rkcl9zcGQuYzoyODE6Mjg6IHdhcm5pbmc6IGJpdHdpc2UgY29tcGFyaXNvbiBhbHdh
eXMgZXZhbHVhdGVzIHRvIGZhbHNlIFstV3RhdXRvbG9naWNhbC1jb21wYXJlXQo+ICAgaWYgKChz
LT5tb2RfcmFua3MgJiAweDEwKSA9PSAxKQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBe
fgoKSW5kZWVkLCBzZWxlY3Rpbmcgb25seSBiaXQgNCB3aWxsIG5ldmVyIHJlc3VsdCBpbiBiaXQg
MCBiZWluZyBzZXQuIElzCnRoaXMgbWF5YmUgbWlzc2luZyBhICI+PiA0Ij8KCiAtIFJvbGFuZAoK
PiAKPiBHaXQgYmxhbWUgc2hvdyBtZSB0aGlzOgo+IAo+IGY3NWZlMzEwOTUgKEFsZXhhbmRlciBT
bWlybm92IDIwMTUtMDctMDMgMTg6NTg6MjQgKzAzMDAgMjgwKSAgICBwcmludGYoIiUtNDhzICIs
ICJEUkFNIFBhY2thZ2UgIik7Cj4gZjc1ZmUzMTA5NSAoQWxleGFuZGVyIFNtaXJub3YgMjAxNS0w
Ny0wMyAxODo1ODoyNCArMDMwMCAyODEpICAgIGlmICgocy0+bW9kX3JhbmtzICYgMHgxMCkgPT0g
MSkKPiBmNzVmZTMxMDk1IChBbGV4YW5kZXIgU21pcm5vdiAyMDE1LTA3LTAzIDE4OjU4OjI0ICsw
MzAwIDI4MikgICAgICAgICAgICBwcmludGYoIlN0YWNrXG4iKTsKPiBmNzVmZTMxMDk1IChBbGV4
YW5kZXIgU21pcm5vdiAyMDE1LTA3LTAzIDE4OjU4OjI0ICswMzAwIDI4MykgICAgZWxzZQo+IGY3
NWZlMzEwOTUgKEFsZXhhbmRlciBTbWlybm92IDIwMTUtMDctMDMgMTg6NTg6MjQgKzAzMDAgMjg0
KSAgICAgICAgICAgIHByaW50ZigiUGxhbmFyXG4iKTsKPiAKPiBQbGVhc2UgZml4IGl0Lgo+IAo+
IC0tIAo+IEJlc3QgcmVnYXJkcywKPiDCoCBBbnRvbnkgUGF2bG92CgotLSAKUm9sYW5kIEhpZWJl
ciAgICAgICAgICAgICAgICAgICAgIHwgci5oaWViZXJAcGVuZ3V0cm9uaXguZGUgICAgIHwKUGVu
Z3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgIHwgaHR0cHM6Ly93d3cucGVuZ3V0cm9uaXgu
ZGUvIHwKUGVpbmVyIFN0ci4gNi04LCAzMTEzNyBIaWxkZXNoZWltIHwgUGhvbmU6ICs0OS01MTIx
LTIwNjkxNy01MDg2IHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgIHwgRmF4OiAg
ICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVi
b3gK
