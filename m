Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo68.mail-out.ovh.net ([46.105.59.63])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YFfVw-0006jq-2k
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 08:59:20 +0000
Received: from mail181.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id 71D98FFB633
 for <barebox@lists.infradead.org>; Mon, 26 Jan 2015 09:58:56 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20150126081420.GH12209@pengutronix.de>
Date: Mon, 26 Jan 2015 16:55:40 +0800
Message-Id: <6A48CA9F-26EB-433F-BE18-CDFEB050970B@jcrosoft.com>
References: <1422195690-20676-1-git-send-email-antonynpavlov@gmail.com>
 <20150126081420.GH12209@pengutronix.de>
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
Subject: Re: [RFC] [JUST DEMO] commands: implement 'fbputs' command
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Cj4gT24gSmFuIDI2LCAyMDE1LCBhdCA0OjE0IFBNLCBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVu
Z3V0cm9uaXguZGU+IHdyb3RlOgo+IAo+IE9uIFN1biwgSmFuIDI1LCAyMDE1IGF0IDA1OjIxOjMw
UE0gKzAzMDAsIEFudG9ueSBQYXZsb3Ygd3JvdGU6Cj4+IE1haW5saW5lIGJhcmVib3ggYXQgdGhl
IG1vbWVudCBoYXMgbm8gZnJhbWVidWZmZXIKPj4gY29uc29sZSBzdXBwb3J0Lgo+PiBUaGUgJ2Zi
cHV0cycgZGVtbyBjb21tYW5kIGRpc3BsYXlzIGEgdGV4dCBzdHJpbmcKPj4gb24gZmIgZGV2aWNl
Lgo+PiAKPj4gVGhpcyBxdWljay1uLWRpcnR5IHBhdGNoIGRlbW9uc3RhdGVzIHRoYXQgYmFyZWJv
eAo+PiBmcmFtZWJ1ZmZlciBjb25zb2xlIGNhbiBiZSBlYXNlbHkgcmVhbGl6ZWQuCj4+IAo+PiBJ
J20gYXdhaXRpbmcgeW91ciBjb21tZW50cyEKPiAKPiBVbmZvcnR1bmF0ZWx5IHJlYWwgY29uc29s
ZSBzdXBwb3J0IGlzIG5vdCB0aGF0IHNpbXBsZSwgd2Ugd291bGQgaGF2ZSB0bwo+IHBhcnNlIEFO
U0kgZXNjYXBlIHNlcXVlbmNlcyB1cCB0byBzb21lIHBvaW50IHRvIG1ha2UgaXQgZ2VuZXJhbGx5
IHVzYWJsZS4KPiAKPiBKZWFuIENocmlzdG9waGUgaGFzIGZyYW1lYnVmZmVyIGNvbnNvbGUgcGF0
Y2hlcywgaGUnbGwgcHJvYmFibHkgY29tbWVudAo+IG9uIHRoaXMgb25lIGFzd2VsbC4KPiBQZXJz
b25hbGx5IEkgd291bGQgYmUgZmluZSB3aXRoIHlvdXIgc2ltcGxlIGFwcHJvYWNoIHVudGlsIHJl
YWwgY29uc29sZQo+IHN1cHBvcnQgYXJyaXZlcy4KCgpZZXMgSSBoYXZlIHRoZSBmcmFtZWJ1ZmZl
ciBjb25zb2xlIHN1cHBvcnQgYW5kIHllcyB5b3UgZG8gbmVlZCB0byBoYXZlIHRoZSBBTlNJIHN1
cHBvcnQKYW5kIGl04oCZcyBub3QgdGhhdCBlYXN5CgpJ4oCZbSBzaWNrIHRob3NlIGRheXMgd2ls
bCB0YWtlIGEgbG9vayBsYXRlciB0aGlzIHdpbGwgd2hlbiBmZWVsIGJldHRlcgogCj4gCj4+ICtz
dGF0aWMgdm9pZCBkcmF3Y2hhcihzdHJ1Y3Qgc2NyZWVuICpzYywgaW50IHgsIGludCB5LCBjaGFy
IGMpCj4+ICt7Cj4+ICsJdm9pZCAqYnVmOwo+PiArCj4+ICsJYnVmID0gZ3VpX3NjcmVlbl9yZWRl
cmluZ19idWZmZXIoc2MpOwo+PiArCj4+ICsJcmdiYV9ibGVuZCgmc2MtPmluZm8sIGNoYXJzWyhp
bnQpY10sCj4+ICsJCWJ1ZiwgVklERU9fRk9OVF9IRUlHSFQsIFZJREVPX0ZPTlRfV0lEVEgsCj4+
ICsJCVZJREVPX0ZPTlRfV0lEVEggKiB4LCBWSURFT19GT05UX0hFSUdIVCAqIHksIDEpOwo+IAo+
IElzIHRoaXMgcGVyZm9ybWFudCBlbm91Z2g/IEkgd291bGQgYXNzdW1lIHRoZSB3aG9sZSBjaGFy
YWN0ZXIgc2V0IHNob3VsZAo+IGJlIHByZXJlbmRlcmVkIGZvciB0aGUgYWN0dWFsIGZyYW1lYnVm
ZmVyIGZvcm1hdCBiZWZvcmUgcHJpbnRpbmcgYQo+IHN0cmluZy4KCm5vIHNvIG11Y2ggd2F5IHRv
byBzbG93CgpCZXN0IFJlZ2FyZHMsCkouCj4gCj4gU2FzY2hhCj4gCj4gCj4gLS0gCj4gUGVuZ3V0
cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwKPiBJbmR1c3RyaWFsIExpbnV4IFNvbHV0aW9ucyAgICAgICAgICAgICAgICAg
fCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAo+IFBlaW5lciBTdHIuIDYtOCwgMzExMzcg
SGlsZGVzaGVpbSwgR2VybWFueSB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8Cj4gQW10
c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIx
LTIwNjkxNy01NTU1IHwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
