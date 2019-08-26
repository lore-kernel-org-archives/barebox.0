Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2KbJ-0007ia-WA
 for barebox@lists.infradead.org; Mon, 26 Aug 2019 19:24:27 +0000
Received: by mail-io1-xd43.google.com with SMTP id s21so40162735ioa.1
 for <barebox@lists.infradead.org>; Mon, 26 Aug 2019 12:24:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190825145517.5546-1-u.kleine-koenig@pengutronix.de>
 <20190825145517.5546-2-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20190825145517.5546-2-u.kleine-koenig@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 26 Aug 2019 12:24:12 -0700
Message-ID: <CAHQ1cqF-UUKs3ysuMQvBxbENpGeRxn=8u-bZcmU6=PmFv3n=-w@mail.gmail.com>
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
Subject: Re: [PATCH 2/2] reset_source: drop reset_source_set_instance()
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

T24gU3VuLCBBdWcgMjUsIDIwMTkgYXQgNzo1NSBBTSBVd2UgS2xlaW5lLUvDtm5pZwo8dS5rbGVp
bmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPgo+IFRoZSBzZW1hbnRpYyBvZiByZXNl
dF9zb3VyY2Vfc2V0X2luc3RhbmNlKCkgcmVxdWlyZWQgYSBzZXBhcmF0ZSBjYWxsIHRvCj4gcmVz
ZXRfc291cmNlX3NldCgpIChvciByZXNldF9zb3VyY2Vfc2V0X3ByaW9yaXR5KCkpIGFuZCBjaGVj
a2VkIHJpZ2h0Cj4gdXNhZ2Ugb25seSB1c2luZyB0aGUgdHlwZS4gTWFrZSB0aGUgc2V0IG9mIGZ1
bmN0aW9ucyBhIGJpdCBlYXNpZXIgdG8gdXNlCj4gYnkgZHJvcHBpbmcgcmVzZXRfc291cmNlX3Nl
dF9pbnN0YW5jZSgpIGFuZCBpbnN0ZWFkIGludHJvZHVjZSBhIGZ1bmN0aW9uCj4gdGhhdCBjYW4g
c2V0IGFsbCByZWxldmFudCBwYXJhbWV0ZXJzIChzb3VyY2UsIHByaW9yaXR5IGFuZCBpbnN0YW5j
ZSkgaW4KPiBvbmUgZ28uCj4KPiBTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5r
bGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgo+IC0tLQo+ICBhcmNoL2FybS9tYWNoLWlteC9p
bXguYyAgICAgICB8ICA0ICstLS0KPiAgY29tbW9uL3Jlc2V0X3NvdXJjZS5jICAgICAgICAgfCAx
NSArKysrLS0tLS0tLS0tLS0KPiAgZHJpdmVycy93YXRjaGRvZy9zdG0zMl9pd2RnLmMgfCAgMyAr
LS0KPiAgaW5jbHVkZS9yZXNldF9zb3VyY2UuaCAgICAgICAgfCAyMCArKysrKysrKysrKy0tLS0t
LS0tLQo+ICA0IGZpbGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDI1IGRlbGV0aW9ucygt
KQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtaW14L2lteC5jIGIvYXJjaC9hcm0vbWFj
aC1pbXgvaW14LmMKPiBpbmRleCA2MzkxNGQzMDZlNmYuLjQzYjU0MGIzOTc3MSAxMDA2NDQKPiAt
LS0gYS9hcmNoL2FybS9tYWNoLWlteC9pbXguYwo+ICsrKyBiL2FyY2gvYXJtL21hY2gtaW14L2lt
eC5jCj4gQEAgLTE5OSw5ICsxOTksNyBAQCB2b2lkIGlteF9zZXRfcmVzZXRfcmVhc29uKHZvaWQg
X19pb21lbSAqc3JzciwKPiAgICAgICAgICAgICAgICAgfQo+ICAgICAgICAgfQo+Cj4gLSAgICAg
ICByZXNldF9zb3VyY2Vfc2V0X3ByaW9yaXR5KHR5cGUsCj4gLSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIFJFU0VUX1NPVVJDRV9ERUZBVUxUX1BSSU9SSVRZKTsKPiAtICAgICAgIHJl
c2V0X3NvdXJjZV9zZXRfaW5zdGFuY2UodHlwZSwgaW5zdGFuY2UpOwo+ICsgICAgICAgcmVzZXRf
c291cmNlX3NldF9wcmluc3QodHlwZSwgUkVTRVRfU09VUkNFX0RFRkFVTFRfUFJJT1JJVFksIGlu
c3RhbmNlKTsKCkFueSBjaGFuZ2Ugd2UgY2FuIGNhbGwgdGhpcyBmdW5jdGlvbgpyZXNldF9zb3Vy
Y2Vfc2V0X3ByaW9yaXR5X2luc3RhbmNlKCkgb3IgcmVzZXRfc291cmNlX3NldF9hbGwoKSBpbnN0
ZWFkCm9mICJwcmluc3QiPwoKVGhhbmtzLApBbmRyZXkgU21pcm5vdgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFy
ZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYmFyZWJveAo=
