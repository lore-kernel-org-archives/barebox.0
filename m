Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi0-x242.google.com ([2607:f8b0:4003:c06::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHn2F-00063T-6B
 for barebox@lists.infradead.org; Tue, 28 Jun 2016 07:02:15 +0000
Received: by mail-oi0-x242.google.com with SMTP id d132so1322932oig.2
 for <barebox@lists.infradead.org>; Tue, 28 Jun 2016 00:01:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160628065021.GK20657@pengutronix.de>
References: <1466771041-89803-1-git-send-email-poggi.raph@gmail.com>
 <1466771041-89803-7-git-send-email-poggi.raph@gmail.com>
 <20160628065021.GK20657@pengutronix.de>
From: =?UTF-8?Q?Rapha=C3=ABl_Poggi?= <poggi.raph@gmail.com>
Date: Tue, 28 Jun 2016 09:01:14 +0200
Message-ID: <CACqcpZDH01ounyRH4UgJ4-f-BCpZ_YSRSwn2wwnnXHxc29-vsA@mail.gmail.com>
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
Subject: Re: [PATCH v3 06/14] arm: cpu: start: arm64 does not support
 relocation
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

MjAxNi0wNi0yOCA4OjUwIEdNVCswMjowMCBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9u
aXguZGU+Ogo+IE9uIEZyaSwgSnVuIDI0LCAyMDE2IGF0IDAyOjIzOjUzUE0gKzAyMDAsIFJhcGhh
ZWwgUG9nZ2kgd3JvdGU6Cj4+IEZvciBub3csIHRoZSByZWxvY2F0aW9uIGlzIG5vdCBzdXBwb3J0
ZWQgaW4gYXJtNjQsIHNvCj4+IGVuY2xvc2VkIGNhbGwgdG8gInNldHVwX2MiIHdpdGggI2lmIGRp
cmVjdGl2ZQo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBSYXBoYWVsIFBvZ2dpIDxwb2dnaS5yYXBoQGdt
YWlsLmNvbT4KPj4gLS0tCj4+ICBhcmNoL2FybS9jcHUvc3RhcnQuYyB8IDIgKysKPj4gIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Nw
dS9zdGFydC5jIGIvYXJjaC9hcm0vY3B1L3N0YXJ0LmMKPj4gaW5kZXggZTAzN2Q5MS4uNTA1MTEx
NSAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm0vY3B1L3N0YXJ0LmMKPj4gKysrIGIvYXJjaC9hcm0v
Y3B1L3N0YXJ0LmMKPj4gQEAgLTE1MSw3ICsxNTEsOSBAQCBfX25vcmV0dXJuIHZvaWQgYmFyZWJv
eF9ub25fcGJsX3N0YXJ0KHVuc2lnbmVkIGxvbmcgbWVtYmFzZSwKPj4gICAgICAgICAgICAgICBy
ZWxvY2F0ZV90b19hZHIoYmFyZWJveF9iYXNlKTsKPj4gICAgICAgfQo+Pgo+PiArI2lmIF9fTElO
VVhfQVJNX0FSQ0hfXyA8PSA3Cj4+ICAgICAgIHNldHVwX2MoKTsKPj4gKyNlbmRpZgo+Cj4gc2V0
dXBfYyBub3Qgb25seSByZWxvY2F0ZXMgdGhlIGJpbmFyeSwgaXQgYWxzbyBjbGVhcnMgdGhlIGJz
cyBzZWdtZW50Lgo+IFdoZXJlIGlzIHRoaXMgZG9uZSBvbiBhcm02ND8KCkl0IGlzIG5vdCBkb25l
Li4uSSBmb3Jnb3QgYWJvdXQgdGhhdC4KCkkgd2lsbCBjcmVhdGUgYSBzZXR1cGNfNjQuUywgaW4g
dGhlIGZpcnN0IHRpbWUsIHRoaXMgd2lsbCBvbmx5IGNsZWFyCmJzcy4gTGF0ZXIsIHdlIGNvdWxk
IGFsc28gYWRkIHJlbG9jYXRpb24gc3VwcG9ydC4KClJhcGhhw6tsCgo+Cj4gU2FzY2hhCj4KPiAt
LQo+IFBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB8Cj4gSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAgICAg
ICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKPiBQZWluZXIgU3RyLiA2
LTgsIDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAg
ICAgfAo+IEFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDog
ICArNDktNTEyMS0yMDY5MTctNTU1NSB8Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IGJhcmVib3ggbWFpbGluZyBsaXN0Cj4gYmFyZWJveEBsaXN0
cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9iYXJlYm94CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
