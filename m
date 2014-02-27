Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WIxTI-00074N-Nh
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 09:41:41 +0000
Date: Thu, 27 Feb 2014 10:41:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140227094115.GK17250@pengutronix.de>
References: <1393488848-21278-1-git-send-email-zzs213@126.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1393488848-21278-1-git-send-email-zzs213@126.com>
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
Subject: Re: [PATCH] bugfix: don't rely on lr in arm_cpu_lowlevel_init
To: =?utf-8?B?5byg5b+g5bGx?= <zzs213@126.com>
Cc: barebox@lists.infradead.org, =?utf-8?B?5byg5b+g5bGx?= <zzs0213@gmail.com>

T24gVGh1LCBGZWIgMjcsIDIwMTQgYXQgMDQ6MTQ6MDhQTSArMDgwMCwg5byg5b+g5bGxIHdyb3Rl
Ogo+IEZyb206IOW8oOW/oOWxsSA8enpzMDIxM0BnbWFpbC5jb20+Cj4gCj4gU2lnbmVkLW9mZi1i
eTog5byg5b+g5bGxIDx6enMyMTNAMTI2LmNvbT4KCkFwcGxpZWQsIHRoYW5rcwoKU2FzY2hhCgo+
IC0tLQo+ICBhcmNoL2FybS9jcHUvbG93bGV2ZWwuUyB8ICAgIDMgKystCj4gIDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm0vY3B1L2xvd2xldmVsLlMgYi9hcmNoL2FybS9jcHUvbG93bGV2ZWwuUwo+IGluZGV4IDMw
N2I0NDcuLmM2MTVkNWIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vY3B1L2xvd2xldmVsLlMKPiAr
KysgYi9hcmNoL2FybS9jcHUvbG93bGV2ZWwuUwo+IEBAIC00LDYgKzQsNyBAQAo+ICAKPiAgLnNl
Y3Rpb24gIi50ZXh0X2JhcmVfaW5pdF8iLCJheCIKPiAgRU5UUlkoYXJtX2NwdV9sb3dsZXZlbF9p
bml0KQo+ICsJbW92CXIyLCBscgo+ICAJLyogc2V0IHRoZSBjcHUgdG8gU1ZDMzIgbW9kZSAqLwo+
ICAJbXJzCXIxMiwgY3Bzcgo+ICAJYmljCXIxMiwgcjEyLCAjMHgxZgo+IEBAIC0zNSw1ICszNiw1
IEBAIEVOVFJZKGFybV9jcHVfbG93bGV2ZWxfaW5pdCkKPiAgCj4gIAltY3IJcDE1LCAwLCByMTIs
IGMxLCBjMCwgMAo+ICAKPiAtCW1vdglwYywgbHIKPiArCW1vdglwYywgcjIKPiAgRU5EUFJPQyhh
cm1fY3B1X2xvd2xldmVsX2luaXQpCj4gLS0gCj4gMS43LjkuNQo+IAo+IAo+IAo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gYmFyZWJveCBtYWlsaW5n
IGxpc3QKPiBiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gKCi0tIApQZW5ndXRyb25peCBlLksuICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfApJ
bmR1c3RyaWFsIExpbnV4IFNvbHV0aW9ucyAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBl
bmd1dHJvbml4LmRlLyAgfApQZWluZXIgU3RyLiA2LTgsIDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1h
bnkgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWlt
LCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWls
aW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
