Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZcSPa-0002ba-Um
 for barebox@lists.infradead.org; Thu, 17 Sep 2015 06:11:15 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim)
 by metis.ext.pengutronix.de with esmtps (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <ukl@pengutronix.de>) id 1ZcSPF-0004FX-Bv
 for barebox@lists.infradead.org; Thu, 17 Sep 2015 08:10:53 +0200
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <ukl@pengutronix.de>) id 1ZcSPE-0008JO-Uu
 for barebox@lists.infradead.org; Thu, 17 Sep 2015 08:10:52 +0200
Date: Thu, 17 Sep 2015 08:10:52 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20150917061052.GM5327@pengutronix.de>
References: <1442433644-1324-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1442433644-1324-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] video: imx: assert that image buffer doesn't cross a 4
 MiB boundary
To: barebox@lists.infradead.org

SGVsbG8KCk9uIFdlZCwgU2VwIDE2LCAyMDE1IGF0IDEwOjAwOjQ0UE0gKzAyMDAsIFV3ZSBLbGVp
bmUtS8O2bmlnIHdyb3RlOgo+IFRoZSByZWZlcmVuY2UgbWFudWFsIChmb3IgdGhlIGkuTVgyNSBp
biBteSBjYXNlKSBzdGF0ZXM6Cj4gCj4gCVRoaXMgZmllbGQgbXVzdCBzdGFydCBhdCBhIGxvY2F0
aW9uIHRoYXQgZW5hYmxlcyBhIGNvbXBsZXRlCj4gCXBpY3R1cmUgdG8gYmUgc3RvcmVkIGluIGEg
NCBNYnl0ZSBtZW1vcnkgYm91bmRhcnkgKEEgWzIxOjBdKS4gQQo+IAlbMzE6MjJdIGhhcyBhIGZp
eGVkIHZhbHVlIGZvciBhIHBpY3R1cmXigJlzIGltYWdlLgo+IAo+IENoZWNrIHRoaXMgY29uZGl0
aW9uIGZvciB1c2VyLXN1cHBsaWVkIGZyYW1lYnVmZmVyIHZhbHVlcyBhbmQgZW5mb3JjZSBpdAo+
IGZvciBkcml2ZXItYWxsb2NhdGVkIGJ1ZmZlcnMuCgpNYXliZSBhZGQgaGVyZToKCi0tLS0tLT44
LS0tLS0tCklmIHRoZSBidWZmZXIgY3Jvc3NlcyBhIDQgTWlCIGJvdW5kYXJ5IHRoZSBwaXhlbHMg
dGhhdCBhcmUgIm91dCBvZgpib3VuZHMiIGp1c3QgYXBwZWFyIHdoaXRlIG9uIHRoZSBkaXNwbGF5
LgotLS0tLS0+OC0tLS0tLQoKSSBkaWRuJ3QgY2hlY2sgaWYgdGhlIGNvdW50ZXIgb3ZlcmZsb3dz
IGFuZCB0aGFuIHBpY2tzIHVwIGRhdGEgZnJvbSA0Ck1pQiBiZWxvdyB0aGUgZXhwZWN0ZWQgbWVt
b3J5LCBidXQgSSB3b3VsZCBiZSBzdXJwcmlzZWQgaWYgSSBoYWQgb25seQoweGZmIHRoZXJlLgoK
QmVzdCByZWdhcmRzClV3ZQoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAg
ICAgICAgICB8IFV3ZSBLbGVpbmUtS8O2bmlnICAgICAgICAgICAgfApJbmR1c3RyaWFsIExpbnV4
IFNvbHV0aW9ucyAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAg
fAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJv
eCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
