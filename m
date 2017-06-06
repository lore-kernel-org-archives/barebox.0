Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dICBb-0002hs-4b
 for barebox@lists.infradead.org; Tue, 06 Jun 2017 10:58:08 +0000
References: <1494587239-33771-1-git-send-email-d.schultz@phytec.de>
 <1494587239-33771-4-git-send-email-d.schultz@phytec.de>
 <20170517063514.hexnde6jhbix5j3t@pengutronix.de>
From: Daniel Schultz <d.schultz@phytec.de>
Message-ID: <fe539eca-9c25-6d4c-5594-71249a1584af@phytec.de>
Date: Tue, 6 Jun 2017 12:57:43 +0200
MIME-Version: 1.0
In-Reply-To: <20170517063514.hexnde6jhbix5j3t@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH v3 4/4] arm: boards: beaglebone: Delete default env
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

SGkgU2FzY2hhLAoKQW0gMTcuMDUuMjAxNyB1bSAwODozNSBzY2hyaWViIFNhc2NoYSBIYXVlcjoK
PiBPbiBGcmksIE1heSAxMiwgMjAxNyBhdCAwMTowNzoxOVBNICswMjAwLCBEYW5pZWwgU2NodWx0
eiB3cm90ZToKPj4gVGhlIEJlYWdsZWJvbmUgZW52aXJvbm1lbnQgc2hvdWxkIGJlIHNldCBmcm9t
IG91dHNpZGUgd2l0aCBhbiBhcHBsaWNhdGlvbgo+PiBzcGVjaWZpYyBlbnZpcm9ubWVudC4KPj4K
Pj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFNjaHVsdHogPGQuc2NodWx0ekBwaHl0ZWMuZGU+Cj4+
IC0tLQo+PiAgIGFyY2gvYXJtL2JvYXJkcy9iZWFnbGVib25lL01ha2VmaWxlICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfCAxIC0KPj4gICBhcmNoL2FybS9ib2FyZHMvYmVhZ2xlYm9u
ZS9ib2FyZC5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMiAtLQo+PiAgIGFy
Y2gvYXJtL2JvYXJkcy9iZWFnbGVib25lL2RlZmF1bHRlbnYtYmVhZ2xlYm9uZS9ib290L3NkICAg
ICAgICAgICAgfCA2IC0tLS0tLQo+PiAgIC4uLi9hcm0vYm9hcmRzL2JlYWdsZWJvbmUvZGVmYXVs
dGVudi1iZWFnbGVib25lL2luaXQvdXNiLWxpbWl0LTEzMDAgfCA1IC0tLS0tCj4+ICAgNCBmaWxl
cyBjaGFuZ2VkLCAxNCBkZWxldGlvbnMoLSkKPj4gICBkZWxldGUgbW9kZSAxMDA2NDQgYXJjaC9h
cm0vYm9hcmRzL2JlYWdsZWJvbmUvZGVmYXVsdGVudi1iZWFnbGVib25lL2Jvb3Qvc2QKPj4gICBk
ZWxldGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9hcmRzL2JlYWdsZWJvbmUvZGVmYXVsdGVudi1i
ZWFnbGVib25lL2luaXQvdXNiLWxpbWl0LTEzMDAKPj4KPj4gLS0tIGEvYXJjaC9hcm0vYm9hcmRz
L2JlYWdsZWJvbmUvZGVmYXVsdGVudi1iZWFnbGVib25lL2luaXQvdXNiLWxpbWl0LTEzMDAKPj4g
KysrIC9kZXYvbnVsbAo+PiBAQCAtMSw1ICswLDAgQEAKPj4gLSMhL2Jpbi9zaAo+PiAtCj4+IC1l
Y2hvIC1uICJjaGFuZ2luZyBVU0IgY3VycmVudCBsaW1pdCB0byAxMzAwIG1BLi4uICIKPj4gLWky
Y193cml0ZSAtYiAwIC1hIDB4MjQgLXIgMHgwMSAweDNlCj4+IC1lY2hvICJkb25lIgo+IAo+IFdl
IG5lZWQgdGhpcyBvbiB0aGUgYmVhZ2xlYm9hcmQuIFdlIGNhbid0IGp1c3QgZGVsZXRlIGl0IHdp
dGhvdXQgZG9pbmcKPiB0aGlzIHNvbWV3aGVyZSBlbHNlLgo+IAo+IEFsc28gSSBzdGlsbCBkbyBu
b3QgdW5kZXJzdGFuZCB0aGUgcmVhc29uaW5nIGJlaGluZCB0aGlzIGNoYW5nZS4gV2hlcmUKPiBp
cyAib3V0c2lkZSIsIHRvIHdoaWNoIGFwcGxpY2F0aW9uIHNob3VsZCB0aGUgZW52aXJvbm1lbnQg
YmUgc3BlY2lmaWMKPiB0bz8KUGxlYXNlIHJldm9rZSB0aGlzIHBhdGNoLiBTb3JyeS4KCj4gCj4g
U2FzY2hhCj4gCgotLSAKTWl0IGZyZXVuZGxpY2hlbiBHcsO8w59lbiwKV2l0aCBiZXN0IHJlZ2Fy
ZHMsCiAgIERhbmllbCBTY2h1bHR6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94
Cg==
