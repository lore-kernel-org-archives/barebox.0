Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SR5MU-0003g1-1R
 for barebox@lists.infradead.org; Sun, 06 May 2012 17:35:10 +0000
Date: Sun, 6 May 2012 19:35:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120506173507.GV4141@pengutronix.de>
References: <m3k40qmhsn.fsf@intrepid.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3k40qmhsn.fsf@intrepid.localdomain>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Cosmetic: fix endianness convertions in read[wlq]().
To: Krzysztof Halasa <khc@pm.waw.pl>
Cc: barebox@lists.infradead.org

T24gU2F0LCBNYXkgMDUsIDIwMTIgYXQgMTE6MzY6NDBQTSArMDIwMCwgS3J6eXN6dG9mIEhhbGFz
YSB3cm90ZToKPiBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgSGHFgmFzYSA8a2hjQHBtLndhdy5w
bD4KPiAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9hc20tZ2VuZXJpYy9pby5oIGIvaW5jbHVkZS9h
c20tZ2VuZXJpYy9pby5oCj4gaW5kZXggM2YwZjVhMi4uODQ4MGFjZiAxMDA2NDQKPiAtLS0gYS9p
bmNsdWRlL2FzbS1nZW5lcmljL2lvLmgKPiArKysgYi9pbmNsdWRlL2FzbS1nZW5lcmljL2lvLmgK
PiBAQCAtMzUsOCArMzUsOCBAQAo+ICAjZW5kaWYKPiAgCj4gICNkZWZpbmUgcmVhZGIgX19yYXdf
cmVhZGIKPiAtI2RlZmluZSByZWFkdyhhZGRyKSBfX2xlMTZfdG9fY3B1KF9fcmF3X3JlYWR3KGFk
ZHIpKQo+IC0jZGVmaW5lIHJlYWRsKGFkZHIpIF9fbGUzMl90b19jcHUoX19yYXdfcmVhZGwoYWRk
cikpCj4gKyNkZWZpbmUgcmVhZHcoYWRkcikgX19jcHVfdG9fbGUxNihfX3Jhd19yZWFkdyhhZGRy
KSkKPiArI2RlZmluZSByZWFkbChhZGRyKSBfX2NwdV90b19sZTMyKF9fcmF3X3JlYWRsKGFkZHIp
KQoKVGhpcyBzZWVtcyB3cm9uZy4gcmVhZHcvbCBhcmUgc3VwcG9zZWQgdG8gZG8gbGl0dGxlIGVu
ZGlhbiByZWFkcyBhbmQgdGhhdAppcyBleGFjdGx5IHdoYXQgdGhlIGNvZGUgeW91IHJlbW92ZSBk
b2VzOiBJdCByZWFkcyBpbiBjcHUgbmF0aXZlCmVuZGlhbmVzcyBhbmQgaW50ZXJwcmV0cyB0aGF0
IGFzIGEgbGl0dGxlIGVuZGlhbiB3b3JkIHdoaWNoIGlzIHRoZW4KY29udmVydGVkIGludG8gY3B1
IG5hdGl2ZSBlbmRpYW4gd29yZC4KKEFsc28gdGhlIGNvZGUgaXMgY29waWVkIGZyb20gdGhlIGtl
cm5lbCB3aGljaCBtYWtlcyBtZSBxdWl0ZSBjb25maWRlbnQKdGhhdCBpdCdzIGNvcnJlY3QpCgpT
YXNjaGEKCgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMg
ICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKUGVpbmVyIFN0
ci4gNi04LCAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55IHwgUGhvbmU6ICs0OS01MTIxLTIwNjkx
Ny0wICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4
OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Jh
cmVib3gK
