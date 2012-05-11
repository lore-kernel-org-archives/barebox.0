Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SSulu-0002dJ-2t
 for barebox@lists.infradead.org; Fri, 11 May 2012 18:40:58 +0000
Date: Fri, 11 May 2012 20:40:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120511184056.GO27341@pengutronix.de>
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

SGkgS3J6eXN6dG9mLAoKT24gU2F0LCBNYXkgMDUsIDIwMTIgYXQgMTE6MzU6MTBQTSArMDIwMCwg
S3J6eXN6dG9mIEhhbGFzYSB3cm90ZToKPiBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgSGHFgmFz
YSA8a2hjQHBtLndhdy5wbD4KPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ub3IvY2ZpX2ZsYXNo
LmggYi9kcml2ZXJzL25vci9jZmlfZmxhc2guaAo+IGluZGV4IGRmNDgyYjYuLmZlYzA4OTQgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ub3IvY2ZpX2ZsYXNoLmgKPiArKysgYi9kcml2ZXJzL25vci9j
ZmlfZmxhc2guaAo+IEBAIC0zMCw3ICszMCwxNyBAQAo+ICAjaW5jbHVkZSA8bGludXgvbXRkL210
ZC5oPgo+ICAKPiAgdHlwZWRlZiB1bnNpZ25lZCBsb25nIGZsYXNoX3NlY3RfdDsKPiArCj4gKyNp
ZiAgIGRlZmluZWQoQ09ORklHX0RSSVZFUl9DRklfQkFOS19XSURUSF84KQo+ICB0eXBlZGVmIHU2
NCBjZml3b3JkX3Q7Cj4gKyNlbGlmIGRlZmluZWQoQ09ORklHX0RSSVZFUl9DRklfQkFOS19XSURU
SF80KQo+ICt0eXBlZGVmIHUzMiBjZml3b3JkX3Q7Cj4gKyNlbGlmIGRlZmluZWQoQ09ORklHX0RS
SVZFUl9DRklfQkFOS19XSURUSF8yKQo+ICt0eXBlZGVmIHUxNiBjZml3b3JkX3Q7Cj4gKyNlbHNl
Cj4gK3R5cGVkZWYgdTggY2Zpd29yZF90Owo+ICsjZW5kaWYKCklzIHRoaXMgd29ydGggaXQ/IERv
IHdlIHNhZmUgYmluYXJ5IHNpemUgb3Igd2hhdCBlbHNlIGlzIHRoZSByZWFzb25pbmcKZm9yIHRo
aXMgcGF0Y2g/CgpTYXNjaGEKCgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKSW5kdXN0cmlhbCBMaW51
eCBTb2x1dGlvbnMgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8g
IHwKUGVpbmVyIFN0ci4gNi04LCAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55IHwgUGhvbmU6ICs0
OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAg
ICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVi
b3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2JhcmVib3gK
