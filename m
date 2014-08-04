Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f173.google.com ([209.85.212.173])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XEEaH-0002Q2-SP
 for barebox@lists.infradead.org; Mon, 04 Aug 2014 09:29:38 +0000
Received: by mail-wi0-f173.google.com with SMTP id f8so4667983wiw.0
 for <barebox@lists.infradead.org>; Mon, 04 Aug 2014 02:29:10 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <53DF4F9E.2070901@atmel.com>
References: <1407141112-3868-1-git-send-email-poggi.raph@gmail.com>
 <1407141112-3868-3-git-send-email-poggi.raph@gmail.com>
 <53DF4F9E.2070901@atmel.com>
From: =?UTF-8?Q?Rapha=C3=ABl_Poggi?= <raphio98@gmail.com>
Date: Mon, 4 Aug 2014 11:28:30 +0200
Message-ID: <CACqcpZDxxn1tA2XEviBwcLmD06=-kZ+8qxxqA05nwhepWpKXnA@mail.gmail.com>
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
Subject: Re: [PATCH V2 2/2] at91sam9g45: clock: add i2c clocks
To: Bo Shen <voice.shen@atmel.com>
Cc: barebox@lists.infradead.org

SGksCgpJIGhhdmUgdXNlZCBDTEtERVZfQ09OX0RFVl9JRCBiZWNhdXNlIGl0IGlzIGxpa2UgdGhh
dCBpbiBMaW51eCwgYnV0IG9rCkkgd2lsbCByZXBsYWNlIGl0IGJ5IENMS0RFVl9ERVZfSUQuCgpC
dHcsIGNhbiB5b3UgZXhwbGFpbiBtZSB3aHkgaW4gTGludXggaXQncyBDTEtERVZfQ09OX0RFVl9J
RCA/IChqdXN0IGJ5CmN1cmlvc2l0eSkKClRoYW5rcywKClJhcGhhw6tsIFBvZ2dpCgoyMDE0LTA4
LTA0IDExOjE3IEdNVCswMjowMCBCbyBTaGVuIDx2b2ljZS5zaGVuQGF0bWVsLmNvbT46Cj4gSGkg
UmFwaGHDq2wgUG9nZ2ksCj4KPgo+IE9uIDA4LzA0LzIwMTQgMDQ6MzEgUE0sIFJhcGhhw6tsIFBv
Z2dpIHdyb3RlOgo+Pgo+PiBBZGQgdGhlIGRldmljZSB0cmVlIGFuZCBub24gZGV2aWNlIHRyZWUg
YXQ5MSBpMmMgY2xvY2tzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBSYXBoYcOrbCBQb2dnaSA8cG9n
Z2kucmFwaEBnbWFpbC5jb20+Cj4+IC0tLQo+PiAgIGFyY2gvYXJtL21hY2gtYXQ5MS9hdDkxc2Ft
OWc0NS5jIHwgICAgNCArKysrCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+
Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1hdDkxL2F0OTFzYW05ZzQ1LmMKPj4gYi9h
cmNoL2FybS9tYWNoLWF0OTEvYXQ5MXNhbTlnNDUuYwo+PiBpbmRleCBmNjAzMWYwLi5kMGY5NTBj
IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybS9tYWNoLWF0OTEvYXQ5MXNhbTlnNDUuYwo+PiArKysg
Yi9hcmNoL2FybS9tYWNoLWF0OTEvYXQ5MXNhbTlnNDUuYwo+PiBAQCAtMTkyLDYgKzE5MiwxMCBA
QCBzdGF0aWMgc3RydWN0IGNsa19sb29rdXAgcGVyaXBoX2Nsb2Nrc19sb29rdXBzW10gPSB7Cj4+
ICAgICAgICAgQ0xLREVWX0NPTl9ERVZfSUQoIm1jaV9jbGsiLCAiYXRtZWxfbWNpMSIsICZtbWMx
X2NsayksCj4+ICAgICAgICAgQ0xLREVWX0NPTl9ERVZfSUQoInNwaV9jbGsiLCAiYXRtZWxfc3Bp
MCIsICZzcGkwX2NsayksCj4+ICAgICAgICAgQ0xLREVWX0NPTl9ERVZfSUQoInNwaV9jbGsiLCAi
YXRtZWxfc3BpMSIsICZzcGkxX2NsayksCj4+ICsgICAgICAgQ0xLREVWX0NPTl9ERVZfSUQoTlVM
TCwgImF0OTEtdHdpMCIsICZ0d2kwX2NsayksCj4KPgo+IHMvQ0xLREVWX0NPTl9ERVZfSUQvQ0xL
REVWX0RFVl9JRCAoYWxzbyBmb3IgdGhlIGZvbGxvd2luZykuCj4KPiB0aGUgREVWX0lEIHNob3Vs
ZCBiZSBwcmVzZW50ZWQgaW4gdGhlIGlkX3RhYmxlIGluIHRoZSBkcml2ZXIuCj4KPgo+PiArICAg
ICAgIENMS0RFVl9DT05fREVWX0lEKE5VTEwsICJhdDkxLXR3aTEiLCAmdHdpMV9jbGspLAo+PiAr
ICAgICAgIENMS0RFVl9DT05fREVWX0lEKE5VTEwsICJmZmY4NDAwMC5pMmMiLCAmdHdpMF9jbGsp
LAo+PiArICAgICAgIENMS0RFVl9DT05fREVWX0lEKE5VTEwsICJmZmY4ODAwMC5pMmMiLCAmdHdp
MV9jbGspLAo+PiAgICAgICAgIENMS0RFVl9ERVZfSUQoImF0OTFybTkyMDAtZ3BpbzAiLCAmcGlv
QV9jbGspLAo+PiAgICAgICAgIENMS0RFVl9ERVZfSUQoImF0OTFybTkyMDAtZ3BpbzEiLCAmcGlv
Ql9jbGspLAo+PiAgICAgICAgIENMS0RFVl9ERVZfSUQoImF0OTFybTkyMDAtZ3BpbzIiLCAmcGlv
Q19jbGspLAo+Pgo+Cj4gQmVzdCBSZWdhcmRzLAo+IEJvIFNoZW4KPgo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gYmFyZWJveCBtYWlsaW5nIGxpc3QK
PiBiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Jh
cmVib3gK
