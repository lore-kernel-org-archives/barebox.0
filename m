Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp85.iad3a.emailsrvr.com ([173.203.187.85])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1df1Qx-00055g-Uj
 for barebox@lists.infradead.org; Tue, 08 Aug 2017 10:08:22 +0000
References: <20170807221042.19700-1-gael.portay@savoirfairelinux.com>
 <20170807221042.19700-2-gael.portay@savoirfairelinux.com>
 <1502178714.2934.21.camel@pengutronix.de>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <aaed299c-a0e5-f7df-22de-72f14daace20@mev.co.uk>
Date: Tue, 8 Aug 2017 11:07:54 +0100
MIME-Version: 1.0
In-Reply-To: <1502178714.2934.21.camel@pengutronix.de>
Content-Language: en-GB
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] readline_simple: return -1 if getc fails
To: Lucas Stach <l.stach@pengutronix.de>, =?UTF-8?Q?Ga=c3=abl_PORTAY?= <gael.portay@savoirfairelinux.com>
Cc: barebox@lists.infradead.org

T24gMDgvMDgvMTcgMDg6NTEsIEx1Y2FzIFN0YWNoIHdyb3RlOgo+IEFtIE1vbnRhZywgZGVuIDA3
LjA4LjIwMTcsIDE4OjEwIC0wNDAwIHNjaHJpZWIgR2HDq2wgUE9SVEFZOgo+PiBUaGUgZ2V0YyBm
dW5jdGlvbiBtYXkgcmV0dXJuIGFuIGVycm5vIGNvZGUgaWYgYW4gZXJyb3IgaGFwcGVucy4KPj4K
Pj4gVGhpcyBwYXRjaCBwcmV2ZW50cyByZWFkbGluZSBmcm9tIHByaW50aW5nIGEgbm9uIHByaW50
YWJsZSBjaGFyYWN0ZXIgYW5kCj4+IGZyb20gbG9vcGluZyB0byBpbmZpbml0eSBhbmQgYmV5b25n
Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBHYcOrbCBQT1JUQVkgPGdhZWwucG9ydGF5QHNhdm9pcmZh
aXJlbGludXguY29tPgo+PiAtLS0KPj4gICBsaWIvcmVhZGxpbmVfc2ltcGxlLmMgfCAyICsrCj4+
ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvbGli
L3JlYWRsaW5lX3NpbXBsZS5jIGIvbGliL3JlYWRsaW5lX3NpbXBsZS5jCj4+IGluZGV4IGM0ZDNk
MjQwZS4uMTI4M2M5NjAyIDEwMDY0NAo+PiAtLS0gYS9saWIvcmVhZGxpbmVfc2ltcGxlLmMKPj4g
KysrIGIvbGliL3JlYWRsaW5lX3NpbXBsZS5jCj4+IEBAIC01OCw2ICs1OCw4IEBAIGludCByZWFk
bGluZSAoY29uc3QgY2hhciAqcHJvbXB0LCBjaGFyICpsaW5lLCBpbnQgbGVuKQo+PiAgIAo+PiAg
IAlmb3IgKDs7KSB7Cj4+ICAgCQljID0gZ2V0Y2hhcigpOwo+PiArCQlpZiAoYyA8IDApCj4+ICsJ
CQlyZXR1cm4gKC0xKTsKPiAKPiBJIGRvbid0IGxpa2UgbWFkZSB1cCBlcnJvciBjb2Rlcy4gSXMg
dGhlcmUgYW55IHJlYXNvbiB3aHkgd2UgY291bGRuJ3QKPiBqdXN0IHBhc3MgdGhyb3VnaCB0aGUg
bmVnYXRpdmUgZXJyb3IgY29kZSBmcm9tIGdldGNoYXI/CgpBbmQgYWxzbyBjaGFuZ2UgdGhlIHR5
cGUgb2YgdGhlICdjJyB2YXJpYWJsZSwgYXMgaXQgaXMgY3VycmVudGx5IGEgcGxhaW4gCidjaGFy
Jz8KCj4gUmVnYXJkcywKPiBMdWNhcwoKLS0gCi09KCBJYW4gQWJib3R0IEAgTUVWIEx0ZC4gICAg
RS1tYWlsOiA8YWJib3R0aUBtZXYuY28udWs+ICk9LQotPSggICAgICAgICAgICAgICAgICAgICAg
ICAgIFdlYjogaHR0cDovL3d3dy5tZXYuY28udWsvICApPS0KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2JhcmVib3gK
