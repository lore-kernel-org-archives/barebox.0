Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STUiW-0001K6-Ne
 for barebox@lists.infradead.org; Sun, 13 May 2012 09:03:53 +0000
Date: Sun, 13 May 2012 11:03:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120513090350.GV27341@pengutronix.de>
References: <m3sjfemhv5.fsf@intrepid.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3sjfemhv5.fsf@intrepid.localdomain>
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
Subject: Re: [PATCH] NOR flash: reduce size of cfiword_t if not using 64-bit
 bus.
To: Krzysztof Halasa <khc@pm.waw.pl>
Cc: barebox@lists.infradead.org

T24gU2F0LCBNYXkgMDUsIDIwMTIgYXQgMTE6MzU6MTBQTSArMDIwMCwgS3J6eXN6dG9mIEhhbGFz
YSB3cm90ZToKPiBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgSGHFgmFzYSA8a2hjQHBtLndhdy5w
bD4KCkFwcGxpZWQsIHRoYW5rcwoKU2FzY2hhCgo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25v
ci9jZmlfZmxhc2guaCBiL2RyaXZlcnMvbm9yL2NmaV9mbGFzaC5oCj4gaW5kZXggZGY0ODJiNi4u
ZmVjMDg5NCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25vci9jZmlfZmxhc2guaAo+ICsrKyBiL2Ry
aXZlcnMvbm9yL2NmaV9mbGFzaC5oCj4gQEAgLTMwLDcgKzMwLDE3IEBACj4gICNpbmNsdWRlIDxs
aW51eC9tdGQvbXRkLmg+Cj4gIAo+ICB0eXBlZGVmIHVuc2lnbmVkIGxvbmcgZmxhc2hfc2VjdF90
Owo+ICsKPiArI2lmICAgZGVmaW5lZChDT05GSUdfRFJJVkVSX0NGSV9CQU5LX1dJRFRIXzgpCj4g
IHR5cGVkZWYgdTY0IGNmaXdvcmRfdDsKPiArI2VsaWYgZGVmaW5lZChDT05GSUdfRFJJVkVSX0NG
SV9CQU5LX1dJRFRIXzQpCj4gK3R5cGVkZWYgdTMyIGNmaXdvcmRfdDsKPiArI2VsaWYgZGVmaW5l
ZChDT05GSUdfRFJJVkVSX0NGSV9CQU5LX1dJRFRIXzIpCj4gK3R5cGVkZWYgdTE2IGNmaXdvcmRf
dDsKPiArI2Vsc2UKPiArdHlwZWRlZiB1OCBjZml3b3JkX3Q7Cj4gKyNlbmRpZgo+ICsKPiAgc3Ry
dWN0IGNmaV9jbWRfc2V0Owo+ICAKPiAgLyotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+IAo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gYmFyZWJveCBtYWlsaW5nIGxp
c3QKPiBiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfApJbmR1
c3RyaWFsIExpbnV4IFNvbHV0aW9ucyAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1
dHJvbml4LmRlLyAgfApQZWluZXIgU3RyLiA2LTgsIDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkg
fCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBI
UkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5n
IGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
