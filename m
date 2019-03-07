Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nL6-0002Nv-TP
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 07:21:14 +0000
Date: Thu, 7 Mar 2019 08:21:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190307072109.nsrziem6oi4jxzxj@pengutronix.de>
References: <69cd94f8.8d49.16952b42cb1.Coremail.zzs213@126.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <69cd94f8.8d49.16952b42cb1.Coremail.zzs213@126.com>
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
Subject: Re: [PATCH] fix zbarebox linking with new ld
To: =?utf-8?B?5byg5b+g5bGx?= <zzs213@126.com>
Cc: barebox@lists.infradead.org

T24gV2VkLCBNYXIgMDYsIDIwMTkgYXQgMDc6MTI6MTNQTSArMDgwMCwg5byg5b+g5bGxIHdyb3Rl
Ogo+IFNpZ25lZC1vZmYtYnk6IOW8oOW/oOWxsSA8enpzMjEzQDEyNi5jb20+Cj4gLS0tCj4gIGFy
Y2gvYXJtL3BibC9NYWtlZmlsZSB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCgpBcHBsaWVkLCB0aGFua3MKClNhc2NoYQoKPiAKPiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm0vcGJsL01ha2VmaWxlIGIvYXJjaC9hcm0vcGJsL01ha2VmaWxlCj4gaW5k
ZXggMzQ3ZGY2NDI0Li5mODk3MTY2ZTUgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vcGJsL01ha2Vm
aWxlCj4gKysrIGIvYXJjaC9hcm0vcGJsL01ha2VmaWxlCj4gQEAgLTMxLDcgKzMxLDcgQEAgJChv
YmopL3piYXJlYm94LlM6ICQob2JqKS96YmFyZWJveCBGT1JDRQo+ICAJJChjYWxsIGlmX2NoYW5n
ZWQsZGlzYXNtKQo+ICAKPiAgUEJMX0NQUEZMQUdTCQkrPSAtZmRhdGEtc2VjdGlvbnMgLWZmdW5j
dGlvbi1zZWN0aW9ucwo+IC1MREZMQUdTX3piYXJlYm94CTo9IC1NYXAgJChvYmopL3piYXJlYm94
Lm1hcCAtLWdjLXNlY3Rpb25zCj4gK0xERkxBR1NfemJhcmVib3gJOj0gLU1hcCAkKG9iaikvemJh
cmVib3gubWFwIC0tZ2Mtc2VjdGlvbnMgLS1uby1keW5hbWljLWxpbmtlcgo+ICBpZmRlZiBDT05G
SUdfUEJMX1JFTE9DQVRBQkxFCj4gIExERkxBR1NfemJhcmVib3ggKz0gLXBpZQo+ICBlbHNlCj4g
LS0gCj4gMi4yMC4xCj4gCj4gCj4gLS0gCj4gQmVzdCBSZWdhcmRzLAo+IHp6cwo+IF9fX19fX19f
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
